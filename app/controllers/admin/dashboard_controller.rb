class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with name: Rails.configuration.admin_info[:username], password: Rails.configuration.admin_info[:password]

  def show
  end
end
