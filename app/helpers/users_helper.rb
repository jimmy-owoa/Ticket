module UsersHelper
  def permission(permission_level)
    case permission_level
    when "user"
      return "Usuario"
    when "admin"
      return "Administrador"
    when "moderator"
      return "Moderador"
    end
  end
end
