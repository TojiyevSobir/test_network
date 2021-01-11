class Post {
  String id;
  String employeeName;
  String employeeSalary;
  String employeeAge;
  String profileImage;

  Post(
      {this.id,
      this.employeeName,
      this.employeeSalary,
      this.employeeAge,
      this.profileImage});

  Post.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        employeeName = json["employee_name"],
        employeeSalary = json["employee_salary"],
        employeeAge = json["employee_age"],
        profileImage = json["profile_image"];

  Map<String, dynamic> toJson() => {
        "id": id,
        "employee_name": employeeName,
        "employee_salary": employeeSalary,
        "employee_age": employeeAge,
        "profile_image": profileImage,
      };
}
