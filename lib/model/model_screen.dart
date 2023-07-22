class HomeModel
{
  dynamic status;
  HomeDataModel data;
  HomeModel.fromJson(dynamic json)
  {
    status=json['status'];
    data=HomeDataModel.fromJson(json['data']);
  }
}
class HomeDataModel
{
  List<GradViewModel>products=[];
  HomeDataModel.fromJson(dynamic json)
  {
    json['products'].forEach((element)
    {
      products.add(GradViewModel.fromJson(element));
    }
    );
  }
}
class GradViewModel {
  String imageData;
  String name;
  String price;
  String old_price;
  String discount;

  GradViewModel({
    this.imageData,
     this.name,
     this.old_price,
     this.price,
     this.discount,
  });

  GradViewModel.fromJson(dynamic json)
  {
    imageData=json['imageData'];
    price=json['price'];
    name=json['name'];
    discount=json['discount'];
    old_price=json['old_price'];
  }
}

class ItemModel {
  String image;
  String title;
  ItemModel({
     this.image,
     this.title,
  });
}
