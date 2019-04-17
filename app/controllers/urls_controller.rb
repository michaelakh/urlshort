class UrlsController < ApplicationController
  before_action :set_url, only: [:show, :destroy, :edit, :update]

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
  
  def edit
  end

  # POST /urls
  # POST /urls.json
  def create
    
    #check to see if http:// was added to url, if not, add it
    params['url']['url'].match(/\Ahttps?:\/\//) ? true : params['url']['url'] = "http://" + params['url']['url']
    
    #create slug with random 8 length string for url
    #and add that to the end if the base url
    slug = "#{request.base_url}/" + [*('a'..'z'),*('A'..'Z'),*(1..9)].shuffle[0,8].join
    
    #test to see if slug has been taken, if so, recreate slug
    
    if Url.where(slug:slug).blank?
      params['url']['slug'] = slug
      @url = Url.new(url_params)
    else
      
      params['url']['slug'] = slug
      @url = Url.new(url_params)
    end
    respond_to do |format|
      if @url.save
        format.html { redirect_to @url, notice: 'Url was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
  
  def update
    
    #check to see if http:// was added to url, if not, add it
    params['url']['url'].match(/\Ahttps?:\/\//) ? true : params['url']['url'] = "http://" + params['url']['url']
    
    #create slug with random 8 length string for url
    #and add that to the end if the base url
    slug = "#{request.base_url}/" + [*('a'..'z'),*('A'..'Z'),*(1..9)].shuffle[0,8].join
    
    #test to see if slug has been taken, if so, recreate slug
    
    if Url.where(slug:slug).blank?
      params['url']['slug'] = slug
    else
      slug = "#{request.base_url}/" + [*('a'..'z'),*('A'..'Z'),*(1..9)].shuffle[0,8].join
      params['url']['slug'] = slug
    end
    respond_to do |format|
      if @url.update(url_params)
        format.html { redirect_to @url, notice: 'Url was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
  
  def click
    # Find url model
    @url = Url.where("slug" => request.original_url).first
    
    
    if @url.blank?
      # If model wasn't found, redirect to error page
      redirect_to show
    else
      # If model was found, track click and redirect
      if redirect_to @url.url, status: 301, remote: true
        @url.visits.blank? ? @url.visits = 0 : ''
        @url.visits += 1
        @url.save
      end
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
