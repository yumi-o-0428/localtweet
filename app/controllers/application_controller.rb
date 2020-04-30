class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_search

  def set_search
    @search = Tweet.ransack(params[:q])
    @tweets = @search.result(distinct: true).includes(:tags)
    if @search&.conditions&.first&.values&.first&.value&.present?
      @search_word = @search.conditions.first.values.first.value
    end
  end

end
