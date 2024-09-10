import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  final void Function()? firstButtonNavigation;
  final void Function()? secondButtonNavigation;
  final void Function()? thirdButtonNavigation;

  const ScreenHome({super.key, this.firstButtonNavigation, this.secondButtonNavigation, this.thirdButtonNavigation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Center(child: Text("Home",style:TextStyle(color: Colors.white),)),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/images/Muffin.jpg',fit: BoxFit.fill,),),
          const Text("No internet Connection",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.black),),
          const SizedBox(
              child: Center(child: Text("Your internet connection is currently not available please check or try again.",
                style: TextStyle(color: Colors.grey),softWrap: true,)))
        ],
      ),
      
    );
  }
}
class ScreenCart extends StatelessWidget {
  const ScreenCart({super.key, this.firstButtonNavigation, this.secondButtonNavigation, this.thirdButtonNavigation});
    final void Function()? firstButtonNavigation;
    final void Function()? secondButtonNavigation;
    final void Function()? thirdButtonNavigation;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Center(child: Text("Cart",style:TextStyle(color: Colors.white),)),
        ),
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset('assets/images/Avocado.png',fit: BoxFit.fill,),),
            const Text("No orders yet",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.black),),
            const SizedBox(
                child: Center(child: Text("Hit the orange Button down below to Create an order.",
                  style: TextStyle(color: Colors.grey),softWrap: true,)))
          ],
        ),

      );
  }
}
class ScreenFavorite extends StatelessWidget {
  const ScreenFavorite({super.key, this.firstButtonNavigation, this.secondButtonNavigation, this.thirdButtonNavigation});
  final void Function()? firstButtonNavigation;
  final void Function()? secondButtonNavigation;
  final void Function()? thirdButtonNavigation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Center(child: Text("Favorite",style:TextStyle(color: Colors.white),)),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/images/salat.png',fit: BoxFit.fill,),),
          const Text("No favorite yet",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.black),),
          const SizedBox(
              child: Center(child: Text("your order will be dilevered under 30 min of placing your order.",
                style: TextStyle(color: Colors.grey),softWrap: true,)))
        ],
      ),

    );
  }
}
class ScreenHistory extends StatelessWidget {
  const ScreenHistory({super.key, this.firstButtonNavigation, this.secondButtonNavigation, this.thirdButtonNavigation});
  final void Function()? firstButtonNavigation;
  final void Function()? secondButtonNavigation;
  final void Function()? thirdButtonNavigation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Center(child: Text("History",style:TextStyle(color: Colors.white),)),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/images/cofee 1.png',fit: BoxFit.fill,),),
          const Text("No history yet",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.black),),
          const SizedBox(
              child: Center(child: Text("your order will be dilevered under 30 min of placing your order.",
                style: TextStyle(color: Colors.grey),softWrap: true,)))
        ],
      ),

    );
  }
}
