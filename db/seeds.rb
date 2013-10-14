# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name(role)
  puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name
user.confirm!
user.add_role :admin

Author.destroy_all
Book.destroy_all

valim = Author.create!(
  first_name: "José",
  last_name: "Valim",
  bio: "José Valim is the lead developer and co-founder of Plataformatec. He started working with Ruby and Rails in late 2006 and was invited to be part of the Rails Core Team in 2010. He’s also author and maintainer of various other well-known open source projects that led him to receive a Ruby Hero award in recognition for his contributions to the community. Lately, he’s been flying around the globe promoting the concurrency-focused programming language called Elixir."
)
ruby = Author.create!(
  first_name: "Sam",
  last_name: "Ruby",
  bio: "Sam Ruby is a prominent software developer who is a co-chair of the W3C HTML Working Group and has made significant contributions to many of the Apache Software Foundation’s open source software projects. He is a Senior Technical Staff Member in the Emerging Technologies Group of IBM."
)
thomas = Author.create!(
  first_name: "Dave",
  last_name: "Thomas",
  bio: "Dave Thomas, as one of the authors of the Agile Manifesto, understands agility. As the author of Programming Ruby, he understands Ruby. And, as an active Rails developer, he knows Rails."
)
dhh = Author.create!(
  first_name: "David",
  last_name: "Heinemeier Hansson",
  bio: "David Heinemeier Hansson is the creator of the Rails framework."
)
hogan = Author.create!(
  first_name: "Brian P.",
  last_name: "Hogan",
  bio: "Brian P. Hogan is an author, editor, teacher, and web developer who’s been building web sites professionally since 1995 as a freelancer and consultant. His recent books include tmux: Productive Mouse-Free Development and Web Development Recipes. When not hacking on Ruby or JavaScript code, he’s writing songs, watching “The Simpsons,” and spending quality time with his wife and daughters."
)
burnham = Author.create!(
  first_name: "Trevor",
  last_name: "Burnham",
  bio: "Trevor Burnham is a full-stack web developer with a passion for new technologies. He is the founder of DataBraid, a startup developing data analysis and visualization tools that support remote collaboration. When on Twitter, he goes by @TrevorBurnham and @CoffeeScript. When offline, he’s usually in Cambridge, MA."
)
chelimsky = Author.create!(
  first_name: "David",
  last_name: "Chelimsky",
  bio: "David Chelimsky is the lead developer/maintainer of RSpec, and has contributed to several other open source projects including Cucumber, Aruba, and Rails. He has been developing software for over a decade, including three years training and mentoring agile teams at Object Mentor. He is currently a Senior Software Engineer at DRW Trading Group in Chicago, IL. In his spare time, David likes to play guitar, travel, and speak something resembling Portuguese."
)
astels = Author.create!(
  first_name: "Dave",
  last_name: "Astels",
  bio: "Dave Astels is the Director of Technology at ChannelFireball.com and has been involved with software and computing for over 25 years, recently having spent several years working exclusively with Ruby and Rails. Dave wrote the article that prompted Steven Baker to start the RSpec project.
"
)
dennis = Author.create!(
  first_name: "Zach",
  last_name: "Dennis",
  bio: "Zach Dennis is a co-founder and fellow human at Mutually Human Software, an expert custom software strategy and design consultancy in Grand Rapids, Michigan. He has been enjoying Ruby for nearly eight years and has contributed to several projects such as Ruby’s standard library documentation, Ruby on Rails, and RSpec. In his spare time, Zach loves spending time with his family, continuously learning, playing music, and running continuousthinking.com."
)
hellesoy = Author.create!(
  first_name: "Aslak",
  last_name: "Hellesøy",
  bio: "Aslak Hellesøy is a Senior Software Engineer at DRW Trading Group in London. While contributing to this book he was the Chief Scientist of BEKK Consulting in Oslo. In 2003, after seven years of professional Java programming, he fell in love with Ruby. He has contributed to dozens of open source projects and is the founder of the Cucumber project. Aslak likes to cook, ski, and travel."
)
helmkamp = Author.create!(
  first_name: "Bryan",
  last_name: "Helmkamp",
  bio: "Bryan Helmkamp maintains Webrat, a Ruby library to implement acceptance tests for web applications in an expressive and maintainable way, and is an active participant in the New York City Ruby community. Bryan is the CTO of Efficiency 2.0, a startup that helps people understand and reduce their energy use."
)
north = Author.create!(
  first_name: "Dan",
  last_name: "North",
  bio: "Dan North writes software and coaches teams and organizations in agile and lean methods. He believes that most problems that teams face are about communication and understanding, which is why he puts so much emphasis on “getting the words right.” In 2003–4 this led him to develop the ideas that would become Behaviour-Driven Development. He is delighted by the community that has grown up around RSpec and Cucumber, and especially the enthusiasm and dedication of their core contributors. Dan is currently a Senior Software Engineer at DRW Trading Group in London, where he gets to actually code again!"
)
hartl = Author.create!(
  first_name: "Michael",
  last_name: "Hartl",
  bio: "Michael Hartl is the author of the Ruby on Rails Tutorial, the leading introduction to web development with Ruby on Rails. His prior experience includes writing and developing RailsSpace, an extremely obsolete Rails tutorial book, and developing Insoshi, a once-popular and now-obsolete social networking platform in Ruby on Rails. In 2011, Michael received a Ruby Hero Award for his contributions to the Ruby community. He is a graduate of Harvard College, has a Ph.D. in Physics from Caltech, and is an alumnus of the Y Combinator entrepreneur program."
)
metz = Author.create!(
  first_name: "Sandi",
  last_name: "Metz",
  bio: "Sandi Metz has distilled a lifetime of conversations and presentations about object-oriented design into a set of Ruby-focused practices for crafting manageable, extensible, and pleasing code. She shows you how to build new applications that can survive success and repair existing applications that have become impossible to change. Each technique is illustrated with extended examples, all downloadable from the companion Web site, poodr.info.
\n\nThe first title to focus squarely on object-oriented Ruby application design, Practical Object-Oriented Design in Ruby will guide you to superior outcomes, whatever your previous Ruby experience. Novice Ruby programmers will find specific rules to live by; intermediate Ruby programmers will find valuable principles they can flexibly interpret and apply; and advanced Ruby programmers will find a common language they can use to lead development and guide their colleagues.\n\nSandi Metz has 30 years of experience working on projects that survived to grow and change. She writes code every day as a software architect at Duke University, where her team solves real problems for customers who have large object oriented applications that have been evolving for more than 15 years. She’s committed to getting useful software out the door in extremely practical ways. Practical Object Oriented Design in Ruby is the distillation of many years of white-board drawings and the logical culmination of a lifetime of conversations about object oriented design. Sandy has spoken several times at Gotham Ruby User’s Conference and lives in Durham, N.C."
)


