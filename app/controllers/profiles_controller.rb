class ProfilesController < OpenReadController
  before_action :set_profile, only: [:show, :update, :destroy]

  # GET /profiles
  def index
    # @profiles = Profile.all
    @profile = current_user.profile

    render json: @profile
  end

  # GET /profiles/1
  def show
    render json: @profile
  end

  # POST /profiles
  def create
    # binding.pry
    # Profile.create(
    # { user: current_user,
    #     user_name: params[:user_name],
    #
    #   })

    @profile = Profile.create(profile_params)
    current_user.profile = @profile

    # binding pry

    # Profile.create({user: current_user}) user_name: '11Fun'})

    if @profile.save
      render json: @profile, status: :created, location: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profiles/1
  def update
    if @profile.update(profile_params)
      render json: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /profiles/1
  def destroy
    @profile.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_profile
    # @profile = Profile.find(params[:id])
    @profile = current_user.profiles.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def profile_params
    params.require(:profile).permit(:user_name, :about_me)
  end
end
