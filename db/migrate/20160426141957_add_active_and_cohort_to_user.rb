class AddActiveAndCohortToUser < ActiveRecord::Migration
  def change
    add_column :users, :active, :boolean, null: false, default: false
    add_column :users, :cohort, :integer, null: false, default: 9
  end
end
