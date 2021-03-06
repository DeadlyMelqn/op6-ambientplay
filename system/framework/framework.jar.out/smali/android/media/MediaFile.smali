.class public Landroid/media/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final FILE_TYPE_3GPA:I = 0xd3

.field public static final FILE_TYPE_3GPP:I = 0x17

.field public static final FILE_TYPE_3GPP2:I = 0x18

.field public static final FILE_TYPE_AAC:I = 0x8

.field public static final FILE_TYPE_AC3:I = 0xd4

.field public static final FILE_TYPE_AIFF:I = 0xd8

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_APE:I = 0xd9

.field public static final FILE_TYPE_ARW:I = 0x130

.field public static final FILE_TYPE_ASF:I = 0x1a

.field public static final FILE_TYPE_AVI:I = 0x1d

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x22

.field public static final FILE_TYPE_CR2:I = 0x12d

.field public static final FILE_TYPE_DIVX:I = 0xca

.field public static final FILE_TYPE_DNG:I = 0x12c

.field public static final FILE_TYPE_DSD:I = 0xda

.field public static final FILE_TYPE_DTS:I = 0xd2

.field public static final FILE_TYPE_EC3:I = 0xd7

.field public static final FILE_TYPE_FL:I = 0x33

.field public static final FILE_TYPE_FLAC:I = 0xa

.field public static final FILE_TYPE_FLV:I = 0xcb

.field public static final FILE_TYPE_GIF:I = 0x20

.field public static final FILE_TYPE_HEIF:I = 0x25

.field public static final FILE_TYPE_HTML:I = 0x65

.field public static final FILE_TYPE_HTTPLIVE:I = 0x2c

.field public static final FILE_TYPE_IMY:I = 0xd

.field public static final FILE_TYPE_JPEG:I = 0x1f

.field public static final FILE_TYPE_M3U:I = 0x29

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_M4V:I = 0x16

.field public static final FILE_TYPE_MID:I = 0xb

.field public static final FILE_TYPE_MKA:I = 0x9

.field public static final FILE_TYPE_MKV:I = 0x1b

.field public static final FILE_TYPE_MP2PS:I = 0xc8

.field public static final FILE_TYPE_MP2TS:I = 0x1c

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x15

.field public static final FILE_TYPE_MS_EXCEL:I = 0x69

.field public static final FILE_TYPE_MS_POWERPOINT:I = 0x6a

.field public static final FILE_TYPE_MS_WORD:I = 0x68

.field public static final FILE_TYPE_NEF:I = 0x12e

.field public static final FILE_TYPE_NRW:I = 0x12f

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_ORF:I = 0x132

.field public static final FILE_TYPE_PCM:I = 0xd6

.field public static final FILE_TYPE_PDF:I = 0x66

.field public static final FILE_TYPE_PEF:I = 0x134

.field public static final FILE_TYPE_PLS:I = 0x2a

.field public static final FILE_TYPE_PNG:I = 0x21

.field public static final FILE_TYPE_QCP:I = 0xd5

.field public static final FILE_TYPE_QT:I = 0xc9

.field public static final FILE_TYPE_RAF:I = 0x133

.field public static final FILE_TYPE_RW2:I = 0x131

.field public static final FILE_TYPE_SMF:I = 0xc

.field public static final FILE_TYPE_SRW:I = 0x135

.field public static final FILE_TYPE_TEXT:I = 0x64

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x23

.field public static final FILE_TYPE_WEBM:I = 0x1e

.field public static final FILE_TYPE_WEBP:I = 0x24

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMV:I = 0x19

.field public static final FILE_TYPE_WPL:I = 0x2b

.field public static final FILE_TYPE_XML:I = 0x67

.field public static final FILE_TYPE_ZIP:I = 0x6b

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_AUDIO_FILE_TYPE_EXT:I = 0xd2

.field private static final FIRST_DRM_FILE_TYPE:I = 0x33

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x1f

.field private static final FIRST_MIDI_FILE_TYPE:I = 0xb

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x29

.field private static final FIRST_RAW_IMAGE_FILE_TYPE:I = 0x12c

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x15

