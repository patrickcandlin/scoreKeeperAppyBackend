class AddDescriptionToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :discription, :string
  end
end
