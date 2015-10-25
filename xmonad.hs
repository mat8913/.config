import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Layout.FixedColumn
import XMonad.Layout.BoringWindows
import XMonad.Layout.SubLayouts
import XMonad.Layout.NoBorders

import qualified XMonad.StackSet as W
import qualified Data.Map as M

varLayout = fullLayout ||| tallLayout ||| codingLayout ||| Full
  where
    fullLayout = avoidStruts Full
    tallLayout = avoidStruts $ Tall (1) (3/100) (1/2)
    codingLayout = avoidStruts $ subLayout [1,0] (Full) (FixedColumn 1 1 84 10)

varKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList [
   ((modm .|. controlMask, xK_m), withFocused (sendMessage . MergeAll))
 , ((modm .|. controlMask, xK_u), withFocused (sendMessage . UnMerge))
 , ((modm, xK_j), onGroup W.focusDown')
 , ((modm, xK_k), onGroup W.focusUp')
 , ((modm, xK_Tab), focusDown) ]

main = xmonad $ defaultConfig
        { manageHook = manageDocks <+> manageHook defaultConfig
        , focusedBorderColor = "#268AD2"
        , normalBorderColor = "#002B36"
        , layoutHook = boringWindows $ smartBorders $ varLayout
        , keys = varKeys <+> keys defaultConfig
        }
