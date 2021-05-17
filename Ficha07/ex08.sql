UPDATE STREAM
SET Charge = Charge + 1.5
WHERE CustomerId IN(
	SELECT CustomerId
	FROM CUSTOMER
		JOIN COUNTRY
			ON( CUSTOMER.Country = COUNTRY.Name )
		JOIN REGION
			ON( COUNTRY.RegionId = REGION.RegionId )
	WHERE REGION.Name = 'Europe'
) AND MovieId IN(
	SELECT MovieId
	FROM MOVIE
	WHERE Duration >= 180
);
