class CreateRecruiters < ActiveRecord::Migration[6.0]
  def change
    create_table :recruiters do |t|
      t.string :company
      t.integer :contact_number
      t.text :bio
      t.text :profile_image

      t.timestamps
    end
  end
end
