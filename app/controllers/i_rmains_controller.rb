class IRmainsController < ApplicationController
  before_action :set_i_rmain, only: [:show, :edit, :update, :destroy]

  # GET /i_rmains
  # GET /i_rmains.json
  def index
    @i_rmains = IRmain.all
  end

  # GET /i_rmains/1
  # GET /i_rmains/1.json
  def show
    @i_rmain = IRmain.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = IRmainPdf.new(@i_rmain)
        send_data pdf.render,  filename: "i_rmain_#{@i_rmain.ir_file}.pdf",
           type: "application/pdf",
           disposition: "inline"
      end
    end
  end

  # GET /i_rmains/new
  def new
    @i_rmain = IRmain.new
  end

  # GET /i_rmains/1/edit
  def edit
  end

  # POST /i_rmains
  # POST /i_rmains.json
  def create
    @i_rmain = IRmain.new(i_rmain_params)

    respond_to do |format|
      if @i_rmain.save
        format.html { redirect_to @i_rmain, notice: 'I rmain was successfully created.' }
        format.json { render :show, status: :created, location: @i_rmain }
      else
        format.html { render :new }
        format.json { render json: @i_rmain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /i_rmains/1
  # PATCH/PUT /i_rmains/1.json
  def update
    respond_to do |format|
      if @i_rmain.update(i_rmain_params)
        format.html { redirect_to @i_rmain, notice: 'I rmain was successfully updated.' }
        format.json { render :show, status: :ok, location: @i_rmain }
      else
        format.html { render :edit }
        format.json { render json: @i_rmain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /i_rmains/1
  # DELETE /i_rmains/1.json
  def destroy
    @i_rmain.destroy
    respond_to do |format|
      format.html { redirect_to i_rmains_url, notice: 'I rmain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_i_rmain
      @i_rmain = IRmain.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def i_rmain_params
      params.require(:i_rmain).permit(:ir_date, :title, :ir_file)
    end
end
