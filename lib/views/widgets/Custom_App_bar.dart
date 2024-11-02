import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final String hinttext;
  final Icon prefixicon;
  final IconData secicon;
  final void Function()? ontapSearch;
  final void Function()? onpressedicon;
  void Function()? FavonPressed;
   CustomAppbar({
    super.key,
    required this.hinttext,
    required this.prefixicon,
    required this.secicon,
    this.ontapSearch,
    this.onpressedicon,
    required this.FavonPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
            onTap: ontapSearch,
            decoration: InputDecoration(
                prefixIcon: prefixicon,
                hintText: "Find Product",
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20)),
                filled: true,
                fillColor: const Color.fromARGB(34, 158, 158, 158)),
          )),
          const SizedBox(
            width: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(34, 158, 158, 158),
                borderRadius: BorderRadius.circular(15)),
            width: 60,
            height: 55,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                secicon,
                size: 30,
                color: Color.fromARGB(255, 126, 114, 114),
              ),
            ),
          ),
          const SizedBox(
            width: 6,
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(34, 158, 158, 158),
                borderRadius: BorderRadius.circular(15)),
            width: 60,
            height: 55,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: IconButton(
              onPressed: FavonPressed,
              icon: const Icon(
                Icons.favorite_border_outlined,
                size: 30,
                color: Color.fromARGB(255, 126, 114, 114),
              ),
            ),
          )
        ],
      ),
    );
  }
}
