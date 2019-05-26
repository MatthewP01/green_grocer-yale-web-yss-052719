require "pry"

def consolidate_cart(cart)
  cart_hash = {}

  cart.each do |items|
    # binding.pry
    items.each do |x, y|
      if cart.include?(x)
        cart_hash[x][:count] += 1
      else
        cart_hash[x] = y
      end
    end
  end
  return cart_hash
end

def apply_coupons(cart, coupons)
  
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
