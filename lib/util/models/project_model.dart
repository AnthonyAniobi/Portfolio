class ProjectModel {
  final String name;
  final String description;
  final String imageUrl;
  final String itemUrl;

  ProjectModel(
      {required this.name,
      required this.description,
      required this.imageUrl,
      required this.itemUrl});

  static List<ProjectModel> get all => [
        ProjectModel(
            name: 'Invoice Receipt and Memo',
            description:
                'A mobile application for creating and storing office documents',
            imageUrl:
                'https://res.cloudinary.com/aniobi/image/upload/v1643395081/my_website/work/website_advert_dazon6.png',
            itemUrl: ''),
        ProjectModel(
            name: 'Solar Consult',
            description:
                'An aplication for sizing and recommending solar installation setup for users',
            imageUrl:
                'https://res.cloudinary.com/aniobi/image/upload/v1634043542/my_website/work/advert_image_ckfy6f.png',
            itemUrl: ''),
        ProjectModel(
            name: 'Nigerian Cuisine',
            description:
                'An application for getting cooking instructions for nigerian dishes',
            imageUrl:
                'https://res.cloudinary.com/aniobi/image/upload/v1634043536/my_website/work/advert_image_xyhsa2.png',
            itemUrl: ''),
      ];
}