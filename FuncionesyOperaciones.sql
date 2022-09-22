/*Javier Edgardo Mejía Rodríguez */

USE Northwind;

/*1. Utilice la función DATEDIFF para obtener la diferencia en días entre OrderDate y
RequiredDate de la tabla orders.*/

SELECT OrderID, OrderDate, RequiredDate,
	DATEDIFF(day, OrderDate, RequiredDate) "Diferencia de dias"
	FROM Orders;


/*2. Muestra el número de clientes, la primera fecha y la fecha más reciente de la tabla
orders.*/

SELECT COUNT(DISTINCT CustomerID)"Cantidad de Clientes", 
	MAX(OrderDate) "Fecha mas reciente", MIN(OrderDate) "Primera Fecha"
	FROM Orders



/*3. Mostrar companyName de la tabla customers, en donde City sea diferente de
Country y country no sea Mexico.*/

SELECT CompanyName, City, Country
	FROM Customers
	WHERE Country NOT LIKE 'Mexico';


/*4. Mostrar la cantidad de pedidos realizados por un cliente de la tabla orders en donde
los pedidos sean mayores a 5 y menores a 10 (Muestre 3 resultados, el primero
utilizando >=,<=; el segundo utilizando BETWEEN y el tercero utilizando IN).*/

SELECT COUNT(OrderID) "Total Pedidos por cliente", CustomerID
	FROM Orders
	GROUP BY CustomerID
	HAVING COUNT(OrderID) >=5 AND COUNT(OrderID) <=10
	
SELECT COUNT(OrderID) "Total Pedidos por cliente", CustomerID
	FROM Orders
	GROUP BY CustomerID
	HAVING COUNT(OrderID) BETWEEN 5 AND 10
	
SELECT COUNT(OrderID) "Total Pedidos por cliente", CustomerID
	FROM Orders
	GROUP BY CustomerID
	HAVING COUNT(OrderID) IN (5, 6, 7, 8, 9, 10)



/*5. Mostrar el código del cliente y la fecha que realizo la orden de la tabla orders, deberá
mostrar solo las del año 1998, utilice el operador LIKE y la función YEAR.*/

SELECT YEAR(OrderDate) AÑO, CustomerID
	FROM Orders
	WHERE YEAR(OrderDate) LIKE '1998'
