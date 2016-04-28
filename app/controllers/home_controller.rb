class HomeController < ApplicationController
  # layout :choose_layout, except: [:index, :index2]

  def index
    @user = User.take

    # render :index
    # @users = User.all
    # render "users/index"

    # render nothing: true

    # render :index2
    # render action: 'index2'
    # render template: 'index2'

    # render file: '/Users/etoro/Desktop/cohort9/hello.html', layout: false

    # render plain: 'ok'
    # render inline: '<%= Time.now %>'

    # APIs
    # render json: @user
    # render xml: @user
    # render plain: @user.to_json

    # custom layout
    # render layout: false
    # render layout: 'simple'

    # custom status code
    # render plain: 'client error', status: :ok

    # render layout: 'simple'

    # redirecting

    # redirect_to users_path
    # redirect_to :back
    # redirect_to :back

    # head 200
    # head :not_found
    # render nothing: true, status: 200
  end

  def index2
    puts "running index2 action"
    @users = User.all
  end

  def search
  end

  def get
    render json: params
    # render plain: params["user"] == params[:user]
    # @user = User.find_by(name: params[:username])
    # render json: @user
  end

  def post
    render json: params
  end

  private
  def choose_layout
    request.mobile? > 0.5 ? 'simple' : false
  end
end
