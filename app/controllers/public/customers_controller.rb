class Public::CustomersController < ApplicationController
  #before_action :authenticate_customer!, except: [:top]
  
  def show
    @customer = current_customer
  end
  
  def edit
    @customer = current_customer
  end
  
  
  
  def unsubscribe
  end
  
  def withdraw
  end
  
  private
  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :telephone_number, :email, :is_active)
  end
end
