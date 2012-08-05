-- My xmonad setup
import XMonad
import XMonad.Util.Run
import XMonad.Util.EZConfig
import XMonad.Actions.CycleWS
import XMonad.Actions.SpawnOn
import XMonad.Hooks.SetWMName
import XMonad.Config.Gnome
import Data.Monoid

main = xmonad $ gnomeConfig
  { borderWidth = 1,
    normalBorderColor = "#000000",
    focusedBorderColor = "#FFFFFF"
  } `additionalKeysP` extraKeys

internet = "chromium-browser"
emacs = "emacs"
goToSleep = ""
lockScreen = "gnome-screensaver-command -l"
music = "spotify"

extraKeys =
  [ ("M-i", spawn internet)
  , ("M-e", spawn emacs)
  , ("M-s", spawn goToSleep)
  , ("M-l", spawn lockScreen)
  , ("M-m", spawn music)
  ]

