class AddContacts < ActiveRecord::Migration
  def change
  	create_table :contacts do |t|
  		t.string :firstname
  		t.string :lastname
  		t.string :number
  	end
  end
end
