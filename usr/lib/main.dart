import 'package:flutter/material.dart';

void main() {
  runApp(const AfrocentricityApp());
}

class AfrocentricityApp extends StatelessWidget {
  const AfrocentricityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theoretical Framework',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8B4513), // SaddleBrown for an earthy tone
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        textTheme: const TextTheme(
          headlineSmall: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF4A2F1D)),
          titleLarge: TextStyle(fontWeight: FontWeight.w600),
          bodyLarge: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const TheoryHomeScreen(),
      },
    );
  }
}

class TheoryHomeScreen extends StatelessWidget {
  const TheoryHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theoretical Framework'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(16.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  const SectionCard(
                    title: '2.3.1 Afrocentricity Theory',
                    content: 'Afrocentricity is a paradigm based on the idea that African people should re-assert a sense of agency in order to achieve sanity. It is an intellectual paradigm that privileges the African perspective and centers African history, culture, and values in the study of African phenomena.',
                  ),
                  const SectionCard(
                    title: '2.3.2 Creator of this Theory',
                    content: 'The theory of Afrocentricity was primarily conceptualized and popularized by Dr. Molefi Kete Asante, a prominent African American scholar, historian, and philosopher. His foundational book "Afrocentricity: The Theory of Social Change" (1980) formally established the paradigm.',
                  ),
                  const SectionCard(
                    title: '2.3.3 Provision Functions of the Theory',
                    content: 'The theory provides several key functions:\n'
                        '• Agency: It positions African people as subjects of historical experiences rather than objects on the fringes of European experiences.\n'
                        '• Centeredness: It requires researchers to locate themselves within the cultural context of the subjects being studied.\n'
                        '• Critique: It challenges Eurocentric hegemony in academic discourse.\n'
                        '• Empowerment: It provides a framework for cultural and psychological liberation.',
                  ),
                  const SectionCard(
                    title: '2.3.4 Historical Overview of the Theory',
                    content: 'While Dr. Asante formalized the theory in 1980, its roots trace back to early Pan-Africanist thinkers like W.E.B. Du Bois, Marcus Garvey, and Cheikh Anta Diop. The movement gained significant momentum during the Black Studies movement of the 1960s and 1970s, seeking to establish a distinct methodological and philosophical framework for Africana Studies.',
                  ),
                  const SectionCard(
                    title: '2.3.5 Relevance of Theory to Your Study',
                    content: 'This theory is highly relevant as it provides the critical lens necessary to examine the subject matter from an endogenous perspective. It ensures that the cultural, historical, and social realities of the African or African diaspora subjects are not distorted by external, predominantly Eurocentric, paradigms. It validates the lived experiences and epistemologies of the study population.',
                  ),
                  const SectionCard(
                    title: '2.3.6 Limitations of the Study',
                    content: 'While highly valuable, applying Afrocentricity has limitations:\n'
                        '• It may face resistance or be misunderstood in traditionally Eurocentric academic environments.\n'
                        '• There can be a risk of essentializing "African culture" given the vast diversity of the continent and diaspora.\n'
                        '• Potential for romanticizing the past if critical rigor is not maintained.',
                  ),
                  const SectionCard(
                    title: '2.3.7 Cultural Transmission Theory',
                    content: 'Cultural Transmission Theory examines how culture is passed from one generation to the next, or between groups, through learning, communication, and socialization. In the context of Afrocentricity, it highlights the importance of preserving and transmitting indigenous knowledge systems, values, and practices to maintain cultural continuity and identity.',
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SectionCard extends StatelessWidget {
  final String title;
  final String content;

  const SectionCard({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              content,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
