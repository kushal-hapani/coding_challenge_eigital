enum Gender {
  male(title: 'Male'),
  female(title: 'Female'),
  others(title: 'Other');

  final String title;
  const Gender({required this.title});

  static Gender fromString(String title) {
    switch (title.toLowerCase()) {
      case 'male':
        return Gender.male;
      case 'female':
        return Gender.female;
      case 'other\'s':
        return Gender.others;
      default:
        throw ArgumentError('Invalid title: $title');
    }
  }
}

enum MemberType { selection, friends, search }
