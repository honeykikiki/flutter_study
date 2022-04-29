// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';

class ScreenReverseManagement extends StatefulWidget {

  ScreenReverseManagement();

  @override
  _ScreenReverseManagementState createState() => _ScreenReverseManagementState();
}

class _ScreenReverseManagementState extends State<ScreenReverseManagement> with SingleTickerProviderStateMixin {
  
  final _scrollController = ScrollController();

  late TabController _tabController;
  
  List<Widget> _tabBuildingList = [];
  List mettingTitle = ['임대문의 및 상담', '현장답사', '임대신청 및 계약', '사전점검회의', '행사 준비', '정산',];
  List mettingContent = [
    ['행사개요 접수', '행사인원 및 성격에 따른 적정 회의실 확인', '각 기설 및 장비 관련 안내', '임대표 및 계약 절차 안내'],
    ['시설안내 및 현장점검', '부대시설 및 서비스 안내', '교통 및 센터 내 이동 동선 확인', '주차장 이용안내'],
    ['임대신청서 작성 및 임대(임대표의 10%)', '계약서 작성 및 계약금 납입 (임대료의 20%, 임대금 납부고객은 10%)', '연회서비스 안내 및 계약 (DCC 케이터링 업체)'],
    ['중도금 납입(임대료의 30%)', '최종 일정 진행사항 확인', '연회 서비스 확정', '추가 지원사항 접수 및 지원'],
    ['임대 개시 7일 전 잔금 납부완료 (임대료의 50% 및 예치금)', '행사 개요서 및 일정표 준비', '행사 개시 전 행사장 준비 상태 점검', '현장 요청사항 접수 및 지원', '사전 업무 협의 및 각종 관련 서류 제출'],
    ['추가 비용 정산 및 세금계산서 발행']
  ];
  List exhibitionTitle = ['상담 및 예약', '계약체결', '임대 3개월 전', '임대 7일 전', '임대 5일 전', '행사기간', '정산'];
  List exhibitionContent = [
    ['행사개최 가능 여부 문의', '행사계획서 제출', '전시홀 배정 후 행사장 예약 안내', '지정 협력 업체 안내', '전시홀 시설 안내'],
    ['임대 확정', '계약서 작성', '계약금 납입(임대료의 20%)', '중도금 및 기타 준비사항 안내'],
    ['중도금 납부 (임대료의 30%)'],
    ['잔금 납부완료 (임대료의 50%)', '행사 관련 신고 및 관련 서류 제출 (신고 및 관련 서류는 홈페이지 다운)', '행사 개요 제출', '홍보물 게시 여부 승인'],
    ['개막식 개요 (참석VIP, 디렉터리)'],
    ['냉/난방 조절 통보', '시간 외 사용 신청서 제출', '홀매니저에게 사용시간 통보'],
    ['정산 내역서 확인', '관리금 예치비 환불', '세금계산서 수령(E-mail)']
  ];

  @override
  initState() {
    super.initState();

    _init();
  }

