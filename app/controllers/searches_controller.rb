class SearchesController < ApplicationController
  before_filter :build_params
  def show
    c = Curl::Easy.perform("https://www.googleapis.com/customsearch/v1?#{@search_params.to_query}")
    json_response = JSON.parse(c.body_str)

    respond_to do |format|
      format.html do
        render :show , :locals => {:items => json_response["items"]}
      end

      format.json do
        render json:  {:html => render_to_string(partial: "result.html.haml", :locals => {:items => json_response["items"]}), :status => 200 }
      end
    end

  end

  private
    def build_params
      @search_params = {}
      @search_params[:q] = "#{params[:q]}"
      @search_params[:cx] = get_cx(params[:filter])
      @search_params[:alt] = "json"
      @search_params[:key] = "AIzaSyA29lR6PJ9ewz-AVrHRkREoBSl3dWCqYc0"
    end

    def get_cx(filter)
      case filter
        when "books"
          "015638601816746880509:t2u3fxc6sa8"
        when "articles"
          "015638601816746880509:hsr2y6jkqbc"
        when "blogs"
          "015638601816746880509:x91kch1thau"
        when "news"
          "015638601816746880509:4bturjvg7ee"
      end
    end
end