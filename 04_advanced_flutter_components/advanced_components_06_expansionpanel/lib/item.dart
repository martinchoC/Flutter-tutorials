//1. definir una clase item
class Item {
  String expanded;
  String title;
  bool isExpanded;
  Item({required this.expanded, required this.title, required this.isExpanded});
}

//2. definir un generador de items
List<Item> generateItemsList(int sizeOfList) {
  return List.generate(sizeOfList, (int index) {
    return Item(
      expanded: '$index',
      title: 'Item $index',
      isExpanded: false,
    );
  });
}
