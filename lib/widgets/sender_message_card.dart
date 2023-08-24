import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/info.dart';

class SenderMessageCard extends StatelessWidget {
  final String message;
  final String date;

  const SenderMessageCard({super.key, required this.message, required this.date});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints:
        BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 45),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: senderMessageColor,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding:
                EdgeInsets.only(left: 10, right: 30, top: 5, bottom: 20),
                child: Text(
                  message,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Positioned(bottom: 2,
                right: 10,
                child: Row(children: [
                  Text(
                    date,
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                  SizedBox(width: 5,),
                  Icon(Icons.done_all, size: 20,color: Colors.white,)
                ]),

              )
            ],
          ),
        ),
      ),
    );
  }
}
