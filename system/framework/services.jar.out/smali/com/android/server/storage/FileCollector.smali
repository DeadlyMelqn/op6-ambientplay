.class public Lcom/android/server/storage/FileCollector;
.super Ljava/lang/Object;
.source "FileCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/FileCollector$FileTypes;,
        Lcom/android/server/storage/FileCollector$MeasurementResult;
    }
.end annotation


# static fields
.field private static final AUDIO:I = 0x2

.field private static final EXTENSION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMAGES:I = 0x0

.field private static final UNRECOGNIZED:I = -0x1

.field private static final VIDEO:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    .line 55
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "aac"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "amr"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "awb"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "snd"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "flac"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mp3"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mpga"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mpega"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mp2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "m4a"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "aif"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "aiff"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "aifc"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "gsm"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mka"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "m3u"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "wma"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "wax"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "ra"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "rm"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "ram"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "pls"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "sd2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "wav"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "ogg"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "oga"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "3gpp"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "3gp"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "3gpp2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "3g2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "avi"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "dl"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "dif"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "dv"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "fli"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "m4v"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "ts"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mpeg"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mpg"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mpe"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mp4"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "vob"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "qt"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mov"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mxu"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "webm"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "lsf"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "lsx"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mkv"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mng"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "asf"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "asx"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "wm"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "wmv"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "wmx"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "wvx"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "movie"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "wrf"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "bmp"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "gif"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "jpg"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "jpeg"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "jpe"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "pcx"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "png"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "svg"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "svgz"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "tiff"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "tif"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "wbmp"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "webp"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "dng"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "cr2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "ras"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "art"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "jng"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "nef"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "nrw"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "orf"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "rw2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "pef"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "psd"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "pnm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "pbm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "pgm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "ppm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "srw"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "arw"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "rgb"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "xbm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "xpm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "xwd"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method private static collectFiles(Ljava/io/File;Lcom/android/server/storage/FileCollector$MeasurementResult;)Lcom/android/server/storage/FileCollector$MeasurementResult;
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "result"    # Lcom/android/server/storage/FileCollector$MeasurementResult;

    .prologue
    .line 224
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 226
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_0

    .line 227
    return-object p1

    .line 230
    :cond_0
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v2, v3

    .line 231
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 233
    :try_start_0
    invoke-static {v1, p1}, Lcom/android/server/storage/FileCollector;->collectFiles(Ljava/io/File;Lcom/android/server/storage/FileCollector$MeasurementResult;)Lcom/android/server/storage/FileCollector$MeasurementResult;
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/StackOverflowError;
    return-object p1

    .line 238
    .end local v0    # "e":Ljava/lang/StackOverflowError;
    :cond_1
    invoke-static {p1, v1}, Lcom/android/server/storage/FileCollector;->handleFile(Lcom/android/server/storage/FileCollector$MeasurementResult;Ljava/io/File;)V

    goto :goto_1

    .line 242
    .end local v1    # "f":Ljava/io/File;
    :cond_2
    return-object p1
.end method

