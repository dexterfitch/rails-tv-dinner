module Api 
  module V1
    class TvdinnersController < ApplicationController
      before_action :authenticate_user!, :except => [:index]

      def index
        render json: Tvdinner.all
      end

      def mytvdinners
        render json: current_user.tvdinners
      end
    end
  end
end