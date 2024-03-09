import 'package:flutter/material.dart';
import 'package:hygraph_flutter/screens/home.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() {
  runApp(const MyApp());
}

final HttpLink httpLink = HttpLink("URL GOES HERE");

final ValueNotifier<GraphQLClient> client =
    ValueNotifier<GraphQLClient>(GraphQLClient(
  link: httpLink,
  cache: GraphQLCache(),
));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        title: 'News App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Home(),
      ),
    );
  }
}
