Outline
  1. Review Sinatra

  1. Review Nested forms
  Learning goals:
    - When do we need a nested form?
    - Mass assignment
    - Name attribute to structure our params
  2. Edit and Update
  2. Checkboxes
    1. Learning goals:
      - More practice with
          - params
          - erb
          - controllers
          - mass assignment
    2. Outline
      a. build normally
        - learn about checkboxes, how they work
        - buid checkboxes dynamically
        - create in controller

      b. build fancy
        - use mass assignment methods


        <!-- User.create -->
        <!-- params = {user: {name: 'bob', hometowns: []}}
        params = {hometowns: ['philly', 'suburbia']}
        params[:user][:name] -> 'bob' -->

        [www.localhost:3000/users/new]


        POST /users
        _________
        |   make a user       |
           name
           _____

           hometown
           _______

           [make a user]


Character.new({name: 'bob', foo: 'whatever'})
<character>.name=('bob')
<character>.foo=('whatever')
