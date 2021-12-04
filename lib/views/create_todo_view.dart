import 'package:flutter/material.dart';
import 'package:todo/views/home_view.dart';
import 'package:todo/views/end_page_view.dart';

class CreateTodoView extends StatelessWidget {
  const CreateTodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              alignment: Alignment.topRight,
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.only(top: 40),
              child: SizedBox(
                width: 80,
                height: 75,
                child: Card(
                  shape: const CircleBorder(
                    side: BorderSide(
                      color: Colors.purple,
                      width: 1,
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext) => const EndPageView()),
                      );
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(25, 110, 20, 10),
              child: TextField(
                maxLines: null,
                keyboardType: TextInputType.multiline,
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
                cursorHeight: 20,
                cursorColor: const Color.fromRGBO(196, 196, 189, 1),
                decoration: InputDecoration(
                  hintText: 'Enter new todo',
                  hintStyle: const TextStyle(
                    fontSize: 25,
                    color: Color.fromRGBO(148, 156, 202, 1),
                    fontWeight: FontWeight.w400,
                  ),
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  // prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30),
                  child: SizedBox(
                    height: 75,
                    width: 100,
                    child: InkWell(
                      onTap: () {},
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        color: Colors.white,
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Icon(Icons.calendar_today, size: 24),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Today',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(139, 131, 140, 1)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30),
                  child: SizedBox(
                    height: 80,
                    width: 60,
                    child: InkWell(
                      onTap: () {},
                      child: const Card(
                        elevation: 0,
                        color: Colors.white,
                        shape: CircleBorder(
                          side: BorderSide(
                            color: Color.fromRGBO(196, 196, 196, 1),
                            width: 1,
                          ),
                        ),
                        child: Icon(
                          Icons.radio_button_checked,
                          size: 30,
                          color: Color.fromRGBO(22, 106, 237, 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.create_new_folder_outlined,
                      size: 30,
                      color: Color.fromRGBO(139, 148, 195, 1),
                    ),
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.flag_outlined,
                      size: 30,
                      color: Color.fromRGBO(139, 148, 195, 1),
                    ),
                  ),
                  IconButton(
                    onPressed: null,
                    color: Color.fromRGBO(139, 148, 195, 1),
                    icon: Icon(
                      Icons.dark_mode_outlined,
                      size: 30,
                      color: Color.fromRGBO(139, 148, 195, 1),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              margin: const EdgeInsets.fromLTRB(0, 100, 15, 10),
              child: InkWell(
                onTap: () {},
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.40,
                  height: MediaQuery.of(context).size.height * 0.10,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromRGBO(22, 106, 237, 1),
                        ),
                      ),
                      onPressed: null,
                      child: Row(
                        children: const [
                          Text(
                            'New Task',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 40,
                            child: Icon(
                              Icons.expand_less_outlined,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
