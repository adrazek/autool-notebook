module AutoolNotebook
  class Notebook < ActiveRecord::Base
    belongs_to :owner, class_name: AutoolNotebook.user_class.to_s
    belongs_to :target, class_name: AutoolNotebook.user_class.to_s
    #has_calendar
  end
end
