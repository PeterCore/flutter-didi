import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/grouplist_model.dart';
import 'package:dk_utils/dk_lib.dart';

final groupRecordsProvider = StateNotifierProvider.autoDispose.family<GroupRecordsNotifier, GroupRecordsState, String>((ref, type) => GroupRecordsNotifier(type));

class GroupRecordsNotifier extends StateNotifier<GroupRecordsState> {
  GroupRecordsNotifier(String type) : super(GroupRecordsState()) {
    getListData(type);
  }

  void getListData(String type) {
    if (type == '0') {
      getProductGroupListData();
    } else {
      getProductJoinGroupListData();
    }
  }

  void loadMore(String type) {
    if (state.hasMore) {
      state = state.copyWith(page: state.page + 1);
      if (type == '0') {
        getProductGroupListData();
      } else {
        getProductJoinGroupListData();
      }
    }
  }

  void changeTab(String type) {
    state = state.copyWith(page: 1, hasMore: true, initiatedRecords: [], participatedRecords: []);
    getListData(type);
  }

  Future<void> getProductGroupListData() async {
    final params = {
      "page": state.page,
      "sort": 3,
    };
    EasyLoading.show();
    state = state.copyWith(isLoading: true);
    final res = await getProductGroupList(params);
    res.ifSuccess((data) {
      final records = data.list?.data ?? [];
      state = state.copyWith(
        initiatedRecords: [...state.initiatedRecords, ...records],
        grouprules: data.grouprules ?? '',
      );
      if (state.initiatedRecords.length == data.list?.total) {
        state = state.copyWith(hasMore: false);
      }
    });
    res.ifFailure((error) {
      EasyLoading.showError(error.message);
    });
    EasyLoading.dismiss();
    state = state.copyWith(isLoading: false);
  }

  Future<void> getProductJoinGroupListData() async {
    final params = {
      "page": state.page,
      "sort": 3,
    };
    EasyLoading.show();
    state = state.copyWith(isLoading: true);
    final res = await getProductJoinGroupList(params);
    res.ifSuccess((data) {
      final records = data.list?.data ?? [];
      state = state.copyWith(
        participatedRecords: [...state.participatedRecords, ...records],
        grouprules: data.grouprules ?? '',
      );
      if (state.participatedRecords.length == data.list?.total) {
        state = state.copyWith(hasMore: false);
      }
    });
    res.ifFailure((error) {
      EasyLoading.showError(error.message);
    });
    EasyLoading.dismiss();
    state = state.copyWith(isLoading: false);
  }
}


class GroupRecordsState {
  final List<Datum> initiatedRecords;
  final List<Datum> participatedRecords;
  final int page;
  final bool hasMore;
  final bool isLoading;
  final String grouprules;
  GroupRecordsState({
    this.initiatedRecords = const [],
    this.participatedRecords = const [],
    this.page = 1,
    this.hasMore = true,
    this.isLoading = false,
    this.grouprules = '',
  });

  GroupRecordsState copyWith({
    List<Datum>? initiatedRecords,
    List<Datum>? participatedRecords,
    int? page,
    bool? hasMore,
    bool? isLoading,
    String? grouprules,
  }) {
    return GroupRecordsState(
      initiatedRecords: initiatedRecords ?? this.initiatedRecords,
      participatedRecords: participatedRecords ?? this.participatedRecords,
      page: page ?? this.page,
      hasMore: hasMore ?? this.hasMore,
      isLoading: isLoading ?? this.isLoading,
      grouprules: grouprules ?? this.grouprules,
    );
  }
}

