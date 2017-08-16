class Ticket < ActiveRecord::Base
  belongs_to :user
  enum status: [:unassigned, :assigned, :finished]
end
