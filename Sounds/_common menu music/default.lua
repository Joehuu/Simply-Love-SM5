local songs = {
	Arrows = "cloud break (loop).ogg",
	Bears = "crystalis (loop).ogg",
	Hearts = "feel (loop).ogg",
	Ducks = "Xuxa fami VRC6 (loop).ogg",
	Gay = "Mystical Wheelbarrow Journey (loop).ogg",
	Spooky = "Spooky Scary Chiptunes (loop).ogg",
	Stars = "Shooting Star - faux VRC6 remix (loop).ogg",
}

local audio_file =  songs[ ThemePrefs.Get("VisualTheme") ]

if not audio_file then audio_file = songs.Hearts end

if PREFSMAN:GetPreference("EasterEggs") then
	-- the best way to spread holiday cheer is singing loud for all to hear
	if MonthOfYear()==11 then audio_file = "HolidayCheer" end
	if MonthOfYear()==10 and DayOfMonth()==20 then audio_file = "20" end
end

return THEME:GetPathS("", "_common menu music/" .. audio_file)