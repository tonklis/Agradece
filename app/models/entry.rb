class Entry < ActiveRecord::Base
	belongs_to :usuario
  attr_accessible :date, :usuario_id, :goal, :give, :grateful_one, :grateful_two, :grateful_three, :grateful_four, :grateful_five, :grateful_six, :grateful_seven, :grateful_eight, :grateful_nine, :grateful_ten, :thanks, :happy, :evaluation, :improvement, :happier, :still_pending, :greeting
  belongs_to :usuario
end
