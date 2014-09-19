import XMonad
import XMonad.Layout.NoBorders
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Layout.FixedColumn
import XMonad.Layout.BoringWindows
import XMonad.Layout.SubLayouts
import System.IO

import qualified XMonad.StackSet as W
import qualified Data.Map as M

varLayout = layoutHook defaultConfig ||| subLayout [1,0] (Full) (FixedColumn 1 1 85 10)
varKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList [
   ((modm .|. controlMask, xK_m), withFocused (sendMessage . MergeAll))
 , ((modm .|. controlMask, xK_u), withFocused (sendMessage . UnMerge))
 , ((modm, xK_j), onGroup W.focusDown')
 , ((modm, xK_k), onGroup W.focusUp')
 , ((modm, xK_Tab), focusDown) ]

main = do
    xmonad $ defaultConfig
        { manageHook = manageDocks <+> manageHook defaultConfig
        , focusedBorderColor = "#268AD2"
        , normalBorderColor = "#002B36"
        , layoutHook = boringWindows $ smartBorders ( avoidStruts varLayout ||| Full )
        , keys = varKeys <+> keys defaultConfig
        }
