class Abstract < ActiveRecord::Base
  attr_accessible :author, :description, :email, :abstract_status_id, :title, :organization
  belongs_to :abstract_status
  before_create :set_status

  private
    def set_status
      self.abstract_status = AbstractStatus.first
    end
end
