
CREATE PROCEDURE spMatchups_Insert
@TournamentId int,
@MatchupRound int,
@id int = 0 output
AS
BEGIN
	SET NOCOUNT ON;
	insert into dbo.Matchups (TournamentId, MatchupRound)
	values (@TournamentId, @MatchupRound);

	select @id = SCOPE_IDENTITY();
END
GO
