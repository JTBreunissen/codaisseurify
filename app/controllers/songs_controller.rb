class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def create
      @artist = Artist.find(params[:artist_id])
      @song = @artist.songs.new(song_params)
      @song.artist_id = params[:artist_id]

    if @song.save
      redirect_to @artist, notice: "Song successfully created"
    else
      render :new
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def show
    @song = Song.find(params[:id])
  end

  def destroy
    @song = Song.find(params[:id])
    artist = @song.artist_id
    @song.destroy
    redirect_to artist_path(artist), :notice => "The song has been deleted"
  end

  private

  def song_params
    params.require(:song).permit(:songtitle, :album, :releaseyear, :artist_id)
  end

end
