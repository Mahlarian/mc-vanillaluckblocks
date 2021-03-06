# This function plays other functions whenever a condition is met. Not to be confused with scripted events, which take place in the output's own file.
# These functions will constantly play until whatever condition that is needed to play them is stopped.
# EG: An entity exists, a player is holding an item, etc.
#
# The difference between a scripted sequence and a game loop is a scripted sequence *will* end after an X amount of seconds, and is housed inside whatever function caused it.
# Game loops are housed in this folder, and their conditions that are required to make them run are housed in the function file that causes the condition to be created.
# As an example, if a player needs to hold a stick, the check to see if the player is holding the stick is checked here, and the stick is given to the player through the output
# that was generated by the lucky block in the outputs folder. 