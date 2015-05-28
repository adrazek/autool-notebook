require "autool_notebook/engine"
require SimpleCalendar::Calendar

module AutoolNotebook
  mattr_accessor :user_class do 'User' end

  def self.user_class
    @@user_class.constantize
  end

end
