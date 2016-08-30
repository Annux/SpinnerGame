// turn on a random amount of symbols.

/*var diceRoll = random_range(0, 100); // Roll a random variable
// Turn on symbols based on the random variable
for(var n = 0; n < maxNumOfNeutrals; n++)
{
    if(diceRoll >= swordChance[n])
    {
        // finding a position loop
        var positionFound = false;
        while(positionFound == false)
        {
            // get a random position
            randomColumn = random_range(0,numberOfColumns-1);
            randomRow = random_range(0,numberOfRows-1);
            // if the position is not occupied, place the neutral there and turn it on, otherwise continue to loop
            if(neutralPosition[randomColumn, randomRow] == true)
            {
                neutralPosition[randomColumn,randomRow] = false;
                swordSymbols[n].x = colPos[randomColumn];
                swordSymbols[n].y = rowPos[randomRow];
                swordSymbols[n].visible = true;
                swordSymbols[n].image_index = 0;
                positionFound = true;
            }
        }
    }
    else
        break;
}

diceRoll = random_range(0, 100); 
for(var n = 0; n < maxNumOfNeutrals; n++)
{
    if(diceRoll >= shieldChance[n])
    {
        // finding a position loop
        var positionFound = false;
        while(positionFound == false)
        {
            // get a random position
            randomColumn = random_range(0,numberOfColumns-1);
            randomRow = random_range(0,numberOfRows-1);
            // if the position is not occupied, place the neutral there and turn it on, otherwise continue to loop
            if(neutralPosition[randomColumn, randomRow] == true)
            {
                neutralPosition[randomColumn,randomRow] = false;
                shieldSymbols[n].x = colPos[randomColumn];
                shieldSymbols[n].y = rowPos[randomRow];
                shieldSymbols[n].visible = true;
                shieldSymbols[n].image_index = 0;
                positionFound = true;
            }
        }
    }
    else
        break;
}*/
