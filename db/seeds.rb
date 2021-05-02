user = User.first || User.create(email: 'test@test.com', password: 'unicornfluff')
tvdinners = [
  {
    name: "Cannibal Chic",
    description: "A fun Mediterrean-inspired mealplan that pays homage to film's most famous cannibal.",
    film_id: 274,
    recipe_ids: "8e172af6d8c23c845c00f2f1c91d2403, cdfcdc92371a9e7fe7152367cc5ea7ca, 434c267d60c2504a81739a1f8876d14b, 374626225d903e42dfeeb66da592bb70"
  },
  {
    name: "Pho-rie",
    description: "A selection of Vietnamese recipes sure to please any badass.",
    film_id: 567973,
    recipe_ids: "bf8cf0db150939de59bc55ea3cf0cf31, fa6ba492ed4cb490878e8ae7fe6a850c, 9650d9062cf464a03bfcf25a7c72b8e5"
  },
]

tvdinners.each do |dinner|
  user.tvdinners.create(dinner)
end