  _init() async {
    
    // infinity scroll event 등록
    _scrollController.addListener(() {
      if (_scrollController.position.maxScrollExtent == _scrollController.offset) { // 한번에 모든 데이터 불러옴. 필요시 추가
      }
    });

    // 전시장 구분 탭 초기화
    _tabBuildingList.add(
      Container(
        height: 32.0,
        child: Tab(child: Text('회의실 대관안내')),
      )
    );
    _tabBuildingList.add(
      Container(
        height: 32.0,
        child: Tab(child: Text('전시장 대관안내')),
      )
    );

    // 전시장 구분 탭 컨트롤러 등록
    _tabController = TabController(vsync: this, length: _tabBuildingList.length);
    _tabController.addListener(() => setState(() {}));
    
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: const EdgeInsets.only(bottom: 24.0 * 3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBuilding(), // 전시장 구분 탭 구성
            _buildList(0, mettingTitle, mettingContent), // 회의실 대관안내 구성
            _buildList(1, exhibitionTitle, exhibitionContent), // 전시장 대관안내 구성
            _buildetc(),
          ]
        ),
      ),
    );
  }

  // 회의실 대관안내 타이틀
  _buildList(int tabControllerIndex, List titleList, List contentList) {
    if (_tabController.index != tabControllerIndex) {
      return Container();
    }

    if (mettingContent.isEmpty) { // 회의실 타이틀이 없는경우
      return Center(
        child: Container(
          margin: const EdgeInsets.only(top: 24.0 * 2),
          child: Text('RESULT_MSG_NO_LIST'),
        )
      );
    }

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.0),
      child: ListView.separated(
        shrinkWrap: true,
        primary: false,
        separatorBuilder: (context, index) {
          return Container();
        },
        itemCount: titleList.length,
        itemBuilder: (context, i) {
          return Container(
            margin: const EdgeInsets.only(top: 24.0 * 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipOval(
                          child: Container(
                            width: 32.0,
                            height: 32.0,
                            color: Colors.black,
                          ),
                        ),
                        Text((i + 1).toString())
                      ],
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 24.0),
                        child: Text(titleList[i])
                      )
                    )
                  ],
                ),
                _buildListContent(i, contentList),
              ],
            )
          );
        }
      ),
    );
  }

  // 리스트 컨텐츠
  _buildListContent(titleIndex, contentList) {
    return ListView.separated(
      shrinkWrap: true,
      primary: false,
      separatorBuilder: (context, index) {
        return Container();
      },
      itemCount: contentList[titleIndex].length,
      itemBuilder: (context, i) {
        return Container(
          margin: EdgeInsets.only(left: 24.0 + 32.0, top: 24.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Icon(Icons.fiber_manual_record, size: 5),
              Text('•'),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 24.0),
                  child: Text(contentList[titleIndex][i].toString()),
                )
              )
            ],
          )
        );
      }
    );
  }

  // 하단 관련 서류
  _buildetc() {
    return Container(
      margin: EdgeInsets.fromLTRB(24.0, 24.0 * 2, 24.0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('관련 서류'),
          Container(
            margin: EdgeInsets.only(top: 24.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('※'),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 24.0),
                    child: Text('행사계획서 / 사업자등록증 사본 / 임대신청서(홈페이지 자료실 참조) / 날인된 계약서 / 작업 신고서 / 행사 평면도(기본부스, 독립부스) / 기술 지원 신청서 / 물품 반입 신청서'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('※'),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 24.0),
                    child: Text('위험물·중량물 반입 신청서 / 전시홀 사용신고 및 신청서 / 방화관리 신고서 / 상주 요원 및 경비원 명단 신고서 / 광고 홍보물 신청서(홈페이지 자료실 참조) / 개막식 프로그램 / VIP 명단'),
                  )
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('※'),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 24.0),
                    child: Text('참가업체 디렉터리 / 예치금 반환용 통장사본'),
                  )
                )
              ],
            ),
          ),
        ]
      ),
    );
  }

  // 전시장 구분 탭 구성
  _buildBuilding() {
    return PreferredSize(
      preferredSize: Size.fromHeight(32.0),
      child: TabBar(
        labelPadding: const EdgeInsets.only(top:24.0, bottom: 24.0),
        controller: _tabController,
        tabs: _tabBuildingList,
        // lab color: COLOR_DANGER),  // not work
        labelColor: Colors.black, // 선택된 탭 라벨 색
        unselectedLabelColor: Colors.black,  // 선택 안된 탭 라벨 색
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: Colors.black,
        indicatorWeight: 2, // indicatorWeight의 값을 0이 아닌 작은 값으로 하고, indicatorPadding를 삭제하면 indicator가 없는 것처럼 효과를 줄 수 있다.
      )
    );
  }
  
  @override
  void dispose() {
    super.dispose();
  }
}