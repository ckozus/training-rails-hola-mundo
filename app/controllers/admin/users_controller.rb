class Admin::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :validacion
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def validacion
  end

  # GET /users
  # GET /users.json
  def index
    @cnt   = User.count
    if ['name', 'last_name', 'age', 'email'].include?(params[:order])
      @users = User.order(params[:order])
    else
      @users = User.order(:name)
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: 'Se creo un usuario exitosamente.'
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'Usuario actualizado exitosamente.'
    else
      render :edit
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    redirect_to users_url, notice: 'Usuario fue exitosamente eliminado.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :last_name, :age, :email, :notes)
    end
end
