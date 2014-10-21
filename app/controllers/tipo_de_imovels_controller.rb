class TipoDeImovelsController < ApplicationController
  before_action :set_tipo_de_imovel, only: [:show, :edit, :update, :destroy]

  # GET /tipo_de_imovels
  # GET /tipo_de_imovels.json
  def index
    @tipo_de_imovels = TipoDeImovel.all
  end

  # GET /tipo_de_imovels/1
  # GET /tipo_de_imovels/1.json
  def show
  end

  # GET /tipo_de_imovels/new
  def new
    @tipo_de_imovel = TipoDeImovel.new
  end

  # GET /tipo_de_imovels/1/edit
  def edit
  end

  # POST /tipo_de_imovels
  # POST /tipo_de_imovels.json
  def create
    @tipo_de_imovel = TipoDeImovel.new(tipo_de_imovel_params)

    respond_to do |format|
      if @tipo_de_imovel.save
        format.html { redirect_to @tipo_de_imovel, notice: 'Tipo de imovel was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_de_imovel }
      else
        format.html { render :new }
        format.json { render json: @tipo_de_imovel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_de_imovels/1
  # PATCH/PUT /tipo_de_imovels/1.json
  def update
    respond_to do |format|
      if @tipo_de_imovel.update(tipo_de_imovel_params)
        format.html { redirect_to @tipo_de_imovel, notice: 'Tipo de imovel was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_de_imovel }
      else
        format.html { render :edit }
        format.json { render json: @tipo_de_imovel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_de_imovels/1
  # DELETE /tipo_de_imovels/1.json
  def destroy
    @tipo_de_imovel.destroy
    respond_to do |format|
      format.html { redirect_to tipo_de_imovels_url, notice: 'Tipo de imovel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_de_imovel
      @tipo_de_imovel = TipoDeImovel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_de_imovel_params
      params.require(:tipo_de_imovel).permit(:descricao)
    end
end
