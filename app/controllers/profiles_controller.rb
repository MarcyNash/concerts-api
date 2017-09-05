class ProfilesController < OpenReadController
  before_action :set_profile, only:[:update,:destroy]

  # GET /profiles
  def index
    # @profiles = Profile.all
    @profile = current_user.profile

    # render json: @profiles
    render json: @profile
  end

  # GET /profiles/1
  def show
    render json: current_user.profile
  end

  # POST /profiles
  def create
    @profile = Profile.create(profile_params)
    current_user.profile = @profile

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
    # @profile = current_user.profile.find(params[:id])
    @profile = current_user.profile
  end

  # Only allow a trusted parameter "white list" through.
  def profile_params
    params.require(:profile).permit(:user_name, :about_me)
  end
end
