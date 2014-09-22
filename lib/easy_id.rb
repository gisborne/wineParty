#include into a model to set the ID to a new UUID on save
require 'uuid'
module EasyId
  def self.included(base)
    base.send :before_save, :set_uuid
  end

  def set_uuid
    self.id ||= UUID.generate
  end
end