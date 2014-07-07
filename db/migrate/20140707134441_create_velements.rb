class CreateVelements < ActiveRecord::Migration
  def change
    create_table :velements do |t|
      t.string :name

      t.timestamps
    end
  end
end
