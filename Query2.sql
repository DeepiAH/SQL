'''
Write a query to find the full name of the actor who has acted in the third most number of movies.
Sample Output
Actor_name
PENELOPE GUINESS
'''
 SELECT  concat(First_Name, ' ',Last_Name) 
 FROM Actor 
 LEFT JOIN FILM_ACTOR 
 ON (ACTOR.ACTOR_ID=FILM_ACTOR.ACTOR_ID) 
 ORDER BY Film_ID DESC LIMIT 3,1
