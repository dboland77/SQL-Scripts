USE [Tournaments]
GO
/****** Object:  StoredProcedure [dbo].[spMatchups_GetByTournament]    Script Date: 06/12/2019 16:15:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[spMatchups_GetByTournament]
@TournamentId int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   SELECT m.* 
   from dbo.Matchups m
   where m.TournamentId = @TournamentId
   Order by MatchupRound;
END
