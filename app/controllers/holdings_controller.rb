#
# app/controllers/holdings_controller.rb
#
# Controller to render holdings
#
# Copyright (c) 2017 Ke Qian
#

class HoldingsController < ApplicationController
  include HTTParty

  def show
    prng = Random.new
    bibId = params[:bibId] != 'random' ? params[:bibId].to_i : prng.rand(9_999_999) + 2
    base_url = 'https://holdings4.library.cornell.edu/holdings/retrieve_detail_raw/'
    render json: HTTParty.get("#{base_url}#{bibId}").parsed_response[bibId.to_s]['records']
  end
end
