class PlacesController < ApplicationController

	def index
		@places = Place.all
	end

	def show
    	@place = Place.find_by(:id => params["id"])
    	@reviews = Review.where(:p_id => params["id"])
   		if @place != nil
      		render "show"
    	else
      		redirect_to "/", notice: "Place not found."
    	end
  	end

  	def delete
  		Place.delete(params["id"])
		redirect_to "/places"
  	end

  	def new
  		render "new"
  	end

  	def create
  		p = Place.new
		p.title = params["title"]
		p.photo_url = params["photo_url"]
		p.admission_price = params["price"]
		p.description = params["description"]
		p.save
		redirect_to "/places"
	end

	def edit
		@place = Place.find_by(:id => params["id"])
		render "edit"
	end

	def update
		p = Place.find_by(:id => params["id"])
		p.title = params["title"]
		p.photo_url = params["photo_url"]
		p.admission_price = params["price"]
		p.description = params["description"]
		p.save
		redirect_to "/places/"+params["id"]
	end

	def review
		r = Review.new
		r.title = params["title"]
		r.p_id = params["id"]	
		r.rating = params["rating"]
		r.description = params["description"]
		r.save
		redirect_to "/places/"+params["id"]
	end

end