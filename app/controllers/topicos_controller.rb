class TopicosController < ApplicationController
  before_action :set_topico, only: [:show, :edit, :update, :destroy]

  def index
    @topicos = Topico.all
  end

  def show
  end

  def edit
  end

  def new
    @topico = Topico.new
  end

  def create
    @topico = Topico.new(topico_params)
    if @topico.save
      redirect_to topico_url(@topico), notice: "Topico Criado"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @topico.update(topico_params)
      redirect_to topico_url(@topico), notice: "Topico Atualizado"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @topico.destroy
    redirect_to topicos_path, notice: "Topico removido"
  end

  private

  def set_topico
    @topico = Topico.find(params[:id])
  end

  def topico_params
    params.require(:topico).permit(:titulo)
  end
end
