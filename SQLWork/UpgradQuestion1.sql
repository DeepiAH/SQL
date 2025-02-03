#Write a query to find the full name of the actor who has acted in the maximum number of movies.
'''
Sample Output
#Full_name
#PENELOPE GUINESS
'''
SELECT concat(First_Name, ' ',Last_Name) AS Full_name
FROM Actor AS ac
INNER JOIN FILM_ACTOR as fc
ON ac.Actor_id=fc.Actor_id
WHERE fc.FILM_ID=(
                 SELECT max(FILM_ID)
                 FROM FILM_ACTOR
                 );
