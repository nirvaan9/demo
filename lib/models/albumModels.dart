import 'activityModel.dart';

class Album{
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Album({
    this.imageUrl,
    this.city  ,
    this.country,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'https://cdn.dribbble.com/users/2426462/screenshots/4939071/lucidcanvas_meditation_gif_dribbble.gif',
    name: 'Quick 5 mindfulness practices',
    type: 'Mindfullness',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    likes: 30,
  ),
  Activity(
    imageUrl: 'https://themission.imgus11.com/public//b0459037a9ad3bab6760673b81a57a46.gif?r=1312752095',
    name: 'Healing-Stories',
    type: 'Music',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    likes: 210,
  ),
  Activity(
    imageUrl: 'https://i.pinimg.com/originals/63/40/f4/6340f4508e53729a0ce8dfe66de25763.gif',
    name: 'Brain-Waves',
    type: 'Information',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    likes: 125,
  ),
];
List<Album> album = [

  Album(
    imageUrl: 'https://image.freepik.com/free-vector/cute-girl-listening-music-headphones_270849-5.jpg',
    city: 'Healing-Music',
    country: 'Music',
    description: 'Visit for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Album(
    imageUrl: 'https://image.freepik.com/free-vector/chakras-illustration-concept_23-2148568217.jpg',
    city: 'All Meditations',
    country: 'Mindful practices',
    description: 'Meditations combined with healing frequency...',
    activities: activities,
  ),
  Album(
    imageUrl: 'https://image.freepik.com/free-vector/tropical-forest-landscape-flat-design_52683-24003.jpg',
    city: 'Nature\'s Voice',
    country: 'India',
    description: 'Sound-Scapes',
    activities: activities,
  ),
  Album(
    imageUrl: 'https://image.freepik.com/free-vector/small-cells-wave-line-move-into-human-brain_72857-101.jpg',
    city: 'Brain-Waves',
    country: 'Nural-Repair',
    description:  'Enjoy Best relaxation, used neural repair',
    activities: activities,
  ),
  Album(
    imageUrl: 'https://thumbs.dreamstime.com/z/mother-s-day-mother-holding-baby-her-arms-singing-lullaby-mother-s-day-mother-holding-baby-her-arms-singing-212929026.jpg',
    city: 'Popular lullabies',
    country: 'Music',
    description: 'Let Your Kid sleep in a perfect harmony, and help them increase there ....',
    activities: activities,
  ),
];

//