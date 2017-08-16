class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
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
    @ticket = Ticket.find params[:id]
  end

  def edit
    @ticket = Ticket.find params[:id]
  end

  def update
    @ticket = Ticket.find params[:id]
    @ticket.user_assigned = current_user.id
    @ticket.assigned!
    @ticket.save
    redirect_to tickets_path
  end

  private

  def ticket_params
    params.require(:ticket).permit(:title,:description)
  end
end
