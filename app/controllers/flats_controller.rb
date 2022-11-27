require 'open-uri'

class FlatsController < ApplicationController
  before_action :get_flats

  def index
  end

  def show
    id = params[:id].to_i
    @flat = @flats.select{ |flat| flat["id"] == id }[0]
  end

  private

  def get_flats
    response_serialized = URI.open('https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json').read
    @flats = JSON.parse(response_serialized)
  end
end
