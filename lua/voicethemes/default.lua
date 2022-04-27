--[[---------------------------------------------------------------
    Default Voice Chat Box Theme

    - Please avoid directly editting this file, instead you
      should create a new file in this directory (themes) and
      copy the contents of this file into the new one, then
      make your edits in there. After you are finished with your
      theme, make sure to set it in the config file.
-------------------------------------------------------------------]]


-- The Width and height of the voice chat box.
THEME[ 'BoxWidth' ] = 300
THEME[ 'BoxHeight' ] = 60

-- Where the list should start.
-- Can either be BOTTOM or TOP
THEME[ 'YStartPosition' ] = BOTTOM

-- Where the list is on on the X axis.
-- Can either be LEFT or RIGHT
THEME[ 'XStartPosition' ] = RIGHT

-- Padding for the top or bottom of the list depending
-- on your YStartPosition
THEME[ 'YStartPadding' ] = 100

-- The style of the avatar. Can either be
-- Cicular or normal, more may come in the
-- future.
-- 1 = Circular
-- 2 = Square
-- 3 = Player Model
THEME[ 'AvatarStyle' ] = 2

-- The size in pixels of the avatar.
THEME[ 'AvatarSize' ] = 32

-- This controls whether the avatar border should be drawn or not.
THEME[ 'DrawAvatarBorder' ] = true

-- This is the color of the avatar border when the player speaking
-- is on your friends list.
THEME[ 'AvatarBorderColorFriend' ] = Color( 46, 204, 113, 255 )

-- This is the color of the avatar border when the player speaking
-- is not on your friends list.
THEME[ 'AvatarBorderColorRegular' ] = Color( 52, 152, 219, 255 )

-- This controls how the voice chat box is painted. This will
-- require some basic knowledge of Lua in order to edit.
-- More information on Paint functions can be found here: http://wiki.garrysmod.com/page/PANEL/Paint
THEME[ 'VoiceChatBoxPaint' ] = function( self, w, h )
    draw.RoundedBox( 0, 0, 0, w, h, Color( 50, 50, 50, 255 ) )
    draw.RoundedBox( 0, 1, 1, w-2, h-2, Color( 40, 40, 40, 255 ) )
end

-- These are basic fonts used for the paint funtion below. You can add more or change these.
-- More information on fonts can be found here: http://wiki.garrysmod.com/page/Structures/FontData
surface.CreateFont( 'VoiceChat.PlayerName', { font = 'Default', size = 20, weight = 1000 } )
surface.CreateFont( 'VoiceChat.PlayerSteamId', { font = 'Default', size = 10, weight = 100 } )

-- This paint function will control what is painted over the top of the
-- graph. Typically can be used for player names and such.
-- More information on Paint functions can be found here: http://wiki.garrysmod.com/page/PANEL/Paint
THEME[ 'VoiceChatBoxPaintOver' ] = function( self, w, h )
    -- Do not remove this line unless you know what you are doing.
    -- This line will make sure the player is valid before calling it below.
    -- Anything containing player data should be done below this line.
    if not IsValid( self.ply ) then return end

    draw.SimpleText( self.ply:Nick(), 'VoiceChat.PlayerName', 55, h*0.5, Color( 200, 200, 200, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM )
    draw.SimpleText( self.ply:SteamID(), 'VoiceChat.PlayerSteamId', 55, h*0.5, Color( 100, 100, 100, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP )
end

-- This controls the color of the graph at this specific tick
-- allowing for rainbow colors or color based on volume.
THEME[ 'VoiceChatGraphColor' ] = function( volume )
    return Color( 255, 255, 255, 10 )
end

-- The type of graph to use for the voice chat box.
-- Currently only 3 options. If you have any suggestions for
-- more, please lmk and i'll look into it.
-- 0 = None
-- 1 = Line Graph
-- 2 = Bar Graph
-- 3 = Curved Line Graph ( can affect framerate more than others )
THEME[ 'VoiceChatGraphType' ] = 2

-- Whether or not the graph should be rendered with a lighter line
-- on the top. Can be smoother on some PCs w/o it.
THEME[ 'VoiceChatGraphBorder' ] = false

-- The size of each segment generated for the graph. Smaller segments
-- will produce more fine and smooth graphs but can be more resource
-- intensive.
THEME[ 'VoiceChatGraphSize' ] = 10

-- The spacing between each graph segment. Typically should be left on 0
-- for line or curved line graph for best visuals.
THEME[ 'VoiceChatGraphSpacing' ] = 1

-- The multiplier for the players voice. Increasing this will make the
-- graph more sensitive to sound.
THEME[ 'VoiceChatGraphAmp' ] = 100

-- The speed at which the graph moves across the box.
-- A higher number may turn out more choppy and
-- segmented.
THEME[ 'VoiceChatGraphSpeed' ] = 2
