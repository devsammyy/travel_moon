import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_dropdown_btn.dart';

class HomeScreen extends StatelessWidget {
  late final double _deviceHeight, _deviceWidth;

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.03),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _pageTitle(),
                  _bookRideWidget(),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: _astroImgeWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "#TravelMoon",
      style: TextStyle(fontSize: 50, fontWeight: FontWeight.w800),
    );
  }

  Widget _astroImgeWidget() {
    return Container(
      height: _deviceHeight * 0.50,
      width: _deviceWidth * 0.65,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/astro_moon.png"),
        ),
      ),
    );
  }

  Widget _destinationDropdownWidget() {
    return CustomDropdownBtn(
      values: const [
        "Tanke Station",
        "Oke-Odo Station",
        "Tipper Garage Station"
      ],
      width: _deviceWidth,
    );
  }

  Widget _travellersDestinationDropdownWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomDropdownBtn(
          values: const ["1", "2", "3", "4"],
          width: _deviceWidth * 0.50,
        ),
        CustomDropdownBtn(
          values: const ["Economy", "Business", "First Class", "Private"],
          width: _deviceWidth * 0.40,
        ),
      ],
    );
  }

  Widget _bookRideWidget() {
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropdownWidget(),
          _travellersDestinationDropdownWidget(),
          _rideButton()
        ],
      ),
    );
  }

  Widget _rideButton() {
    return Container(
      width: _deviceWidth,
      margin: EdgeInsets.only(
        bottom: _deviceHeight * 0.005,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          "Book Ride",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
