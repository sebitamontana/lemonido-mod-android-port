function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Shoot
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'CarNote' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'STOPNOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
	function noteMiss(id, i, noteType, isSustainNote)
		if noteType == 'CarNote' then
			setProperty('health', -500);
		characterPlayAnim('boyfriend', 'hurt', true);

	end
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'CarNote' then
		characterPlayAnim('boyfriend', 'dodge', true);

	end
end