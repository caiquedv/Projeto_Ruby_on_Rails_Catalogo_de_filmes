class MoviesController < ApplicationController
  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(
      title: params[:movie][:title],
      release_year: params[:movie][:release_year],
      synopsis: params[:movie][:synopsis],
      country: params[:movie][:country],
      duration: params[:movie][:duration],
      director_id: params[:movie][:director_id],
      genre_id: params[:movie][:genre_id],
      poster: params[:movie][:poster]
    )
                                             
    if @movie.save
      return redirect_to movie_path(@movie.id)
    end

    render :new
  end  

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(
      title: params[:movie][:title],
      release_year: params[:movie][:release_year],
      synopsis: params[:movie][:synopsis],
      country: params[:movie][:country],
      duration: params[:movie][:duration],
      director_id: params[:movie][:director_id],
      genre_id: params[:movie][:genre_id],
      poster: params[:movie][:poster]
      )

      return redirect_to movie_path(@movie.id)
    end

    render :edit
  end
end
