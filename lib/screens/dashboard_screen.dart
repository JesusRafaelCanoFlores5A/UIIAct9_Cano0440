import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () {},
        backgroundColor: Color(0xff0e3792),
        child: Icon(
          Icons.qr_code_2_outlined,
          color: Colors.white,
          size: 38,
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          const Gap(20),
          tapBar(),
          location(),
          const Gap(20),
          searchBar(),
          const Gap(20),
          categories(),
          const Gap(20),
          cardsView()
        ]),
      ),
    );
  }

  Widget tapBar() {
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          child: Image.asset("assets/images/usuario.png"),
        ),
        const Gap(14),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bienvenid@",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffb2bfc6)),
            ),
            Text(
              "Jesús Cano",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff18252c)),
            )
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 21,
          backgroundColor: const Color(0xff487e95),
          child: Image.asset(
            "assets/images/Noti.png",
          ),
        ),
      ],
    ).marginSymmetric(horizontal: 20);
  }

  Widget location() {
    return const Row(
      children: [
        Icon(
          Icons.location_on_sharp,
          color: Color(0xff213577),
          size: 16,
        ),
        Gap(6),
        Text(
          "Cd.Juárez, Chihuahua",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xffb2bfc6)),
        ),
      ],
    ).marginSymmetric(horizontal: 20);
  }

  Widget searchBar() {
    return Container(
      width: Get.width,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xffdde2e5),
      ),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Image.asset("assets/images/Lupa.png"),
            suffixIcon: Image.asset("assets/images/Filtro.png"),
            suffixIconConstraints: const BoxConstraints(maxHeight: 20),
            prefixIconConstraints: const BoxConstraints(maxHeight: 24),
            border: InputBorder.none,
            fillColor: const Color(0xffdde2e5),
            filled: true,
            hintText: "¿Buscas algo?",
            hintStyle: const TextStyle(fontSize: 14, color: Colors.blueGrey)),
      ),
    );
  }

  Widget categories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Tendencias 2024",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const Gap(20),
        SizedBox(
          height: 42,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    color: const Color(0xff1662d4)),
                child: const Center(
                    child: Text("Todos",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600))),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  border:
                      Border.all(color: const Color(0xff8b9ab0), width: 1.5),
                ),
                child: const Center(
                    child: Text("2024",
                        style: TextStyle(
                            color: Color(0xff8b9ab0),
                            fontSize: 16,
                            fontWeight: FontWeight.w500))),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  border:
                      Border.all(color: const Color(0xff8b9ab0), width: 1.5),
                ),
                child: const Center(
                    child: Text("2023",
                        style: TextStyle(
                            color: Color(0xff8b9ab0),
                            fontSize: 16,
                            fontWeight: FontWeight.w500))),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  border:
                      Border.all(color: const Color(0xff8b9ab0), width: 1.5),
                ),
                child: const Center(
                    child: Text("Reflex",
                        style: TextStyle(
                            color: Color(0xff8b9ab0),
                            fontSize: 16,
                            fontWeight: FontWeight.w500))),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  border:
                      Border.all(color: const Color(0xff8b9ab0), width: 1.5),
                ),
                child: const Center(
                    child: Text("Popsible",
                        style: TextStyle(
                            color: Color(0xff8b9ab0),
                            fontSize: 16,
                            fontWeight: FontWeight.w500))),
              ),
            ],
          ),
        )
      ],
    ).marginSymmetric(horizontal: 20);
  }

  Widget cardsView() {
    return Expanded(
      child: GridView.count(
        primary: false,
        childAspectRatio: 0.71,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffffdcf8),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xfffe9ac4),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/Beso.jpg",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Beso 094-05",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xfffe9ac4),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$250",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(0xfffe9ac4),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffb4fbf2),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xff1b9d8c),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/Descanso.jpg",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Descanso",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xff1b9d8c),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$250",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(0xff1b9d8c),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xfff1c6d7),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xff421a2a),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/Orizaba.jpg",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Orizaba",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xff421a2a),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$250",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(0xff421a2a),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffefafaf),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xfff23838),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/Amor.jpg",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Amor",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xfff23838),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$250",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(0xfff23838),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffc8d6fd),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xff688bea),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/Daca.jpg",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Daca",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xff688bea),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$250",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(0xff688bea),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xfffdacce),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xff920f45),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/Lollipop.jpg",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Lollipop",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xff920f45),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$250",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(0xff920f45),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffffdcf8),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xfffe9ac4),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/Beso.jpg",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Beso 094-05",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xfffe9ac4),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$250",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(0xfffe9ac4),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffffdcf8),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xfffe9ac4),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/Beso.jpg",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Beso 094-05",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xfffe9ac4),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$250",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(0xfffe9ac4),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
