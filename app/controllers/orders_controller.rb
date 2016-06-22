class OrdersController < ApplicationController
before_action :set_order, only: [:show]
skip_before_action :authenticate_user!, only: [:create]

def show
  @order = Order.where(state: 'paid').find(params[:id])
end

  def create
  @project = Project.find(params[:project_id])
  order  = Order.create!(project_sku: @project.id, amount: @project.price, state: 'pending')
authorize order
  redirect_to new_order_payment_path(order)
end

private 

  def set_order
    @order = Order.find(params[:id])
    authorize @order
  end
end
