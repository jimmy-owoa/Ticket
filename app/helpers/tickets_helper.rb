module TicketsHelper

  def status_name(status)
    case status
    when "unassigned"
      return "Sin Asignar"
    when "assigned"
      return "Asignado"
    when "finished"
      return "Finalizado"
    end
  end
end
