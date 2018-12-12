class CreateAdesivos < ActiveRecord::Migration[5.2]
  def change
    create_table :adesivos do |t|
      t.string :url
      t.decimal :valor, :precision => 8, :scale => 2
      t.decimal :frete, :precision => 8, :scale => 2
      t.timestamps
    end
  end
end
