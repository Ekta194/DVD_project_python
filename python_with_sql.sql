--Ques.1 & 3--Execute the query to get result of daily total revenue for different countries 
SELECT cy.country, 
    SUM(p.amount) as sales_amount, 
    DATE(p.payment_date) as payment_date 
    FROM payment p 
    LEFT JOIN customer c ON p.customer_id = c.customer_id 
    LEFT JOIN address a ON a.address_id = c.address_id 
    LEFT JOIN city ct ON ct.city_id = a.city_id 
    LEFT JOIN country cy ON cy.country_id = ct.country_id 
    GROUP BY cy.country, p.amount, DATE(p.payment_date) 
    ORDER BY DATE(p.payment_date) ASC;
	
	
--Ques2--Execute the query to get result of	description of every film	
Select film_id, title, description from film;
    
	
--Ques.4--Execute the query to get result of average rental rate of every actor
SELECT a.first_name || ' ' || a.last_name AS full_name, AVG(f.rental_rate) AS average_rental_rate 
        FROM actor a 
        LEFT JOIN film_actor fa ON a.actor_id = fa.actor_id 
        LEFT JOIN film f ON fa.film_id = f.film_id 
        GROUP BY full_name 
        ORDER BY average_rental_rate DESC ;	
		
		
--Ques.5--Execute the query to get result of total sales amount of different countries by their payment date
 SELECT cy.country, 
    SUM(p.amount) as sales_amount, 
    DATE(p.payment_date) as payment_date 
    FROM payment p 
    LEFT JOIN customer c ON p.customer_id = c.customer_id 
    LEFT JOIN address a ON a.address_id = c.address_id 
    LEFT JOIN city ct ON ct.city_id = a.city_id 
    LEFT JOIN country cy ON cy.country_id = ct.country_id 
    GROUP BY cy.country, p.amount, DATE(p.payment_date) 
    ORDER BY DATE(p.payment_date) ASC;
		
		

--Ques6--Execute the query to get result of	selected countries detail	
SELECT * FROM country 
WHERE country IN ('United States', 'Italy', 'Japan' , 'China', 'Canada', 'Germany');


