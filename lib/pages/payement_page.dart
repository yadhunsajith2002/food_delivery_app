import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:food_delivery/components/custum_button.dart';
import 'package:food_delivery/pages/delivery_progress_page.dart';

class PayementPage extends StatefulWidget {
  const PayementPage({super.key});

  @override
  State<PayementPage> createState() => _PayementPageState();
}

class _PayementPageState extends State<PayementPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  void userTapPay() {
    if (formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Confirm Payemnt"),
          content: SingleChildScrollView(
            child: ListBody(children: [
              Text("Card Number: $cardNumber"),
              Text("Card Holder Name: $cardHolderName"),
              Text("Expiry Date: $expiryDate"),
              Text("CVV: $cvvCode"),
            ]),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const DeliveryProgressPage(),
                ));
              },
              child: const Text("Yes"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("C H E C K O U T"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CreditCardWidget(
              // bankName: "SBI",
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              onCreditCardWidgetChange: (p0) {},
            ),
            CreditCardForm(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                onCreditCardModelChange: (data) {
                  setState(() {
                    cardNumber = data.cardNumber;
                    cardHolderName = data.cardHolderName;
                    expiryDate = data.expiryDate;
                    cvvCode = data.cvvCode;
                  });
                },
                formKey: formKey),
            // Spacer(),
            // MyButton(ontap: userTapPay, text: "Pay Now"),
            SizedBox(
              height: 25,
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: MyButton(ontap: userTapPay, text: "Pay Now"),
      ),
    );
  }
}
