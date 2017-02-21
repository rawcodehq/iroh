class QuotesController < ApplicationController
  def new
  end

  def create
    quote = Quote.new(body: params[:body])
    quote.save
    redirect_to "/"
  end
end
