import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurantsapp/app/modules/all_order/view/widgets/custom_radiobutton.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';
import 'package:restaurantsapp/app/core/constants/image_const.dart';
import 'package:restaurantsapp/app/modules/all_order/controller/radiobutton_controller.dart';

RadioButtonController radioButtonController = Get.put(RadioButtonController());

class SearchOrder extends StatelessWidget {
  const SearchOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Container(
            height: 40,
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: ImageIcon(
                  AssetImage(
                    searchimg,
                  ),
                ),
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            Get.bottomSheet(
              _custombottomsheet(),
            );
          },
          icon: ImageIcon(
            AssetImage(
              filterimg,
            ),
          ),
        )
      ],
    );
  }
}

class _custombottomsheet extends StatelessWidget {
  const _custombottomsheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 240,
      width: 328,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Filter by",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Image.asset(
                  crossimg,
                  height: 20,
                  width: 20,
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          CustomRadioButtons(
            groupvalue: radioButtonController.initialvalue.value,
            text: 'Last 1 Month',
            value: '1',
          ),
          CustomRadioButtons(
            groupvalue: radioButtonController.initialvalue.value,
            text: 'Last 3 Months',
            value: '2',
          ),
          CustomRadioButtons(
            groupvalue: radioButtonController.initialvalue.value,
            text: 'Last 6 Months',
            value: '3',
          ),
          CustomRadioButtons(
            groupvalue: radioButtonController.initialvalue.value,
            text: 'Overall',
            value: '4',
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButtonBottomSheet(
                text: 'Clear',
              ),
              CustomButtonBottomSheet(
                text: 'Apply',
                color: Kblue,
              ),
            ],
          )
        ],
      ),
    );
  }
}
