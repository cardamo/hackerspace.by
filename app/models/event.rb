# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  event_type :string
#  value      :string
#  device_id  :integer
#  created_at :datetime
#  updated_at :datetime
#  repeated   :boolean          default(FALSE)
#

class Event < ActiveRecord::Base
  belongs_to :device

  validates :event_type, :value, presence: true

  scope :light, -> { where event_type: 'light'}

  comma do
    id
    event_type
    value
    device_id
    created_at
    updated_at
  end

end
