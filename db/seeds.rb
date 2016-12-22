# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'ismail@unik.ma', password: "aqwzsxedc", password_confirmation: "aqwzsxedc")
categories = Category.create([{ name: 'Healthy' }, { name: 'Wealthy' }, { name: 'Wise' }])
posts = Post.create([
        {
          title: 'Upgrade Your Energy, Optimize Your Supplements',
          body: 'Article that helps know which supplements are necessary, recommedned dosage and brands.',
          url: 'https://blog.bulletproof.com/optimize-your-supplements',
          category_id: 1,
          user_id: 1
        },
        {
          title: 'Becoming the Best Version of You',
          body: 'This is a special episode of The Tim Ferriss Show. The audio is from a live conversation with not one, not two, but three guests: Josh Waitzkin, Ramit Sethi, and Adam Robinson.',
          url: 'http://fourhourworkweek.com/2016/12/20/becoming-the-best-version-of-you/',
          category_id: 3,
          user_id: 1
        },
        {
          title: 'The Tim Ferriss Radio Hour: Meditation, Mindset, and Mastery',
          body: 'After 200 conversations with a variety of fascinating people, including Arnold Schwarzenegger, Jamie Foxx, Tony Robbins, Maria Popova, Peter Thiel, Marc Andreessen, Amanda Palmer, Malcolm Gladwell, Rick Rubin, Reid Hoffman, Chase Jarvis, Sam Harris, Rainn Wilson, and so many others, I started to spot patterns. This is the premise of my new book Tools of Titans, which is a compilation of all of my favorite habits, philosophies, and tools of world-class performers.',
          url: 'http://fourhourworkweek.com/2016/11/16/the-tim-ferriss-radio-hour-meditation-mindset-and-mastery/',
          category_id: 3,
          user_id: 1
        },
        {
          title: 'A question I ask new entrepreneurs',
          body: 'Great advise from Jason Fried for entrepreneurs, for instance, working part time at Starbucks to better understand your customers.',
          url: 'https://m.signalvnoise.com/a-question-i-ask-new-entrepreneurs-654c0da62a3b#.10x9t4lp6',
          category_id: 2,
          user_id: 1
        }
      ])