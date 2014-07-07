class CreateVsets < ActiveRecord::Migration
  def change
    create_table :vsets do |t|
      t.string :name

      t.timestamps
    end
  end
end
