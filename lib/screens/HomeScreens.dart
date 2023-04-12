import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Мое портфолио'),
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Меню'),
              ),
              ListTile(
                title: const Text('Мое портфолио',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.blueAccent
                  ),),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pushNamed(context, '/');
                },
              ),
              ListTile(
                title: const Text('О работе',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.blueAccent
                  ),),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pushNamed(context, '/work');
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: CircleAvatar(
                  radius: 90.0,
                  backgroundImage: AssetImage("assets/avatar.jpg"),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Адилгажинова Сайран Адилгажыкызы',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  'Алматинский университет энергетики и связи имени Г. Даукеева,'
                  'кафедра "Информационные системы и кибербезопасность" магистр технических наук, старший преподаватель',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                child: Text(
                  'Привет! Меня зовут Сайран Адилгажыкызы Адилгажинова, и я работаю старшим преподавателем на кафедре "Информационные системы и кибербезопасность" в Алматинском университете энергетики и связи имени Г. Даукеева. Моя профессиональная область - информационные системы и кибербезопасность.'
                  'Я имею степень магистра технических наук и являюсь экспертом в области информационных систем и кибербезопасности. Моя работа включает преподавание студентам курсов, связанных с разработкой и управлением информационными системами, а также обеспечением безопасности информационных технологий и защитой от киберугроз.'
                  'Я увлечена изучением новейших технологий и трендов в области информационных систем и кибербезопасности, и стараюсь передавать свои знания и опыт своим студентам. Ведение исследовательской работы, разработка инновационных проектов и сотрудничество с другими экспертами в данной области также являются важной частью моей профессиональной деятельности.'
                  'Я также стараюсь внести вклад в академическое сообщество, участвуя в научных конференциях, публикуя научные статьи и осуществляя научное руководство студентам. Моя цель - помочь студентам развиваться в профессиональном и личностном плане, подготовить их к вызовам современного информационного общества и способствовать развитию области информационных систем и кибербезопасности в целом.'
                  'Я с удовольствием делюсь своим опытом и знаниями с моими студентами, вдохновляя их на профессиональное развитие и достижение успехов в их будущих карьерах. Будет рада продолжать вносить свой вклад в область информационных систем и кибербезопасности и способствовать развитию молодых профессионаловв этой области.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 16.0),
              //   child: ElevatedButton(
              //     onPressed: () {
              //       // Действие при нажатии на кнопку
              //     },
              //     child: Text('Связаться со мной'),
              //   ),
              // ),
              Column(children: [
                Text(
                  'Мой реквизиты:',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Алматинский университет энергетики и связи имени Г. Даукеева',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  subtitle: Text(
                    'Кафедра "Информационные системы и кибербезопасность"',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Магистр технических наук',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Старший преподаватель',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Адилгажинова Сайран Адилгажыкызы',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'E-mail: ваш_e-mail@example.com',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Телефон: +7 (123) 456-7890',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                // И другие пункты информации о себе
              ])
            ],
          ),
        ));
  }
}
