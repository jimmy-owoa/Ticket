class Admin::TicketsController < Admin::ApplicationController
  def index
    @tickets = Ticket.all
  end

  def new

  end

  def create

  end

  def show
    @ticket = Ticket.find params[:id]

  end

  def edit
    @ticket = Ticket.find params[:id]
    @users = User.all
  end

  def update
    @ticket = Ticket.find params[:id]
    if @ticket.update ticket_params
      @ticket.assigned!
      redirect_to admin_tickets_path, notice: "Ticket asignado al usuario"
    else
      render :edit
    end
  end
  def destroy
    @ticket = Ticket.find params[:id]
    if @ticket.destroy
      redirect_to admin_tickets_path, notice: "Ticket Eliminado Correctamente"
    else
      redirect_to admin_tickets_path, notice: "No se pudo eliminar el Ticket"
    end
  end

  private

  def ticket_params
    params.require(:ticket).permit(:user_assigned)
  end
end
