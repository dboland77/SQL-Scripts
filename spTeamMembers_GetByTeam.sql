USE [Tournaments]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.spTeamMembers_GetByTeam
@TeamId int
AS
BEGIN
	SET NOCOUNT ON;

	select p.* 
	from dbo.TeamMembers m
	inner join dbo.People p on m.PersonId = p.id
	where m.TeamId = @TeamId;

END