WorkFlow:
1. Create a user through the user creation page, content: user ID, name, credit value
2. Customers can book orders in the ticket booking system, the system will automatically generate the amount to be paid
3. The order system sends information to the customer system. If the credit value meets the requirements, it will pass; if it does not meet the requirements, it will refuse to create.
4. The customer system receives feedback, creates an order, and generates payment, automatic deduction
5. The user can change the order status, reject or accept.

Service Information:
The project contains three services:
① User Service: Manage users, change the order status, reject and accept according to credit
② Order Service: create an order
③ Payment Service: CQRS to view the order, you can view the details of the generated order, and provide REST endpoint to retrieve the payment history order record.

Code:
User: customerId, customerName, creditLimit
Order: customerId, orderId, orderTotal
Payment: customerId, orderId