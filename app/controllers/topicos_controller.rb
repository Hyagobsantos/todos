class TopicosController < ApplicationController
  before_action :set_topico, only: [:show, :edit, :update, :destroy]

  def index
    @topicos = current_user.topicos
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
    @topico.user = current_user
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
