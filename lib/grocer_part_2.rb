require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  
  counter = 0
  
  coupons.each do |coupon|
    item = find_item_by_name_in_collection(coupon[:item], cart)
    discounted_item_cost = coupon[:cost]/coupon[:num]
    if item != nil
      if item[:count] >= coupon[:num]
        
      end
      counter += 1
    end
  end
  
end