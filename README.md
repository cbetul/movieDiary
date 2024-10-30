# Intro Course Project App of Betül Çimendağ for the iPraktikum!

To pass the intro course, you need to create your own unique iOS app (based on SwiftUI).

There are no requirements regarding the functions of your app, so you can get creative.
However, we provide you with Non-Functional Requirements (NFR) that your app needs to fulfill.

After each day of learning new Swift and SwiftUI concepts, these NFRs may change, or new NFRs get added.

## Submission procedure

You get a **personal repository** on Gitlab to work on your app.

Once you implemented a new feature into your app, you need to create a Merge Request (MR - Sometimes we will also reference these as "Pull Requests"(PR)) to merge your changes from the feature branch into your main branch.

Your tutor will review your changes and either request changes or approves the MR.

If your MR got approved, you also need to merge it!

### Deadline: **17.10.2023 23:59**

Until the deadline all of your PRs **need to be merged** and your final app **needs to fulfill** all of the requested NFRs!

--- 

## Problem Statement (max. 500 words)

As a movie enthusiast, I often struggle while keeping track of the movies I watch. A few weeks after watching a movie, I've completely forgotten the details of the them. I also feel the need to rate all the movies I watch and I always want to make a list of my favorite movies. Additionally I want to review after watch a movie, because it can be helpful to reach out my thoughts about it. Also often there are a lot of movies that I want to watch later and I write them down somewhere, but they can't be organized and often get lost. I want to able to create and organize watchlists.
The goal of this project is to develop "Movie Diary," a SwiftUI-based mobile app that addresses these challenges and provides an enjoyable movie-watching experience. Movie Diary is basically a user-friendly and visually appealing mobile app that simplifies the process of managing movie watchlists, indicate as favorite movies, and review the movies. Thanks to the Movie Diary, users will be able to keep track of the movies they watch, create watch lists, review movies and discover new movies.  

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

