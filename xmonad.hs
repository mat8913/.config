import XMonad
import XMonad.Layout.NoBorders
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Layout.FixedColumn
import System.IO

varLayout = layoutHook defaultConfig ||| FixedColumn 1 1 85 10

main = do
    xmonad $ defaultConfig
        { manageHook = manageDocks <+> manageHook defaultConfig
        , focusedBorderColor = "#268AD2"
        , normalBorderColor = "#002B36"
        , layoutHook = smartBorders ( avoidStruts varLayout ||| Full )
        }
