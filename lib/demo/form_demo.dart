import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Theme(
            data: Theme.of(context).copyWith(//ThemeData 改变所有
                primaryColor: Colors.black
            ),
            child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        RegisterForm()
                    ],
                ),
            ),
        ),
    );
  }
}

class RegisterForm extends StatefulWidget {

  @override
  RegisterFormState createState() => RegisterFormState();
}

class RegisterFormState extends State<RegisterForm> {
    final registerFormKey = GlobalKey<FormState>();
    bool autoValidate = false;
    void submitRegisterForm(){
        if(registerFormKey.currentState.validate()){
            registerFormKey.currentState.save();
            registerFormKey.currentState.validate();
            debugPrint("username:$username");
            debugPrint("password:$password");
            Scaffold.of(context).showSnackBar(
                SnackBar(
                    content: Text("Registering..."),
                )
            );
        }else{
            setState(() {
              autoValidate = true;
            });
        }
        
    }
    String username,password;
    String validateUsername(value){
        if(value.isEmpty){
            return "Username is required.";
        }
        return null;
    }

    String validatePassword(value){
        if(value.isEmpty){
            return "Password is required.";
        }
        return null;
    }
  @override
  Widget build(BuildContext context) {
    return Form(
        key: registerFormKey,
        child: Column(
            children: <Widget>[
                TextFormField(
                    decoration: InputDecoration(
                        labelText: "Username",
                        helperText: "",
                    ),
                    onSaved: (value){
                        username = value;
                    },
                    validator: validateUsername,
                    autovalidate: autoValidate,
                ),
                TextFormField(  
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password",
                        helperText: "",
                    ),
                    onSaved: (value){
                        password = value;
                    },
                    validator: validatePassword,
                    autovalidate: autoValidate,
                ),
                SizedBox(
                    height: 32,
                ),
                Container(
                    width: double.infinity,
                    child: RaisedButton(
                         color: Theme.of(context).accentColor,
                         child:  Text("Register",style: TextStyle(color:Colors.white)),
                         elevation: 0,
                         onPressed: submitRegisterForm,
                    ),
                ),
            ],
        ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {

  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
    final textEditingController = TextEditingController();
    @override
  void dispose() {//销毁
      textEditingController.dispose();
    super.dispose();
   
  }
  @override
  void initState() {
    super.initState();
    //  textEditingController.text = "halo";
    textEditingController.addListener(
        (){
            debugPrint("input:${textEditingController.text}");
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: textEditingController,
        // onChanged: (value){
        //     debugPrint("input:$value");
        // },
        onSubmitted: (value){
            debugPrint("submit:$value");
        },
        decoration: InputDecoration(
           icon: Icon(Icons.subject),
           labelText: "title",
           hintText: "enter the title",
            // border: InputBorder.none,
            // border: OutlineInputBorder()
            filled: true,
            // fillColor: Colors.red[100]
        ),
    );
  }
}

class ThemeDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}