import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';

class InputTextfieldmoney extends StatelessWidget {
  const InputTextfieldmoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        initialValue: "550",
        decoration: InputDecoration(
          prefixText: "Rs.  ",
          prefixStyle: TextStyle(color: Kblack),
          hintText: "Amount",
          hintStyle: TextStyle(
            color: Colors.grey[300],
          ),
          suffixIcon: customButtonarrow(),
        ),
      ),
    );
  }

  Widget customButtonarrow() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(right: 10),
        height: 15,
        width: 100,
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(width: 1.0, color: Colors.grey),
          ),
        ),
        child: Text("Add Money"),
      ),
    );
  }
}
