cd /D "%~dp0"

md "_release"
md "_release\GameData142"
md "_release\GameData142\GameData"
md "_release\GameData142\GameData\MagicSmokeIndustries"
md "_release\GameData142\GameData\MagicSmokeIndustries\IRSequencer"

xcopy "Resources\GameData\MagicSmokeIndustries\Parts" "_release\GameData142\GameData\MagicSmokeIndustries\Parts\" /S /E /Y
xcopy "Resources\GameData\MagicSmokeIndustries\IRSequencer\Plugins" "_release\GameData142\GameData\MagicSmokeIndustries\IRSequencer\Plugins\" /S /E /Y

copy "Resources\GameData\MagicSmokeIndustries\IRSequencer\LICENSE.md" "_release\GameData142\GameData\MagicSmokeIndustries\IRSequencer\LICENSE.md"
copy "Resources\GameData\MagicSmokeIndustries\IRSequencer\MM_IRSequencer_v3.cfg" "_release\GameData142\GameData\MagicSmokeIndustries\IRSequencer\MM_IRSequencer_v3.cfg"

copy "Resources\GameData\MagicSmokeIndustries\IRSequencer\IRSequencer_1.4.version" "_release\GameData142\GameData\MagicSmokeIndustries\IRSequencer\InfernalRobotics.version"

copy "IRSequencer\IRSequencer\bin\Release 1.4.2\IRSequencer_v3.dll" "_release\GameData142\GameData\MagicSmokeIndustries\IRSequencer\Plugins\IRSequencer_v3.dll"

del "_release\IR-Sequencer_v3.0.0_for_1.4.2.zip"
C:\PACL\PACOMP.EXE -a -r -p "_release\IR-Sequencer_v3.0.0_for_1.4.2.zip" "_release\GameData142\*"
