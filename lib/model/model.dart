class User{
   int? userid;
   int  ? id;
   String  ? title;
   String ? body;
  User({this.userid, this.id, required this.title,required this.body});

  User.fromJson(Map<String, dynamic> json) {
     userid = json['userId'];
     id = json['id'];
     title = json['title'];
     body = json['body'];
   }
   Map<String, dynamic> toJson() {
     final Map<String, dynamic> data = new Map<String, dynamic>();
     data['title'] = this.title;
     data['body']=this.body;
     return data;
   }
}