# SprintFWD Rails Takehome

## Setup
1. Clone this repo to your machine and run `bundle install` from the command line in the root directory to install the necessary gems.
2. Run `bundle exec rails db:create db:migrate` to create the database and run the migrations.
3. Run `bundle exec rails db:seed` to seed the database with sample data to get you started. This is optional, you can also create your own data.
5. You can then run `bundle exec rails s` from the command line to run the server locally on port 3000. After running the server you can interact with the data through the Rails Views using your preferred web browser.

## Technologies Used

  * PostgreSQL
  * Ruby on Rails

## Postgres Database Schema

### members
| column name  | data type | details  |
| ------------- | ------------- | ------------- |
| id  | integer  | not null |
| first_name  | string  | not null |
| last_name  | string  | not null |
| city  | string  |  |
| state  | string  |  |
| country  | string  |  |
| team_id  | integer  | foreign_key |
| created_at  | datetime  | not null  |
| updated_at  | datetime  | not null  |
* index on first_name, last_name

### teams
| column name  | data type | details  |
| ------------- | ------------- | ------------- |
| id  | integer  | not null  |
| name  | string  | not null  |
| created_at  | datetime  | not null  |
| updated_at  | datetime  | not null  |
* index on name, unique: true

### projects
| column name  | data type | details  |
| ------------- | ------------- | ------------- |
| id  | integer  | not null  |
| name | string  | not null |
| created_at  | datetime  | not null  |
| updated_at  | datetime  | not null  |
* index on name, unique: true

### member_projects
| column name  | data type | details  |
| ------------- | ------------- | ------------- |
| id  | integer  | not null  |
| member_id | integer | not null, indexed, foreign key |
| project_id | integer | not null, indexed, foreign key |
| created_at  | datetime  | not null  |
| updated_at  | datetime  | not null  |

## Usage
- This project allows you to interact with all the data through your browser.
- After starting the server navigate to `http://localhost:3000` on your browser to reach the homepage.
- Team, Project, and Member all have CRUD operations that can be accessed using the simple UI built on rails views.
- There are Rspec tests that can be ran against the models using `bundle exec rspec spec`.

