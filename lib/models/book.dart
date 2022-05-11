class Book {
  String type;
  String title;
  String publisher;
  DateTime date;
  String imageUrl;
  num score;
  num rating;
  String review;
  num height;

  Book({
    required this.type,
    required this.title,
    required this.publisher,
    required this.date,
    required this.imageUrl,
    required this.score,
    required this.rating,
    required this.review,
    required this.height,
  });

  static List<Book> generateBook() {
    return [
      Book(
        type: 'Fiction',
        title: 'This Is the Way',
        publisher: 'Paperback',
        date: DateTime(2019,3,23),
        imageUrl: 'assets/images/book1.jpeg',
        score: 3.20,
        rating: 86,
        review: 'Anthony Sonaghan is hiding out in an old tenement house in Dublin: he fears he has reignited an ancient feud between the two halves of his family. Twenty-first-century Dublin may have shopping malls and foreign exchange students, but Anthony is from an Irish Travelling community, where blood ties are bound deeply to the past. When his roguish uncle Arthur shows up on his doorstep with a missing toe, delirious and apparently on the run, history and its troubles are following close behind him--and Anthony will soon have to face the question of who he really is.',
        height: 260.0,
      ),
      Book(
        type: 'Young Adult',
        title: 'The Hunger Games',
        publisher: 'Suzanne Collins',
        date: DateTime(2008,9,14),
        imageUrl: 'assets/images/book2.jpeg',
        score: 4.32,
        rating: 7360387,
        review: 'In the ruins of a place once known as North America lies the nation of Panem, a shining Capitol surrounded by twelve outlying districts. The Capitol is harsh and cruel and keeps the districts in line by forcing them all to send one boy and one girl between the ages of twelve and eighteen to participate in the annual Hunger Games, a fight to the death on live TV.',
        height: 230.0,
      ),
      Book(
        type: 'Classsics',
        title: 'To Kill a Mockingbird',
        publisher: 'Harper Lee',
        date: DateTime(1960,7,11),
        imageUrl: 'assets/images/book3.jpeg',
        score: 4.27,
        rating: 5256319,
        review: 'The unforgettable novel of a childhood in a sleepy Southern town and the crisis of conscience that rocked it. "To Kill A Mockingbird" became both an instant bestseller and a critical success when it was first published in 1960. It went on to win the Pulitzer Prize in 1961 and was later made into an Academy Award-winning film, also a classic.',
        height: 210.0,
      ),
      Book(
        type: 'Historical Fiction',
        title: 'The Book Thief',
        publisher: 'Markus Zusak',
        date: DateTime(2007,11,1),
        imageUrl: 'assets/images/book4.jpeg',
        score: 4.38,
        rating: 2168536,
        review: 'It is 1939. Nazi Germany. The country is holding its breath. Death has never been busier, and will be busier still.',
        height: 280.0,
      ),
      Book(
        type: 'Romance',
        title: 'The Fault in Our Stars',
        publisher: 'John Green',
        date: DateTime(2012,1,10),
        imageUrl: 'assets/images/book5.jpeg',
        score: 4.17,
        rating: 4309453,
        review: 'Despite the tumor-shrinking medical miracle that has bought her a few years, Hazel has never been anything but terminal, her final chapter inscribed upon diagnosis. But when a gorgeous plot twist named Augustus Waters suddenly appears at Cancer Kid Support Group, Hazel\'s story is about to be completely rewritten.',
        height: 250.0,
      ),
      Book(
        type: 'Classics',
        title: 'Gone with the Wind',
        publisher: 'Margaret Mitchell',
        date: DateTime(1936,6,30),
        imageUrl: 'assets/images/book6.jpeg',
        score: 4.30,
        rating: 1147994,
        review: 'Scarlett O\'Hara, the beautiful, spoiled daughter of a well-to-do Georgia plantation owner, must use every means at her disposal to claw her way out of the poverty she finds herself in after Sherman\'s March to the Sea.',
        height: 220.0,
      ),
    ];
  }
}
