class UpdateStatusDefaultToParticipants < ActiveRecord::Migration[7.0]
  def change
    change_column_default :participants, :status, from: nil, to: false
  end
end
