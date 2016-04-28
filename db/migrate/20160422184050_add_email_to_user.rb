# rails g migration AddEmailToUser email:string
class AddEmailToUser < ActiveRecord::Migration
  def change
    add_column :users, :email, :string
  end
end

# rollback: moves back 1 db version
# migrate: move forward all the way to the present
# migrate VERSION: time travel
