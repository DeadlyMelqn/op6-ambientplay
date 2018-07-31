.class public Lcom/oneplus/settings/storage/OPMediaProvider;
.super Ljava/lang/Object;
.source "OPMediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/storage/OPMediaProvider$Callback;,
        Lcom/oneplus/settings/storage/OPMediaProvider$FileType;,
        Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-settings-storage-OPMediaProvider$FileTypeSwitchesValues:[I = null

.field private static AUDIO_SECTION:Ljava/lang/String; = null

.field private static AUDIO_SECTION_BY_TYPE:Ljava/lang/String; = null

.field private static FILES_SECTION_BY_TYPE:Ljava/lang/String; = null

.field private static PICTURE_SECTION:Ljava/lang/String; = null

.field private static PICTURE_SECTION_BY_TYPE:Ljava/lang/String; = null

.field private static SECTION_AFTER:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "OPMediaProvider"

.field private static VIDEO_SECTION:Ljava/lang/String;

.field private static VIDEO_SECTION_BY_TYPE:Ljava/lang/String;

.field private static final external_path:Ljava/lang/String;

.field private static final sProject:[Ljava/lang/String;

.field public static final sTypeArray:[Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

.field private static final sumProject:[Ljava/lang/String;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->sumProject:[Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-settings-storage-OPMediaProvider$FileTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->-com-oneplus-settings-storage-OPMediaProvider$FileTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->-com-oneplus-settings-storage-OPMediaProvider$FileTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->values()[Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->All:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    invoke-virtual {v1}, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Audio:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    invoke-virtual {v1}, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Files:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    invoke-virtual {v1}, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Image:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    invoke-virtual {v1}, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Video:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    invoke-virtual {v1}, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->-com-oneplus-settings-storage-OPMediaProvider$FileTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/storage/OPMediaProvider$FileType;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    .prologue
    invoke-static {p0}, Lcom/oneplus/settings/storage/OPMediaProvider;->getTypedSelection(Lcom/oneplus/settings/storage/OPMediaProvider$FileType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    const-string/jumbo v0, " and _data NOT LIKE \'%/.%\' and _data NOT LIKE \'%cache%\' and _data NOT LIKE \'%/res/%\' and _data NOT LIKE \'%/plugins/%\' and _data NOT LIKE \'%/temp/%\' and _data NOT LIKE \'%/tencent/MobileQQ/qbiz/%\' and _data NOT LIKE \'%/tencent/MobileQQ/PhotoPlus/%\' and _data NOT LIKE \'%/thumb/%\' and _data NOT LIKE \'%/oem_log/%\'"

    sput-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->SECTION_AFTER:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(_data LIKE \'%.jpg\' or _data LIKE \'%.jpeg\' or _data LIKE \'%.png\' or _data LIKE \'%.bmp\' or _data LIKE \'%.gif\' or _data LIKE \'%.wbmp\' or _data LIKE \'%.dng\' or _data LIKE \'%.cr2\' or _data LIKE \'%.nef\' or _data LIKE \'%.nrw\' or _data LIKE \'%.arw\' or _data LIKE \'%.rw2\' or _data LIKE \'%.orf\' or _data LIKE \'%.raf\' or _data LIKE \'%.pef\' or _data LIKE \'%.srw\' or _data LIKE \'%.tiff\' or _data LIKE \'%.webp\' )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider;->SECTION_AFTER:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->PICTURE_SECTION:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(_data LIKE \'%.wma\' or _data LIKE \'%.mp3\' or _data LIKE \'%.wav\' or _data LIKE \'%.aac\' or _data LIKE \'%.mid\' or _data LIKE \'%.ogg\' or _data LIKE \'%.flac\' or _data LIKE \'%.ape\' or _data LIKE \'%.ra\' or _data LIKE \'%.qcp\' or _data LIKE \'%.ac3\' or _data LIKE \'%.ec3\' or _data LIKE \'%.aif\' or _data LIKE \'%.aiff\' or _data LIKE \'%.dsf\' or _data LIKE \'%.dff\' or _data LIKE \'%.dsd\' or _data LIKE \'%.m3u\' or _data LIKE \'%.pls\' or _data LIKE \'%.m3u8\' or _data LIKE \'%.aac\' or _data LIKE \'%.mka\' or _data LIKE \'%.midi\' or _data LIKE \'%.xmf\' or _data LIKE \'%.rtttl\' or _data LIKE \'%.smf\' or _data LIKE \'%.imy\' or _data LIKE \'%.rtx\' or _data LIKE \'%.ota\' or _data LIKE \'%.mxmf\' or _data LIKE \'%.mpga\' or _data LIKE \'%.m4a\' or _data LIKE \'%.wav\' or _data LIKE \'%.awb\' or _data LIKE \'%.mod\' or _data LIKE \'%.amr\' )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider;->SECTION_AFTER:Ljava/lang/String;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->AUDIO_SECTION:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(_data LIKE \'%.avi\' or _data LIKE \'%.mkv\' or _data LIKE \'%.mp4\' or _data LIKE \'%.mpeg\' or _data LIKE \'%.wmv\' or _data LIKE \'%.3gp\' or _data LIKE \'%.flv\' or _data LIKE \'%.rmvb\' or _data LIKE \'%.rmvb\' or _data LIKE \'%.mpg\' or _data LIKE \'%.m4v\' or _data LIKE \'%.3gpp\' or _data LIKE \'%.3g2\' or _data LIKE \'%.3gpp2\' or _data LIKE \'%.webm\' or _data LIKE \'%.ts\' or _data LIKE \'%.asf\' or _data LIKE \'%.divx\' or _data LIKE \'%.swf\' or _data LIKE \'%.mov\' )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider;->SECTION_AFTER:Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->VIDEO_SECTION:Ljava/lang/String;

    .line 92
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->external_path:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(_data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider;->external_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/%\' )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider;->SECTION_AFTER:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->FILES_SECTION_BY_TYPE:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(_data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider;->external_path:Ljava/lang/String;

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    const-string/jumbo v1, "%\' AND "

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    const-string/jumbo v1, "mime_type"

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    const-string/jumbo v1, " LIKE \'image/%\' ) "

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider;->SECTION_AFTER:Ljava/lang/String;

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->PICTURE_SECTION_BY_TYPE:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(_data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider;->external_path:Ljava/lang/String;

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    const-string/jumbo v1, "%\' AND "

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    const-string/jumbo v1, "mime_type"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    const-string/jumbo v1, " LIKE \'audio/%\' or "

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    const-string/jumbo v1, "mime_type"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    const-string/jumbo v1, " in (\'application/ogg\') ) "

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider;->SECTION_AFTER:Ljava/lang/String;

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->AUDIO_SECTION_BY_TYPE:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(_data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider;->external_path:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    const-string/jumbo v1, "%\' AND "

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    const-string/jumbo v1, "mime_type"

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    const-string/jumbo v1, " LIKE \'video/%\' ) "

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 109
    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider;->SECTION_AFTER:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->VIDEO_SECTION_BY_TYPE:Ljava/lang/String;

    .line 111
    new-array v0, v4, [Ljava/lang/String;

    .line 112
    const-string/jumbo v1, "_size"

    aput-object v1, v0, v2

    .line 113
    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    .line 111
    sput-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->sProject:[Ljava/lang/String;

    .line 116
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "sum(_size)"

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->sumProject:[Ljava/lang/String;

    .line 123
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Files:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Image:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Audio:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Video:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->sTypeArray:[Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSelectionByType(Lcom/oneplus/settings/storage/OPMediaProvider$FileType;)Ljava/lang/String;
    .locals 4
    .param p0, "type"    # Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/settings/storage/OPMediaProvider;->-getcom-oneplus-settings-storage-OPMediaProvider$FileTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 157
    :pswitch_0
    const-string/jumbo v1, "OPMediaProvider"

    const-string/jumbo v2, "getSelectionByType return default is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local v0    # "selection":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "OPMediaProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTypedSelection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-object v0

    .line 148
    .restart local v0    # "selection":Ljava/lang/String;
    :pswitch_1
    sget-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->PICTURE_SECTION:Ljava/lang/String;

    .local v0, "selection":Ljava/lang/String;
    goto :goto_0

    .line 151
    .local v0, "selection":Ljava/lang/String;
    :pswitch_2
    sget-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->AUDIO_SECTION:Ljava/lang/String;

    .local v0, "selection":Ljava/lang/String;
    goto :goto_0

    .line 154
    .local v0, "selection":Ljava/lang/String;
    :pswitch_3
    sget-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->VIDEO_SECTION:Ljava/lang/String;

    .local v0, "selection":Ljava/lang/String;
    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private static getTypedSelection(Lcom/oneplus/settings/storage/OPMediaProvider$FileType;)Ljava/lang/String;
    .locals 4
    .param p0, "type"    # Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/settings/storage/OPMediaProvider;->-getcom-oneplus-settings-storage-OPMediaProvider$FileTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 180
    const-string/jumbo v1, "OPMediaProvider"

    const-string/jumbo v2, "getTypedSelection return default is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v0    # "selection":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "OPMediaProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTypedSelection("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-object v0

    .line 168
    .restart local v0    # "selection":Ljava/lang/String;
    :pswitch_0
    sget-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->FILES_SECTION_BY_TYPE:Ljava/lang/String;

    .local v0, "selection":Ljava/lang/String;
    goto :goto_0

    .line 171
    .local v0, "selection":Ljava/lang/String;
    :pswitch_1
    sget-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->PICTURE_SECTION_BY_TYPE:Ljava/lang/String;

    .local v0, "selection":Ljava/lang/String;
    goto :goto_0

    .line 174
    .local v0, "selection":Ljava/lang/String;
    :pswitch_2
    sget-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->AUDIO_SECTION_BY_TYPE:Ljava/lang/String;

    .local v0, "selection":Ljava/lang/String;
    goto :goto_0

    .line 177
    .local v0, "selection":Ljava/lang/String;
    :pswitch_3
    sget-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->VIDEO_SECTION_BY_TYPE:Ljava/lang/String;

    .local v0, "selection":Ljava/lang/String;
    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private static getUriByType(Lcom/oneplus/settings/storage/OPMediaProvider$FileType;)Landroid/net/Uri;
    .locals 3
    .param p0, "type"    # Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/oneplus/settings/storage/OPMediaProvider;->-getcom-oneplus-settings-storage-OPMediaProvider$FileTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 138
    :pswitch_0
    const-string/jumbo v1, "OPMediaProvider"

    const-string/jumbo v2, "getUriByType return default is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 129
    .restart local v0    # "uri":Landroid/net/Uri;
    :pswitch_1
    const-string/jumbo v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 132
    .local v0, "uri":Landroid/net/Uri;
    :pswitch_2
    const-string/jumbo v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 135
    .local v0, "uri":Landroid/net/Uri;
    :pswitch_3
    const-string/jumbo v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static startLoadInfo(Landroid/content/Context;Lcom/oneplus/settings/storage/OPMediaProvider$FileType;Lcom/oneplus/settings/storage/OPMediaProvider$Callback;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/oneplus/settings/storage/OPMediaProvider$FileType;
    .param p2, "callback"    # Lcom/oneplus/settings/storage/OPMediaProvider$Callback;

    .prologue
    const/4 v4, 0x0

    .line 193
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 194
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "volume"

    const-string/jumbo v5, "external"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "android.media.IMediaScannerService"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 196
    .local v2, "i":Landroid/content/Intent;
    const-string/jumbo v3, "com.android.providers.media"

    .line 197
    const-string/jumbo v5, "com.android.providers.media.MediaScannerService"

    .line 196
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 200
    sget-object v3, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->All:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    if-ne p1, v3, :cond_0

    .line 201
    sget-object v5, Lcom/oneplus/settings/storage/OPMediaProvider;->sTypeArray:[Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v1, v5, v3

    .line 202
    .local v1, "fileType":Lcom/oneplus/settings/storage/OPMediaProvider$FileType;
    new-instance v7, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;

    invoke-direct {v7, p0, v1, p2}, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;-><init>(Landroid/content/Context;Lcom/oneplus/settings/storage/OPMediaProvider$FileType;Lcom/oneplus/settings/storage/OPMediaProvider$Callback;)V

    sget-object v8, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v9, v4, [Ljava/lang/Void;

    invoke-virtual {v7, v8, v9}, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 201
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    .end local v1    # "fileType":Lcom/oneplus/settings/storage/OPMediaProvider$FileType;
    :cond_0
    new-instance v3, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;

    invoke-direct {v3, p0, p1, p2}, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;-><init>(Landroid/content/Context;Lcom/oneplus/settings/storage/OPMediaProvider$FileType;Lcom/oneplus/settings/storage/OPMediaProvider$Callback;)V

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v5, v4}, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 207
    :cond_1
    return-void
.end method
