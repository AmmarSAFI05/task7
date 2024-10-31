
class LoginValidator{
  // Email  Validation in Login
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email';
    }
    String pattern =
        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }
//Nour
  static String? validatePhonenum (String? value) {
  if (value == null || value.isEmpty) {
  return 'Please enter your mobile number';
  }
  if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
  return 'Only digits are allowed';
  }
  if (value.length != 10) {
  return 'Mobile number must be 10 digits';
  }
  return null;
  }

  // Password Validation in Login
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
        return'Please enter a password';
    }
    return null;
  }




}