class UrlsController < ApplicationController
  before_action :set_url, only: [:show, :destroy]

  # GET /urls
  # GET /urls.json
  
  def index
    @urls = Url.all
  end

  # GET /urls/1
  # GET /urls/1.json
  def show
  end

  # GET /urls/new
  def new
    @url = Url.new
  end

  # POST /urls
  # POST /urls.json
  def create
    
    #check to see if http:// was added to url, if not, add it
    params['url']['url'].match(/\Ahttps?:\/\//) ? true : params['url']['url'] = "http://" + params['url']['url']
    
    #create slug with random 8 length string for url
    #and add that to the end if the base url
    params['url']['slug'] = "#{request.base_url}/" + [*('a'..'z'),*('A'..'Z'),*(1..9)].shuffle[0,8].join
    @url = Url.new(url_params)

    respond_to do |format|
      if @url.save
        format.html { redirect_to @url, notice: 'Url was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
  
  def click
    @url = Url.where("slug" => request.original_url).first
    
    if redirect_to @url.url, status: 301, remote: true
      @url.visits += 1
      @url.save
    end
  end

  # DELETE /urls/1
  # DELETE /urls/1.json
  def destroy
    @url.destroy
    respond_to do |format|
      format.html { redirect_to urls_url, notice: 'Url was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_url
      @url = Url.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def url_params
      params.require(:url).permit(:url, :slug) 
    end
end
