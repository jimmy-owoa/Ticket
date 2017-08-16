class Ticket < ActiveRecord::Base
  belongs_to :user
  enum status: [:unassigned, :assigned, :finished]

  def assigned_user
    User.find_by_id(user_assigned)
  end

  def assigned_user_name
    return ""  unless user_assigned
    assigned_user.name
  end
end
