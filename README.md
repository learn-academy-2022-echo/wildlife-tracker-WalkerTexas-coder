# Student API (Using the wildlife tracker repo) 9/8/22

# API - Application Program Interface
- No VIEWS! 
- it's not for humans
- its for applications and programs to interface with
- JSON 
  - JavaScript object notation
  - a string
  - a string that holds a collection of objects and key value pairs inside
  - Each key  must be wrapped in double quotes
  ex. 
    "{ "student": {"name": "Cody"}}"

  "{ "student": 
    {
      "name": "Cody"
    }
  }"
## API RESTful Routes

- Index
  - get a list of everything from the database/table
- Show
  - get a specific item form the database
- Create
  - generate a new instance in the database
- Update
  - to overwrite a specific item in the database
- Destroy
  - remove an item from the database

We do not need or want EDIT or NEW. Their only job is to render html forms. 

# Rails resource generation 
  - creates 
    - models
    - controllers
    - routes

$ rails g resource Student name:string cohort:string
      invoke  active_record
      create    db/migrate/20220908224257_create_students.rb
      create    app/models/student.rb
      invoke    rspec
      create      spec/models/student_spec.rb
      invoke  controller
      create    app/controllers/students_controller.rb
      invoke    erb
      create      app/views/students
      invoke    rspec
      create      spec/requests/students_spec.rb
      invoke    helper
      create      app/helpers/students_helper.rb
      invoke      rspec
      create        spec/helpers/students_helper_spec.rb
      invoke  resource_route
       route    resources :students

$ rails routes
  Controller#Action
  students GET    /students(.:format)                   students#index
            POST   /students(.:format)                   students#create
new_student GET    /students/new(.:format)               students#new edit_student GET    /students/:id/edit(.:format)          students#edit
    student GET    /students/:id(.:format)               students#show
          PATCH  /students/:id(.:format)               students#update
          PUT    /students/:id(.:format)               students#update
          DELETE /students/:id(.:format)  

  # Postman
  A tool we use for interacting with API's and other projects in development 