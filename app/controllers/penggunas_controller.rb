class PenggunasController < ApplicationController
  before_action :set_pengguna, only: [:show, :edit, :update, :destroy]

  # GET /penggunas
  # GET /penggunas.json
  def index
    @penggunas = Pengguna.all
  end

  # GET /penggunas/1
  # GET /penggunas/1.json
  def show
  end

  # GET /penggunas/new
  def new
    @pengguna = Pengguna.new
  end

  # GET /penggunas/1/edit
  def edit
  end

  # POST /penggunas
  # POST /penggunas.json
  def create
    @pengguna = Pengguna.new(pengguna_params)

    respond_to do |format|
      if @pengguna.save
        format.html { redirect_to @pengguna, notice: 'Pengguna was successfully created.' }
        format.json { render :show, status: :created, location: @pengguna }
      else
        format.html { render :new }
        format.json { render json: @pengguna.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /penggunas/1
  # PATCH/PUT /penggunas/1.json
  def update
    respond_to do |format|
      if @pengguna.update(pengguna_params)
        format.html { redirect_to @pengguna, notice: 'Pengguna was successfully updated.' }
        format.json { render :show, status: :ok, location: @pengguna }
      else
        format.html { render :edit }
        format.json { render json: @pengguna.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /penggunas/1
  # DELETE /penggunas/1.json
  def destroy
    @pengguna.destroy
    respond_to do |format|
      format.html { redirect_to penggunas_url, notice: 'Pengguna was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pengguna
      @pengguna = Pengguna.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pengguna_params
      params.require(:pengguna).permit(:dispname, :username, :password, :email)
    end
end
