require "pry"

def consolidate_cart(cart)
  cart_hash = {}

  cart.each do |items|
    # binding.pry
    items.each do |x, y|
      if cart_hash.include?(x)
        cart_hash[x][:count] += 1
      else
        cart_hash[x] = y
        cart_hash[x][:count] = 1
      end
    end
  end
  return cart_hash
end

def apply_coupons(cart, coupons)
  # code here
  new_cart = {}
  cart.each do |x, info|
    coupons.each do |coupon|
      if x == coupon[:item] && info[:count] >= coupon[:num]
        cart[x][:count] = cart[x][:count] - coupon[:num]
        if new_cart[x + " W/COUPON"]
          new_cart[x + " W/COUPON"][:count] += 1
        else
          new_cart[x + " W/COUPON"] = {:price => coupon[:cost], :clearance => cart[x][:clearance], :count => 1}
        end
      end
    end
    new_cart[x] = info

  end
  new_cart
end
# def apply_coupons(cart, coupons)
#   # code here
#   new_cart = {}
#   cart.each do |grocery, info|
#     coupons.each do |coupon|
#       if grocery == coupon[:item] && info[:count] >= coupon[:num]
#         cart[grocery][:count] = cart[grocery][:count] - coupon[:num]
#         if new_cart[grocery + " W/COUPON"]
#           new_cart[grocery + " W/COUPON"][:count] += 1
#         else
#           new_cart[grocery + " W/COUPON"] = {:price => coupon[:cost], :clearance => cart[grocery][:clearance], :count => 1}
#         end
#       end
#     end
#     new_cart[grocery] = info
#
#   end
#   new_cart
# end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
