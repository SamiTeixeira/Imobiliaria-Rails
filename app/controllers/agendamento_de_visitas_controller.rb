class AgendamentoDeVisitasController < ApplicationController
  before_action :set_agendamento_de_visita, only: [:show, :edit, :update, :destroy]

  # GET /agendamento_de_visitas
  # GET /agendamento_de_visitas.json
  def index
    @agendamento_de_visitas = AgendamentoDeVisita.all
  end

  # GET /agendamento_de_visitas/1
  # GET /agendamento_de_visitas/1.json
  def show
  end

  # GET /agendamento_de_visitas/new
  def new
    @agendamento_de_visita = AgendamentoDeVisita.new
    @usuarios = Usuario.all
    @imoveis = Imovel.all
  end

  # GET /agendamento_de_visitas/1/edit
  def edit
    @usuarios = Usuario.all
    @imoveis = Imovel.all
  end

  # POST /agendamento_de_visitas
  # POST /agendamento_de_visitas.json
  def create
    @agendamento_de_visita = AgendamentoDeVisita.new(agendamento_de_visita_params)

    respond_to do |format|
      if @agendamento_de_visita.save
        format.html { redirect_to @agendamento_de_visita, notice: 'Agendamento de visita was successfully created.' }
        format.json { render :show, status: :created, location: @agendamento_de_visita }
      else
        format.html { render :new }
        format.json { render json: @agendamento_de_visita.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agendamento_de_visitas/1
  # PATCH/PUT /agendamento_de_visitas/1.json
  def update
    respond_to do |format|
      if @agendamento_de_visita.update(agendamento_de_visita_params)
        format.html { redirect_to @agendamento_de_visita, notice: 'Agendamento de visita was successfully updated.' }
        format.json { render :show, status: :ok, location: @agendamento_de_visita }
      else
        format.html { render :edit }
        format.json { render json: @agendamento_de_visita.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agendamento_de_visitas/1
  # DELETE /agendamento_de_visitas/1.json
  def destroy
    @agendamento_de_visita.destroy
    respond_to do |format|
      format.html { redirect_to agendamento_de_visitas_url, notice: 'Agendamento de visita was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agendamento_de_visita
      @agendamento_de_visita = AgendamentoDeVisita.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agendamento_de_visita_params
      params.require(:agendamento_de_visita).permit(:data, :hora, :imovel_id, :usuario_id)
    end
end
