CREATE TABLE [dbo].[Order](
	[orderID] [int] identity NOT NULL primary key,
	[userID] [int] NULL,	
	[hovaten] [nvarchar](100) NOT NULL,
	[email] [nvarchar](100) NULL,
	[sdt] [nvarchar](100) NULL,
	[diachi] [nvarchar](100) NULL,
	[xa] [nvarchar](100) NULL,
	[huyen] [nvarchar](100) NULL,
	[tinh] [nvarchar](100) NULL,
	[orderDate] [date] NULL
)

CREATE TABLE [dbo].[OrderDetail](
	[orderDtID] [int] identity NOT NULL primary key,
	[orderID] [int]  NOT NULL,
	[prodID] [nvarchar](500) NULL,
	[size] [nvarchar](100) NULL,
	[price] [numeric](10, 3) NULL,
	[quantity] [int] NULL,
	[totalPrice] [numeric](18, 3) NULL,
	foreign key(orderID) references [orders](orderID)
)