class ArtistsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @artists = Artist.all
    @artists = Artist.order(sort_column + " " + sort_direction)
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      image_params.each do |image|
        @artist.photo.create(image: image)
      end

      redirect_to artist_path(@artist), :notice => "Artist successfully created"
    else
      render :new
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to artists_path, :notice => "The artist and songs belonging to this artist have been deleted"
  end

  private

  def artist_params
    params.require(:artist).permit(:artistname, :origin, :website, :active, :image)
  end

  def image_params
    params[:images].present? ? params.require(:images) : []
  end

  def sort_allowed
    ["artistname", "created_at"]
  end

  def sort_column
    sort_allowed.include?(params[:sort]) ? params[:sort] : "artistname"
  end

  def sort_direction
     %w[asc, desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
