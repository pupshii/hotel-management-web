/* CT 1.1 อ้างอิงด้วย Book_Id */
SELECT a.Book_Id, pay.Payment_Id, a.Book_Night as Nights, rt.PricePerNight as NightPrice,
	a.Book_Night*rt.PricePerNight as Get_Book_Price,
	FLOOR(a.Book_Night*rt.PricePerNight*pro.Percent_Sales) as Discount,
	CEILING(a.Book_Night*rt.PricePerNight*(1-pro.Percent_Sales)) as MinusDiscount,
	CEILING(a.Book_Night*rt.PricePerNight*(1-pro.Percent_Sales))*0.1 as Vat10Percent,
	CEILING(a.Book_Night*rt.PricePerNight*(1-pro.Percent_Sales))*1.1 as Get_All_Price_Separately
	FROM PAYMENT pay JOIN TRANSACTION t ON pay.Payment_Id=t.Payment_Id 
	JOIN ALLBOOK a ON t.Transaction_Id=a.Transaction_Id
	JOIN ROOM r ON a.Room_Id=r.Room_Id
	JOIN ROOMTYPE rt ON r.Type_Id=rt.Type_Id
	JOIN PROMOTION pro ON pay.Promotion_Id=pro.Promotion_Id;

/* CT 1.2 อ้างอิงด้วย Payment_Id */
SELECT pay.Payment_Id,
	SUM(CEILING(a.Book_Night*rt.PricePerNight*(1-pro.Percent_Sales))*0.1) as Vat10Percent,
	SUM(CEILING(a.Book_Night*rt.PricePerNight*(1-pro.Percent_Sales))*1.1) as Get_All_Price_Sum
	FROM PAYMENT pay JOIN TRANSACTION t ON pay.Payment_Id=t.Payment_Id 
	JOIN ALLBOOK a ON t.Transaction_Id=a.Transaction_Id
	JOIN ROOM r ON a.Room_Id=r.Room_Id
	JOIN ROOMTYPE rt ON r.Type_Id=rt.Type_Id
	JOIN PROMOTION pro ON pay.Promotion_Id=pro.Promotion_Id GROUP BY pay.Payment_Id;

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