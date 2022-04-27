
--[[-------------------------------------------------------------
    PLEASE REFERENCE THE default THEME FOR HELP CONFIGURING!
-----------------------------------------------------------------]]

THEME[ 'BoxWidth' ] = 200
THEME[ 'BoxHeight' ] = 40

THEME[ 'YStartPosition' ] = BOTTOM

THEME[ 'XStartPosition' ] = RIGHT

THEME[ 'YStartPadding' ] = 100

THEME[ 'AvatarStyle' ] = 2

THEME[ 'AvatarSize' ] = 32

THEME[ 'DrawAvatarBorder' ] = false

THEME[ 'AvatarBorderColorFriend' ] = Color( 46, 204, 113, 255 )

THEME[ 'AvatarBorderColorRegular' ] = Color( 52, 152, 219, 255 )

local matVoice = Material( 'icon16/sound.png' )
THEME[ 'VoiceChatBoxPaint' ] = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 0, 0, 0, 150 ) )
end

surface.CreateFont( 'VoiceChat.PlayerName', { font = 'Default', size = 20, weight = 1000 } )

THEME[ 'VoiceChatBoxPaintOver' ] = function( self, w, h )
    -- Do not remove this line unless you know what you are doing.
    -- This line will make sure the player is valid before calling it below.
    -- Anything containing player data should be done below this line.
    if not IsValid( self.ply ) then return end

    draw.SimpleText( self.ply:Nick(), 'VoiceChat.PlayerName', 45, h*0.5, team.GetColor( self.ply:Team() ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER )
end

THEME[ 'VoiceChatGraphColor' ] = function( volume )
    return color_white
end

THEME[ 'VoiceChatGraphType' ] = 0

THEME[ 'VoiceChatGraphBorder' ] = false

THEME[ 'VoiceChatGraphSize' ] = 10

THEME[ 'VoiceChatGraphSpacing' ] = 0

THEME[ 'VoiceChatGraphAmp' ] = 100

THEME[ 'VoiceChatGraphSpeed' ] = 2
