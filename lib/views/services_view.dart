import 'package:fannelance/models/services_model.dart';
import 'package:fannelance/widgets/service_widget.dart';
import 'package:flutter/material.dart';

class ServicesView extends StatefulWidget {
  const ServicesView({Key? key}) : super(key: key);

  @override
  ServicesViewState createState() => ServicesViewState();
}

class ServicesViewState extends State<ServicesView> {
  List<ServicesModel> servicesList = [];

  @override
  void initState() {
    super.initState();
    getServicesList();
  }

  void getServicesList() async {
    List<ServicesModel>? loadedServices = await ServicesModel.loadAndParseJson();
    setState(() {
      servicesList = loadedServices;
    });
    }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Services',
          style: TextStyle(fontFamily: 'Gilroy-Bold', fontSize: screenWidth/9.7),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 5,bottom: 15),
        itemCount: servicesList.length,
        itemBuilder: (context, index) {
          return ServicesWidget(
            obj: servicesList[index],
          );
        },
      ),
    );
  }
}