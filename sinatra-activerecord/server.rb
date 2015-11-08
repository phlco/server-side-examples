module App
  class Server < Sinatra::Base

    get('/') do
      erb(:index, layout: :application)
    end

    get('/students') do
      @students = Student.all
      erb(:students, layout: :application)
    end

    get('/students/new') do
      erb(:new, layout: :application)
    end

    post('/students') do
      Student.create({name: params[:name], email: params[:email]})
      redirect(to('/students'))
    end

  end
end




