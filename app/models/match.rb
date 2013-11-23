class Match < ActiveRecord::Base
  belongs_to :character1, class_name: 'Character'
  belongs_to :character2, class_name: 'Character'

  def title
    "#{character1.name} vs #{character2.name}"
  end
end
