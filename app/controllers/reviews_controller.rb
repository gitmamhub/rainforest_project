class ReviewsController < ApplicationController

  def create
    @review = Review.new
    @product = Product.find(params[:product_id])
    @review.product_id = params[:product_id]
    @review.description = params[:review][:description]
    if @review.save
      flash[:notice] = "Review saved !"
      redirect_to "/products/#{@review.product_id}"
    else
      @product = Product.find(params[:product_id])
      render "products/show"
    end
  end

  def edit
    @product = Product.find(params[:product_id]) #inner path
    @review = Review.find(params[:id])  #outer path
  end

  def update
    @review = Review.find(params[:id])
    @review.product_id = params[:product_id]
    @review.description = params[:review][:description]
    if @review.save
      flash[:notice] = "Review updated !"
      redirect_to "/products/#{@review.product_id}"
    else
      @product = Product.find(params[:product_id])
      render "products/show"
    end
  end

  def destroy
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    @review.destroy
    if @review.destroy
      redirect_to "/products/#{@product.id}"
    end
  end

end
