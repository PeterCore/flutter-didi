import 'dart:async';
import 'dart:math';

class DKLotteryController {
  DKLotteryController();
  int currentIndex = -1; // 当前高亮的格子
  Timer? timer; // 计时器控制旋转
  bool isRunning = false; // 判断是否在运行
  List<String> prizes = [];
  Map<int, int> idMap = {};
  Map<int, int> rTolIds = {};
  // List<String> prizes =
  //     List.generate(9, (index) => index == 4 ? "中心" : "奖品名称"); // 中心格子不旋转
  List<int> rotationOrder = [0, 1, 2, 5, 8, 7, 6, 3]; // 顺时针旋转顺序（不包含中心格）
  Random random = Random();

  Function(int index)? onCurrentIndex;
  Function(int index)? onCompleterIndex;

  void addPrizeId(List<int> ids) {
    bool isValid = rotationOrder.length == ids.length;
    if (isValid) {
      for (int i = 0; i < ids.length; i++) {
        idMap.addEntries({ids[i]: rotationOrder[i]}.entries);
        rTolIds.addEntries({rotationOrder[i]: ids[i]}.entries);
      }
      int i = 0;
    }
  }

  int getIds(int index) {
    return rTolIds[index] ?? 0;
  }

  void addPrizes(List<String> imagePaths) {
    prizes.addAll(imagePaths);
    prizes.insert(4, "");
  }
  //
  // void addListener(Function(int index)? onSelectIndex) {
  //   onSelectIndex = onCurrentIndex;
  // }
  //
  // void addCompleteListener(Function(int index)? onCompleter) {
  //   onCompleter = onCompleterIndex;
  // }

  void dispose() {
    timer?.cancel(); // 销毁时取消定时器
  }

  void startLottery(int targetIndex) {
    if (isRunning) return;
    int target = idMap[targetIndex] ?? 0;
    isRunning = true;
    int totalRounds = 30 + random.nextInt(20); // 随机旋转次数
    int finalIndex = target; // 最终的目标奖品索引
    int rounds = 0;
    int speed = 100; // 初始速度（越小越快）

    timer = Timer.periodic(Duration(milliseconds: speed), (Timer t) {
      currentIndex = (currentIndex + 1) % rotationOrder.length; // 顺时针移动
      onCurrentIndex?.call(currentIndex);
      rounds++;
      // 减速逻辑
      if (rounds > totalRounds && rotationOrder[currentIndex] == finalIndex) {
        t.cancel();
        isRunning = false;
      } else if (rounds > totalRounds - 10) {
        speed += 20; // 最后 10 格减速
        t.cancel();
        timer = Timer.periodic(Duration(milliseconds: speed), (Timer t) {
          currentIndex = (currentIndex + 1) % rotationOrder.length;
          onCurrentIndex?.call(currentIndex);
          if (rounds++ >= totalRounds &&
              rotationOrder[currentIndex] == finalIndex) {
            t.cancel();
            isRunning = false;
            onCompleterIndex?.call(currentIndex);
          }
        });
      }
    });
  }
}
