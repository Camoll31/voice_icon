
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

THEME[ 'DrawAvatarBorder' ] = false

THEME[ 'AvatarBorderColorFriend' ] = Color( 46, 204, 113, 255 )

THEME[ 'AvatarBorderColorRegular' ] = Color( 52, 152, 219, 255 )

THEME[ 'VoiceChatBoxPaint' ] = function( self, w, h )
    if not IsValid( self.ply ) then return end

    draw.RoundedBox( 0, 0, 0, w, h, team.GetColor( self.ply:Team() ) )
    draw.RoundedBox( 0, 2, 2, w-4, h-4, Color( 0, 0, 0, 150 ) )
end

surface.CreateFont( 'VoiceChat.PlayerName', { font = 'Default', size = 20, weight = 1000 } )
surface.CreateFont( 'VoiceChat.PlayerTeam', { font = 'Default', size = 14, weight = 100 } )

THEME[ 'VoiceChatBoxPaintOver' ] = function( self, w, h )
    -- Do not remove this line unless you know what you are doing.
    -- This line will make sure the player is valid before calling it below.
    -- Anything containing player data should be done below this line.
    if not IsValid( self.ply ) then return end

    draw.SimpleText( self.ply:Nick(), 'VoiceChat.PlayerName', 55, h*0.5, Color( 200, 200, 200, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM )
    draw.SimpleText( team.GetName( self.ply:Team() ), 'VoiceChat.PlayerTeam', 55, h*0.5, Color( 200, 200, 200, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP )
end

THEME[ 'VoiceChatGraphColor' ] = function( volume )
    -- Change color between green and red depending on volume
    return ColorAlpha( HSVToColor( Lerp( volume/0.7, 120, 0), 1, 1 ), 50 )
end

THEME[ 'VoiceChatGraphType' ] = 2

THEME[ 'VoiceChatGraphBorder' ] = false

THEME[ 'VoiceChatGraphSize' ] = 10

THEME[ 'VoiceChatGraphSpacing' ] = 1

THEME[ 'VoiceChatGraphAmp' ] = 100

THEME[ 'VoiceChatGraphSpeed' ] = 2
