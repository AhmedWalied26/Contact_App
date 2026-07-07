abstract class AppValidation {
  static String? userValidation(String value) {
    if (value.trim().isEmpty) {
      return "Username is required";
    }

    if (value.trim().length < 3) {
      return "Username must be at least 3 characters";
    }

    return null;
  }

  static String? emailValidation(String value) {
    if (value.trim().isEmpty) {
      return "Email is required";
    }

    final emailRegex = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegex.hasMatch(value.trim())) {
      return "Enter a valid email";
    }

    return null;
  }

  static String? phoneNumberValidation(String value) {
    if (value.trim().isEmpty) {
      return "Phone number is required";
    }

    final phoneRegex = RegExp(r'^01[0125][0-9]{8}$');

    if (!phoneRegex.hasMatch(value.trim())) {
      return "Enter a valid Egyptian phone number";
    }

    return null;
  }
}
