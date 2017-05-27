class DropIntalls < ActiveRecord::Migration[5.0]
  def change
    drop_table :portfolios
  end
end