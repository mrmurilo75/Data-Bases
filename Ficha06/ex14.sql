SELECT MOVIE.Title
	FROM MOVIE
		NATURAL JOIN MOVIE_ACTOR
		NATURAL JOIN ACTOR
	WHERE ACTOR.Name = 'Tom Cruise'
	ORDER BY MOVIE.Title;

