class CitiesController < ApplicationController
  def show

    @city = Cities.find_by_id(:id)


  end
end
