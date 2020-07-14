class FilmsController < ApplicationController
    def index 
        @films = Film.all
    end

    def new
        
    end

    def show
        @film = Film.find(params[:id])
    end

    def create 
        @film = Film.new(film_params)
        if @film.save 
            redirect_to @film
        else
            render 'new' 
        end
    end

    private def film_params
        params.require(:film).permit(:title, :synopsis)
    end
end
