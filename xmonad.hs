-- My xmonad setup
import XMonad
import XMonad.Util.Run
import XMonad.Util.EZConfig
import XMonad.Actions.CycleWS
import XMonad.Actions.SpawnOn
import XMonad.Hooks.SetWMName
import XMonad.Config.Gnome
import Data.Monoid

main = xmonad $ defaultConfig
  { borderWidth = 1,
    normalBorderColor = "#000000",
    focusedBorderColor = "#FFFFFF"
  } `additionalKeysP` extraKeys

internet = "chromium-browser"
secondaryBrowser = "firefox"
emacs = "emacs"
goToSleep = ""
lockScreen = "gnome-screensaver-command -l"
music = "spotify"
keepass = "keepassx"

extraKeys =
  [ ("M-i", spawn internet)
  , ("M-f", spawn secondaryBrowser)
  , ("M-e", spawn emacs)
  , ("M-s", spawn goToSleep)
  , ("M-l", spawn lockScreen)
  , ("M-m", spawn music)
  , ("M-k", spawn keepass)
  ]

