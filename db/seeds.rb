# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


printful_data_hash = [
  {
    "Product" => "Gildan 64000 Unisex Softstyle T-Shirt with Tear Away Label",
    "Color" => "Weiss",
    "Size" => "S",
    "Variant ID" => 473
  },
  {
    "Product" => "Gildan 64000 Unisex Softstyle T-Shirt with Tear Away Label",
    "Color" => "Weiss",
    "Size" => "M",
    "Variant ID" => 504
  },
  {
    "Product" => "Gildan 64000 Unisex Softstyle T-Shirt with Tear Away Label",
    "Color" => "Weiss",
    "Size" => "L",
    "Variant ID" => 535
  },
  {
    "Product" => "Gildan 64000 Unisex Softstyle T-Shirt with Tear Away Label",
    "Color" => "Weiss",
    "Size" => "XL",
    "Variant ID" => 566
  },
  {
    "Product" => "Gildan 64000 Unisex Softstyle T-Shirt with Tear Away Label",
    "Color" => "Weiss",
    "Size" => "2XL",
    "Variant ID" => 597
  },
  {
    "Product" => "Gildan 64000 Unisex Softstyle T-Shirt with Tear Away Label",
    "Color" => "Weiss",
    "Size" => "3XL",
    "Variant ID" => 628
  },
  {
    "Product" => "Gildan 64000 Unisex Softstyle T-Shirt with Tear Away Label",
    "Color" => "Schwarz",
    "Size" => "S",
    "Variant ID" => 474
  },
  {
    "Product" => "Gildan 64000 Unisex Softstyle T-Shirt with Tear Away Label",
    "Color" => "Schwarz",
    "Size" => "M",
    "Variant ID" => 505
  },
  {
    "Product" => "Gildan 64000 Unisex Softstyle T-Shirt with Tear Away Label",
    "Color" => "Schwarz",
    "Size" => "L",
    "Variant ID" => 536
  },
  {
    "Product" => "Gildan 64000 Unisex Softstyle T-Shirt with Tear Away Label",
    "Color" => "Schwarz",
    "Size" => "XL",
    "Variant ID" => 567
  },
  {
    "Product" => "Gildan 64000 Unisex Softstyle T-Shirt with Tear Away Label",
    "Color" => "Schwarz",
    "Size" => "2XL",
    "Variant ID" => 598
  },
  {
    "Product" => "Gildan 64000 Unisex Softstyle T-Shirt with Tear Away Label",
    "Color" => "Schwarz",
    "Size" => "3XL",
    "Variant ID" => 629
  },
  {
    "Product" => "Gildan 64000 Unisex Softstyle T-Shirt with Tear Away Label",
    "Color" => "Navy",
    "Size" => "S",
    "Variant ID" => 496
  },
  {
    "Product" => "Gildan 64000 Unisex Softstyle T-Shirt with Tear Away Label",
    "Color" => "Navy",
    "Size" => "M",
    "Variant ID" => 527
  },
  {
    "Product" => "Gildan 64000 Unisex Softstyle T-Shirt with Tear Away Label",
    "Color" => "Navy",
    "Size" => "L",
    "Variant ID" => 558
  },
  {
    "Product" => "Gildan 64000 Unisex Softstyle T-Shirt with Tear Away Label",
    "Color" => "Navy",
    "Size" => "XL",
    "Variant ID" => 589
  },
  {
    "Product" => "Gildan 64000 Unisex Softstyle T-Shirt with Tear Away Label",
    "Color" => "Navy",
    "Size" => "2XL",
    "Variant ID" => 620
  },
  {
    "Product" => "Gildan 64000 Unisex Softstyle T-Shirt with Tear Away Label",
    "Color" => "Navy",
    "Size" => "3XL",
    "Variant ID" => 651
  }
]

printful_data_hash.each do |variant|
  p = Printful.create(product: variant["Product"], color: variant["Color"], size: variant["Size"], variant_id: variant["Variant ID"])

  # puts p.product
  # puts p.color
  # puts p.size
  # puts p.variant_id

end
