module Api 
  module V1
    class TvdinnersController < ApplicationController
      before_action :authenticate_user!, except: [:index]

      def index
        render json: Tvdinner.all
      end

      def mytvdinners
        if current_user
          render json: current_user.tvdinners
        else
          render json: {}, status: 401
        end 
      end


    
    end
  end
end