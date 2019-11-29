
-- note that output will be passed back to the person running the stored procedure (in this case id)
CREATE PROCEDURE dbo.spPrizes_Insert
@Placenumber int,
@PlaceName nvarchar(50),
@PrizeAmount money,
@PrizePercentage float,
@id int = 0 output

AS
BEGIN
	SET NOCOUNT ON;

 insert into dbo.Prizes (PlaceNumber, PlaceName, PrizeAmount, PrizePercentage)
 values (@Placenumber, @PlaceName, @PrizeAmount, @PrizePercentage);

 select @id = SCOPE_IDENTITY();
 -- the Scope_Identity means that in the current scope (so here in the stored procedure call)

END
GO