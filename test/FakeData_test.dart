import 'package:flutter_test/flutter_test.dart';
import 'package:flutterunittest/FakeData.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;

class MockClient extends Mock implements http.Client {
  void main() {
    runTest();
  }

  void runTest() {
    group('fetchPost', () {
      test('Get all the users from the server', () async {
        final client = MockClient();
        when(client.get('https://jsonplaceholder.typicode.com/users/1'))
            .thenAnswer((_) async => http.Response('{"title":"Tests"}', 200));

        expect(fetchPost(client), isInstanceOf<Users>());
      });
      test('throws an exception if the http call completes with an error', () {
        final client = MockClient();

        // Use Mockito to return an unsuccessful response when it calls the
        // provided http.Client.
        when(client.get('https://jsonplaceholder.typicode.com/users/1'))
            .thenAnswer((_) async => http.Response('Not Found', 404));

        expect(fetchPost(client), throwsException);
      });
    });
  }
}
