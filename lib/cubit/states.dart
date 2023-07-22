abstract class AppStates {}

class AppInitialStates extends AppStates {}

class AppChangeObscureStates extends AppStates {}

class LayoutChangeIndexStates extends AppStates{}

class CounterPlusStates extends AppStates{}

class CounterMinusStates extends AppStates{}

class CreateDatabaseStates extends AppStates{}

class GetDatabaseStates extends AppStates{}

class GetDatabaseLoadingStates extends AppStates{}

class InsertDatabaseStates extends AppStates{}

class UpdateDatabaseStates extends AppStates{}

class DeleteDatabaseStates extends AppStates{}

class GetUserLoadingStates extends AppStates{}

class GetUserSuccessStates extends AppStates{}

class GetUserErrorStates extends AppStates{
  final String error;

  GetUserErrorStates(this.error);
}
