.class public Lcom/android/systemui/volume/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static AUDIO_MANAGER_FLAGS:[I

.field private static AUDIO_MANAGER_FLAG_NAMES:[Ljava/lang/String;

.field private static final HMMAA:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "h:mm aa"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/systemui/volume/Util;->HMMAA:Ljava/text/SimpleDateFormat;

    .line 50
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/volume/Util;->AUDIO_MANAGER_FLAGS:[I

    .line 62
    new-array v0, v3, [Ljava/lang/String;

    .line 63
    const-string/jumbo v1, "SHOW_UI"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 64
    const-string/jumbo v1, "VIBRATE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 65
    const-string/jumbo v1, "PLAY_SOUND"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 66
    const-string/jumbo v1, "ALLOW_RINGER_MODES"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 67
    const-string/jumbo v1, "REMOVE_SOUND_AND_VIBRATE"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 68
    const-string/jumbo v1, "SHOW_VIBRATE_HINT"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 69
    const-string/jumbo v1, "SHOW_SILENT_HINT"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 70
    const-string/jumbo v1, "FROM_KEY"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 71
    const-string/jumbo v1, "SHOW_UI_WARNINGS"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 62
    sput-object v0, Lcom/android/systemui/volume/Util;->AUDIO_MANAGER_FLAG_NAMES:[Ljava/lang/String;

    .line 45
    return-void

    .line 50
    nop

    :array_0
    .array-data 4
        0x1
        0x10
        0x4
        0x2
        0x8
        0x800
        0x80
        0x1000
        0x400
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static audioManagerFlagsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 138
    sget-object v0, Lcom/android/systemui/volume/Util;->AUDIO_MANAGER_FLAGS:[I

    sget-object v1, Lcom/android/systemui/volume/Util;->AUDIO_MANAGER_FLAG_NAMES:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/systemui/volume/Util;->bitFieldToString(I[I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bitFieldToString(I[I[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # I
    .param p1, "values"    # [I
    .param p2, "names"    # [Ljava/lang/String;

    .prologue
    const/16 v3, 0x2c

    .line 142
    if-nez p0, :cond_0

    const-string/jumbo v2, ""

    return-object v2

    .line 143
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 145
    aget v2, p1, v0

    and-int/2addr v2, p0

    if-eqz v2, :cond_2

    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    :cond_1
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_2
    aget v2, p1, v0

    not-int v2, v2

    and-int/2addr p0, v2

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_3
    if-eqz p0, :cond_5

    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    :cond_4
    const-string/jumbo v2, "UNKNOWN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static emptyToNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 163
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public static getCorrectZenMode(III)I
    .locals 2
    .param p0, "zenMode"    # I
    .param p1, "threeKeystatus"    # I
    .param p2, "isVibateWhenZen"    # I

    .prologue
    const/4 v1, 0x1

    .line 191
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportSOCThreekey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    packed-switch p1, :pswitch_data_0

    .line 207
    :goto_0
    return p0

    .line 194
    :pswitch_0
    const/4 p0, 0x3

    .line 195
    goto :goto_0

    .line 197
    :pswitch_1
    const/4 p0, 0x3

    .line 198
    goto :goto_0

    .line 200
    :pswitch_2
    if-ne p0, v1, :cond_0

    .line 201
    const/4 p0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 211
    :cond_1
    if-lez p2, :cond_2

    if-ne p1, v1, :cond_2

    if-nez p0, :cond_2

    .line 212
    const/4 v0, 0x3

    return v0

    .line 215
    :cond_2
    return p0

    .line 192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getThreeKeyStatus(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    const/4 v0, -0x1

    .line 222
    .local v0, "threeKeyStatus":I
    if-nez p0, :cond_0

    .line 223
    const-string/jumbo v1, "Volume.Util"

    const-string/jumbo v2, "getThreeKeyStatus error, context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return v0

    .line 240
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "three_Key_mode"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 242
    return v0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 185
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static logTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v3, 0x17

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vol."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_0

    .end local v0    # "tag":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static mediaMetadataToString(Landroid/media/MediaMetadata;)Ljava/lang/String;
    .locals 1
    .param p0, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    .line 90
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    if-nez v0, :cond_1

    .line 91
    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    .line 94
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaDescription;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static playbackInfoToString(Landroid/media/session/MediaController$PlaybackInfo;)Ljava/lang/String;
    .locals 6
    .param p0, "info"    # Landroid/media/session/MediaController$PlaybackInfo;

    .prologue
    const/4 v2, 0x0

    .line 98
    if-nez p0, :cond_0

    return-object v2

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/volume/Util;->playbackInfoTypeToString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/volume/Util;->volumeProviderControlToString(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "vc":Ljava/lang/String;
    const-string/jumbo v2, "PlaybackInfo[vol=%s,max=%s,type=%s,vc=%s],atts=%s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    .line 102
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v4, 0x3

    aput-object v1, v3, v4

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 101
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static playbackInfoTypeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 106
    packed-switch p0, :pswitch_data_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 107
    :pswitch_0
    const-string/jumbo v0, "LOCAL"

    return-object v0

    .line 108
    :pswitch_1
    const-string/jumbo v0, "REMOTE"

    return-object v0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static playbackStateStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 114
    packed-switch p0, :pswitch_data_0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :pswitch_0
    const-string/jumbo v0, "STATE_NONE"

    return-object v0

    .line 116
    :pswitch_1
    const-string/jumbo v0, "STATE_STOPPED"

    return-object v0

    .line 117
    :pswitch_2
    const-string/jumbo v0, "STATE_PAUSED"

    return-object v0

    .line 118
    :pswitch_3
    const-string/jumbo v0, "STATE_PLAYING"

    return-object v0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static playbackStateToString(Landroid/media/session/PlaybackState;)Ljava/lang/String;
    .locals 2
    .param p0, "playbackState"    # Landroid/media/session/PlaybackState;

    .prologue
    const/4 v0, 0x0

    .line 133
    if-nez p0, :cond_0

    return-object v0

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/volume/Util;->playbackStateStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ringerModeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "ringerMode"    # I

    .prologue
    .line 80
    packed-switch p0, :pswitch_data_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RINGER_MODE_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 81
    :pswitch_0
    const-string/jumbo v0, "RINGER_MODE_SILENT"

    return-object v0

    .line 82
    :pswitch_1
    const-string/jumbo v0, "RINGER_MODE_VIBRATE"

    return-object v0

    .line 83
    :pswitch_2
    const-string/jumbo v0, "RINGER_MODE_NORMAL"

    return-object v0

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->emptyToNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/volume/Util;->emptyToNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 168
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public static final setVisOrGone(Landroid/view/View;Z)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "vis"    # Z

    .prologue
    const/4 v0, 0x0

    .line 173
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-ne v1, p1, :cond_2

    :cond_0
    return-void

    :cond_1
    move v1, v0

    goto :goto_0

    .line 174
    :cond_2
    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 175
    return-void

    .line 174
    :cond_3
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public static volumeProviderControlToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "control"    # I

    .prologue
    .line 124
    packed-switch p0, :pswitch_data_0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VOLUME_CONTROL_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 125
    :pswitch_0
    const-string/jumbo v0, "VOLUME_CONTROL_ABSOLUTE"

    return-object v0

    .line 126
    :pswitch_1
    const-string/jumbo v0, "VOLUME_CONTROL_FIXED"

    return-object v0

    .line 127
    :pswitch_2
    const-string/jumbo v0, "VOLUME_CONTROL_RELATIVE"

    return-object v0

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
