import 'package:flutter/material.dart';

class ProductsInCartWidget extends StatelessWidget {
  const ProductsInCartWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: ((context, index) {
              return Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          const Image(
                            height: 100,
                            width: 90,
                            image: AssetImage('assets/images/ph_test.jpeg'),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'High pH Test Kit - 160 tests',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                '₹ 649.00',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 219, 218, 218),
                                            border: Border(
                                              right: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                          child: const Icon(
                                            Icons.add,
                                            size: 15,
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          child: Text('15'),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 219, 218, 218),
                                            border: Border(
                                              left: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.remove,
                                            size: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Text(
                                      'Delete',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                  ],
                ),
              );
            })),
      ),
    );
  }
}
