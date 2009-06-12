import XMonad
import XMonad.Layout.NoBorders
import XMonad.Layout.Tabbed
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Themes

myLayouts = avoidStruts $ smartBorders $ tiled ||| Mirror tiled ||| Full ||| tabbed shrinkText ( theme smallClean ) 
  where
     -- default tiling algorithm partitions the screen into two panes
     tiled   = Tall nmaster delta ratio

     -- The default number of windows in the master pane
     nmaster = 1

     -- Default proportion of screen occupied by master pane
     ratio   = 1/2

     -- Percent of screen to increment by when resizing panes
     delta   = 4/100

main = xmobar $ \config -> xmonad $ config { layoutHook = myLayouts }



-- main = xmonad $ defaultConfig
--         { terminal           = "xterm"
--         , normalBorderColor  = "#999999"
--         , focusedBorderColor = "#ccffcc"
--         , layoutHook         = myLayouts
--         , logHook            = dynamicLogXmobar }
