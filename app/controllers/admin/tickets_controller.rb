class Admin::TicketsController < Admin::ApplicationController
  def index
    @tickets = Ticket.all
  end

  def new

  end

  def create

  end

  def show

  end

  def edit

  end

  def update

  end
  def destroy
    @ticket = Ticket.find params[:id]
    if @ticket.destroy
      redirect_to admin_tickets_path, notice: "Ticket Eliminado Correctamente"
    else
      redirect_to admin_tickets_path, notice: "No se pudo eliminar el Ticket"
    end
  end
end
