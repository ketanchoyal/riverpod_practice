import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/home_page_viewmodel.dart';
import 'package:riverpod_practice/state_management/view_model_builder.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomepageViewModel>.reactive(
      viewModelBuilder: () => HomepageViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SelectableText(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${model.counter}',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: model.incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}

// class MyHomePage2 extends StatefulWidget {
//   MyHomePage2({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage2> {
//   final homepageViewmodel = ChangeNotifierProvider((_) => HomepageViewModel());

//   @override
//   Widget build(BuildContext context) {
//     return Consumer(builder: (context, watch, child) {
//       var model = watch(homepageViewmodel);
//       return ProviderListener<HomepageViewModel>(
//         onChange: (context, model) {},
//         provider: homepageViewmodel,
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text(widget.title),
//           ),
//           body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text(
//                   'You have pushed the button this many times:',
//                 ),
//                 Text(
//                   '${model.counter}',
//                   style: Theme.of(context).textTheme.headline4,
//                 ),
//               ],
//             ),
//           ),
//           floatingActionButton: FloatingActionButton(
//             onPressed: model.incrementCounter,
//             tooltip: 'Increment',
//             child: Icon(Icons.add),
//           ),
//         ),
//       );
//     });
//   }
// }
