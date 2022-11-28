# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



10.times { Supplier.create!(name: Faker::Company.name) }

3.times { Author.create!(first_name: Faker::Name.first_name,
                        last_name: Faker::Name.last_name,
                        title: Faker::Quote.singular_siegler) }
50.times { Customer.create!(first_name: Faker::Name.first_name,
                            last_name: Faker::Name.last_name,
                            title: Faker::Quote.singular_siegler,
                            email: Faker::Internet.free_email,
                            visits: rand(100),
                            orders_count: rand(100),
                            lock_version: rand(10)) }

50.times { Order.create!(date_submited: Faker::Date.between(from: 50.days.ago, to: Date.today),
                        status: rand(0..3),
                        subtotal: Faker::Number.decimal(l_digits: 0, r_digits: 1),
                        shipping: Faker::Number.decimal(l_digits: 2, r_digits: 1),
                        tax: Faker::Number.decimal(l_digits: 0, r_digits: 1),
                        total: Faker::Number.decimal(l_digits: 3, r_digits: 1),
                        customer_id: rand(1..50)) }
10.times { Book.create!(title: Faker::Quote.robin,
                        year_published: rand(1800..2000),
                        isbn: Faker::Barcode.ean(8),
                        price: Faker::Number.decimal(l_digits: 2, r_digits: 1),
                        out_of_print: Faker::Boolean.boolean(true_ratio: 0.75),
                        views: rand(1000),
                        supplier_id: rand(1..10),
                        author_id: rand(1..3)) }

100.times { Review.create!(title: Faker::Quote.singular_siegler,
                        body: Faker::Quote.most_interesting_man_in_the_world,
                        rating: rand(1..5),
                        state: rand(0..2),
                        customer_id: rand(1..50),
                        book_id: rand(1..10)) }

puts 'SEED done!!!!'