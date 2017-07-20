class MyconcertsController < OpenReadController
  before_action :set_myconcert, only: [:show, :update, :destroy]

  # GET /myconcerts
  def index
    @myconcerts = current_user.profile.myconcerts

    render json: @myconcerts
  end

  # GET /myconcerts/1
  def show
    render json: @myconcert
  end

  # POST /myconcerts
  def create
    @myconcert = Myconcert.new(myconcert_params)

    if @myconcert.save
      render json: @myconcert, status: :created, location: @myconcert
    else
      render json: @myconcert.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /myconcerts/1
  def update
    if @myconcert.update(myconcert_params)
      render json: @myconcert
    else
      render json: @myconcert.errors, status: :unprocessable_entity
    end
  end

  # DELETE /myconcerts/1
  def destroy
    @myconcert.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_myconcert
    @myconcert = Myconcert.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def myconcert_params
    params.require(:myconcert).permit(:profile_id, :concert_id)
  end
end
