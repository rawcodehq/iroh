class QuotesController < ApplicationController
  def new
  end

  def create
    quote = Quote.new(params[:body])
    quote.save
    redirect_to "/"
  end
end
