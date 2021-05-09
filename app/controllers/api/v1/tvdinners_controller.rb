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

      def create
        @tvdinner = Tvdinner.new(tvdinner_params)
        if @tvdinner.save
          render json: @tvdinner, status: :created
        else
          render json: @tvdinner.errors, status: :unprocessable_entity
        end
      end

      private

      def tvdinner_params
        binding.pry
        params.require(:tvdinner).permit(:name, :description, :film_id, :recipe_ids, :user_id)
      end

    end
  end
end