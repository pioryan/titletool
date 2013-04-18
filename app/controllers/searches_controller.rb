class SearchesController < ApplicationController
  before_filter :build_params
  def show
    c = Curl::Easy.perform("#{Titletool::Application.custom_search_endpoint}?#{@search_params.to_query}")
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
      @search_params[:cx] = Titletool::Application.engine_ids["#{params[:filter]}"]
      @search_params[:alt] = "json"
      @search_params[:key] = Titletool::Application.google_api_key
    end

end