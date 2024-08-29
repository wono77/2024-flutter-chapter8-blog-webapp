import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';
import 'package:mockito/mockito.dart';
import 'package:flutters/screen/home_screen.dart'; // 실제 홈스크린 파일 경로로 변경하세요.

class MockWebViewController extends Mock implements WebViewController {}

  void main() {
    testWidgets('WebView 테스트', (WidgetTester tester) async {
      // MockWebViewController 생성
      final mockWebViewController = MockWebViewController();

      // 테스트할 위젯 빌드
      await tester.pumpWidget(MaterialApp(
        home: HomeScreen(),
      ));

      // WebViewController가 호출되는지 확인
      //verifyNever(mockWebViewController.loadRequest(any));

      // WebViewWidget이 렌더링 되었는지 확인
      //expect(find.byType(WebViewWidget), findsOneWidget);
    });
  }
