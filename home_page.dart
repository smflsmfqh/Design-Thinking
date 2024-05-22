import 'package:flutter/material.dart';
import 'package:mypage/login_page.dart';
import 'package:mypage/my_home_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
        ),
        title: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: '원하는 장소를 입력하세요.',
                  border: InputBorder.none,
                ),
                style: TextStyle(color: Colors.black),
              ),
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // 검색 아이콘 동작 설정
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Text('지도 삽입 예정'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: '부스 등록',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: '저장',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forum),
            label: '커뮤니티',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '마이페이지',
          ),
        ],
        selectedItemColor: Colors.black26,
        unselectedItemColor: Colors.black,
        currentIndex: 2,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          if(index == 4) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
              );// 네비게이션 바 아이템을 탭했을 때의 동작 설정
        }
        },
      ),
    );
  }
}
