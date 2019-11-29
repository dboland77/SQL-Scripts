USE [Tournaments]
GO


CREATE PROCEDURE dbo.spTournamentEntries_Insert
	@TournamentId int,
	@TeamId int,
	@id int =0 output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    insert into dbo.TournamentEntries(TournamentId,TeamId)
	values (@TournamentId, @TeamId);

	select @id = SCOPE_IDENTITY();


END