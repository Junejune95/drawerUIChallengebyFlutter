import 'package:flutter/material.dart';

class BuildHeader extends StatelessWidget {
  final String image;
  final String name;
  final String role;

  const BuildHeader({
    Key key,
    @required this.image,
    @required this.name,
    @required this.role,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final padding = EdgeInsets.symmetric(horizontal: 20);
    // final Size size=MediaQuery.of(context).size;
    print(image);
    return InkWell(
      onTap: () {},
      child: Container(
        padding: padding.add(EdgeInsets.symmetric(vertical: 10)),
        // height: size.height*0.12,
        color: Colors.white,
        child: Row(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1612928414075-bc722ade44f1?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8dG93SlpGc2twR2d8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    role.toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontWeight: FontWeight.normal),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
