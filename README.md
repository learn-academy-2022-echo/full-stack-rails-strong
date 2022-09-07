# Challenges
- As a developer, I have been commissioned to create an application where a user can see and create blog posts.

- As a developer, I can create a full-stack Rails application.
    $ rails new blog_post_challenge -d postgresql -T
    $ cd blog_post_challenge
    $ rails db:create
    $ bundle add respec-rails
    $ rails generate respec:install
    $ rails generate rspec:install
    $ rails s
- As a developer, my blog post can have a title and content.
    $ rails g model BlogPost title:string content:string
        invoke  active_record
        create    db/migrate/20220907205643_create_blog_posts.rb
        create    app/models/blog_post.rb
    $ rails db:migrate
        == 20220907205643 CreateBlogPosts: migrating ==================================
        -- create_table(:blog_posts)
        -> 0.0346s
        == 20220907205643 CreateBlogPosts: migrated (0.0349s) =========================

- As a developer, I can add new blog posts directly to my database.
    - terminal commands
        $ rails c
            $ BlogPost.create title: "What to Write", content: "What content can I put in a blog post? I don't know."
            $ BlogPost.create title: "Code Noobie", content: "I'm gonna share my thoughts on coding."
            $ BlogPost.create title: "ECHOOOO....ECHOOO....echoooo....echo....", content: "I am the ghost of ECHO, coming to haunt you."

- As a user, I can see all the blog titles listed on the home page of the application.
    - create index method inside app/controllers/blog_post_controller.rb
        - create an instance variable for all the blog post instances
    - create app/views/blog_post/index.html.erb
        - use .map to iterate through the blog post instances and retrieve the titles

- As a user, I can click on the title of a blog and be routed to a page where I see the title and content of the blog post I selected.
    - create a show method
        - create an instance variable @blogposts for a single object (one blog post) of BlogPost
    - create app/views/blog_post/show.html.erb
        - display the title and content from

- As a user, I can navigate from the show page back to the home page.
- As a user, I see a form where I can create a new blog post.
    - new and create methods
- As a user, I can click a button that will take me from the home page to a page where I can create a blog post.
    - link
- As a user, I can navigate from the form back to the home page.
- As a user, I can click a button that will submit my blog post to the database.
    - create method
- As a user, I when I submit my post, I am redirected to the home page.
    - redirect

# Stretch Challenges
- As a user, I can delete my blog post.
- As a user, I can update my blog post.
- As a developer, I can ensure that all blog posts have titles and content for each post.
- As a developer, I can ensure that all blog post titles are unique.
- As a developer, I can ensure that blog post titles are at least 10 characters.
