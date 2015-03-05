class YourboxesController < ApplicationController
  before_action :set_yourbox, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    @yourboxes = Yourbox.all
  end

  def show
  end

  def new
    @yourbox = current_user.yourboxes.build
  end

  def edit
  end

  def create
    @yourbox = current_user.yourboxes.build(yourbox_params)
    if @yourbox.save
      redirect_to @yourbox, notice: 'Pin was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @yourbox.update(yourbox_params)
      redirect_to @yourbox, notice: 'Pin was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @yourbox.destroy
    redirect_to yourboxes_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yourbox
      @yourbox = Yourbox.find(params[:id])
    end

    def correct_user
      @yourbox = current_user.yourboxes.find_by(id: params[:id])
      redirect_to yourboxes_path, notice: "Not authorized to edit this pin" if @yourbox.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yourbox_params
      params.require(:yourbox).permit(:description, :image)
    end
end