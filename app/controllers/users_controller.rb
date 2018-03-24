class UsersController < ApplicationController
  #CRUD (Create, Read, Update, Delete)

  has_scope :by_state
  has_scope :by_name
  has_scope :by_email

  #GET /users
  def index
    #@users = User.limit(50)
    @users = apply_scopes(User) 
                .page(params.fetch(:page,1)).per(params.fetch(:per_page,20))
  end

  #GET /users/:id
  def show
    @user = User.select(:id,:name, :email).find_by(id: params[:id])
  end

  #GET /users/new
  def new
    @user = User.new
  end

  #GET users/:id/edit
  def edit
    @user = User.select(:id,:name, :email).find_by(id: params[:id])
  end

  #POST users/
  def create
  end

  #PUT users/:id
  def update
  end

  #DELETE users/:id
  def destroy
  end

  # GET: /users/my_action/:email
 def my_action
     # params[:email]
  end
end
