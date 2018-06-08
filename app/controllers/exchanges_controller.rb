class ExchangesController < ApplicationController

  before_action :value, only: [:convert, :invert]

  def index
  end

  def convert
  end

  def invert
  end

  private

  def value
    value = ExchangeService.new(params[:source_currency], params[:target_currency], params[:amount]).perform
    render json: {"value": value}
  end

end
