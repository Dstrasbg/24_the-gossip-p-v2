class CitiesController < ApplicationController
  
  def show
  	@city=City.find(params[:id])
  	@user_id_array=User.where(city_id:params[:id]).pluck(:id)
 		puts @city
 		puts @user_id_array
 		puts "$"*60
 		puts @city.id
		Gossip.all.each do |gossip|
			if @user_id_array.include?(gossip.user_id)
				puts gossip.user_id 
				puts gossip.title
				puts "D"*15
		end
		end
end

end
