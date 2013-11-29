# STFU - Smash Talk Federation United

### Introduction
This was the first completed Ruby on Rails app developed through Lighthouse Labs. It represents the culmination of our learning until now and also marks the half-way point of the program.

### Description
STFU is a user-driven roleplaying game where users can create one or more characters belonging to a fictional pro wrestling roster. Each week an event card is posted listing matches between involving two or more characters. Leading up to the event date users are responsible for posting roleplays for their respective character and match. The roleplays are then judged by an admin who writes a summary of the fictional match-up and posts results.

## Page List
### Event Page (Homepage)
    /
Consists of a header with logo, navigation that has links to sign in, sign up, roster and about. Below that is a listing of character vs. character matches for the current week. The matches will link to a page where their roleplaying submissions are viewable.

### Character Vs. Character
    /matches/:id/
Has the roleplaying submissions by each user and a submission form at the bottom for each participant to submit.

### Character Roster
    /roster/
List of all characters on the roster.

### Character Creation
    /

### Sign In
    /sessions/
Allow a user to sign in or sign out.

### Sign Up
    /signup/
A form for a user to submit their request to join the STFU by creating a user account.

### About
    /about/
Futher details and guidelines for the STFU roleplaying game.
