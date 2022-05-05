# Hotel Management Database Project
## Web demo
- heroku webserver (US region)
- Due to US the system will confuse you for a fraudster from the United States, several features that require authentication will be unavailable.
- but it FREE
```
https://poonveh.herokuapp.com/
```

## Scope & Details
The hotel management system is a database that contains the following:
1. A hotel booking system that allows users to pick a room from a hotel, pick a specific date, and view details about the hotel
2. A function to register new hotels to the database that only the admin can use.
3. A function to register new members to the database, where every member contains information about the members and any guest users can use.
4. A news information system, which is connected to membership, where users can view news that is created by the hotel managers.
5. A transaction system where users can create new transactions and hotel managers can remove transactions after completion.
6. A payment system where users can add banking information that is used for transactions.
7. A promotion system, which is connected to the payment system, that hotel managers can add to the database and users can view.
8. A rating system, which is connected to hotel detail, where only users can add ratings to each hotel for other users, hotel managers, and staff to view.
9. Users can view details about the hotel which include room, staff, and ratings which only the admin and manager can edit.

## Complex Transactions
1. In the step of the payment, we have to join the Transaction Payment AllBook Promotion table together to get the room Book_Price from AllBook and you have to get the All_Price from the Payment table which this step the application needs to get the Promotion_Id to find which discount user use can calculate the All_Price.
2. When a user is going to book a hotel and room. We have to join the Room, hotel and room type table together to show which hotel and room, room type is available.
3. In rating transactions, we evaluate the score of each hotel by getting the Rating_Score from the Transaction table, querying the Room_Id from Allbook table, and using the Room_Id to identify which hotel the room is in from the Room table. After we got all the rating scores given to the specific hotel, we calculate the mean of it and display it along with the hotel name and address.
4. In getting news transactions, we use GetNews table to tell us which member gets specific news. Each time the member gets the news, we join the Member table and News table together and generate a new GetNews_Id in the GetNews table.

5. Therefore our hotel system have a feature that can add or remove hotel in our system. To do that we have to join the hotel table, room table, room type, staff/Manager table together. So that we can generate a new hotel.

## Business Rules
- In order to book rooms with our service, the user needs to register as a guest first.
- For the employee, there’re two roles staff and manager.
    - Manager, manage the hotel, staff and promotion.
    - Staff, work in the hotel.
- The guest can book more than one room per transaction.
- The guest can apply a discount with the available promotion when paying for the rooms.
    - The promotion is applicable within the given duration.
- The guest can write the reviews to the hotel after resting at the hotel.
- The guest who resting at the hotel doesn’t have to be the one who paid for the service.
    - The guest can verify the identity by showing staff the (something).
- The guest can rest in the room between check-in and check-out time.
    - If the guest check-out later than the given time, the guest will have to pay for the next day's stay.

## Dev Tools
### Front-end
- Bootstrap 5.1.3
### Back-end: 
- Django 4.0.4
### Database: 
- MySQL
- XAMPP v.3.3.0
- PHP 7.4.9

## Features
- [x] Home Page
- [ ] Register Page !
- [ ] Show All Hotels Page (may use pagination when we got many hotels)
- [ ] Promotion Page
- [ ] Contact Page
- [ ] Booking Page
- [ ] News Page
- [ ] User Profile Page
- [x] Login Page (not beautiful)
- [x] User & Password Validation when Login
- [ ] Username & Email Validation when Register
- [ ] Generate Token & Verify Link via Email (optional)
- [x] Logut Page (redirect to Home)
- [x] Deal with static files (optional)
- [ ] Deal with media fiels
- [ ] Contact Admin Form (optional)
- [ ] Admin Receive Form (optional)
- [ ] Password Recovery (optional)
- [ ] Email Notification (optional)
- [ ] Line Notification (optional)
- [x] Complex QUERY (CT5 - Hotel CRUD)
- [ ] Normal QUERY
- [ ] ADD SOME MORE TABLE IN ER-DIAGRAM ?