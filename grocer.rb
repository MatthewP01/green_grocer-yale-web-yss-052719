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
  coupon_hash = {}
  cart.each do |x, y|
    coupons.each do |i|
      if x == i[:item]
        if y[:count] >= i[:num]
          cart[x][:count] = cart[x][:count] - i[:num]
          if coupon_hash[x + " W/COUPON"]
            coupon_hash[x + " W/COUPON"][:count] += 1
        else
          coupon_hash[x + " W/COUPON"] = {:price => i[:cost], :clearance => cart[x][:clearance], :count => 1}
        end
      end
    end
  end
    coupon_hash[x] = y
  end
  coupon_hash
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
  cart.each do |x, y|
    if y[:clearance] == true
      y[:price] = ((y[:price]) * 0.8).round(2)
    end
  end
end

# def checkout(cart, coupons)
#   check_out = consolidate_cart(cart)
#   check_out_two = apply_coupons(check_out, coupons)
#   check_out_final = apply_clearance(check_out_two)
# end
def checkout(cart, coupons)
  cart = consolidate_cart(cart)
  cart_two = apply_coupons(cart, coupons)
  cart2 = apply_clearance(cart1)

  total = 0

  cart2.each do |name, price_hash|
    total += price_hash[:price] * price_hash[:count]
  end

  total > 100 ? total * 0.9 : total

end
