import 'package:flutter/material.dart';

void main() {
  runApp(
    SinglePageCv(),
  );
}

class SinglePageCv extends StatelessWidget {
  const SinglePageCv({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        "/": (context) => MainPage(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              SizedBox(height: screenSize.height * 0.07),
              _topDivider(screenSize),
              Text(
                "Niamot Ullah",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              SizedBox(height: 16),

              _sectionTitle(context, "Mobile App Developer"),
              SizedBox(height: 4),
              Text("123 Your Street"),
              Text("Your City, ST 12345"),
              Text("(123) 456-7890"),
              Text("no_reply@example.com"),
              SizedBox(height: 24),

              _sectionTitle(context, "Skills"),
              SizedBox(height: 4),
              Text("HTML, CSS, JS, Design, Develop"),
              SizedBox(height: 24),

              _sectionTitle(context, "Education"),
              SizedBox(height: 4),
              Text(
                "My Favorite School, Location - Degree",
                style:
                    Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(
                      color: Color(0xff1971c2),
                    ),
              ),
              Text("January 2000 to December 2001"),
              Text("Skills: List of exciting things I did on the university."),
              SizedBox(height: 24),

              _sectionTitle(context, "Experience"),
              SizedBox(height: 4),
              Text(
                "Company Name, Location - Job Title",
                style:
                    Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(
                      color: Color(0xff1971c2),
                    ),
              ),
              Text("January 2000 to December 2001"),
              Text("\t\t* list of achievement"),
              Text("\t\t* list of achievement"),
              Text("\t\t* list of achievement"),
              Text("Skills: List of skills used or gained from this company."),
              SizedBox(height: 16),

              Text(
                "Company Name, Location - Job Title",
                style:
                    Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(
                      color: Color(0xff1971c2),
                    ),
              ),
              Text("January 2000 to December 2001"),
              Text("\t\t* list of achievement"),
              Text("\t\t* list of achievement"),
              Text("\t\t* list of achievement"),
              Text("Skills: List of skills used or gained from this company."),
              SizedBox(height: 16),

              Text(
                "Company Name, Location - Job Title",
                style:
                    Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(
                      color: Color(0xff1971c2),
                    ),
              ),
              Text("January 2000 to December 2001"),
              Text("\t\t* list of achievement"),
              Text("\t\t* list of achievement"),
              Text("\t\t* list of achievement"),
              Text("Skills: List of skills used or gained from this company."),
              SizedBox(height: 24),

              _sectionTitle(context, "Links"),
              SizedBox(height: 4),
              Text("Some links"),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
    // TODO:  something to do
  }

  Widget _sectionTitle(BuildContext context, String text) => Text(
    text,
    style: Theme.of(context).textTheme.titleMedium?.copyWith(
      color: Color(0xff2f9e44),
      fontWeight: .bold,
    ),
  );

  Widget _topDivider(Size screenSize) => ConstrainedBox(
    constraints: BoxConstraints(maxWidth: screenSize.width * .9),
    child: Divider(
      thickness: 2,
      color: Colors.black,
    ),
  );
}
