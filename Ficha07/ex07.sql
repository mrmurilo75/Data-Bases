UPDATE CUSTOMER
SET Active = FALSE
	WHERE CustomerId <> ALL(
		SELECT CustomerId FROM STREAM
	) AND CUSTOMER.Country = 'China';
