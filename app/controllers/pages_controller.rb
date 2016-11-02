class PagesController < ApplicationController
	before_action :set_kitten_url, only: [:kitten, :kittens]

	def welcome
		@header = "this is the welcome page boo ya"
	end

	def about
		@header = "this aint welcome page, its an about"
	end

	def kitten

	end

	def kittens

	end

	def set_kitten_url
		request_size = params[:size]
		@kitten_url = "http://placekitten.com/#{request_size}"
	end

	def contest
		flash[:notice] = "Sorry, the contest has ended"
		redirect_to welcome_url
	end

	def secrets
		password = "test"
		input = params[:magic_word]
		if input == password
			render :secrets
		else
			flash[:notice] = "Sorry, you dont have the right password"
			redirect_to welcome_url
		end
	end
end
