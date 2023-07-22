import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/cubit/states.dart';
import 'package:flutter_projects/model/model_screen.dart';
import 'package:sqflite/sqflite.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialStates());

  static AppCubit get(context) => BlocProvider.of(context);

  bool obscureText = true;

  void changeObscureText() {
    obscureText = !obscureText;
    emit(AppChangeObscureStates());
  }


  int currentIndex=0;

  void changeIndex(index)
  {
    currentIndex=index;
    emit(LayoutChangeIndexStates());
  }

  int counter=1;

  void minus()
  {
    if(counter <=1)
      {
        counter=1;
      }
    else {
      counter--;
    }
    emit(CounterMinusStates());
  }
  void plus()
  {
    counter++;
    emit(CounterPlusStates());
  }

   Database database;
  List<Map>cart=[];

  void createDatabase()
  {
    openDatabase(
        'shop.db',
        version: 1,
        onCreate: (database,version){
          print('Database Created');
          database.execute('CREATE TABLE cart (id INTEGER PRIMARY KEY,title TEXT,price TEXT,image TEXT,status TEXT)').then((value)
          {
            print('Table Created');
          }
          ).catchError((error)
          {
            print('Error when create table ${error.toString()}');
          }
          );
        },
        onOpen: (database)
        {
          getDataFromDatabase(database);
          print('Database Opened');
        }
    ).then((value)
    {
      database=value;
      emit(CreateDatabaseStates());
    }
    );
  }

  insertToDatabase(GradViewModel model)async
  {
    await database.transaction((txn)async
    {
      await txn.rawInsert('INSERT INTO cart(title,price,image,status) VALUES("${model.name}","${model.price}","${model.imageData}","new")').then((value)
      {
        print('$value Insert Successfully');
        emit(InsertDatabaseStates());
        getDataFromDatabase(database);
      }
      ).catchError((error)
      {
        print('Error when inserted ${error.toString()}');
      }
      );
    }
    );
  }


  void getDataFromDatabase(database)
  {
    database.rawQuery('SELECT * FROM cart').then((value)
    {
      cart=value;
      print(cart);
      emit(GetDatabaseStates());
    }
    );
  }


  void deleteData({
      int id,
  })async
  {
    return database.rawDelete(
        'DELETE FROM cart WHERE id = ?',[id]
    ).then((value)
    {
      getDataFromDatabase(database);
      emit(DeleteDatabaseStates());
    }
    );
  }
}
