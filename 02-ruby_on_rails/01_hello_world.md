## Step-by-Step: Creating a "Hello World" Application

### 1. Setting the Root Route
To define the home page of your application, open the `config/routes.rb` file and set the root path:
```ruby
Rails.application.routes.draw do
  root 'pages#home'
end
```

## 2. Generating the Controller
Create a new controller named `Pages` by running the following command in your application directory:
```bash
rails generate controller pages
```

This command automatically creates several files, including the controller file under `app/controllers/pages_controller.rb` and a dedicated views folder at `app/views/pages/`.

## 3. Adding the Controller Action
Open `app/controllers/pages_controller.rb` and define the `home` action.

You can render plain HTML directly from the controller to verify everything is wired up correctly:
```ruby
class PagesController < ApplicationController
  def home
    render html: 'Hello World!'
  end
end
```

## Previewing the Application
To start the local development server, navigate to your application's root directory in the terminal and run:
```bash
rails server
```
*Tip: You can also use the shortcut `rails s`.*

Once the server boots up, open your web browser and go to:
```Plaintext
http://localhost:3000
```
If everything is configured correctly, you will see your "Hello World!" message live in the browser.