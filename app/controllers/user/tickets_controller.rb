class User::TicketsController < User::ApplicationController

  before_action :ticket_find, except: [:index,:new,:create]

  def index
    @tickets = current_user.tickets.all
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = current_user.tickets.new ticket_params
    if @ticket.save
      redirect_to tickets_path, notice: "Ticket Creador"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @ticket.update ticket_params
      redirect_to user_tickets_path, notice: "Ticket Eliminado"
    else
      render :edit
    end
  end

  def destroy
    @ticket.destroy
    redirect_to user_tickets_path, notice: "Ticket Eliminado"
  end

  def finish
    @ticket.finished!
    if @ticket.save
      redirect_to user_tickets_path, notice: 'Ticket Finalizado'
    else
      redirect_to user_tickets_path, notice: 'Ocurrio un Error'
    end
  end
  private

  def ticket_params
    params.require(:ticket).permit(:title,:description)
  end

  def ticket_find
    @ticket = Ticket.find params[:id]
  end
end
