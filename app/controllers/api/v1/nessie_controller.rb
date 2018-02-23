require 'dotenv/load'
require 'capital_one'
require 'httpparty'
Config.apiKey = ENV['NESSIE_KEY']

module Api
  module V1
    class NessieController < ApplicationController
      include HTTParty
      def get
        self.class.get(
          @users = getAll()
          render json: {status: 'SUCCESS', message:'Loaded CapOneUsers', data:accounts}, status: :ok
        )
      end
    end

    bank_users = NessieController.new
    puts bank_users.get

  end
end