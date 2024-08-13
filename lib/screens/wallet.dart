import 'package:flutter/material.dart';



class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {

  var balance = 15000.00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallet'),
        centerTitle: true,
        leading: Text(''),
        actions: [

        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/my_pic.jpg'),
                ),
                title: Text('Welcome Emmanuel'),
                subtitle: Text('Here is your wallet'),
              ),
            ),
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xff3856dd),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Text(
                      'Your balance',
                      style: TextStyle(
                        color: Color(0xffedeef0),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                    child: Text(
                      '$balance',
                      style: TextStyle(
                        color: Color(0xffedeef0),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                  ),
                ],
              ),
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                         Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Color(0xff3856dd),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(Icons.compare_arrows_outlined, size: 30, color: Colors.white,),
                              ),
                            Text(
                              'Transfer',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff141535)
                              ),
                              ),
                          ],
                        ),
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color(0xff3856dd),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(Icons.card_giftcard_outlined, size: 30, color: Colors.white,),
                          ),
                        Text(
                          'Buy Giftcards',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color(0xff3856dd),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(Icons.car_rental_sharp, size: 30, color: Colors.white,),
                          ),
                        Text(
                          'Uber',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color(0xff3856dd),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(Icons.airplane_ticket, size:30, color: Colors.white,),
                          ),
                      const  Text(
                          'Tickets',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          ),
                      ],
                    )
                  ], 
                ),

                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color(0xff3856dd),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child:const Icon(Icons.hotel_outlined, size: 30, color: Colors.white,),
                          ),
                      const  Text(
                          'Book Hotel',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            color: Color(0xff3856dd)
                          ),
                          child:const Icon(Icons.restaurant_outlined, size: 30, color: Colors.white,),
                          ),
                      const  Text(
                          'Resturants',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          ),
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color(0xff3856dd),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child:const Icon(Icons.delivery_dining_outlined, size: 30, color: Colors.white,),
                          ),
                      const  Text(
                          'Delivery',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          ),
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color(0xff3856dd),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child:const Icon(Icons.electric_meter_outlined, size: 30, color: Colors.white,),
                          ),
                      const  Text(
                          'Electricity',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color(0xff3856dd),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child:const Icon(Icons.tv_outlined, size: 30, color: Colors.white,),
                          ),
                       const Text(
                          'Cable',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color(0xff3856dd),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child:const Icon(Icons.water_outlined, size: 30, color: Colors.white,),
                          ),
                     const   Text(
                          'Water',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color(0xff3856dd),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child:const Icon(Icons.gas_meter_outlined, size: 30, color: Colors.white,),
                          ),
                        Text('Gas', style: TextStyle(fontSize: 14),)
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color(0xff3856dd),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child:const Icon(Icons.phone_in_talk, size: 30, color: Colors.white,),
                          ),
                      const  Text('Top Up', style: TextStyle(fontSize: 14),)
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        )
        ),
    );
  }
}