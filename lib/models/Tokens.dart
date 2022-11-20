class AuthToken {
  Data? data;
  String? message;

  AuthToken({this.data, this.message});

  AuthToken.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  Tokens? tokens;
  UserInfo? userInfo;

  Data({this.tokens, this.userInfo});

  Data.fromJson(Map<String, dynamic> json) {
    tokens =
    json['tokens'] != null ? new Tokens.fromJson(json['tokens']) : null;
    userInfo = json['userInfo'] != null
        ? new UserInfo.fromJson(json['userInfo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tokens != null) {
      data['tokens'] = this.tokens!.toJson();
    }
    if (this.userInfo != null) {
      data['userInfo'] = this.userInfo!.toJson();
    }
    return data;
  }
}

class Tokens {
  AccessToken? accessToken;
  AccessToken? refreshToken;

  Tokens({this.accessToken, this.refreshToken});

  Tokens.fromJson(Map<String, dynamic> json) {
    accessToken = json['AccessToken'] != null
        ? new AccessToken.fromJson(json['AccessToken'])
        : null;
    refreshToken = json['RefreshToken'] != null
        ? new AccessToken.fromJson(json['RefreshToken'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.accessToken != null) {
      data['AccessToken'] = this.accessToken!.toJson();
    }
    if (this.refreshToken != null) {
      data['RefreshToken'] = this.refreshToken!.toJson();
    }
    return data;
  }
}

class AccessToken {
  String? token;
  String? createdAt;
  String? expiredAt;

  AccessToken({this.token, this.createdAt, this.expiredAt});

  AccessToken.fromJson(Map<String, dynamic> json) {
    token = json['Token'];
    createdAt = json['CreatedAt'];
    expiredAt = json['ExpiredAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Token'] = this.token;
    data['CreatedAt'] = this.createdAt;
    data['ExpiredAt'] = this.expiredAt;
    return data;
  }
}

class UserInfo {
  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  String? phone;
  String? address;
  String? createdAt;
  String? updatedAt;

  UserInfo(
      {this.id,
        this.firstName,
        this.lastName,
        this.email,
        this.password,
        this.phone,
        this.address,
        this.createdAt,
        this.updatedAt});

  UserInfo.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    firstName = json['FirstName'];
    lastName = json['LastName'];
    email = json['Email'];
    password = json['Password'];
    phone = json['Phone'];
    address = json['Address'];
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['FirstName'] = this.firstName;
    data['LastName'] = this.lastName;
    data['Email'] = this.email;
    data['Password'] = this.password;
    data['Phone'] = this.phone;
    data['Address'] = this.address;
    data['CreatedAt'] = this.createdAt;
    data['UpdatedAt'] = this.updatedAt;
    return data;
  }
}


