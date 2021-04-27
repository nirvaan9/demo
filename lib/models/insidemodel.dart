
class InsideModel{
String imageUrl;
String name;
String address;
int price;

InsideModel({
  this.imageUrl,
  this.name,
  this.address,
  this.price,
});
}

final List<InsideModel> hotels = [
  InsideModel(
    imageUrl: 'https://cdn.dribbble.com/users/381118/screenshots/3536836/meditation.gif',
    name: 'Mindful Meditation',
    address: '15 min mindful practice',
    price: 175,
  ),
  InsideModel(
    imageUrl: 'https://image.freepik.com/free-vector/colored-flat-musical-icons-isolated-black-background_1284-41408.jpg',
    name: 'All-Genres',
    address: 'Music',
    price: 300,
  ),
  InsideModel(
    imageUrl: 'https://image.freepik.com/free-vector/set-people-listening-music-illustrated_52683-24584.jpg',
    name: 'Frequency-Music',
    address: 'Sollfegio\'s',
    price: 240,
  ),
];
