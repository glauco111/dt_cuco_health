import 'package:cuco_health/src/core/utils/extensions/numbers_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/domain/entities/person_entities.dart';

class FriendsGridWidget extends StatefulWidget {
  final List<Person> friends;
  const FriendsGridWidget({Key? key, required this.friends}) : super(key: key);

  @override
  State<FriendsGridWidget> createState() => _FriendsGridWidgetState();
}

class _FriendsGridWidgetState extends State<FriendsGridWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: screenAdapter() > 1.0 ? 3 : 2,
        childAspectRatio: 1,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding:
          EdgeInsets.only(left: 30.scale, right: 30.scale, bottom: 30.scale),
      itemCount: widget.friends.length,
      itemBuilder: (context, index) {
        return friendsCards(theme, index);
      },
    );
  }

  Widget friendsCards(ThemeData theme, int index) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/friends/details',
            arguments: widget.friends[index]);
      },
      child: Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: theme.primaryColor.withOpacity(0.15),
                spreadRadius: 0.4,
                blurRadius: 3,
                offset: const Offset(0.4, 0.5))
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  width: 179.scale,
                  height: 130.scale,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    image: DecorationImage(
                      image: Image.network(
                        widget.friends[index].photo,
                      ).image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 4.scale,
                  color: theme.primaryColor,
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(
                top: 1.scale,
              ),
              child: Text(
                widget.friends[index].name,
                style: widget.friends[index].name.length > 20
                    ? theme.textTheme.overline
                    : theme.textTheme.bodyText2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
