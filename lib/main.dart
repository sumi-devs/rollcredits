import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RollCredits',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Movie {
  final String id;
  final String title;
  final String poster;
  final String description;
  final List<String> cast;
  final List<String> crew;
  final double averageRating;
  final bool isMovie;

  Movie({
    required this.id,
    required this.title,
    required this.poster,
    required this.description,
    required this.cast,
    required this.crew,
    required this.averageRating,
    required this.isMovie,
  });
}

class AppState {
  static List<Movie> watchlist = [];
  static Map<String, int> watchedMovies = {};
  static String username = "John Doe";

  static List<Movie> trendingMovies = [
    Movie(
      id: '1',
      title: 'Avengers: Endgame',
      poster: 'https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_SX300.jpg',
      description: 'The epic conclusion to the Infinity Saga that brings together all Marvel heroes for the ultimate battle against Thanos.',
      cast: ['Robert Downey Jr.', 'Chris Evans', 'Scarlett Johansson', 'Mark Ruffalo'],
      crew: ['Anthony Russo', 'Joe Russo', 'Kevin Feige'],
      averageRating: 8.4,
      isMovie: true,
    ),
    Movie(
      id: '2',
      title: 'Spider-Man: No Way Home',
      poster: 'https://m.media-amazon.com/images/M/MV5BZWMyYzFjYTYtNTRjYi00OGExLWE2YzgtOGRmYjAxZTU3NzBiXkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_SX300.jpg',
      description: 'Spider-Man faces villains from across the multiverse when a spell goes wrong.',
      cast: ['Tom Holland', 'Zendaya', 'Benedict Cumberbatch', 'Willem Dafoe'],
      crew: ['Jon Watts', 'Kevin Feige', 'Amy Pascal'],
      averageRating: 8.2,
      isMovie: true,
    ),
    Movie(
      id: '3',
      title: 'Dune',
      poster: 'https://m.media-amazon.com/images/M/MV5BN2FjNmEyNWMtYzM0ZS00NjIyLTg5YzYtYThlMGVjNzE1OGViXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SX300.jpg',
      description: 'A young man leads a rebellion on a desert planet to control the universe\'s most valuable resource.',
      cast: ['Timothée Chalamet', 'Rebecca Ferguson', 'Oscar Isaac', 'Josh Brolin'],
      crew: ['Denis Villeneuve', 'Mary Parent', 'Cale Boyter'],
      averageRating: 8.0,
      isMovie: true,
    ),
  ];

  static List<Movie> trendingShows = [
    Movie(
      id: '4',
      title: 'The Last of Us',
      poster: 'https://m.media-amazon.com/images/M/MV5BZGUzYTI3M2EtZmM0Yy00NGUyLWI4ODEtN2Q3ZGJlYzhhZjU3XkEyXkFqcGdeQXVyNTM0OTY1OQ@@._V1_SX300.jpg',
      description: 'A post-apocalyptic story of survival and hope in a world devastated by a fungal infection.',
      cast: ['Pedro Pascal', 'Bella Ramsey', 'Anna Torv'],
      crew: ['Craig Mazin', 'Neil Druckmann', 'Carolyn Strauss'],
      averageRating: 8.7,
      isMovie: false,
    ),
    Movie(
      id: '5',
      title: 'House of the Dragon',
      poster: 'https://m.media-amazon.com/images/M/MV5BM2QzM2JiNTMtN2UzYy00ZjIwLTk4N2EtZDcxMmM3NDA3NGY2XkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_SX300.jpg',
      description: 'A Game of Thrones prequel about the Targaryen dynasty and their civil war.',
      cast: ['Paddy Considine', 'Emma D\'Arcy', 'Matt Smith', 'Olivia Cooke'],
      crew: ['Ryan Condal', 'Miguel Sapochnik', 'George R.R. Martin'],
      averageRating: 8.5,
      isMovie: false,
    ),
    Movie(
      id: '6',
      title: 'Wednesday',
      poster: 'https://m.media-amazon.com/images/M/MV5BM2ZmMjEyZmYtOGM4YS00YTNhLWE3ZDMtNzQxM2RhNjBlODIyXkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_SX300.jpg',
      description: 'Wednesday Addams navigates her supernatural school years at Nevermore Academy.',
      cast: ['Jenna Ortega', 'Hunter Doohan', 'Emma Myers'],
      crew: ['Alfred Gough', 'Miles Millar', 'Tim Burton'],
      averageRating: 8.1,
      isMovie: false,
    ),
  ];

