
--[[-------------------------------------------------------------
    PLEASE REFERENCE THE default THEME FOR HELP CONFIGURING!
-----------------------------------------------------------------]]

THEME[ 'BoxWidth' ] = 300
THEME[ 'BoxHeight' ] = 60

THEME[ 'YStartPosition' ] = BOTTOM

THEME[ 'XStartPosition' ] = RIGHT

THEME[ 'YStartPadding' ] = 100

THEME[ 'AvatarStyle' ] = 2

THEME[ 'AvatarSize' ] = 32

THEME[ 'DrawAvatarBorder' ] = true

THEME[ 'AvatarBorderColorFriend' ] = Color( 46, 204, 113, 255 )

THEME[ 'AvatarBorderColorRegular' ] = Color( 52, 152, 219, 255 )

THEME[ 'VoiceChatBoxPaint' ] = function( self, w, h )
    draw.RoundedBox( 0, 0, 0, w, h, HSVToColor( math.sin(0.3*RealTime())*128 + 127, 1, 1 ) ) -- Rainbow border
    draw.RoundedBox( 0, 1, 1, w-2, h-2, Color( 40, 40, 40, 255 ) )
end

surface.CreateFont( 'VoiceChat.PlayerName', { font = 'Default', size = 20, weight = 1000 } )
surface.CreateFont( 'VoiceChat.PlayerSteamId', { font = 'Default', size = 10, weight = 100 } )

THEME[ 'VoiceChatBoxPaintOver' ] = function( self, w, h )
    -- Do not remove this line unless you know what you are doing.
    -- This line will make sure the player is valid before calling it below.
    -- Anything containing player data should be done below this line.
    if not IsValid( self.ply ) then return end

    draw.SimpleText( self.ply:Nick(), 'VoiceChat.PlayerName', 55, h*0.5, Color( 200, 200, 200, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM )
    draw.SimpleText( self.ply:SteamID(), 'VoiceChat.PlayerSteamId', 55, h*0.5, Color( 100, 100, 100, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP )
end

THEME[ 'VoiceChatGraphColor' ] = function( volume )
    return HSVToColor( math.sin(0.3*RealTime())*128 + 127, 1, 1 )
end

THEME[ 'VoiceChatGraphType' ] = 3

THEME[ 'VoiceChatGraphBorder' ] = false

THEME[ 'VoiceChatGraphSize' ] = 10

THEME[ 'VoiceChatGraphSpacing' ] = 0

THEME[ 'VoiceChatGraphAmp' ] = 100

THEME[ 'VoiceChatGraphSpeed' ] = 2
