# MovieDiary


## Problem Statement 

As a movie enthusiast, I often struggle to keep track of the films I watch. A few weeks after viewing a movie, I often forget the details. I also feel the need to rate all the movies I see and maintain a list of my favorites. Additionally, I want to review each film after watching it, as this helps me articulate my thoughts about it.

There are also many movies I want to watch later, which I jot down somewhere, but these lists often become disorganized and get lost. I want to be able to create and manage watchlists effectively.

The goal of this project is to develop "Movie Diary," a SwiftUI-based mobile app that addresses these challenges and enhances the movie-watching experience. Movie Diary is designed to be a user-friendly and visually appealing app that simplifies the management of movie watchlists, highlights favorite films, and allows users to write reviews. With Movie Diary, users will be able to keep track of the movies they watch, create organized watchlists, review films, and discover new ones.

## Requirements

- Movie Database Integration: Integrate with a movie database API for getting a comprehensive movie library to improve user experience.
- Overview User Profile: Users should be able to view their preferences from their profile screen. Such as, location, age, gender.
- Add to Watchlist: Provide the option to add movies to a watchlist for future viewing. Also, users should able to edit the watchlist after. For example, if user watched a movie from the watchlist, they should be able to remove it from the list.
- Like Movies: Users should be able to like movies they've watched. The "Add Favorite" keeps the selected movies as a list. Thus, users can reach their favorite movies and list them.
- Create Reviews: Provide the option to add review movies. Also, users should be able to edit their reviews after.
- Overview Reviews: Provide the option to overview the movies reviews.
- Movie Details Overview: Users should be able to overview the movie details when they want to check a specific movie (date, director, actors etc.).
- Watch Overview: Users should be able to list all the movies they have rated. They can track their viewing history and check the ratings they gave to movies.
- Dark Mode Support: Support for dark mode to enhance user experience.

## Analysis

Project's analysis object model is as seen below:

![Alt text](UMLClassDiagram.png)


## System Design


The visual of the project's system design overview is as seen below:

![Alt text](movie-system-design.png)

## Product Backlog

| Task                              | Description                                    | Priority   |
| --------------------------------- | ---------------------------------------------- | ----------  |
| Integrate with third-party APIs    | Connect with external services and APIs        | Critical  |
||
| User profile overview             | Develop user profile management features      | Major      |
| Movie like functionality        | Implement movie like functionality        | Major      |
| Watchlist management | Add a functionality for creating, editing, and deleting watchlist | Critical  |
| List favorites         | Add a functionality for overview of favorited movies by user | Major  |
| Movie reviewing              | Add a functionality to create and edit movie reviews | Major  |
| Movie details overview       | Develop movie details features  | Major     |
| Dark Mode Support    | Support for dark mode     | Minor      |

