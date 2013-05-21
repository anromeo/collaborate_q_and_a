class QuestionsUsers < ActiveRecord::Migration
  def change
		create_table :questions_users, :id => false do |t|
		  t.integer :question_id, :user_id
		end
  end
end
