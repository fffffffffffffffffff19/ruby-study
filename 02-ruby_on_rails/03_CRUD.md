# Lecture Notes: Databases & Rails CRUD

## Database Fundamentals

* **Query Language:** We use **SQL** (*Structured Query Language*) to communicate with the database.
* **CRUD Actions:** The four basic operations for database management are:

| Letter | Action | Description |
| :---: | :--- | :--- |
| **C** | **Create** | Inserts a new record into the database. |
| **R** | **Read** | Fetches/Retrieves existing records. |
| **U** | **Update** | Modifies an existing record. |
| **D** | **Delete** | Removes a record from the database. |

---

## Ruby on Rails: Commands & Generators

### Scaffold Generator
To automatically generate the `Article` model (with two attributes), the `articles` controller, the views, and the migration file to create the `articles` table, run:

```bash
rails generate scaffold Article title:string description:text
```

### Viewing Routes
To see your application's routes presented in a clean, viewer-friendly way in the terminal:

```bash
rails routes --expanded
```

## Routes & Resource Architecture (articles)
Adding the line `resources :articles` to your `config/routes.rb` file automatically provisions the following routes and UI behaviors:

### Route Mapping & UI Perspective
**Index (GET Request)**

UI Perspective: Lists all the articles stored in the articles table of the application's database.

**New (GET Request)**

UI Perspective: Displays the form used to enter details for a brand-new article.

**Create (POST Request)**

UI Perspective: Handles the submission and processing of the data from the "New Article" form.

**Edit (GET Request)**

UI Perspective: Displays the form populated with existing information to edit a specific article.

**Update (PUT & PATCH Requests)**

UI Perspective: Handles the submission and processing of the data from the "Edit Article" form.

**Show (GET Request)**

UI Perspective: Displays a single, individual article based on the user's selection.

**Delete (DELETE Request)**

UI Perspective: Deletes a specific article from the articles table.