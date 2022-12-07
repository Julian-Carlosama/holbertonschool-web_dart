import '4-util.dart';
import '4-main.dart';

Future<double> calculateTotal() async {
  try {
    final id = jsonDecode(await fetchUserid());
    final prtds = jsonDecode(await fetchUserOrders(id['id']));

    double finalPrice = 0;

    for (String product in prtds) {
      finalPrice += jsonDecode(await fetchProductPrice(product));
    }
    return finalPrice;
  } catch (err) {
    return -1;
  }
}
