import 'package:acadease/app/modules/assessment/views/quiz_question_model.dart';
import 'package:flutter/material.dart';
// import 'package:quiz_app_f4f/quizQuestionModel.dart';

const backgroundColor = Color(0xffC7D9EA);
const foregroundColor = Color(0xff0F5697);

List<QuizQuestionModel> quizQuestions = [

QuizQuestionModel(
  question:"1.JSON stands for ?", 
  correctAnswer: "Javascript Object Notation", 
  option: [
    "Java Standard Output Network",
    "JavaScript Object Notation",
    "JavaScript Output Name",
    "Java Source Open Network",
    ], options: ["Java Standard Output Network",
    "JavaScript Object Notation",
    "JavaScript Output Name",
    "Java Source Open Network",],
  ),

  QuizQuestionModel(
  question:"2.Which of the following is not a type in JSON ?", 
  correctAnswer: "Data", 
  option: [
    "Data",
    "Object",
    "Array",
    "String",
    ], options: [ "Data",
    "Object",
    "Array",
    "String",],
  ),

  QuizQuestionModel(
  question:"3.Who is the Father of JSON ?", 
  correctAnswer: "Douglas Crockford", 
  option: [
    "Douglas Crockford",
    "Rasmus Lerdorf",
    "Douglas Michel",
    "Dennis Ritchie",
    ], options: [
       "Douglas Crockford",
    "Rasmus Lerdorf",
    "Douglas Michel",
    "Dennis Ritchie",
    ],
  ),

   QuizQuestionModel(
  question:"4.What are the Data Types in the Dart language ?", 
  correctAnswer: "All of these", 
  option: [
    "Strings",
    "Booleans",
    "Lists",
    "All of these",
    ], options: [ "Strings",
    "Booleans",
    "Lists",
    "All of these",
    ],
  ),

   QuizQuestionModel(
  question:"5.Dart is an ?", 
  correctAnswer: "All of the above", 
  option: [
    "open-source",
    "general-purpose",
    "programming language",
    "All of the above",
    ], options: [
      "open-source",
    "general-purpose",
    "programming language",
    "All of the above",
    ],
  ),

    QuizQuestionModel(
  question:"6.Dart is originally developed by ?", 
  correctAnswer: "Google", 
  option: [
    "Microsoft",
    "Google",
    "IBM",
    "Facebook",
    ], options: [
      "Microsoft",
    "Google",
    "IBM",
    "Facebook",
    ],
  ),

    QuizQuestionModel(
  question:"7.Dart has multiple interfaces ?", 
  correctAnswer: "TRUE", 
  option: [
    "TRUE",
    "FALSE",
    "Can be true or false",
    "Can not say",
    ], options: ["TRUE",
    "FALSE",
    "Can be true or false",
    "Can not say",],
  ),

   QuizQuestionModel(
  question:"8.Dart is an Oject-Oriented language ?", 
  correctAnswer: "Yes", 
  option: [
    "Yes",
    "No",
    "Can be yes or no",
    "Can not say",
    ],  options: [
       "Yes",
    "No",
    "Can be yes or no",
    "Can not say",
    ], 
  ),
];
