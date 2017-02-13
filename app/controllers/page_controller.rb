class PageController < ApplicationController
  def welcome
    @quotes = Quote.all
  end
end
