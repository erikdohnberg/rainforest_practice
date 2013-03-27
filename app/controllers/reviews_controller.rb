class ReviewsController < ApplicationController
  # GET /reviews
	def index
		@review = Review.all
	end

  # GET /reviews/1
	def show
		@review = Review.find(params[:id])
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
	      redirect_to @review, notice: 'Review posted successfully!'
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
end
