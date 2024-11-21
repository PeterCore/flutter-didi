import 'package:dk_net_work/models/member_ship_level.dart';

// const rewards = [
// {
// key: 'rate',
// configKey: 'always_show',
// label: '成为该会员等级以后，投资的所有项目在原利率的基础上再加息',
// value: (item) => `${item.rate}%`
// },
// {
// key: 'daysalary',
// configKey: 'member_daysalary',
// label: '每日额外奖励',
// value: (item) => `${item.daysalary} USDT`
// },
// {
// key: 'resign_times',
// configKey: 'member_resign_switch',
// label: '补签次数',
// value: (item) => `${item.resign_times} 次`
// },
// {
// key: 'daymoeny',
// configKey: 'member_qiandao',
// label: '每日签到奖励',
// value: (item) => `${item.daymoeny} USDT`
// },
// {
// key: 'salary',
// configKey: 'member_salary',
// label: '每月领取工资',
// value: (item) => `${item.salary} USDT`
// },
// {
// key: 'lianxumoeny',
// configKey: 'member_lxqiandao',
// label: '连续签到奖励',
// value: (item, config) => `连续签到${config.member_lxqday}天奖励 ${item.lianxumoeny} USDT`
// }
// ];

List<MemberTaskRewards> taskAlls = [
  MemberTaskRewards(
      label: '成为该会员等级以后，投资的所有项目在原利率的基础上再加息', taskId: "alwaysShows"),
  MemberTaskRewards(label: '每日额外奖励', taskId: "memberDaysalary"),
  MemberTaskRewards(label: '补签次数', taskId: "memberResignSwitch"),
  MemberTaskRewards(label: '每日签到奖励', taskId: "memberQiandao"),
  MemberTaskRewards(label: '每月领取工资', taskId: "memberSalary"),
  MemberTaskRewards(label: '连续签到奖励', taskId: "memberLxqiandao"),
];

//成为该等级会员以后，在这个等级阶段内投资的所有项目在原利润率的基础上再加息
class MemberTaskRewards {
  MemberTaskRewards({
    this.label,
    this.taskId,
  });
  String? label;
  String? taskId;
  String rewardsContent(
      {Map<String, dynamic>? map = const {}, ListElement? item}) {
    String content = "";
    if (taskId == "alwaysShows") {
      content = "${item?.rate ?? 0}%";
    } else if (taskId == "memberDaysalary") {
      content = "${item?.daysalary ?? 0} USDT";
    } else if (taskId == "memberResignSwitch") {
      content = "${item?.resignTimes ?? 0} 次";
    } else if (taskId == "memberQiandao") {
      content = "${item?.daymoeny ?? 0} USDT";
    } else if (taskId == "memberSalary") {
      content = "${item?.salary ?? 0} USDT";
    } else if (taskId == "memberLxqiandao") {
      content =
          "连续签到${map?["memberLxqday"] ?? 0}天奖励 ${item?.lianxumoeny ?? 0} USDT";
    }

    return content;
  }
}

extension MemberShipLevelItem on ListElement {
  List<MemberTaskRewards> getTasks(Map<String, dynamic> map) {
    List<MemberTaskRewards> tasks = [];
    for (var item in taskAlls) {
      if (map[item.taskId] == 1) {
        tasks.add(item);
      }
    }
    return tasks;
  }
}

extension MemberShipLevelExtension on MemberShipLevel {
  Map<String, dynamic> initConfig() {
    Map<String, dynamic> map = config!.toJson();
    map["alwaysShows"] = 1;
    return map;
  }
}
