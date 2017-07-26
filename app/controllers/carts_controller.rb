class CartController < ApplicationController

	helper_method :cart

	session[:cart_id] = @cart.id
  	@cart = session[:cart_id]

	def current_cart
  		session[:cart] ||= []
  	end

end