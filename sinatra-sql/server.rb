module App
  class Server < Sinatra::Base

    get('/') do
      erb(:index, layout: :application)
    end

    get('/students/new') do
      erb(:new, layout: :application)
    end

    get('/students') do
      @students = DB.execute("SELECT * FROM students")
      erb(:students, layout: :application)
    end

    post('/students') do
      query = "INSERT INTO students (name, email) VALUES (?, ?)"
      name = params[:name]
      email = params[:email]
      DB.execute(query, [name, email])
      redirect(to('/students'))
    end

  end
end




