class Validator {
  static String? ValidateEmail(String? value ){
    if(value == null || value.isEmpty){
      return 'Email is required';
    }
  }
}