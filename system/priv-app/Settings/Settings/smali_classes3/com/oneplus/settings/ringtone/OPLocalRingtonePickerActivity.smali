.class public Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;
.super Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;
.source "OPLocalRingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$1;,
        Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$2;,
        Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;,
        Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;
    }
.end annotation


# static fields
.field private static final ALARMS_PATH:Ljava/lang/String;

.field private static final AUDIO_FILE_SELECTION_ALL:Ljava/lang/String;

.field private static final AUDIO_FILE_SELECTION_PART:Ljava/lang/String;

.field public static AUDIO_SECTION:Ljava/lang/String; = null

.field private static final MINTIME:J = 0xea60L

.field private static final NOTIFICATIONS_PATH:Ljava/lang/String;

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final RECORD_PATH:Ljava/lang/String;

.field private static final RECORD_URI:Landroid/net/Uri;

.field private static final RINGTONE_PATH:Ljava/lang/String;

.field private static final SDCARD_PATH:Ljava/lang/String;

.field public static SECTION_AFTER:Ljava/lang/String;

.field private static final SELECTION_ARGS_ALL:[Ljava/lang/String;

.field private static final SELECTION_ARGS_PART:[Ljava/lang/String;


# instance fields
.field private isFirst:Z

.field private mListView:Landroid/widget/ListView;

.field private mNofileView:Landroid/widget/TextView;

.field private mOPLocalRingtoneAdapter:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSetExternalThread:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;

.field private mSystemRings:Ljava/util/List;

.field private mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->AUDIO_FILE_SELECTION_ALL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->AUDIO_FILE_SELECTION_PART:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSetExternalThread:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;

    return-object v0
.end method

.method static synthetic -get11(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Ljava/util/List;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->RECORD_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get4()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SELECTION_ARGS_ALL:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SELECTION_ARGS_PART:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Z
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    .prologue
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->isFirst:Z

    return v0
.end method

.method static synthetic -get7(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOPLocalRingtoneAdapter:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

    return-object v0
.end method

.method static synthetic -get9(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->isFirst:Z

    return p1
.end method

.method static synthetic -set1(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;)Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;
    .param p1, "-value"    # Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

    .prologue
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOPLocalRingtoneAdapter:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

    return-object p1
.end method

.method static synthetic -set2(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;)Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;
    .param p1, "-value"    # Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;

    .prologue
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSetExternalThread:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;

    return-object p1
.end method

.method static synthetic -set3(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;
    .param p1, "-value"    # Ljava/util/List;

    .prologue
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;)Landroid/net/Uri;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;
    .param p1, "preference"    # Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->updateExternalFile(Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;
    .param p1, "strRingMime"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->isApeFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;I)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->startTask(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Landroid/net/Uri;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->updateChecks(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    const-string/jumbo v0, " and _data NOT LIKE \'%/.%\' and _data NOT LIKE \'%cache%\' and _data NOT LIKE \'%/res/%\' and _data NOT LIKE \'%/plugins/%\' and _data NOT LIKE \'%/temp/%\' and _data NOT LIKE \'%/tencent/MobileQQ/qbiz/%\' and _data NOT LIKE \'%/tencent/MobileQQ/PhotoPlus/%\' and _data NOT LIKE \'%/thumb/%\' and _data NOT LIKE \'%/oem_log/%\'"

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SECTION_AFTER:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(_data LIKE \'%.wma\' or _data LIKE \'%.mp3\' or _data LIKE \'%.aac\' or _data LIKE \'%.mid\' or _data LIKE \'%.ogg\' or _data LIKE \'%.flac\' or _data LIKE \'%.ape\' or _data LIKE \'%.ra\' or _data LIKE \'%.mod\' or _data LIKE \'%.m4a\' or _data LIKE \'%.amr\' )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    sget-object v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SECTION_AFTER:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->AUDIO_SECTION:Ljava/lang/String;

    .line 67
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->RECORD_URI:Landroid/net/Uri;

    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 69
    const-string/jumbo v1, "_display_name"

    aput-object v1, v0, v4

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 71
    const-string/jumbo v1, "_data"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "mime_type"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "title"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 68
    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->PROJECTION:[Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_data not like ? and"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    sget-object v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->AUDIO_SECTION:Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->AUDIO_FILE_SELECTION_ALL:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_data not like ? and duration < 60000 and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    sget-object v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->AUDIO_SECTION:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->AUDIO_FILE_SELECTION_PART:Ljava/lang/String;

    .line 80
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SDCARD_PATH:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Ringtones/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->RINGTONE_PATH:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    const-string/jumbo v1, "/Notifications/"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->NOTIFICATIONS_PATH:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Alarms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->ALARMS_PATH:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Record/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->RECORD_PATH:Ljava/lang/String;

    .line 87
    new-array v0, v4, [Ljava/lang/String;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->RECORD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 87
    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SELECTION_ARGS_ALL:[Ljava/lang/String;

    .line 89
    new-array v0, v4, [Ljava/lang/String;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->RECORD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 89
    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SELECTION_ARGS_PART:[Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;-><init>()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->isFirst:Z

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    .line 139
    new-instance v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$1;-><init>(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 182
    new-instance v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$2;-><init>(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 49
    return-void
.end method

.method private checkDir()Ljava/lang/String;
    .locals 4

    .prologue
    .line 427
    sget-object v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->RINGTONE_PATH:Ljava/lang/String;

    .line 428
    .local v1, "dirPath":Ljava/lang/String;
    iget v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 429
    iget v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 430
    :cond_0
    sget-object v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->NOTIFICATIONS_PATH:Ljava/lang/String;

    .line 434
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 436
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 438
    :cond_2
    return-object v1

    .line 431
    .end local v0    # "dir":Ljava/io/File;
    :cond_3
    iget v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 432
    sget-object v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->ALARMS_PATH:Ljava/lang/String;

    goto :goto_0
.end method

.method private initActionbar()V
    .locals 7

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 123
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 124
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 125
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 126
    const v5, 0x7f04012f

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 127
    .local v2, "layout":Landroid/view/View;
    const v5, 0x7f0a0281

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 129
    .local v4, "spinner":Landroid/widget/Spinner;
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00b4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "mItems":[Ljava/lang/String;
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 131
    const v5, 0x7f04012e

    const v6, 0x1020014

    .line 130
    invoke-direct {v1, p0, v5, v6, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 132
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 134
    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 135
    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 136
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 137
    return-void
.end method

.method private isApeFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "strRingMime"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 307
    const-string/jumbo v6, "audio/*"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 308
    const/4 v3, 0x0

    .line 309
    .local v3, "mediaExtractor":Landroid/media/MediaExtractor;
    const/4 p1, 0x0

    .line 311
    .local p1, "strRingMime":Ljava/lang/String;
    :try_start_0
    new-instance v4, Landroid/media/MediaExtractor;

    invoke-direct {v4}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    .end local v3    # "mediaExtractor":Landroid/media/MediaExtractor;
    .local v4, "mediaExtractor":Landroid/media/MediaExtractor;
    :try_start_1
    invoke-virtual {v4, p2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 313
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 314
    invoke-virtual {v4, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    .line 315
    .local v1, "format":Landroid/media/MediaFormat;
    const-string/jumbo v6, "mime"

    invoke-virtual {v1, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, "trackMime":Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string/jumbo v6, "audio/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-eqz v6, :cond_3

    .line 318
    move-object p1, v5

    .line 326
    .end local v1    # "format":Landroid/media/MediaFormat;
    .end local v5    # "trackMime":Ljava/lang/String;
    .end local p1    # "strRingMime":Ljava/lang/String;
    :cond_0
    if-eqz v4, :cond_1

    .line 327
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    .line 332
    .end local v2    # "i":I
    .end local v4    # "mediaExtractor":Landroid/media/MediaExtractor;
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_5

    .line 333
    :cond_2
    const/4 v6, 0x1

    return v6

    .line 313
    .restart local v1    # "format":Landroid/media/MediaFormat;
    .restart local v2    # "i":I
    .restart local v4    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v5    # "trackMime":Ljava/lang/String;
    .restart local p1    # "strRingMime":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    .end local v1    # "format":Landroid/media/MediaFormat;
    .end local v2    # "i":I
    .end local v4    # "mediaExtractor":Landroid/media/MediaExtractor;
    .end local v5    # "trackMime":Ljava/lang/String;
    .restart local v3    # "mediaExtractor":Landroid/media/MediaExtractor;
    :catch_0
    move-exception v0

    .line 324
    .end local v3    # "mediaExtractor":Landroid/media/MediaExtractor;
    .local v0, "ex":Ljava/io/IOException;
    :goto_2
    :try_start_2
    const-string/jumbo v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ringtoneCopyFrom3rdParty: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/settings/ringtone/OPMyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 326
    if-eqz v3, :cond_1

    .line 327
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    goto :goto_1

    .line 325
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 326
    :goto_3
    if-eqz v3, :cond_4

    .line 327
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    .line 325
    :cond_4
    throw v6

    .line 335
    .end local p1    # "strRingMime":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    return v6

    .line 325
    .restart local v4    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local p1    # "strRingMime":Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "mediaExtractor":Landroid/media/MediaExtractor;
    .local v3, "mediaExtractor":Landroid/media/MediaExtractor;
    goto :goto_3

    .line 322
    .end local v3    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v4    # "mediaExtractor":Landroid/media/MediaExtractor;
    :catch_1
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v3    # "mediaExtractor":Landroid/media/MediaExtractor;
    goto :goto_2
.end method

.method private startTask(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 340
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;

    invoke-virtual {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->setClose()V

    .line 342
    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mNofileView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 347
    new-instance v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;-><init>(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;

    .line 348
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 349
    return-void
.end method

.method private updateChecks(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 200
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOPLocalRingtoneAdapter:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

    if-nez v2, :cond_1

    .line 201
    :cond_0
    return-void

    .line 204
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 205
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;

    .line 207
    .local v1, "p":Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;
    iget-object v2, v1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->isCheck:Z

    goto :goto_0

    .line 209
    .end local v1    # "p":Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;
    :cond_2
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOPLocalRingtoneAdapter:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

    invoke-virtual {v2}, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->notifyDataSetChanged()V

    .line 210
    return-void
.end method

.method private updateDb(Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;Ljava/lang/String;)Landroid/net/Uri;
    .locals 11
    .param p1, "p"    # Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 473
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 474
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 475
    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v10

    .line 476
    const-string/jumbo v3, "_data=?"

    .line 477
    new-array v4, v9, [Ljava/lang/String;

    aput-object p2, v4, v10

    .line 474
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 479
    .local v6, "cursor1":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 499
    .local v7, "defaultitem":Landroid/net/Uri;
    :goto_0
    if-eqz v6, :cond_0

    .line 500
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 503
    :cond_0
    const-string/jumbo v0, "chenhl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "defaultitem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    return-object v7

    .line 482
    .end local v7    # "defaultitem":Landroid/net/Uri;
    :cond_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 483
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "_data"

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string/jumbo v0, "title"

    iget-object v2, p1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->title:Ljava/lang/String;

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string/jumbo v0, "mime_type"

    iget-object v2, p1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->mimetype:Ljava/lang/String;

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mType:I

    if-ne v0, v9, :cond_2

    .line 487
    const-string/jumbo v0, "is_ringtone"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 494
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_data=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 494
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 496
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .restart local v7    # "defaultitem":Landroid/net/Uri;
    goto :goto_0

    .line 488
    .end local v7    # "defaultitem":Landroid/net/Uri;
    :cond_2
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    .line 489
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mType:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_4

    .line 490
    :cond_3
    const-string/jumbo v0, "is_notification"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 492
    :cond_4
    const-string/jumbo v0, "is_alarm"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1
.end method

.method private updateExternalFile(Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;)Landroid/net/Uri;
    .locals 7
    .param p1, "preference"    # Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;

    .prologue
    const/4 v6, 0x0

    .line 397
    const-string/jumbo v3, "chenhl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v2, p1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->filepath:Ljava/lang/String;

    .line 399
    .local v2, "path":Ljava/lang/String;
    const-string/jumbo v3, "chenhl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 401
    .local v1, "oldfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 402
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$3;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$3;-><init>(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    return-object v6

    .line 412
    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    const/16 v4, 0x12c

    invoke-virtual {p0, v4, v3}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->playRingtone(ILandroid/net/Uri;)V

    .line 413
    if-eqz v2, :cond_1

    const-string/jumbo v3, "/storage/emulated/legacy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 414
    sget-object v3, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 413
    if-eqz v3, :cond_2

    .line 416
    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    return-object v3

    .line 419
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->checkDir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    .local v0, "newFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 421
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 423
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->updateDb(Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p1, "oldfile"    # Ljava/io/File;
    .param p2, "newFile"    # Ljava/io/File;

    .prologue
    .line 452
    const/4 v2, 0x0

    .line 453
    .local v2, "bytesum":I
    const/4 v1, 0x0

    .line 455
    .local v1, "byteread":I
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 456
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 457
    .local v5, "inStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 458
    .local v4, "fs":Ljava/io/FileOutputStream;
    const/16 v6, 0x5a4

    new-array v0, v6, [B

    .line 460
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 461
    add-int/2addr v2, v1

    .line 462
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 467
    .end local v0    # "buffer":[B
    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .end local v5    # "inStream":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 468
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 470
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 464
    .restart local v0    # "buffer":[B
    .restart local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v5    # "inStream":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 465
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    const-string/jumbo v1, "key_selected_item_uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "mUriForDefaultItemStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 104
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 108
    .end local v0    # "mUriForDefaultItemStr":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const v1, 0x7f04010c

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->setContentView(I)V

    .line 110
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->initActionbar()V

    .line 111
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mListView:Landroid/widget/ListView;

    .line 112
    const v1, 0x7f0a026c

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mNofileView:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f0a026d

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 114
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mNofileView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 115
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    const-class v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onCreate startTask"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->startTask(I)V

    .line 118
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 509
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;

    invoke-virtual {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->setClose()V

    .line 511
    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;

    .line 513
    :cond_0
    invoke-super {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onDestroy()V

    .line 514
    return-void
.end method

.method protected updateSelected()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    if-nez v0, :cond_0

    .line 173
    return-void

    .line 179
    :cond_0
    return-void
.end method
