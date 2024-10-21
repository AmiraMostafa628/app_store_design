class UserModel{
  String? name;
  String? email;
  int? contactNumber;
  String? uId;
  String? image;

  UserModel({
    this.name,
    this.email,
    this.contactNumber,
    this.uId,
    this.image,



  });
  UserModel.fromJson(Map<String,dynamic>json)
  {
    name=json['name'];
    email=json['email'];
    contactNumber=json['contactNumber'];
    uId =json['uId'];
    image=json['image'];

  }

  Map<String,dynamic>? toMap()
  {
    return
      {
        'name'  : name,
        'email' : email,
        'contactNumber':contactNumber,
        'uId' : uId,
        'image' : image,

      };

  }

}