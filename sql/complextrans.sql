/* CT 1.1 อ้างอิงด้วย Book_Id */
SELECT a.id as BookId, pay.id as PaymentId, a.Book_Night as Nights, rt.Type_Pernight as NightPrice,
	a.Book_Night*rt.Type_Pernight as Get_Book_Price,
    IF(CURRENT_TIMESTAMP<= pro.Promotion_End AND CURRENT_TIMESTAMP >= pro.Promotion_Start, FLOOR(a.Book_Night*rt.Type_Pernight*pro.Promotion_Discount), NULL) as Discount,
	IF(CURRENT_TIMESTAMP<= pro.Promotion_End AND CURRENT_TIMESTAMP >= pro.Promotion_Start, CEILING(a.Book_Night*rt.Type_Pernight*(1-pro.Promotion_Discount)), CEILING(a.Book_Night*rt.Type_Pernight)) as MinusDiscount,
	IF(CURRENT_TIMESTAMP<= pro.Promotion_End AND CURRENT_TIMESTAMP >= pro.Promotion_Start, CEILING(a.Book_Night*rt.Type_Pernight*(1-pro.Promotion_Discount))*0.1, CEILING(a.Book_Night*rt.Type_Pernight*0.1)) as Vat10Percent,
	IF(CURRENT_TIMESTAMP<= pro.Promotion_End AND CURRENT_TIMESTAMP >= pro.Promotion_Start, CEILING(a.Book_Night*rt.Type_Pernight*(1-pro.Promotion_Discount))*1.1, CEILING(a.Book_Night*rt.Type_Pernight*1.1)) as Get_All_Price_Separately
	FROM PAYMENT pay JOIN TRANSACTION t ON pay.id LIKE t.Payment_id 
	JOIN ALLBOOK a ON t.id LIKE a.Transaction_id
	JOIN ROOM r ON a.Room_id LIKE r.id
	JOIN ROOMTYPE rt ON r.Type_id LIKE rt.id
	JOIN PROMOTION pro ON pay.Promotion_id LIKE pro.id;

/* CT 1.2 อ้างอิงด้วย Payment_Id */
SELECT pay.id as PaymentId,
	IF(CURRENT_TIMESTAMP<= pro.Promotion_End AND CURRENT_TIMESTAMP >= pro.Promotion_Start, SUM(CEILING(a.Book_Night*rt.Type_Pernight*(1-pro.Promotion_Discount))*0.1), SUM(CEILING(a.Book_Night*rt.Type_Pernight)*0.1)) as Vat10Percent,
	IF(CURRENT_TIMESTAMP<= pro.Promotion_End AND CURRENT_TIMESTAMP >= pro.Promotion_Start, SUM(CEILING(a.Book_Night*rt.Type_Pernight*(1-pro.Promotion_Discount))*1.1), SUM(CEILING(a.Book_Night*rt.Type_Pernight)*1.1)) as Get_All_Price_Sum
	FROM PAYMENT pay JOIN TRANSACTION t ON pay.id=t.Payment_id 
	JOIN ALLBOOK a ON t.id=a.Transaction_id
	JOIN ROOM r ON a.Room_id=r.id
	JOIN ROOMTYPE rt ON r.Type_id=rt.id
	JOIN PROMOTION pro ON pay.Promotion_id=pro.id GROUP BY pay.id;

/* CT 2 */
SELECT h.Hotel_Name, r.Room_Id, rt.Room_Name
	FROM HOTEL h, ROOM r, ROOMTYPE rt
	WHERE r.Available_Status LIKE 1 AND
	r.Type_Id LIKE rt.Type_Id AND
	r.Hotel_Id LIKE h.Hotel_Id;

/* CT 3 แบบแสดง hotel ทั้งหมด */
SELECT h.Hotel_Id, h.Hotel_Name, AVG(t.Rating_Score) as Rating
	FROM TRANSACTION t, aLLBOOK a, ROOM r, HOTEL h
	WHERE h.Hotel_Id LIKE r.Hotel_Id AND
	r.Room_Id LIKE a.Room_Id AND
	a.Transaction_Id LIKE t.Transaction_Id GROUP BY h.Hotel_Id;

/* CT 4 */
SELECT gt.GetNews_Id, m.fName as Firstname, m.lName as Surname, n.News_Detail as News
	FROM GETNEWS gt JOIN MEMBER m ON gt.Member_Id=m.Member_Id JOIN NEWS n ON gt.News_Id=n.News_Id;

/* CT 5 เดี๋ยวมาทำ */