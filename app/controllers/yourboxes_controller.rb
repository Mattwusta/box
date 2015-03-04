class YourboxesController < ApplicationController
  before_action :set_yourbox, only: [:show, :edit, :update, :destroy]

  def index
    @yourboxes = Yourbox.all
  end

  def show
  end

  def new
   @yourbox = Yourbox.new
  end

  def edit
  end

  def create
   @yourbox = Yourbox.new(yourbox_params)
    if @yourbox.save
      redirect_to @yourbox, notice: '您的新箱子紀錄設立成功！'
    else
      render action: 'new'
    end
  end

  def update
    if @yourbox.update(yourbox_params)
      redirect_to @yourbox, notice: '您的箱子紀錄更新成功！'
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

    # Never trust parameters from the scary internet, only allow the white list through.
    def yourbox_params
      params.require(:yourbox).permit(:description)
    end
end
