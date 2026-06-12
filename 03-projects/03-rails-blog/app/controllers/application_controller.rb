class ApplicationController < ActionController::Base
  def hello
    render html: "I love pizza!"
  end
end
