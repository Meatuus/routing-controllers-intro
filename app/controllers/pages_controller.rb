class PagesController < ApplicationController

	def welcome
		@header = "this is the welcome page boo ya"
	end

	def about
		@header = "this aint welcome page, its an about"
	end

	def contest
		@header = "step right up, see what youll probably not win.."
	end
end
