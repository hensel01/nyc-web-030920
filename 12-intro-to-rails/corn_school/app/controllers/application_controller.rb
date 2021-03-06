require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/students" do
    @students = Student.all
    erb :index
  end
  get "/students/new" do
    @students = Student.all
    erb :new
  end
  post "/students" do
    @students = Student.all
    redirect to "/students/"
  end
  get "/students:id " do
    @student = Student.find(params[:id])
    erb :show
  end

end
