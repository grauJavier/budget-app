class TransactionsController < ApplicationController
  before_action :set_category

  def index
    @transactions = @category.related_transactions.order(created_at: :desc)
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = @category.related_transactions.build(transaction_params)
    if @transaction.save
      redirect_to category_transactions_path(@category)
    else
      render :new
    end
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end

  def transaction_params
    params.require(:transaction).permit(:amount, :name, related_category_ids: [])
  end   
end
