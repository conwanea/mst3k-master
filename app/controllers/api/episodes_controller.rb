class Api::EpisodesController < ApplicationController
  def index
    @episodes = Episode.all
    render "index.json.jb"
  end

  def show
    @episode = Episode.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @episode = Episode.new(
      title: params[:title],
      air_date: params[:air_date],
      genre: params[:genre],
      synopsis: params[:synopsis],
      episode_number: params[:episode_number],
      movie_poster: params[:movie_poster],
      episode_poster: params[:episode_poster],
    )
    if @episode.save
      render json: { message: "Movie in the hole!" }, status: :created
    else
      render json: { errors: @episode.errors.full_messages }, status: :bad_request
    end
  end

  def update
    @episode = Episode.find_by(id: params[:id])
    @episode.title = params[:title] || @episode.title
    @episode.air_date = params[:air_date] || @episode.air_date
    @episode.genre = params[:genre] || @episode.genre
    @episode.synopsis = params[:synopsis] || @episode.synopsis
    @episode.episode_number = params[:episode_number] || @episode.episode_number
    @episode.movie_poster = params[:movie_poster] || @episode.movie_poster
    @episode.episode_poster = params[:episode_poster] || @episode.episode_poster

    @episode.save
    render "show.json.jb"
  end

  def destroy
    episode = Episode.find_by(id: params[:id])
    episode.destroy
    render json: { message: "Movie's been flushed." }
  end
end
