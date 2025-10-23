import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final String? timer;
  final int id, courses, seat;
  final Color color;
  final String category;

  Product({
    required this.image,
    required this.timer,
    required this.title,
    required this.courses,
    required this.seat,
    required this.color,
    required this.id,
    required this.category,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "App Development With Flutter",
    image: "asset/2024-12-18T15-22-42.948Z-Flutter-Thumbnail.jpg",
    color: Color.alphaBlend(Colors.grey, Colors.grey),
    courses: 16, seat: 14, timer: '8',
    category: "Web & App Development",
  ),
  Product(
    id: 2,
    title: "SQA Manual & Automated Testing",
    image: "asset/2024-12-18T15-24-44.114Z-Untitled-1 (21).jpg",
    color: Color.alphaBlend(Colors.grey, Colors.grey),
    courses: 22, seat: 15, timer: '12',  category: "Web & App Development",
  ),
  Product(
    id: 3,
    title: "Mastering DevOps: From Fundamentals to Advanced Practices",
    image: "asset/2025-01-23T12-32-14.452Z-Untitled-1 (1) (1).jpg",
    color: Color.alphaBlend(Colors.grey, Colors.grey),
    courses: 15, seat: 18, timer: '10', category: '"Web & App Development"',
  ),
  Product(
    id: 4,
    title: "Full Stack Web Development with PHP, Laravel & Vue Js",
    image: "asset/Laravel.jpg",
    color: Color.alphaBlend(Colors.grey, Colors.grey),
    courses: 18, seat: 9,
    timer: "12",  category: '"Web & App Development"',
  ),
  Product(
    id: 5,
    title: "UI UX Design Career Track Program",
    image: "asset/Design.jpg",
    color: Color.alphaBlend(Colors.grey, Colors.grey),
    courses: 18, seat: 9, timer: '5',  category: '"Web & App Development"',
  ),
  Product(
  id: 6,
  title: "Full Stack Web Development with JavaScript (MERN)",
image: "asset/Java.jpg",
color: Color.alphaBlend(Colors.grey, Colors.grey),
courses: 18, seat: 9, timer: '9',  category: '"Web & App Development"',
  ),
];
