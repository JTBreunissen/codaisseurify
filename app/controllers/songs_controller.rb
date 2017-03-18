class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)

    if @song.save
      redirect_to song_path(@song), notice: "Song successfully created"
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
