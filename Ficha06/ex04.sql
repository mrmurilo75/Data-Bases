SELECT Year(StreamDate), COUNT(*), SUM(Charge) FROM STREAM GROUP BY Year(StreamDate) ORDER BY Year(StreamDate);

