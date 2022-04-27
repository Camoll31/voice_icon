
--[[-------------------------------------------------------------
    PLEASE REFERENCE THE default THEME FOR HELP CONFIGURING!
-----------------------------------------------------------------]]

THEME[ 'BoxWidth' ] = 250
THEME[ 'BoxHeight' ] = 45

THEME[ 'YStartPosition' ] = BOTTOM

THEME[ 'XStartPosition' ] = RIGHT

THEME[ 'YStartPadding' ] = 100

THEME[ 'AvatarStyle' ] = 2

THEME[ 'AvatarSize' ] = 32

THEME[ 'DrawAvatarBorder' ] = false

THEME[ 'AvatarBorderColorFriend' ] = Color( 46, 204, 113, 255 )

THEME[ 'AvatarBorderColorRegular' ] = Color( 52, 152, 219, 255 )

THEME[ 'VoiceChatBoxPaint' ] = function( self, w, h )
    if not IsValid( self.ply ) then return end

    draw.RoundedBox( 0, 0, 0, w, h, self.Color )
    draw.RoundedBox( 0, 1, 1, w-2, h-2, Color( 40, 40, 40, 255 ) )
end

surface.CreateFont( 'VoiceChat.PlayerName', { font = 'Default', size = 20, weight = 1000 } )

THEME[ 'VoiceChatBoxPaintOver' ] = function( self, w, h )
    -- Do not remove this line unless you know what you are doing.
    -- This line will make sure the player is valid before calling it below.
    -- Anything containing player data should be done below this line.
    if not IsValid( self.ply ) then return end

    draw.SimpleText( self.LabelName, 'VoiceChat.PlayerName', 45, h*0.5, color_white, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER )
end

THEME[ 'VoiceChatGraphColor' ] = function( volume )
    return Color( 255, 255, 255, 10 )
end

THEME[ 'VoiceChatGraphType' ] = 2

THEME[ 'VoiceChatGraphBorder' ] = false

THEME[ 'VoiceChatGraphSize' ] = 6

THEME[ 'VoiceChatGraphSpacing' ] = 1

THEME[ 'VoiceChatGraphAmp' ] = 100

THEME[ 'VoiceChatGraphSpeed' ] = 2
