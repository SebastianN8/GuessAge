-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Sebastian N
-- Created on: April 
--
-- This program makes you guess an age
-----------------------------------------------------------------------------------------

-- visual elements
display.setDefault('background', 0, 0, 0.2)
local myTitle = display.newText('What is my age?', display.contentCenterX, 200, native.SystemFont, 100)
myTitle:setFillColor(1, 0.5, 0)

-- Elements for guess
local myGuess = display.newText('Your guess:', 300, 400, native.SystemFont, 100)
myGuess:setFillColor(1, 0.5, 0)
local myGuessAnswer = native.newTextField(750, 410, 300, 150)

-- Initiator
local myButton = display.newImageRect('./Assets/Sprites/enterButton.png', 300, 200)
myButton.x = display.contentCenterX + 300
myButton.y = 420
myButton.id = 'The Initiator'

-- Result statement
local myResult = display.newText('', display.contentCenterX, 800, native.SystemFont, 100)

-- Function
local function guessingAge(event)
	-- variables
	local realAge = 19
	local guessUser = tonumber(myGuessAnswer.text)

	-- If statement
	if guessUser == realAge then
		myResult.text = 'You got it!'
	elseif guessUser < realAge then
		myResult.text = 'You guessed too small. Try again!'
	elseif guessUser > realAge then
		myResult.text = 'You guessed too big. Try again!'
	else
		myResult.text = 'Invalid answer!'
	end
end

-- Event Listener
myButton:addEventListener('touch', guessingAge)