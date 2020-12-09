class NewzsController < ApplicationController
  before_action :set_newz, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show ,:index, :get_newzs,:show_newzs]
  

  def get_newzs
    @newzs = Newz.paginate(:page => params[:page], per_page: 3)
  end  

  def show_newzs
     
    @newz = Newz.where(id: params[:format].to_i).last
  end   
  # GET /newzs
  # GET /newzs.json
  def index
    @newzs = Newz.paginate(:page => params[:page], per_page: 3)
  end

  # GET /newzs/1
  # GET /newzs/1.json
  def show
  end

  # GET /newzs/new
  def new
    @newz = Newz.new
  end

  # GET /newzs/1/edit
  def edit
  end

  # POST /newzs
  # POST /newzs.json
  def create
    @newz = Newz.new(newz_params)

    respond_to do |format|
      if @newz.save
        format.html { redirect_to @newz, notice: 'Newz was successfully created.' }
        format.json { render :show, status: :created, location: @newz }
      else
        format.html { render :new }
        format.json { render json: @newz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newzs/1
  # PATCH/PUT /newzs/1.json
  def update
    respond_to do |format|
      if @newz.update(newz_params)
        format.html { redirect_to @newz, notice: 'Newz was successfully updated.' }
        format.json { render :show, status: :ok, location: @newz }
      else
        format.html { render :edit }
        format.json { render json: @newz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newzs/1
  # DELETE /newzs/1.json
  def destroy
    @newz.destroy
    respond_to do |format|
      format.html { redirect_to newzs_url, notice: 'Newz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newz
      @newz = Newz.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def newz_params
      params.require(:newz).permit(:name, :title, :publish_date, :body)
    end
end
