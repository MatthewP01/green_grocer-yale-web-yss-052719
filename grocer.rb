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
  cart.each do |x, y|
    
  end
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
