-- My xmonad setup
import XMonad
import XMonad.Util.Run
import XMonad.Util.EZConfig
import XMonad.Actions.CycleWS
import XMonad.Actions.SpawnOn
import XMonad.Hooks.SetWMName
import Data.Monoid

main = xmonad $ defaultConfig
  { borderWidth = 1,
    normalBorderColor = "#000000",
    focusedBorderColor = "#FFFFFF",
    workspaces = allWorkspaces,
    manageHook = manageSpawn <+> manageHook defaultConfig,
    startupHook = onStartHook
  } `additionalKeysP` extraKeys

allWorkspaces = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]

myTerminal = "gnome-terminal"
internet = "google-chrome"
secondaryBrowser = "firefox"
emacs = "emacs"
goToSleep = ""
lockScreen = "gnome-screensaver-command -l"
music = "spotify"
keepass = "keepassx"
chat = "xchat"
postgresSqlClient = "pgadmin3"

onStartHook = setWMName "LG3D"
              >> spawnHere "gnome-settings-daemon"
              >> spawnOn "9" chat
              >> spawnOn "5" music
              >> spawnOn "4" myTerminal
              >> spawnOn "3" emacs
              >> spawnOn "2" internet

extraKeys =
  [ ("M-i", spawn internet)
  , ("M-f", spawn secondaryBrowser)
  , ("M-e", spawn emacs)
  , ("M-s", spawn goToSleep)
  , ("M-l", spawn lockScreen)
  , ("M-m", spawn music)
  , ("M-k", spawn keepass)
  , ("M-c", spawn chat)
  , ("M-p", spawn postgresSqlClient)
  ]
