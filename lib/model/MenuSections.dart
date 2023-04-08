import '../data.dart';

class MenuSections {
  final dynamic id;
  final String name;
  final String description;
  final String type;
  final List<dynamic> menu_section_id;
  final List<int> menu_item_id;
  final int availalibity_id;
  final int display_order;
  final List<dynamic> menu_item_option_id;
  final List<dynamic> parent_item_id;
  final bool is_active;
  final bool is_disabled;
  final int tax_percentage;
  final List<Map<String, dynamic>> menu_section_offers;

  MenuSections(
      {required this.id,
      required this.name,
      required this.description,
      required this.type,
      required this.menu_section_id,
      required this.menu_item_id,
      required this.availalibity_id,
      required this.display_order,
      required this.menu_item_option_id,
      required this.parent_item_id,
      required this.is_active,
      required this.is_disabled,
      required this.tax_percentage,
      required this.menu_section_offers});
}

class MenuItems {
  final String id;
  final String name;
  final dynamic description;
  final double price;
  final String price_currency;
  final dynamic sku;
  final int is_available;
  final List<Map<String, int>> parent_menu_section_id;
  final String type;
  final int display_order;
  final int is_new;
  final int is_non_veg;
  final int is_popular;
  final dynamic tags;
  final dynamic suitable_diet;
  final dynamic image_url;
  final List<dynamic> nutritions;
  final List<dynamic> allergens;
  final List<dynamic> additives;
  final List<dynamic> deposit_info;

  MenuItems(
      this.id,
      this.name,
      this.description,
      this.price,
      this.price_currency,
      this.sku,
      this.is_available,
      this.parent_menu_section_id,
      this.type,
      this.display_order,
      this.is_new,
      this.is_non_veg,
      this.is_popular,
      this.tags,
      this.suitable_diet,
      this.image_url,
      this.nutritions,
      this.allergens,
      this.additives,
      this.deposit_info);
}

class MenuItemsOptions {
  final int id;
  final String type;
  final String value;
  final String name;
  final int price;

  MenuItemsOptions(
    this.id,
    this.type,
    this.value,
    this.name,
    this.price,
  );
}

class Availability {
  final String id;
  final String starts;
  final String ends;
  final String days;
  final bool is_everyday;
  final bool is_all_time;
  final String order_types;
  final bool is_all_services;

  Availability(this.id, this.starts, this.ends, this.days, this.is_everyday,
      this.is_all_time, this.order_types, this.is_all_services);
}

class db {
  final database = [
    MenuModel(
        id: "581e6cd3-3ea8-4d39-9cc6-238a82c32e7c",
        description:
            "Desi Adda bietet eine große Auswahl an italienischer, chinesischer, deutscher, indischer, amerikanischer, thailändischer und internationaler Küche. Zu den Top-Angeboten von Desi Adda gehört Dum Biryani.",
        name: "Restaurant Nidda",
        menu_sections: {
          "1": MenuSections(
            id: 1,
            name: "Hello World 1",
            description: "Alle Pizzen werden mit Tomatensauce und Käse zubereitet.",
            type: "CATEGORY",
            menu_section_id: [],
            menu_item_id: [42, 79, 80, 90, 93, 135],
            availalibity_id: 28,
            display_order: 9,
            menu_item_option_id: [],
            parent_item_id: [],
            is_active: true,
            is_disabled: false,
            tax_percentage: 7,
            menu_section_offers: [
              {"id": 84, "offer_id": 15, "menu_section_id": 1},
              {"id": 91, "offer_id": 16, "menu_section_id": 1}
            ]
          ),
        },
        menu_items: {},
        menu_items_options: {},
        availability: {},
        menu_modifiers: {},
        menu_choice_sections: [],
        menu_group_sections: [])
  ];
}
