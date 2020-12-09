class PresssesController < ApplicationController
  before_action :set_presss, only: [:show, :edit, :update, :destroy]

  # GET /pressses
  # GET /pressses.json
  def index
    @pressses = Presss.paginate(:page => params[:page], per_page: 3)
  end

  # GET /pressses/1
  # GET /pressses/1.json
  def show
  end

  # GET /pressses/new
  def new
    @presss = Presss.new
  end

  # GET /pressses/1/edit
  def edit
  end

  # POST /pressses
  # POST /pressses.json
  def create
    @presss = Presss.new(presss_params)

    respond_to do |format|
      if @presss.save
        format.html { redirect_to @presss, notice: 'Presss was successfully created.' }
        format.json { render :show, status: :created, location: @presss }
      else
        format.html { render :new }
        format.json { render json: @presss.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pressses/1
  # PATCH/PUT /pressses/1.json
  def update
    respond_to do |format|
      if @presss.update(presss_params)
        format.html { redirect_to @presss, notice: 'Presss was successfully updated.' }
        format.json { render :show, status: :ok, location: @presss }
      else
        format.html { render :edit }
        format.json { render json: @presss.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pressses/1
  # DELETE /pressses/1.json
  def destroy
    @presss.destroy
    respond_to do |format|
      format.html { redirect_to pressses_url, notice: 'Presss was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_presss
      @presss = Presss.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def presss_params
      params.require(:presss).permit(:title, :press_date, :body)
    end
end
