class TopicosController < ApplicationController
  def index
    @topicos = Topico.all
  end

  def show
    set_topico
  end

  def edit
    set_topico
  end

  def new
    @topico = Topico.new
  end

  def create
    topico_params = params.require(:topico).permit(:titulo)
    @topico = Topico.new(topico_params)

    if @topico.save
      redirect_to topico_url(@topico)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_topico
    @topico = Topico.find(params[:id])
  end
end
