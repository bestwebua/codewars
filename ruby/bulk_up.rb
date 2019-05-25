=begin
Bulk up! by Vladislav Trotsenko.

You've been going to the gym for some time now and recently you started taking care of your nutrition
as well. You want to gain some weight but who wants to bother counting calories every day. It said
somewhere that protein is the foundation of building muscle, so let's try to calculate the total
amount of calories and proteins we take in.

Task:
Given an array of meals where each element is a string in the form
'300g turkey, 300g potatoes, 100g cucumber'
find out how many proteins and calories you consumed. You like to keep things simple so all values
will be expressed in grams. In case you didn't know every gram of protein and carbohydrate has 4
calories, while 1 gram of fat provides 9 calories.

An object food (in Ruby $food ) is preloaded for you that contains the information about the given
food per 100 grams:

$food = { 
  "chicken" => [20, 5, 10], # per 100g chicken has 20g of protein, 5 grams of carbohydrates and 10 grams of fat.
  "eggs" => [10, 5, 15],    # protein:10g , carbs:5g , fats: 15g
  "salmon" => [27, 0, 10], 
  "beans" => [8, 25, 0], 
  "bananas" => [1, 23, 0], 
  ... 
  ... 
}

Round your results to 2 decimal places and return a string in the form "Total proteins: n grams,
Total calories: n".

Note: No invalid input testing.
=end

class Float
  def to_i_if_whole
    to_i == self ? to_i : self
  end
end

def bulk(arr)
  proteins = carbohydrates = fat = 0.0
    menu = arr.map { |i| i.split(', ').map(&:split) }.flatten(1).map { |v, k| [k, v.to_i] }
      food = {"beef"=>[26, 0, 18], "buffalo"=>[27, 0, 2], "elk"=>[30, 0, 2], "lamb"=>[23, 0, 19], "pork"=>[20, 0, 11], "rabbit"=>[29, 0, 8], "chicken"=>[24, 0, 5], "duck"=>[23, 0, 9], "goose"=>[28, 0, 10], "turkey"=>[26, 0, 2], "bass"=>[24, 0, 5], "catfish"=>[18, 0, 3], "crab"=>[19, 0, 2], "lobster"=>[21, 1, 1], "salmon"=>[27, 0, 10], "beans"=>[8, 25, 0], "tofu"=>[7, 3, 3], "cheddar"=>[21, 0, 28], "eggs"=>[10, 2, 10], "mozzarella"=>[18, 3, 18], "parmesan"=>[30, 4, 22], "beer"=>[0, 5, 0], "wine"=>[0, 3, 0], "juice"=>[0, 10, 0], "milk"=>[3, 4, 2], "cabbage"=>[1, 6, 0], "broccoli"=>[3, 7, 0], "corn"=>[3, 20, 1], "mushrooms"=>[3, 3, 0], "tomatoes"=>[1, 3, 0], "potatoes"=>[2, 16, 0], "olives"=>[1, 6, 11], "cucumber"=>[1, 4, 0], "apples"=>[0, 14, 0], "bananas"=>[1, 23, 0], "blackberries"=>[1, 10, 0], "cherries"=>[1, 12, 0], "lemons"=>[1, 9, 0], "kiwi"=>[1, 15, 1], "watermelon"=>[1, 8, 0], "oat"=>[12, 50, 5], "quinoa"=>[14, 60, 5], "rice"=>[5, 28, 0], "chocolate"=>[7, 45, 30], "mayonnaise"=>[0, 0, 12]}
      menu.each do |food_type, weight|
        food[food_type].each_with_index do |item, index|
          substance = item*weight/100.to_f
            case index
              when 0 then proteins+=substance
              when 1 then carbohydrates+=substance
              when 2 then fat+=substance
            end
        end
      end
    calories = proteins*4+carbohydrates*4+fat*9
  "Total proteins: #{proteins.to_i_if_whole} grams, Total calories: #{calories.to_i_if_whole}"
end

bulk([])
bulk(["200g pork"])
bulk(["150g elk, 325g tofu, 150g watermelon", "75g pork, 50g mushrooms, 75g kiwi", "275g rabbit, 325g broccoli, 100g cherries", "225g duck, 200g potatoes, 175g parmesan, 25g wine", "225g rabbit, 125g broccoli"])