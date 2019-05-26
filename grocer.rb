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

  coupon_hash = {}
  cart.each do |x, y|
    # binding.pry
    coupon.each do |i, j|
      if x == i
        if y[:count] >= i[:num]
          cart[x][:count] = cart[x][:count] - i[:num]
          if coupon_hash.include?(x + "W/COUPON")
            coupon_hash[x + "W/COUPON"][:count] += 1
          else
            new_cart[grocery + " W/COUPON"] = {:price => coupon[:cost], :clearance => cart[grocery][:clearance], :count => 1}
          end
        end

      end

    end
  end

end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
