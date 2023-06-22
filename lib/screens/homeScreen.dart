import 'package:exam_final/screens/modal/quizModal.dart';
import 'package:exam_final/utils/provider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? ht, hf;

  @override
  Widget build(BuildContext context) {
    ht = Provider.of<HomeProvider>(context, listen: true);
    hf = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          // actions: [],
          title: Text("Quiz App"),
          centerTitle: true,
        ),
        // body: Column(
        //   children: [
        //     Expanded(
        //       child: FutureBuilder(future: ht!.find(),builder: (context, snapshot) {
        //           if (snapshot.hasError) {
        //             Text("${snapshot.error}");
        //           } else if (snapshot.hasData) {
        //             ht!.change(snapshot.data!);
        //            return ListView.builder(itemBuilder: (context, index) {
        //              return ListTile(
        //                title: Text("${ht!.data!.results[index].question}"),
        //                // subtitle: Text("${ht!.data!.results[index].incorrectAnswers}"),
        //              );
        //            },itemCount: ht!.data!.results.length,);
        //           }
        //           return Center(child: CircularProgressIndicator());
        //       },),
        //     ),
        //   ],
        // ),
        body: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: ht!.find(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    Text("${snapshot.error}");
                  } else if (snapshot.hasData) {
                    ht!.change(snapshot.data!);
                    ht!.data!.results.length;
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           Text("${ht!.data!.results[0].question}"),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(onTap: () {
                                },
                                  child: Container(
                                    height: 40,
                                    width: 130,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.grey.shade300),
                                    child: Center(child: Text("${ht!.data!.results[0].incorrectAnswers[0]}",style: TextStyle(fontSize: 14),)),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 130,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.grey.shade300),
                                    child: Center(child: Text("${ht!.data!.results[0].incorrectAnswers[1]}",style: TextStyle(fontSize: 14))),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 130,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.grey.shade300),
                                    child: Center(child: Text("${ht!.data!.results[0].incorrectAnswers[2]}",style: TextStyle(fontSize: 14))),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 130,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.grey.shade300),
                                    child: Center(child: Text("${ht!.data!.results[0].correctAnswer}",style: TextStyle(fontSize: 14))),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                  return Center(child: CircularProgressIndicator());
                },
              ),
            ),
            // Visibility(
            //   visible: (n!=0)
            //   ?,
            // )
          ],
        ),
      ),
    );
  }
}