  static List<Movie> topMovies = [
    Movie(
      id: '7',
      title: 'The Godfather',
      poster: 'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg',
      description: 'The aging patriarch of an organized crime dynasty transfers control to his reluctant son.',
      cast: ['Marlon Brando', 'Al Pacino', 'James Caan', 'Diane Keaton'],
      crew: ['Francis Ford Coppola', 'Albert S. Ruddy'],
      averageRating: 9.2,
      isMovie: true,
    ),
    Movie(
      id: '8',
      title: 'The Shawshank Redemption',
      poster: 'https://m.media-amazon.com/images/M/MV5BNDE3ODcxYzMtY2YzZC00NmNlLWJiNDMtZDViZWM2MzIxZDYwXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_SX300.jpg',
      description: 'Two imprisoned men bond over years, finding solace and eventual redemption.',
      cast: ['Tim Robbins', 'Morgan Freeman', 'Bob Gunton'],
      crew: ['Frank Darabont', 'Niki Marvin'],
      averageRating: 9.3,
      isMovie: true,
    ),
  ];

  static List<Movie> topShows = [
    Movie(
      id: '9',
      title: 'Breaking Bad',
      poster: 'https://m.media-amazon.com/images/M/MV5BYmQ4YWMxYjUtNjZmYi00MDQ1LWFjMjMtNjA5ZDdiYjdiODU5XkEyXkFqcGdeQXVyMTMzNDExODE5._V1_SX300.jpg',
      description: 'A high school chemistry teacher turns to cooking methamphetamine after a cancer diagnosis.',
      cast: ['Bryan Cranston', 'Aaron Paul', 'Anna Gunn', 'Dean Norris'],
      crew: ['Vince Gilligan', 'Mark Johnson'],
      averageRating: 9.5,
      isMovie: false,
    ),
    Movie(
      id: '10',
      title: 'Game of Thrones',
      poster: 'https://m.media-amazon.com/images/M/MV5BYTRiNDQwYzAtMzVlZS00NTI5LWJjYjUtMzkwNTUzMWMxZTllXkEyXkFqcGdeQXVyNDIzMzcwNjc@._V1_SX300.jpg',
      description: 'Noble families vie for control of the Iron Throne of the Seven Kingdoms.',
      cast: ['Sean Bean', 'Emilia Clarke', 'Kit Harington', 'Peter Dinklage'],
      crew: ['David Benioff', 'D.B. Weiss', 'George R.R. Martin'],
      averageRating: 9.0,
      isMovie: false,
    ),
  ];

  static List<Movie> get allMovies => [...trendingMovies, ...topMovies, ...trendingShows, ...topShows];
}

// Splash Screen
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AuthScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.movie,
                size: 60,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'RollCredits',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Your entertainment companion',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Auth Screen
class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.movie,
                  size: 50,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Welcome to RollCredits',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Discover your next favorite movie or show',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 60),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => MainScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => MainScreen()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.red),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Main Screen
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  
  final List<Widget> _screens = [
    DashboardScreen(),
    SearchScreen(),
    WatchlistScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[900],
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Watchlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// Dashboard Screen
class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'RollCredits',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSection('Trending Movies', AppState.trendingMovies, context),
              SizedBox(height: 20),
              _buildSection('Trending Shows', AppState.trendingShows, context),
              SizedBox(height: 20),
              _buildSection('Top Movies', AppState.topMovies, context),
              SizedBox(height: 20),
              _buildSection('Top Shows', AppState.topShows, context),
              SizedBox(height: 20),
              _buildSection('Your Watchlist', AppState.watchlist, context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<Movie> movies, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 200,
          child: movies.isEmpty
              ? Center(
                  child: Text(
                    'No items yet',
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              : ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MovieDetailScreen(movie: movies[index]),
                          ),
                        );
                      },
                      child: Container(
                        width: 130,
                        margin: EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.grey[800],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  movies[index].poster,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      color: Colors.grey[800],
                                      child: Center(
                                        child: Icon(
                                          Icons.movie,
                                          color: Colors.grey,
                                          size: 40,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              movies[index].title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
        ),
      ],
    );
  }
}

