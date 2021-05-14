user1 = User.create(email: 'test@test.com', password: 'unicornfluff')
user2 = User.create(email: 'demo@demo.com', password: 'peepbunnies')

tvdinners1 = [
  {
    name: "Cannibal Chic",
    description: "A fun Mediterrean-inspired mealplan that pays homage to film's most famous cannibal.",
    film_id: 274,
    recipe_ids: ["8e172af6d8c23c845c00f2f1c91d2403", "cdfcdc92371a9e7fe7152367cc5ea7ca", "434c267d60c2504a81739a1f8876d14b", "374626225d903e42dfeeb66da592bb70"]
  },
  {
    name: "Pho-rie",
    description: "A selection of Vietnamese recipes sure to please any badass.",
    film_id: 567973,
    recipe_ids: ["bf8cf0db150939de59bc55ea3cf0cf31", "fa6ba492ed4cb490878e8ae7fe6a850c", "9650d9062cf464a03bfcf25a7c72b8e5"]
  },
]

tvdinners2 = [
  {
    name: "Medieval Times",
    description: "Giant turkey legs, baked potatoes, and plenty of red sauce.",
    film_id: 1399,
    recipe_ids: ["1b5e5a106c73e7741614122a91d32710", "f3129be57336d0e35971e96767bab250", "77fcfc8ce6cf5aca42afe52e22497784"]
  },
  {
    name: "Apocalypse Bao",
    description: "Ramen, dumplings, and revenants.",
    film_id: 78,
    recipe_ids: ["72a3b66afe35edd2f162d02d991d0645", "b67960906d055115e491dc4070ed6b12", "ce75396c50801f139b2238ffe63de1c5"]
  },
]

tvdinners1.each do |tvdinner|
  user1.tvdinners.create(tvdinner)
end

tvdinners2.each do |tvdinner|
  user2.tvdinners.create(tvdinner)
end