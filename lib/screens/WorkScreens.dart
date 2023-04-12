import 'package:flutter/material.dart';

class MyWorkPage extends StatefulWidget {
  const MyWorkPage({super.key, required this.title});

  final String title;

  @override
  State<MyWorkPage> createState() => _MyWorkPageState();
}

class _MyWorkPageState extends State<MyWorkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Работа'),
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
                ),
              ),
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
        Padding(
        padding: EdgeInsets.all(0.0),
        child: Image.asset("assets/work.jpg"),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          'Алматинский Университет Энергетики и Связи имени Гумарбека Даукеева',
          style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Text(
          'Алматы Энергетика және Байланыс Университетi (АЭжБУ), а'
              'нгл. Almaty University of Power Engineering and Telecommunications ('
              'AUPET) named after G.'
              'Daukeev) — высшее учебное заведение в Алма-Ате (Казахстан). Расположен на пересечении улиц Байтурсынова и Габдуллина. Создан 10 января 1997 г. на базе Алма-Атинского энергетического института (АЭИ), существовавшего с 1975 года по 1997 год. Является некоммерческим техническим вузом. Обучение ведется на казахском, русском и английском языках.',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.grey[600],
          ),
        ),
      ), Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Text(
      'По состоянию на 2020 год в университете обучалось более 7000 студентов.'

      'Четыре института с дневной формой обучения:'

      'Институт телекоммуникаций и космической инженерии.'
      'Институт теплоэнергетики и систем управления.'
     ' Институт электроэнергетики и электротехники.'
     ' Институт информационной технологии.'
      'Институты объединяют в своем составе 16 кафедр. Существуют ещё два факультета: факультет'
      'дополнительного образования и факультет заочного обучения и переподготовки специалистов. ',
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
    Padding(
    padding: EdgeInsets.all(30.0),
    child: Image.asset("assets/AUES_logo.png", width: 150.0),
    ),
    ListTile(
    title: Text(
    'Год основания:',
    style: TextStyle(
    fontSize: 18.0,
    color: Colors.grey[600],
    ),
    ),
    subtitle: Text(
    '1975',
    style: TextStyle(
    fontSize: 16.0,
    color: Colors.blueAccent,
    ),
    ),
    ),ListTile(
    title: Text(
    'Реорганизован:',
    style: TextStyle(
    fontSize: 18.0,
    color: Colors.grey[600],
    ),
    ),
    subtitle: Text(
    '1997, 2010',
    style: TextStyle(
    fontSize: 16.0,
    color: Colors.blueAccent,
    ),
    ),
    ),ListTile(
    title: Text(
    'Тип:',
    style: TextStyle(
    fontSize: 18.0,
    color: Colors.grey[600],
    ),
    ),
    subtitle: Text(
    'некоммерческое акционерное общество',
    style: TextStyle(
    fontSize: 16.0,
    color: Colors.blueAccent,
    ),
    ),
    ),ListTile(
    title: Text(
    'Ректор:',
    style: TextStyle(
    fontSize: 18.0,
    color: Colors.grey[600],
    ),
    ),
    subtitle: Text(
    'Сыздыков Мурат Канатович',
    style: TextStyle(
    fontSize: 16.0,
    color: Colors.blueAccent,
    ),
    ),
    ),ListTile(
    title: Text(
    'Расположение:',
    style: TextStyle(
    fontSize: 18.0,
    color: Colors.grey[600],
    ),
    ),
    subtitle: Text(
    'Казахстан, Алматы',
    style: TextStyle(
    fontSize: 16.0,
    color: Colors.blueAccent,
    ),
    ),
    ),ListTile(
    title: Text(
    'Юридический адрес:',
    style: TextStyle(
    fontSize: 18.0,
    color: Colors.grey[600],
    ),
    ),
    subtitle: Text(
    'ул. Байтурсынова, 126/1',
    style: TextStyle(
    fontSize: 16.0,
    color: Colors.blueAccent,
    ),
    ),
    )

    // И другие пункты информации о себе
    ])
    ],
    )
    ,
    )
    );
  }
}
