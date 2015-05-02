# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.create(title: "Sky", content: "Why is the sky blue?")
Answer.create(title: "atmosphere", content: "The atmosphere bends the light so we see blue", question_id: 1)
Answer.create(title: "Blue bloods", content: "Because the blue bloods got in so many wars and their blood stained the grass blue and the light reflects off it.", question_id: 1)

Question.create(title: "Woodchuck", content: "How much wood would a wood chuck chuck if a wood chuck could chuck wood?")
Answer.create(title: "42", content: "it's the answer to life, the universe and everything.", question_id: 2)
