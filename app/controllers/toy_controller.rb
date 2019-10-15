class ToyController < ApplicationController
    def index
        @toys = Toy.all
    end

    def new
        @toy = Toy.new
    end

    def create
        @toy = Toy.new(toy_params)

        if @toy.save
            redirect_to :action => "index"
        else
            render :action => "new"
        end
    end

    def show
        @toy = Toy.find(params[:id])
    end

    def edit
        @toy = Toy.find(params[:id])
    end

    def update
        @toy = Toy.find(params[:id])
        if @toy.update_attributes(toy_params)
            redirect_to :action => "show", :id => @toy.id
        else
            render :action => "edit"
        end
    end 

    def destroy
        @toy = Toy.find(params[:id])
        @toy.destroy
        redirect_to toy_index_path
    end

    private
    def toy_params
        params.require(:toy).permit(:name, :description, :date_posted, :user)
    end
end