.method private static getExtensionForFile(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 264
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "fileName":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 266
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 267
    const-string/jumbo v2, ""

    return-object v2

    .line 269
    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMeasurementResult(Landroid/content/Context;)Lcom/android/server/storage/FileCollector$MeasurementResult;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    new-instance v1, Lcom/android/server/storage/FileCollector$MeasurementResult;

    invoke-direct {v1}, Lcom/android/server/storage/FileCollector$MeasurementResult;-><init>()V

    .line 168
    .local v1, "result":Lcom/android/server/storage/FileCollector$MeasurementResult;
    const-string/jumbo v4, "storagestats"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/StorageStatsManager;

    .line 169
    .local v2, "ssm":Landroid/app/usage/StorageStatsManager;
    const/4 v3, 0x0

    .line 173
    .local v3, "stats":Landroid/app/usage/ExternalStorageStats;
    :try_start_0
    sget-object v4, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 172
    invoke-virtual {v2, v4, v5}, Landroid/app/usage/StorageStatsManager;->queryExternalStatsForUser(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/ExternalStorageStats;

    move-result-object v3

    .line 175
    .local v3, "stats":Landroid/app/usage/ExternalStorageStats;
    invoke-virtual {v3}, Landroid/app/usage/ExternalStorageStats;->getImageBytes()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/storage/FileCollector$MeasurementResult;->imagesSize:J

    .line 176
    invoke-virtual {v3}, Landroid/app/usage/ExternalStorageStats;->getVideoBytes()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/storage/FileCollector$MeasurementResult;->videosSize:J

    .line 177
    invoke-virtual {v3}, Landroid/app/usage/ExternalStorageStats;->getAudioBytes()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/storage/FileCollector$MeasurementResult;->audioSize:J

    .line 179
    invoke-virtual {v3}, Landroid/app/usage/ExternalStorageStats;->getTotalBytes()J

    move-result-wide v4

    .line 180
    iget-wide v6, v1, Lcom/android/server/storage/FileCollector$MeasurementResult;->imagesSize:J

    .line 179
    sub-long/2addr v4, v6

    .line 181
    iget-wide v6, v1, Lcom/android/server/storage/FileCollector$MeasurementResult;->videosSize:J

    .line 179
    sub-long/2addr v4, v6

    .line 182
    iget-wide v6, v1, Lcom/android/server/storage/FileCollector$MeasurementResult;->audioSize:J

    .line 179
    sub-long/2addr v4, v6

    .line 178
    iput-wide v4, v1, Lcom/android/server/storage/FileCollector$MeasurementResult;->miscSize:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    return-object v1

    .line 183
    .end local v3    # "stats":Landroid/app/usage/ExternalStorageStats;
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Could not query storage"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getMeasurementResult(Ljava/io/File;)Lcom/android/server/storage/FileCollector$MeasurementResult;
    .locals 2
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 156
    invoke-static {p0}, Landroid/os/storage/StorageManager;->maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 157
    new-instance v1, Lcom/android/server/storage/FileCollector$MeasurementResult;

    invoke-direct {v1}, Lcom/android/server/storage/FileCollector$MeasurementResult;-><init>()V

    .line 156
    invoke-static {v0, v1}, Lcom/android/server/storage/FileCollector;->collectFiles(Ljava/io/File;Lcom/android/server/storage/FileCollector$MeasurementResult;)Lcom/android/server/storage/FileCollector$MeasurementResult;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemSize(Landroid/content/Context;)J
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v12, 0x0

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 198
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 200
    .local v1, "primaryVolume":Landroid/os/storage/VolumeInfo;
    const-string/jumbo v7, "storage"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    .line 201
    .local v6, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v6, v1}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 202
    .local v2, "shared":Landroid/os/storage/VolumeInfo;
    if-nez v2, :cond_0

    .line 203
    return-wide v12

    .line 207
    :cond_0
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v3

    .line 208
    .local v3, "sharedPath":Ljava/io/File;
    if-nez v3, :cond_1

    .line 209
    return-wide v12

    .line 212
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v4

    .line 213
    .local v4, "sharedDataSize":J
    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getPrimaryStorageSize()J

    move-result-wide v10

    sub-long v8, v10, v4

    .line 216
    .local v8, "systemSize":J
    cmp-long v7, v8, v12

    if-gtz v7, :cond_2

    .line 217
    return-wide v12

    .line 220
    :cond_2
    return-wide v8
.end method

.method private static handleFile(Lcom/android/server/storage/FileCollector$MeasurementResult;Ljava/io/File;)V
    .locals 6
    .param p0, "result"    # Lcom/android/server/storage/FileCollector$MeasurementResult;
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 246
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 247
    .local v0, "fileSize":J
    sget-object v3, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/server/storage/FileCollector;->getExtensionForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 248
    .local v2, "fileType":I
    packed-switch v2, :pswitch_data_0

    .line 259
    iget-wide v4, p0, Lcom/android/server/storage/FileCollector$MeasurementResult;->miscSize:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/server/storage/FileCollector$MeasurementResult;->miscSize:J

    .line 261
    :goto_0
    return-void

    .line 250
    :pswitch_0
    iget-wide v4, p0, Lcom/android/server/storage/FileCollector$MeasurementResult;->audioSize:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/server/storage/FileCollector$MeasurementResult;->audioSize:J

    goto :goto_0

    .line 253
    :pswitch_1
    iget-wide v4, p0, Lcom/android/server/storage/FileCollector$MeasurementResult;->videosSize:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/server/storage/FileCollector$MeasurementResult;->videosSize:J

    goto :goto_0

    .line 256
    :pswitch_2
    iget-wide v4, p0, Lcom/android/server/storage/FileCollector$MeasurementResult;->imagesSize:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/server/storage/FileCollector$MeasurementResult;->imagesSize:J

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method