# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Student.create(first_name: 'Henry', last_name: 'McCoy', nickname: 'Beast', age: 30, abilities: 'genius-level intellect, Simian physique', photo: "https://media1.popsugar-assets.com/files/2013/10/24/792/n/1922398/deaf0c8419fcbd67_hoult.jpg", cohort_id: 1)
Cohort.create(name: 'First', auditorium: 301, start_date: 12, end_date: 30, students_number: 20 )