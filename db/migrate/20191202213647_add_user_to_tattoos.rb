class AddUserToTattoos < ActiveRecord::Migration[5.2]
  def change
    add_reference :tattoos, :user, foreign_key: true
  end
end
