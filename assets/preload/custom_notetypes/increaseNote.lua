function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is a Plus Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'increaseNote' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'PLUSNOTEassets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.03'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.0475'); --Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
			end
		end
	end
end
