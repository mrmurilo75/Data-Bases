SELECT REGION.Name, STAFF.Name
	FROM REGION
		JOIN STAFF
		ON(RegionManager = StaffId)
	ORDER BY REGION.Name;
