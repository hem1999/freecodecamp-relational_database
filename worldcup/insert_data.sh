#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
# year,round,winner,opponent,winner_goals,opponent_goals
echo "$($PSQL "TRUNCATE games,teams")"
echo removed everything
cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != year ]]
  then
    #get winner id
    WINNER_ID=$($PSQL "select team_id from teams where name='$WINNER'")
    #get opponent id
    OPPONENT_ID=$($PSQL "select team_id from teams where name='$OPPONENT'")
    #if get_winner is none
    if [[ -z $WINNER_ID ]]
    then
      INSERT_WINNER=$($PSQL "INSERT into teams(name) values('$WINNER')")
      #get winner id
      WINNER_ID=$($PSQL "select team_id from teams where name='$WINNER'")
    fi
    
    #if get_opponent is none
    if [[ -z $OPPONENT_ID ]]
    then
      #insert opponent
      INSERT_OPPONENT=$($PSQL "INSERT into teams(name) values('$OPPONENT')")
      #get opponent id
      OPPONENT_ID=$($PSQL "select team_id from teams where name='$OPPONENT'")
    fi
    
    #insert year, round, winner_id, opponent_id, winner_goals, opponent_goals to games
    INSERT_GAME=$($PSQL "INSERT into games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) values('$YEAR','$ROUND','$WINNER_ID','$OPPONENT_ID','$WINNER_GOALS','$OPPONENT_GOALS')")
  fi    
done