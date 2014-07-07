class AddVelementsVsetsTable < ActiveRecord::Migration
  def change
    create_table :velements_vsets , :id => false do |t|
      t.column 'velement_id', :integer
      t.column 'vset_id', :integer
    end
  end
end
