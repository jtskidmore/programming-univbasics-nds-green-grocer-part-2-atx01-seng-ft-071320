require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  
  coupons.each do |coupon|
    item = find_item_by_name_in_collection(coupon[:item], cart)
    
    couponed_item_name = coupon[:item] + " W/COUPON"
    couponed_item_cost = coupon[:cost]/coupon[:num]
    couponed_item_clearance = item[:clearance]
    couponed_item_count = coupon[:num]
    
    if item != nil
      if item[:count] >= coupon[:num]
        item[:count] -= coupon[:num]
        cart << {:item => couponed_item_name, :price => couponed_item_cost, :clearance => couponed_item_clearance, :count => couponed_item_count}
      end
    end
  end
 cart
end