import 'dart:convert';
import 'package:flutter_gherkin_addons/given.dart';
import 'package:flutter_gherkin_addons/stubber.dart';
import 'package:flutter_gherkin_addons/wrapper.dart';
import 'package:gherkin/gherkin.dart';
import 'package:persona/models/Person.dart';
GenericGiven1 givenFollowingUserExists(){
  return given1("Below Persona exists",(context,Table dataTable) async  {
    Bootstrapper.stubber.stub(Stub("GET","/people",Response(200,json.encode({
      "results":[
        Person(
          name: "Atmaram",
          hair_color: "Blonde",
          skin_color: "Dark",
          eye_color: "Hazel"
        ).toJson(),
        Person(
            name: "Keshav",
            hair_color: "Black",
            skin_color: "Fair",
            eye_color: "Black"
        ).toJson(),
        Person(
            name: "Prasad",
            hair_color: "Black",
            skin_color: "Fair",
            eye_color: "Black"
        ).toJson(),
      ]
    }),headers: {"Content-Type":"application/json"})));
  });
}