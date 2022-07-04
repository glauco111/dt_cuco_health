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
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      itemCount: widget.friends.length,
      itemBuilder: (context, index) {
        return friendsCards(theme, index);
      },
    );
  }

  Widget friendsCards(ThemeData theme, int index) {
    return Container(
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
        children: [
          Container(
            width: 179,
            height: 130,
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
            height: 2,
            color: theme.primaryColor,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 1,
            ),
            child: Text(
              widget.friends[index].name,
              style: theme.textTheme.bodyText2,
            ),
          ),
        ],
      ),
    );
  }
}
