
CREATE PROCEDURE dbo.SpTournaments_Insert
	@TournamentName nvarchar(50),
	@EntryFee money,
	@id int =0 output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    insert into dbo.Tournaments (TournamentName, EntryFee, Active)
	values (@TournamentName, @EntryFee,1);

	select @id = SCOPE_IDENTITY();
END
GO
