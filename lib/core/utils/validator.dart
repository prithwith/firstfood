String? validatePassword(String password) {
  if (password.trim().isEmpty) {
    return 'Password field is required';
  } else if (password.length < 8) {
    return 'Password should contain minimum 8 characters';
  } else if (RegExp(r'[A-Z]').hasMatch(password) == false) {
    return 'Password should have at least 1 uppercase letter';
  } else if (RegExp(r'[a-z]').hasMatch(password) == false) {
    return 'Password should have at least 1 lowercase letter';
  } else if (RegExp(r'[0-9]').hasMatch(password) == false) {
    return 'Password should contain at least 1 digit';
  } else if (RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password) == false) {
    return 'Password should contain at least 1 special character';
  }

  return null;
}

String? validateEmail(String email) {
  if (email.trim().isEmpty) {
    return 'Email cannot be empty';
  } else if (RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
      ).hasMatch(email) ==
      false) {
    return 'Invalid email format';
  }

  return null;
}

String? validateMobileNumber(String number) {
  if (number.trim().isEmpty) {
    return 'Mobile number is required';
  }
  return null;
}

bool isImageFile(String path) {
  const imageExtensions = ['jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp', 'tiff'];

  final extension = path.split('.').last.toLowerCase();

  return imageExtensions.contains(extension);
}
