#Write a query to find the full name of the actor who has acted in the maximum number of movies.
'''
Sample Output
#Full_name
#PENELOPE GUINESS
'''
use upgrad;
SELECT concat(First_Name, ' ',Last_Name)
FROM Actor AS ac
INNER JOIN FILM_ACTOR AS fc
ON ac.Actor_id=fc.Actor_id
WHERE fc.FILM_ID=(
                 SELECT max(FILM_ID)
                 FROM FILM_ACTOR
                 );