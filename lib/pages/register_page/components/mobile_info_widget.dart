import 'package:flutter/material.dart';

class MobileInfoWidget extends StatelessWidget {
  const MobileInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text(
            'Enter Mobile Number',
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: const Text(
              'Aquaconnect will send an OTP to verify your mobile number',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 30,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: Container(
                padding: EdgeInsets.only(top: 3),
                child: Text('+91'),
              ),
              title: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter your mobile number',
                ),
              ),
              trailing: const Icon(
                Icons.phone,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
