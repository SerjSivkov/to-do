class Task < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: true
	PRIORITIES = [
		['Позже', 1],
		['Следующая', 2],
		['Срочно', 3]
	]
	def complete!
		self.completed = true
		save
	end
end
