import 'package:flutter/material.dart';
import 'package:mid_term_project/widgets/book.dart';

class BookListScreen extends StatelessWidget {
  const BookListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Book> books = [
      Book(
        title: "Rich Dad, Poor Dad",
        author: "Robert T. Kiyosaki",
        coverImagePath: '/images/rich-dad-poor-dad.jpg',
        price: "Rs. 1250",
      ),
      Book(
        title: "The Alchemist",
        author: "Coelho Paulo",
        coverImagePath: '/images/the-alchemist.jpg',
        price: "Rs. 1400",
      ),
      Book(
        title: "Men are From Mars",
        author: "Stephen R. Covey",
        coverImagePath: '/images/men-are-from-mars.jpg',
        price: "Rs. 1600",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Ceylon Bookstore"),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    book.title,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    book.author,
                    style: const TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(height: 10),
                  Image.asset(
                    book.coverImagePath,
                    height: 200,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const Text(
                        "Image not found",
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      );
                    },
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        book.price,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Add to Cart"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