.field private static final FIRST_VIDEO_FILE_TYPE2:I = 0xc8

.field private static final LAST_AUDIO_FILE_TYPE:I = 0xa

.field private static final LAST_AUDIO_FILE_TYPE_EXT:I = 0xda

.field private static final LAST_DRM_FILE_TYPE:I = 0x33

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x25

.field private static final LAST_MIDI_FILE_TYPE:I = 0xd

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x2c

.field private static final LAST_RAW_IMAGE_FILE_TYPE:I = 0x135

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x1e

.field private static final LAST_VIDEO_FILE_TYPE2:I = 0xcb

.field private static final TAG:Ljava/lang/String; = "MediaFile"

.field private static final sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFileTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFormatToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x380d

    const/16 v7, 0x300b

    const/16 v6, 0xb

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Landroid/media/MediaFile;->DBG:Z

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 158
    sput-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 160
    sput-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 163
    sput-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 166
    sput-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 169
    sput-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    .line 213
    const-string/jumbo v0, "MP3"

    const-string/jumbo v1, "audio/mpeg"

    const/16 v2, 0x3009

    invoke-static {v0, v5, v1, v2, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 214
    const-string/jumbo v0, "MPGA"

    const-string/jumbo v1, "audio/mpeg"

    const/16 v2, 0x3009

    invoke-static {v0, v5, v1, v2, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 215
    const-string/jumbo v0, "M4A"

    const-string/jumbo v1, "audio/mp4"

    const/4 v2, 0x2

    invoke-static {v0, v2, v1, v7, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 216
    const-string/jumbo v0, "WAV"

    const-string/jumbo v1, "audio/x-wav"

    const/4 v2, 0x3

    const/16 v3, 0x3008

    invoke-static {v0, v2, v1, v3, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 219
    const-string/jumbo v0, "MP3"

    const-string/jumbo v1, "audio/mp3"

    const/16 v2, 0x3009

    invoke-static {v0, v5, v1, v2, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 220
    const-string/jumbo v0, "M4A"

    const-string/jumbo v1, "audio/mp4a-latm"

    const/4 v2, 0x2

    invoke-static {v0, v2, v1, v7, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 222
    const-string/jumbo v0, "AMR"

    const-string/jumbo v1, "audio/amr"

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 223
    const-string/jumbo v0, "AWB"

    const-string/jumbo v1, "audio/amr-wb"

    const/4 v2, 0x5

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 224
    invoke-static {}, Landroid/media/MediaFile;->isWMAEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    const-string/jumbo v0, "WMA"

    const-string/jumbo v1, "audio/x-ms-wma"

    const/4 v2, 0x6

    const v3, 0xb901

    invoke-static {v0, v2, v1, v3, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 227
    :cond_0
    const-string/jumbo v0, "OGG"

    const-string/jumbo v1, "audio/ogg"

    const/4 v2, 0x7

    const v3, 0xb902

    invoke-static {v0, v2, v1, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 228
    const-string/jumbo v0, "OGG"

    const-string/jumbo v1, "application/ogg"

    const/4 v2, 0x7

    const v3, 0xb902

    invoke-static {v0, v2, v1, v3, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 229
    const-string/jumbo v0, "OGA"

    const-string/jumbo v1, "application/ogg"

    const/4 v2, 0x7

    const v3, 0xb902

    invoke-static {v0, v2, v1, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 230
    const-string/jumbo v0, "AAC"

    const-string/jumbo v1, "audio/aac"

    const/16 v2, 0x8

    const v3, 0xb903

    invoke-static {v0, v2, v1, v3, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 231
    const-string/jumbo v0, "AAC"

    const-string/jumbo v1, "audio/aac-adts"

    const/16 v2, 0x8

    const v3, 0xb903

    invoke-static {v0, v2, v1, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 232
    const-string/jumbo v0, "MKA"

    const-string/jumbo v1, "audio/x-matroska"

    const/16 v2, 0x9

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 234
    const-string/jumbo v0, "MID"

    const-string/jumbo v1, "audio/midi"

    invoke-static {v0, v6, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 235
    const-string/jumbo v0, "MIDI"

    const-string/jumbo v1, "audio/midi"

    invoke-static {v0, v6, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 236
    const-string/jumbo v0, "XMF"

    const-string/jumbo v1, "audio/midi"

    invoke-static {v0, v6, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 237
    const-string/jumbo v0, "RTTTL"

    const-string/jumbo v1, "audio/midi"

    invoke-static {v0, v6, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 238
    const-string/jumbo v0, "SMF"

    const-string/jumbo v1, "audio/sp-midi"

    const/16 v2, 0xc

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 239
    const-string/jumbo v0, "IMY"

    const-string/jumbo v1, "audio/imelody"

    const/16 v2, 0xd

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 240
    const-string/jumbo v0, "RTX"

    const-string/jumbo v1, "audio/midi"

    invoke-static {v0, v6, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 241
    const-string/jumbo v0, "OTA"

    const-string/jumbo v1, "audio/midi"

    invoke-static {v0, v6, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 242
    const-string/jumbo v0, "MXMF"

    const-string/jumbo v1, "audio/midi"

    invoke-static {v0, v6, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 244
    const-string/jumbo v0, "MPEG"

    const-string/jumbo v1, "video/mpeg"

    const/16 v2, 0x15

    invoke-static {v0, v2, v1, v7, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 245
    const-string/jumbo v0, "MPG"

    const-string/jumbo v1, "video/mpeg"

    const/16 v2, 0x15

    invoke-static {v0, v2, v1, v7, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 246
    const-string/jumbo v0, "MP4"

    const-string/jumbo v1, "video/mp4"

    const/16 v2, 0x15

    invoke-static {v0, v2, v1, v7, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 247
    const-string/jumbo v0, "M4V"

    const-string/jumbo v1, "video/mp4"

    const/16 v2, 0x16

    invoke-static {v0, v2, v1, v7, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 248
    const-string/jumbo v0, "MOV"

    const-string/jumbo v1, "video/quicktime"

    const/16 v2, 0xc9

    invoke-static {v0, v2, v1, v7, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 250
    const-string/jumbo v0, "3GP"

    const-string/jumbo v1, "video/3gpp"

    const/16 v2, 0x17

    const v3, 0xb984

    invoke-static {v0, v2, v1, v3, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 251
    const-string/jumbo v0, "3GPP"

    const-string/jumbo v1, "video/3gpp"

    const/16 v2, 0x17

    const v3, 0xb984

    invoke-static {v0, v2, v1, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 252
    const-string/jumbo v0, "3G2"

    const-string/jumbo v1, "video/3gpp2"

    const/16 v2, 0x18

    const v3, 0xb984

    invoke-static {v0, v2, v1, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 253
    const-string/jumbo v0, "3GPP2"

    const-string/jumbo v1, "video/3gpp2"

    const/16 v2, 0x18

    const v3, 0xb984

    invoke-static {v0, v2, v1, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 254
    const-string/jumbo v0, "MKV"

    const-string/jumbo v1, "video/x-matroska"

    const/16 v2, 0x1b

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 255
    const-string/jumbo v0, "WEBM"

    const-string/jumbo v1, "video/webm"

    const/16 v2, 0x1e

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 256
    const-string/jumbo v0, "TS"

    const-string/jumbo v1, "video/mp2ts"

    const/16 v2, 0x1c

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 257
    const-string/jumbo v0, "AVI"

    const-string/jumbo v1, "video/avi"

    const/16 v2, 0x1d

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 260
    const-string/jumbo v0, "F4V"

    const-string/jumbo v1, "video/x-f4v"

    const/16 v2, 0x15

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 263
    invoke-static {}, Landroid/media/MediaFile;->isWMVEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    const-string/jumbo v0, "WMV"

    const-string/jumbo v1, "video/x-ms-wmv"

    const/16 v2, 0x19

    const v3, 0xb981

    invoke-static {v0, v2, v1, v3, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 265
    const-string/jumbo v0, "ASF"

    const-string/jumbo v1, "video/x-ms-asf"

    const/16 v2, 0x1a

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 268
    :cond_1
    const-string/jumbo v0, "JPG"

    const-string/jumbo v1, "image/jpeg"

    const/16 v2, 0x1f

    const/16 v3, 0x3801

    invoke-static {v0, v2, v1, v3, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 269
    const-string/jumbo v0, "JPEG"

    const-string/jumbo v1, "image/jpeg"

    const/16 v2, 0x1f

    const/16 v3, 0x3801

    invoke-static {v0, v2, v1, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 270
    const-string/jumbo v0, "GIF"

    const-string/jumbo v1, "image/gif"

    const/16 v2, 0x20

    const/16 v3, 0x3807

    invoke-static {v0, v2, v1, v3, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 271
    const-string/jumbo v0, "PNG"

    const-string/jumbo v1, "image/png"

    const/16 v2, 0x21

    const/16 v3, 0x380b

    invoke-static {v0, v2, v1, v3, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 272
    const-string/jumbo v0, "BMP"

    const-string/jumbo v1, "image/x-ms-bmp"

    const/16 v2, 0x22

    const/16 v3, 0x3804

    invoke-static {v0, v2, v1, v3, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 273
    const-string/jumbo v0, "WBMP"

    const-string/jumbo v1, "image/vnd.wap.wbmp"

    const/16 v2, 0x23

    const/16 v3, 0x3800

    invoke-static {v0, v2, v1, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 274
    const-string/jumbo v0, "WEBP"

    const-string/jumbo v1, "image/webp"

    const/16 v2, 0x24

    const/16 v3, 0x3800

    invoke-static {v0, v2, v1, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 275
    const-string/jumbo v0, "HEIC"

    const-string/jumbo v1, "image/heif"

    const/16 v2, 0x25

    const/16 v3, 0x3812

    invoke-static {v0, v2, v1, v3, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 276
    const-string/jumbo v0, "HEIF"

    const-string/jumbo v1, "image/heif"

    const/16 v2, 0x25

    const/16 v3, 0x3812

    invoke-static {v0, v2, v1, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 278
    const-string/jumbo v0, "DNG"

    const-string/jumbo v1, "image/x-adobe-dng"

    const/16 v2, 0x12c

    const/16 v3, 0x3811

    invoke-static {v0, v2, v1, v3, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 279
    const-string/jumbo v0, "CR2"

    const-string/jumbo v1, "image/x-canon-cr2"

    const/16 v2, 0x12d

    invoke-static {v0, v2, v1, v8, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 280
    const-string/jumbo v0, "NEF"

    const-string/jumbo v1, "image/x-nikon-nef"

    const/16 v2, 0x12e

    const/16 v3, 0x3802

    invoke-static {v0, v2, v1, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 281
    const-string/jumbo v0, "NRW"

    const-string/jumbo v1, "image/x-nikon-nrw"

    const/16 v2, 0x12f

    invoke-static {v0, v2, v1, v8, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 282
    const-string/jumbo v0, "ARW"

    const-string/jumbo v1, "image/x-sony-arw"

    const/16 v2, 0x130

    invoke-static {v0, v2, v1, v8, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 283
    const-string/jumbo v0, "RW2"

    const-string/jumbo v1, "image/x-panasonic-rw2"

    const/16 v2, 0x131

    invoke-static {v0, v2, v1, v8, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 284
    const-string/jumbo v0, "ORF"

    const-string/jumbo v1, "image/x-olympus-orf"

    const/16 v2, 0x132

    invoke-static {v0, v2, v1, v8, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 285
    const-string/jumbo v0, "RAF"

    const-string/jumbo v1, "image/x-fuji-raf"

    const/16 v2, 0x133

    const/16 v3, 0x3800

    invoke-static {v0, v2, v1, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 286
    const-string/jumbo v0, "PEF"

    const-string/jumbo v1, "image/x-pentax-pef"

    const/16 v2, 0x134

    invoke-static {v0, v2, v1, v8, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 287
    const-string/jumbo v0, "SRW"

    const-string/jumbo v1, "image/x-samsung-srw"

    const/16 v2, 0x135

    invoke-static {v0, v2, v1, v8, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 289
    const-string/jumbo v0, "M3U"

    const-string/jumbo v1, "audio/x-mpegurl"

    const/16 v2, 0x29

    const v3, 0xba11

    invoke-static {v0, v2, v1, v3, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 290
    const-string/jumbo v0, "M3U"

    const-string/jumbo v1, "application/x-mpegurl"

    const/16 v2, 0x29

    const v3, 0xba11

    invoke-static {v0, v2, v1, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 291
    const-string/jumbo v0, "PLS"

    const-string/jumbo v1, "audio/x-scpls"

    const/16 v2, 0x2a

    const v3, 0xba14

    invoke-static {v0, v2, v1, v3, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 292
    const-string/jumbo v0, "WPL"

    const-string/jumbo v1, "application/vnd.ms-wpl"

    const/16 v2, 0x2b

    const v3, 0xba10

    invoke-static {v0, v2, v1, v3, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 293
    const-string/jumbo v0, "M3U8"

    const-string/jumbo v1, "application/vnd.apple.mpegurl"

    const/16 v2, 0x2c

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 294
    const-string/jumbo v0, "M3U8"

    const-string/jumbo v1, "audio/mpegurl"

    const/16 v2, 0x2c

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    const-string/jumbo v0, "M3U8"

    const-string/jumbo v1, "audio/x-mpegurl"

    const/16 v2, 0x2c

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 297
    const-string/jumbo v0, "FL"

    const-string/jumbo v1, "application/x-android-drm-fl"

    const/16 v2, 0x33

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 299
    const-string/jumbo v0, "TXT"

    const-string/jumbo v1, "text/plain"

    const/16 v2, 0x64

    const/16 v3, 0x3004

    invoke-static {v0, v2, v1, v3, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 300
    const-string/jumbo v0, "HTM"

    const-string/jumbo v1, "text/html"

    const/16 v2, 0x65

    const/16 v3, 0x3005

    invoke-static {v0, v2, v1, v3, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 301
    const-string/jumbo v0, "HTML"

    const-string/jumbo v1, "text/html"

    const/16 v2, 0x65

    const/16 v3, 0x3005

    invoke-static {v0, v2, v1, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 302
    const-string/jumbo v0, "PDF"

    const-string/jumbo v1, "application/pdf"

    const/16 v2, 0x66

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 303
    const-string/jumbo v0, "DOC"

    const-string/jumbo v1, "application/msword"

    const/16 v2, 0x68

    const v3, 0xba83

    invoke-static {v0, v2, v1, v3, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 304
    const-string/jumbo v0, "XLS"

    const-string/jumbo v1, "application/vnd.ms-excel"

    const/16 v2, 0x69

    const v3, 0xba85

    invoke-static {v0, v2, v1, v3, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 305
    const-string/jumbo v0, "PPT"

    const-string/jumbo v1, "application/mspowerpoint"

    const/16 v2, 0x6a

    const v3, 0xba86

    invoke-static {v0, v2, v1, v3, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 306
    const-string/jumbo v0, "FLAC"

    const-string/jumbo v1, "audio/flac"

    const/16 v2, 0xa

    const v3, 0xb906

    invoke-static {v0, v2, v1, v3, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 307
    const-string/jumbo v0, "ZIP"

    const-string/jumbo v1, "application/zip"

    const/16 v2, 0x6b

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 308
    const-string/jumbo v0, "MPG"

    const-string/jumbo v1, "video/mp2p"

    const/16 v2, 0xc8

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    const-string/jumbo v0, "MPEG"

    const-string/jumbo v1, "video/mp2p"

    const/16 v2, 0xc8

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 310
    const-string/jumbo v0, "DIVX"

    const-string/jumbo v1, "video/divx"

    const/16 v2, 0xca

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 311
    const-string/jumbo v0, "FLV"

    const-string/jumbo v1, "video/flv"

    const/16 v2, 0xcb

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 312
    const-string/jumbo v0, "QCP"

    const-string/jumbo v1, "audio/qcelp"

    const/16 v2, 0xd5

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 313
    const-string/jumbo v0, "AC3"

    const-string/jumbo v1, "audio/ac3"

    const/16 v2, 0xd4

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 314
    const-string/jumbo v0, "EC3"

    const-string/jumbo v1, "audio/eac3"

    const/16 v2, 0xd7

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 315
    const-string/jumbo v0, "AIF"

    const-string/jumbo v1, "audio/x-aiff"

    const/16 v2, 0xd8

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 316
    const-string/jumbo v0, "AIFF"

    const-string/jumbo v1, "audio/x-aiff"

    const/16 v2, 0xd8

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 317
    const-string/jumbo v0, "APE"

    const-string/jumbo v1, "audio/x-ape"

    const/16 v2, 0xd9

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 318
    const-string/jumbo v0, "DSF"

    const-string/jumbo v1, "audio/x-dsf"

    const/16 v2, 0xda

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 319
    const-string/jumbo v0, "DFF"

    const-string/jumbo v1, "audio/x-dff"

    const/16 v2, 0xda

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 320
    const-string/jumbo v0, "DSD"

    const-string/jumbo v1, "audio/dsd"

    const/16 v2, 0xda

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "fileType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 173
    sget-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Landroid/media/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void
.end method

.method private static addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V
    .locals 2
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "fileType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "mtpFormatCode"    # I
    .param p4, "primaryType"    # Z

    .prologue
    .line 179
    invoke-static {p0, p1, p2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    sget-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    if-eqz p4, :cond_0

    .line 183
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 184
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_0
    return-void
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 392
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 393
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    .line 394
    add-int/lit8 v1, v1, 0x1

    .line 395
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 396
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 400
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 401
    .local v0, "lastDot":I
    if-lez v0, :cond_1

    .line 402
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 404
    :cond_1
    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 377
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 378
    .local v0, "lastDot":I
    if-gez v0, :cond_0

    .line 379
    const/4 v1, 0x0

    return-object v1

    .line 380
    :cond_0
    sget-object v1, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFile$MediaFileType;

    return-object v1
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 408
    sget-object v1, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 409
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getFormatCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 418
    if-eqz p1, :cond_0

    .line 419
    sget-object v4, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 420
    .local v3, "value":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 421
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    return v4

    .line 424
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_0
    const/16 v4, 0x2e

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 425
    .local v2, "lastDot":I
    if-lez v2, :cond_1

    .line 426
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "extension":Ljava/lang/String;
    sget-object v4, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 428
    .restart local v3    # "value":Ljava/lang/Integer;
    if-eqz v3, :cond_1

    .line 429
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    return v4

    .line 434
    .end local v0    # "extension":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 436
    sget-boolean v4, Landroid/media/MediaFile;->DBG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "MediaFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getFormatCode: folder was confirmed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_2
    const/16 v4, 0x3001

    return v4

    .line 440
    :cond_3
    const/16 v4, 0x3000

    return v4
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 413
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v0

    .line 414
    .local v0, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMimeTypeForFormatCode(I)Ljava/lang/String;
    .locals 2
    .param p0, "formatCode"    # I

    .prologue
    .line 444
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isAudioFileType(I)Z
    .locals 3
    .param p0, "fileType"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 324
    if-lt p0, v0, :cond_1

    .line 325
    const/16 v2, 0xa

    if-gt p0, v2, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v0

    .line 326
    :cond_1
    const/16 v2, 0xb

    if-lt p0, v2, :cond_2

    .line 327
    const/16 v2, 0xd

    if-le p0, v2, :cond_0

    .line 328
    :cond_2
    const/16 v2, 0xd2

    if-lt p0, v2, :cond_3

    .line 329
    const/16 v2, 0xda

    if-le p0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 328
    goto :goto_0
.end method

.method public static isDrmFileType(I)Z
    .locals 2
    .param p0, "fileType"    # I

    .prologue
    const/16 v1, 0x33

    const/4 v0, 0x0

    .line 372
    if-lt p0, v1, :cond_0

    .line 373
    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    .line 372
    :cond_0
    return v0
.end method

.method public static isExtAudioFileType(I)Z
    .locals 2
    .param p0, "fileType"    # I

    .prologue
    const/4 v0, 0x0

    .line 342
    const/16 v1, 0xd2

    if-lt p0, v1, :cond_0

    .line 343
    const/16 v1, 0xda

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    .line 342
    :cond_0
    return v0
.end method

.method public static isImageFileType(I)Z
    .locals 3
    .param p0, "fileType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 355
    const/16 v2, 0x1f

    if-lt p0, v2, :cond_1

    .line 356
    const/16 v2, 0x25

    if-gt p0, v2, :cond_1

    .line 355
    :cond_0
    :goto_0
    return v0

    .line 357
    :cond_1
    const/16 v2, 0x12c

    if-lt p0, v2, :cond_2

    .line 358
    const/16 v2, 0x135

    if-le p0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 357
    goto :goto_0
.end method

.method public static isLegacyAudioFileType(I)Z
    .locals 3
    .param p0, "fileType"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 335
    if-lt p0, v0, :cond_1

    .line 336
    const/16 v2, 0xa

    if-gt p0, v2, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v0

    .line 337
    :cond_1
    const/16 v2, 0xb

    if-lt p0, v2, :cond_2

    .line 338
    const/16 v2, 0xd

    if-le p0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 337
    goto :goto_0
.end method

.method public static isMimeTypeMedia(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 384
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 385
    .local v0, "fileType":I
    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v1

    .line 385
    if-nez v1, :cond_0

    .line 386
    invoke-static {v0}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v1

    .line 385
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isPlayListFileType(I)Z
    .locals 2
    .param p0, "fileType"    # I

    .prologue
    const/4 v0, 0x0

    .line 367
    const/16 v1, 0x29

    if-lt p0, v1, :cond_0

    .line 368
    const/16 v1, 0x2c

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    .line 367
    :cond_0
    return v0
.end method

.method public static isRawImageFileType(I)Z
    .locals 2
    .param p0, "fileType"    # I

    .prologue
    const/4 v0, 0x0

    .line 362
    const/16 v1, 0x12c

    if-lt p0, v1, :cond_0

    .line 363
    const/16 v1, 0x135

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    .line 362
    :cond_0
    return v0
.end method

.method public static isVideoFileType(I)Z
    .locals 3
    .param p0, "fileType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 348
    const/16 v2, 0x15

    if-lt p0, v2, :cond_1

    .line 349
    const/16 v2, 0x1e

    if-gt p0, v2, :cond_1

    .line 348
    :cond_0
    :goto_0
    return v0

    .line 350
    :cond_1
    const/16 v2, 0xc8

    if-lt p0, v2, :cond_2

    .line 351
    const/16 v2, 0xcb

    if-le p0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 350
    goto :goto_0
.end method

.method private static isWMAEnabled()Z
    .locals 5

    .prologue
    .line 189
    invoke-static {}, Landroid/media/DecoderCapabilities;->getAudioDecoders()Ljava/util/List;

    move-result-object v2

    .line 190
    .local v2, "decoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/DecoderCapabilities$AudioDecoder;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 191
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 192
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/DecoderCapabilities$AudioDecoder;

    .line 193
    .local v1, "decoder":Landroid/media/DecoderCapabilities$AudioDecoder;
    sget-object v4, Landroid/media/DecoderCapabilities$AudioDecoder;->AUDIO_DECODER_WMA:Landroid/media/DecoderCapabilities$AudioDecoder;

    if-ne v1, v4, :cond_0

    .line 194
    const/4 v4, 0x1

    return v4

    .line 191
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    .end local v1    # "decoder":Landroid/media/DecoderCapabilities$AudioDecoder;
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private static isWMVEnabled()Z
    .locals 5

    .prologue
    .line 201
    invoke-static {}, Landroid/media/DecoderCapabilities;->getVideoDecoders()Ljava/util/List;

    move-result-object v2

    .line 202
    .local v2, "decoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/DecoderCapabilities$VideoDecoder;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 203
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 204
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/DecoderCapabilities$VideoDecoder;

    .line 205
    .local v1, "decoder":Landroid/media/DecoderCapabilities$VideoDecoder;
    sget-object v4, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    if-ne v1, v4, :cond_0

    .line 206
    const/4 v4, 0x1

    return v4

    .line 203
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    .end local v1    # "decoder":Landroid/media/DecoderCapabilities$VideoDecoder;
    :cond_1
    const/4 v4, 0x0

    return v4
.end method
