class CustomersController < ApplicationController
  def show
  end

  def index
    if params[:q].to_i == 0
      #Not a number
      flash[:alert] = "Only digits allowed for ID or mobile_number"
      render "/users/index"
    else
    # Check if id (8 digits) or phone number (10 digits)
      if params[:q].length == 8
        @customer = Customer.where("id_number = #{params[:q]}")
        successful_search?(@customer)
      elsif params[:q].length == 10
        @customer = Customer.where("mobile_number = #{params[:q]}")
        successful_search?(@customer)
      else
        flash[:alert] = "Incorrect format for ID or mobile_number"
        render "/users/index"
      end
    end
    puts params[:q].class
  end

  protected
  #Check if any customers found based on query. If not found send alert to user
  def successful_search?(result)
    if result.empty?
      flash[:alert] = "Customer not found"
      render "/users/index"
    else
      @customer = result
      redirect_to "/customers/index"
    end
  end
end
