import 'package:bookly_app/features/splash/presentation/view_models/views/home/presentation/views/widgets/bestseller_item.dart';
import 'package:flutter/cupertino.dart';

class BestsellerListview extends StatelessWidget {
  const BestsellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const BestsellerItem(),
      itemCount: 10,
    );
  }
}
