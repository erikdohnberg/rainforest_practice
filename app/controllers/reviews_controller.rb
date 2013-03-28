class ReviewsController < ApplicationController

	before_filter :load_product

  # GET /reviews
	def index
		@reviews = Review.all
	end

  # GET /reviews/1
	def show
		@review = Review.find(params[:id])
	end

	def new
		@review = Review.new
		@product = Product.find(params[:product_id])
	end

  # POST /product/:id/reviews
	def create
		# Get the product you're reviewing
		product = Product.find(params[:product_id])
		# Build a review form for that product
		@review = product.reviews.build(params[:review])
		# Associating the review to the current user
		@review.user = current_user
		if @review.save
	      # redirect (move the browser) to /review/#{@review.id}
	      redirect_to @product, notice: 'Review posted successfully!'
	    else
	      render action: :new
	    end
	end

	# DELETE /reviews/1
	def destroy
		@review = Review.find(params[:id])
		@review.destroy
		redirect_to product_path
	end

	def load_product
		@product = Product.find(params[:product_id])
	end
end
