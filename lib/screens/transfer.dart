import 'package:flutter/material.dart';




class Transfer extends StatefulWidget {
  const Transfer({super.key});

  @override
  State<Transfer> createState() => _TransferState();
}



class _TransferState extends State<Transfer> {

  String _selectedCurrency = 'USD';
  final List<String> _currencies = ['USD', 'EUR', 'GBP', 'NGN'];

  String recipientCurrency = 'NGN';
  final List<String> recipientCurrencies = ['NGN', 'GHC', ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text('Transfer'),
        //leading: Icon(Icons.arrow_circle_left_outlined),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
      
          //Body container started here
          child: Container(                               
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color(0xffedeef0)
            ),
      
            //Display of column type for the transaction title
            child: Column(                                
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
      
                //Transaction title container in blue background (Title not yet written)
                // Container(
                //   child: Padding(
                //     padding: EdgeInsets.all(8.0),
                //     child: Column(
                //       children: [
                //         Text('data')
                //       ],
                //     ),
                //     ),
                //   width: MediaQuery.of(context).size.width,
                //   height: 80,
                //   decoration: BoxDecoration(
                //     color: Colors.blue,
                //     borderRadius: BorderRadius.all(Radius.circular(15))
                //   ),
                // ),
                SizedBox(height: 20,),
      
                //Column to display/house text description and textfield
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,                                 
                  children: [
                    Text(
                      'You sending exactly?',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xff141535)
                      ),
                      ),
                    SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                        hintText: '50',
                        suffixIconColor: Colors.blue,
                        suffixIcon: Container(
                          height: 55,
                          width: 100,
                          decoration: BoxDecoration(
                            //color:  Colors.blue,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.emoji_flags_rounded,
                                color: Colors.red,
                              ),
                              Spacer(),
                              DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: _selectedCurrency,
                                  onChanged: (String? newValue){
                                    setState((){
                                      _selectedCurrency = newValue!;
                                    });
                                  },
                                  items: _currencies.map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList()
                                ), 
                                
                                ),
                            ],
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                    )
                  ],
                ),
      
                SizedBox(height: 30),
      
              //Transaction and converted fees
               Column(
                children: [
      
                  //Transaction fee
                  Container(
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                          child: Icon(Icons.minimize_outlined),
                        ),
                        SizedBox(width: 10,),
                        Text(
                          'Transaction fee',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff141535),
                          ),
                          ),
                        Spacer(),
                        Text(
                          '0.00',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff141535),
                          ),
                          )
                      ],
                    ),
                  ),
      
                  SizedBox(height: 10,),
      
                //Bank fees
                  Container(
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                          child: Icon(Icons.minimize_outlined),
                        ),
                        SizedBox(width: 10,),
                        Text(
                          'Bank transfer fee',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff141535)
                          ),
                          ),
                        Spacer(),
                        Text(
                          '0.00',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff141535),
                          ),
                          ),
                      ],
                    ),
                  ),
      
                  SizedBox(height: 10),
      
                //Total fees
                  Container (
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                          child: Icon(Icons.minimize_outlined),
                        ),
                        SizedBox(width: 10,),
                        Text(
                          'Total amount',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff141535)
                          ),
                          ),
                        Spacer(),
                        Text(
                          '50 USD',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff141535),
                          ),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  
                  Container(
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 1),
                          child: Icon(Icons.drag_handle_outlined),
                        ),
                        SizedBox(width: 10,),
                        Text(
                          'Total amount converted',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff141535),
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        Spacer(),
                        Text(
                          '90000.00 NGN',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff141535),
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                      ],
                    ),
                  ),
                ],
               ),
      
                SizedBox(height: 20),
      
              Container(
                child: Row(
                  children: [
                    Text(
                      'Have a coupon code?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    Spacer(),
      
                    Container(
                      width: 80,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xff3856dd),
                        borderRadius: BorderRadius.circular(15)
                      ),
      
                      child: Center(
                        child: Text(
                          'Apply',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                      ),
                    )
                  ],
                ),
               ),
      
               SizedBox(height: 30),
      
                // Recipients column
               Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recipient gets:',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    ),
                  SizedBox(height: 10),
      
                  // Recipients textfield
                  TextField(
                    decoration: InputDecoration(
                      hintText: '90000.00',
                      suffixIconColor: Colors.blue,
                        suffixIcon: Container(
                          height: 55,
                          width: 100,
                          decoration: BoxDecoration(
                            //color:  Colors.blue,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.emoji_flags_rounded,
                                color: Colors.red,
                              ),
                              Spacer(),
                              DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: recipientCurrency,
                                  onChanged: (String? newValue){
                                    setState((){
                                      recipientCurrency = newValue!;
                                    });
                                  },
                                  items: recipientCurrencies.map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList()
                                ), 
                                
                                ),
                            ],
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                    ),
                  )
                ],
               ),
      
               SizedBox(height: 30),
      
              Container(
                child: Column(
                  children: [
                    Text(
                      'You could save up to 5% on your next transaction.',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      ),
                  ],
                ),
              ),
      
              SizedBox(height: 30),
      
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xff3856dd),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Send',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}