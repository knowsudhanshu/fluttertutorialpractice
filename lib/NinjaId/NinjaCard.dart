
// NinjaCard implementation


/*
class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ninja Id Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/thumb.png'),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 60.0,
              color: Colors.grey,),
              Text('NAME',
                  style:TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  )),
              SizedBox(height: 10.0),
              Text('Sudhanshu',
                  style:TextStyle(
                    letterSpacing: 2.0,
                    color: Colors.amberAccent,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold

                  )),
              SizedBox(height: 30.0),
              Text('CURRENT NINJA LEVEL',
                  style:TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  )),
              SizedBox(height: 10.0),
              Text(
                  '$ninjaLevel',
                  style:TextStyle(
                      letterSpacing: 2.0,
                      color: Colors.amberAccent,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold

                  )),
              SizedBox(height: 30.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10.0),
                  Text('sudhanshu@sri.com',
                      style:TextStyle(
                          letterSpacing: 1.0,
                          color: Colors.grey[400],
                          fontSize: 18.0,
                      )),
                ],
              ),
            ]
        ),
      ),
    );
  }
}
*/