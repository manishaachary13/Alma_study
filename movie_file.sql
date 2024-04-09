-- create a movie table with column names and datatypes.
CREATE TABLE movies (
    director_name VARCHAR(255),
    num_critic_for_reviews INTEGER,
    gross BIGINT,
    genres VARCHAR(255),
    actor_1_name VARCHAR(255),
    movie_title VARCHAR(255),
    num_voted_users INTEGER,
    plot_keywords TEXT,
    num_user_for_reviews INTEGER,
    language VARCHAR(50),
    country VARCHAR(50),
    budget BIGINT,
    title_year INTEGER,
    imdb_score DECIMAL(3,1),
    profit BIGINT
);

-- Adjust the precision and scale as necessary.
ALTER TABLE movies
ALTER COLUMN profit TYPE DECIMAL(20,2); 
-- import movie.csv file from device
-- Retrieving all movie information
select * from movies;
-- List the number of movies directed by each director, ranked from highest to lowest.
select director_name,count(*) as num_of_movies from movies group by director_name order by num_of_movies desc;

-- What are the top 10 highest-grossing movies in the database?
select movie_title,gross from movies order by gross desc limit 10;

-- How many movies in the database are in each language?
select language, count(*) as no_of_movies from movies group by language order by language;

-- Which movies were released in the year 2000?
select movie_title from movies where title_year=2000;

-- What is the average IMDB score for each genre in the database?
select genres,round(avg(imdb_score),2) from movies group by genres order by avg(imdb_score);

-- How does the number of movies produced in the USA compare to the UK?SELECT country, COUNT(*) AS num_movies
SELECT country, COUNT(*) AS num_movies
FROM movies
WHERE country IN ('USA', 'UK')
GROUP BY country;