Book.create!(
  title: "Crafting Rails 4 Applications",
  sub_title: "Expert Practices for Everyday Rails Development",
  summary: "Get ready to see Rails as you’ve never seen it before. Learn how to extend the framework, change its behavior, and replace whole components to bend it to your will. Eight different test-driven tutorials will help you understand Rails’ inner workings and prepare you to tackle complicated projects with solutions that are well-tested, modular, and easy to maintain.\n\nThis second edition of the bestselling Crafting Rails Applications has been updated to Rails 4 and discusses new topics such as streaming, mountable engines, and thread safety.",
  authors: [valim],
  remote_cover_image_url: "http://imagery.pragprog.com/products/353/jvrails2.jpg?1368826914",
  price: 33.00
)
Book.create!(
  title: "Agile Web Development with Rails 4",
  summary: "Rails just keeps on changing. Both Rails 3 and 4, as well as Ruby 1.9 and 2.0, bring hundreds of improvements, including new APIs and substantial performance enhancements. The fourth edition of this award-winning classic has been reorganized and refocused so it’s more useful than ever before for developers new to Ruby and Rails.\n\nRails 4 introduces a number of user-facing changes, and the ebook has been updated to match all the latest changes and new best practices in Rails. This includes full support for Ruby 2.0, controller concerns, Russian Doll caching, strong parameters, Turbolinks, new test and bin directory layouts, and much more.",
  authors: [ruby,thomas,dhh],
  remote_cover_image_url: "http://imagery.pragprog.com/products/196/rails4.jpg?1378493037",
  price: 43.95
)
Book.create!(
  title: "HTML5 and CSS3",
  sub_title: "(2nd edition)\nLevel Up with Today's Web Technologies",
  summary: "HTML5 and CSS3 are more than just buzzwords—they’re the foundation for today’s web applications. This book gets you up to speed on the HTML5 elements and CSS3 features you can use right now in your current projects, with backwards compatible solutions that ensure that you don’t leave users of older browsers behind. This new edition covers even more new features, including CSS animations, IndexedDB, and client-side validations.",
  authors: [hogan],
  remote_cover_image_url: "http://imagery.pragprog.com/products/350/bhh52e.jpg?1378669533",
  price: 48.00
)
Book.create!(
  title: "Async JavaScript",
  sub_title: "Build More Responsive Apps with Less Code",
  summary: "With the advent of HTML5, front-end MVC, and Node.js, JavaScript is ubiquitous—and still messy. This book will give you a solid foundation for managing async tasks without losing your sanity in a tangle of callbacks. It’s a fast-paced guide to the most essential techniques for dealing with async behavior, including PubSub, evented models, and Promises. With these tricks up your sleeve, you’ll be better prepared to manage the complexity of large web apps and deliver responsive code.",
  authors: [burnham],
  remote_cover_image_url: "http://imagery.pragprog.com/products/317/tbajs.jpg?1352998227",
  price: 17.00
)
Book.create!(
  title: "CoffeeScript",
  sub_title: "Accelerated JavaScript Development",
  summary: "CoffeeScript is JavaScript done right. It provides all of JavaScript’s functionality wrapped in a cleaner, more succinct syntax. In the first book on this exciting new language, CoffeeScript guru Trevor Burnham shows you how to hold onto all the power and flexibility of JavaScript while writing clearer, cleaner, and safer code.",
  authors: [burnham],
  remote_cover_image_url: "http://imagery.pragprog.com/products/219/tbcoffee.jpg?1304278335",
  price: 29.00
)
Book.create!(
  title: "The RSpec Book",
  sub_title: "Behaviour-Driven Development with RSpec, Cucumber, and Friends",
  summary: "Behaviour-Driven Development (BDD) gives you the best of Test Driven Development, Domain Driven Design, and Acceptance Test Driven Planning techniques, so you can create better software with self-documenting, executable tests that bring users and developers together with a common language.\n\nGet the most out of BDD in Ruby with The RSpec Book, written by the lead developer of RSpec, David Chelimsky.",
  authors: [chelimsky,astels,dennis,hellesoy,helmkamp,north],
  remote_cover_image_url: "http://imagery.pragprog.com/products/140/achbd.jpg?1298589834",
  price: 38.95
)
Book.create!(
  title: "Programming Ruby 1.9 & 2.0",
  sub_title: "(4th edition)\nThe Pragmatic Programmers' Guide",
  summary: "Ruby is the fastest growing and most exciting dynamic language out there. If you need to get working programs delivered fast, you should add Ruby to your toolbox.\n\nThis book is the only complete reference for both Ruby 1.9 and Ruby 2.0, the very latest version of Ruby. (If you’re still using Ruby 1.8, you’ll want to check out the original PickAxe.)\n\n2013 marks the 20th anniversary of the Ruby language. We’re proud that throughout its history, we’ve continued to cover the latest version of Ruby.",
  authors: [thomas],
  remote_cover_image_url: "http://imagery.pragprog.com/products/355/ruby4.jpg?1378671145",
  price: 50.00
)
Book.create!(
  title: "Ruby on Rails Tutorial (2nd Edition)",
  sub_title: "Learn Web Development with Rails",
  summary: "Using Rails, developers can build web applications of exceptional elegance and power. Although its remarkable capabilities have made Ruby on Rails one of the world’s most popular web development frameworks, it can be challenging to learn and use. Ruby on Rails™ Tutorial, Second Edition, is the solution. Best-selling author and leading Rails developer Michael Hartl teaches Rails by guiding you through the development of your own complete sample application using the latest techniques in Rails web development. The updates to this edition include all-new site design using Twitter’s Bootstrap; coverage of the new asset pipeline, including Sprockets and Sass; behavior-driven development (BDD) with Capybara and RSpec; better automated testing with Guard and Spork; roll your own authentication with has_secure_password; and an introduction to Gherkin and Cucumber.\n\nYou’ll find integrated tutorials not only for Rails, but also for the essential Ruby, HTML, CSS, JavaScript, and SQL skills you’ll need when developing web applications. Hartl explains how each new technique solves a real-world problem, and he demonstrates this with bite-sized code that’s simple enough to understand, yet novel enough to be useful. Whatever your previous web development experience, this book will guide you to true Rails mastery.",
  authors: [hartl],
  remote_cover_image_url: "http://www.informit.com/ShowCover.aspx?isbn=0321832051",
  price: 46.99
)
Book.create!(
  title: "Practical Object-Oriented Design in Ruby",
  sub_title: "An Agile Primer",
  summary: "The Complete Guide to Writing More Maintainable, Manageable, Pleasing, and Powerful Ruby Applications.\n\nRuby’s widely admired ease of use has a downside: Too many Ruby and Rails applications have been created without concern for their long-term maintenance or evolution. The Web is awash in Ruby code that is now virtually impossible to change or extend. This text helps you solve that problem by using powerful real-world object-oriented design techniques, which it thoroughly explains using simple and practical Ruby examples.",
  authors: [metz],
  remote_cover_image_url: "http://www.informit.com/ShowCover.aspx?isbn=0321721330",
  price: 41.99
)
