void main() {
  List<String> favoriteHobbies = [];

  // Check if the list is empty
  print('Is the list empty? ${favoriteHobbies.isEmpty}');

  // Add hobbies to the list
  favoriteHobbies.add('Reading');
  favoriteHobbies.add('Playing guitar');
  favoriteHobbies.add('Hiking');
  favoriteHobbies.add('Cooking');

  print('Favorite hobbies: $favoriteHobbies');

  // Check if the list is empty again
  print('Is the list empty? ${favoriteHobbies.isEmpty}');

  // Remove a hobby from the list
  favoriteHobbies.remove('Playing guitar');
  print('Favorite hobbies after removing "Playing guitar": $favoriteHobbies');

  // Sort the list in alphabetical order
  favoriteHobbies.sort();
  print('Favorite hobbies after sorting: $favoriteHobbies');
}