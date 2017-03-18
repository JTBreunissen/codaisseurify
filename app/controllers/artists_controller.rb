class ArtistsController < ApplicationController
  def index
    @artist = Artist.all
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
        @artist.photos.create(image: image)
      end

      redirect_to edit_event_path(@artist), notice: "Artist successfully created"
    else
      render :new
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:artistname, :origin, :website, :active)
  end

  def image_params
    params[:images].present? ? params.require(:images) : []
  end
end
