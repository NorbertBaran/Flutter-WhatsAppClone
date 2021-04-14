import 'package:flutter/material.dart';

class User{
  final String name, message;
  User({
    this.name,
    this.message
  });
}

List<User> users = [
  User(
    name: "Michał Prochera",
    message: "Lorem ipsum dolor sit amet, consectetur..."
  ),
  User(
    name: "Marcel Korpal",
    message: "Lorem ipsum dolor sit amet, consectetur..."
  ),
  User(
    name: "Dawid Podsiadło",
    message: "Lorem ipsum dolor sit amet, consectetur..."
  ),
  User(
    name: "Kszysztof Krafczyk",
    message: "Lorem ipsum dolor sit amet, consectetur..."
  ),
  User(
    name: "John Smith",
    message: "Lorem ipsum dolor sit amet, consectetur..."
  ),
];