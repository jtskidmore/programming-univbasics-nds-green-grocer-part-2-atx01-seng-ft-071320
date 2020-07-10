require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  
  counter = 0
  
  coupons.each do |coupon|
    if find_item_by_ coupon[:item]
    counter += 1
  end
  
end