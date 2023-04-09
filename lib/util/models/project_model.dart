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
            itemUrl:
                'https://play.google.com/store/apps/details?id=com.anthonyaniobi.invoicereceiptandmemo'),
        ProjectModel(
            name: 'Solar Consult',
            description:
                'An aplication for sizing and recommending solar installation setup for users',
            imageUrl:
                'https://res.cloudinary.com/aniobi/image/upload/v1634043542/my_website/work/advert_image_ckfy6f.png',
            itemUrl:
                'https://play.google.com/store/apps/details?id=com.aniobianthony.solarconsult'),
        ProjectModel(
            name: 'Nigerian Cuisine',
            description:
                'An application for getting cooking instructions for nigerian dishes',
            imageUrl:
                'https://res.cloudinary.com/aniobi/image/upload/v1634043536/my_website/work/advert_image_xyhsa2.png',
            itemUrl: ''),
        ProjectModel(
            name: 'Invoice Receipt and Memo',
            description:
                'A mobile application for creating and storing office documents',
            imageUrl:
                'https://res.cloudinary.com/aniobi/image/upload/v1643395081/my_website/work/website_advert_dazon6.png',
            itemUrl:
                'https://play.google.com/store/apps/details?id=com.anthonyaniobi.invoicereceiptandmemo'),
        ProjectModel(
            name: 'Solar Consult',
            description:
                'An aplication for sizing and recommending solar installation setup for users',
            imageUrl:
                'https://res.cloudinary.com/aniobi/image/upload/v1634043542/my_website/work/advert_image_ckfy6f.png',
            itemUrl:
                'https://play.google.com/store/apps/details?id=com.aniobianthony.solarconsult'),
        ProjectModel(
            name: 'Nigerian Cuisine',
            description:
                'An application for getting cooking instructions for nigerian dishes',
            imageUrl:
                'https://res.cloudinary.com/aniobi/image/upload/v1634043536/my_website/work/advert_image_xyhsa2.png',
            itemUrl: ''),
      ];
  static List<ProjectModel> get externalProjects => [
        ProjectModel(
            name: 'Starconference',
            description:
                'A mobile application for creating and storing office documents',
            imageUrl:
                'https://res.cloudinary.com/aniobi/image/upload/v1643395081/my_website/work/website_advert_dazon6.png',
            itemUrl:
                'https://play.google.com/store/apps/details?id=com.anthonyaniobi.invoicereceiptandmemo'),
        ProjectModel(
            name: 'Insurance app',
            description:
                'An aplication for sizing and recommending solar installation setup for users',
            imageUrl:
                'https://res.cloudinary.com/aniobi/image/upload/v1634043542/my_website/work/advert_image_ckfy6f.png',
            itemUrl:
                'https://play.google.com/store/apps/details?id=com.aniobianthony.solarconsult'),
        ProjectModel(
            name: 'Scoutbet',
            description:
                'An application for getting cooking instructions for nigerian dishes',
            imageUrl:
                'https://res.cloudinary.com/aniobi/image/upload/v1634043536/my_website/work/advert_image_xyhsa2.png',
            itemUrl: ''),
        ProjectModel(
            name: 'Tenant App',
            description:
                'An application for getting cooking instructions for nigerian dishes',
            imageUrl:
                'https://res.cloudinary.com/aniobi/image/upload/v1634043536/my_website/work/advert_image_xyhsa2.png',
            itemUrl: ''),
      ];
}
