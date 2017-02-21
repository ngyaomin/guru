class RemoveSuggestedOfferingFromPujas < ActiveRecord::Migration[5.0]
  def change
    remove_column :pujas, :suggested_offering, :number
  end
end
