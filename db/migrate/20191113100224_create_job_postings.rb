class CreateJobPostings < ActiveRecord::Migration[6.0]
  def change
    create_table :job_postings do |t|
      t.string :title
      t.integer :salary
      t.text :description
      t.text :requirements

      t.timestamps
    end
  end
end
