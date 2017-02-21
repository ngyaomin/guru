class AddSuggestedOfferingToPujas < ActiveRecord::Migration[5.0]
  def change
    add_column :pujas, :suggested_offering, :numeric
  end
end