// Movie Detail Screen
class MovieDetailScreen extends StatefulWidget {
  final Movie movie;

  MovieDetailScreen({required this.movie});

  @override
  _MovieDetailScreenState createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  bool isInWatchlist = false;
  bool isWatched = false;
  int userRating = 0;

  @override
  void initState() {
    super.initState();
    isInWatchlist = AppState.watchlist.any((m) => m.id == widget.movie.id);
    isWatched = AppState.watchedMovies.containsKey(widget.movie.id);
    userRating = AppState.watchedMovies[widget.movie.id] ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        widget.movie.poster,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey[800],
                            child: Center(
                              child: Icon(
                                Icons.movie,
                                color: Colors.grey,
                                size: 60,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.movie.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 20),
                            SizedBox(width: 5),
                            Text(
                              '${widget.movie.averageRating}/10',
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                        if (userRating > 0) ...[
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.green, size: 16),
                              SizedBox(width: 5),
                              Text(
                                'Your rating: $userRating/10',
                                style: TextStyle(color: Colors.green, fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                        SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              setState(() {
                                if (isInWatchlist) {
                                  AppState.watchlist.removeWhere((m) => m.id == widget.movie.id);
                                  isInWatchlist = false;
                                } else {
                                  AppState.watchlist.add(widget.movie);
                                  isInWatchlist = true;
                                }
                              });
                            },
                            icon: Icon(
                              isInWatchlist ? Icons.bookmark : Icons.bookmark_border,
                              color: Colors.white,
                            ),
                            label: Text(
                              isInWatchlist ? 'Remove' : 'Watchlist',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: isInWatchlist ? Colors.green : Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Description',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                widget.movie.description,
                style: TextStyle(color: Colors.grey[300], fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Cast',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: widget.movie.cast.map((actor) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      actor,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              Text(
                'Crew',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: widget.movie.crew.map((member) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.grey[700],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      member,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    _showRatingDialog(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isWatched ? Colors.green : Colors.blue,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    isWatched ? 'Update Rating' : 'Mark as Watched & Rate',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showRatingDialog(BuildContext context) {
    int tempRating = userRating > 0 ? userRating : 5;
    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setDialogState) {
            return AlertDialog(
              backgroundColor: Colors.grey[900],
              title: Text(
                'Rate ${widget.movie.title}',
                style: TextStyle(color: Colors.white),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Your Rating: $tempRating/10',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Wrap(
                    spacing: 8,
                    children: List.generate(10, (index) {
                      return GestureDetector(
                        onTap: () {
                          setDialogState(() {
                            tempRating = index + 1;
                          });
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: tempRating > index ? Colors.red : Colors.grey[700],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              '${index + 1}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel', style: TextStyle(color: Colors.grey)),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      AppState.watchedMovies[widget.movie.id] = tempRating;
                      userRating = tempRating;
                      isWatched = true;
                      // Remove from watchlist if it's there
                      AppState.watchlist.removeWhere((m) => m.id == widget.movie.id);
                      isInWatchlist = false;
                    });
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: Text('Save', style: TextStyle(color: Colors.white)),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

// Search Screen
class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _searchController = TextEditingController();
  List<Movie> searchResults = [];

  void _performSearch(String query) {
    if (query.isEmpty) {
      setState(() {
        searchResults = [];
      });
      return;
    }

    setState(() {
      searchResults = AppState.allMovies
          .where((movie) => movie.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Search',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Search movies and shows...',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                filled: true,
                fillColor: Colors.grey[900],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: _performSearch,
            ),
            SizedBox(height: 20),
            Expanded(
              child: searchResults.isEmpty
                  ? Center(
                      child: Text(
                        _searchController.text.isEmpty
                            ? 'Start typing to search...'
                            : 'No results found',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    )
                  : GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.7,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: searchResults.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MovieDetailScreen(movie: searchResults[index]),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                                      child: Image.network(
                                        searchResults[index].poster,
                                        fit: BoxFit.cover,
                                        errorBuilder: (context, error, stackTrace) {
                                          return Container(
                                            color: Colors.grey[800],
                                            child: Center(
                                              child: Icon(
                                                Icons.movie,
                                                color: Colors.grey,
                                                size: 40,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    searchResults[index].title,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

// Watchlist Screen
class WatchlistScreen extends StatefulWidget {
  @override
  _WatchlistScreenState createState() => _WatchlistScreenState();
}

class _WatchlistScreenState extends State<WatchlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Watchlist',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: AppState.watchlist.isEmpty
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.bookmark_border,
                      size: 80,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Your watchlist is empty',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Add movies and shows to your watchlist',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              )
            : GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.6,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: AppState.watchlist.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MovieDetailScreen(movie: AppState.watchlist[index]),
                        ),
                      ).then((_) {
                        setState(() {}); // to keep refreshing the watchlist
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          AppState.watchlist[index].poster,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: Colors.grey[800],
                              child: Center(
                                child: Icon(
                                  Icons.movie,
                                  color: Colors.grey,
                                  size: 30,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}

// Profile Screen
class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    List<Movie> watchedMoviesList = AppState.allMovies
        .where((movie) => AppState.watchedMovies.containsKey(movie.id))
        .toList();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.red,
                    child: Text(
                      AppState.username[0].toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppState.username,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '${AppState.watchedMovies.length} watched • ${AppState.watchlist.length} in watchlist',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recently Watched',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 120,
                child: watchedMoviesList.isEmpty
                    ? Center(
                        child: Text(
                          'No watched movies yet',
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    : ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: watchedMoviesList.length,
                        itemBuilder: (context, index) {
                          Movie movie = watchedMoviesList[index];
                          int rating = AppState.watchedMovies[movie.id] ?? 0;
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MovieDetailScreen(movie: movie),
                                ),
                              );
                            },
                            child: Container(
                              width: 80,
                              margin: EdgeInsets.only(right: 10),
                              child: Column(
                                children: [
                                  Container(
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[800],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network(
                                        movie.poster,
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                        errorBuilder: (context, error, stackTrace) {
                                          return Container(
                                            color: Colors.grey[800],
                                            child: Center(
                                              child: Icon(
                                                Icons.movie,
                                                color: Colors.grey,
                                                size: 25,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.star, color: Colors.amber, size: 12),
                                      Text(
                                        '$rating',
                                        style: TextStyle(color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
              ),
              SizedBox(height: 30),
              
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Your Watchlist',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 120,
                child: AppState.watchlist.isEmpty
                    ? Center(
                        child: Text(
                          'No items in watchlist',
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    : ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: AppState.watchlist.length,
                        itemBuilder: (context, index) {
                          Movie movie = AppState.watchlist[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MovieDetailScreen(movie: movie),
                                ),
                              );
                            },
                            child: Container(
                              width: 80,
                              margin: EdgeInsets.only(right: 10),
                              child: Column(
                                children: [
                                  Container(
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[800],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Text(
                                        movie.poster,
                                        style: TextStyle(fontSize: 25),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    movie.title,
                                    style: TextStyle(color: Colors.white, fontSize: 10),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
              ),
              SizedBox(height: 40),
              
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Settings',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    _buildSettingsItem(Icons.person, 'Account Details'),
                    _buildSettingsItem(Icons.notifications, 'Notifications'),
                    _buildSettingsItem(Icons.privacy_tip, 'Privacy'),
                    _buildSettingsItem(Icons.help, 'Help & Support'),
                    _buildSettingsItem(Icons.logout, 'Logout', isLogout: true),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingsItem(IconData icon, String title, {bool isLogout = false}) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$title clicked'),
            backgroundColor: Colors.grey[800],
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Icon(
              icon,
              color: isLogout ? Colors.red : Colors.grey,
              size: 24,
            ),
            SizedBox(width: 15),
            Text(
              title,
              style: TextStyle(
                color: isLogout ? Colors.red : Colors.white,
                fontSize: 16,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}