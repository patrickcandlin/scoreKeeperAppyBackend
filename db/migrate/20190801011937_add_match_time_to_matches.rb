class AddMatchTimeToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :match_time, :datetime
  end
end
