class PreparerController < ApplicationController
	def new
	end

	def show
	  @preparer = Preparer.find(params[:id])
	end

	private

	def preparer_params
	  params.require(:preparer).permit(:first_name, :last_name, :id)
	end

end
