.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/NtpTrustedTime$MyHandler;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field static final MSG_FORCE_REFRESH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static mBackupServer:Ljava/lang/String;

.field private static mNtpRetries:I

.field private static mNtpRetriesMax:I

.field private static sContext:Landroid/content/Context;

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private mBackupmode:Z

.field private mCM:Landroid/net/ConnectivityManager;

.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private mNtpTrustedTimeHandler:Landroid/os/Handler;

.field private mNtpTrustedTimeThread:Landroid/os/HandlerThread;

.field private final mServer:Ljava/lang/String;

.field private final mTimeout:J

.field private oemNTPserver:[Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/util/NtpTrustedTime;)Z
    .locals 1
    .param p0, "-this"    # Landroid/util/NtpTrustedTime;

    .prologue
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->forceRefreshInThread()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    const-string/jumbo v0, ""

    sput-object v0, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    .line 72
    sput v1, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    .line 73
    sput v1, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    .line 48
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;J)V
    .locals 6
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    const/4 v4, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v4, p0, Landroid/util/NtpTrustedTime;->mBackupmode:Z

    .line 88
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v4

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->oemNTPserver:[Ljava/lang/String;

    .line 117
    const-string/jumbo v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "creating NtpTrustedTime using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 119
    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    .line 123
    const-string/jumbo v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTimeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->oemNTPserver:[Ljava/lang/String;

    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    aput-object v1, v0, v4

    .line 126
    const-string/jumbo v0, "NtpTrustedTime"

    const-string/jumbo v1, "start mNtpTrustedTimeThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "NtpTrustedTime"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mNtpTrustedTimeThread:Landroid/os/HandlerThread;

    .line 128
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mNtpTrustedTimeThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 129
    new-instance v0, Landroid/util/NtpTrustedTime$MyHandler;

    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mNtpTrustedTimeThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/util/NtpTrustedTime$MyHandler;-><init>(Landroid/util/NtpTrustedTime;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mNtpTrustedTimeHandler:Landroid/os/Handler;

    .line 131
    return-void
.end method

.method private countInBackupmode()V
    .locals 2

    .prologue
    .line 416
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->isBackupSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    sget v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    .line 418
    sget v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    sget v1, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    if-ne v0, v1, :cond_0

    .line 419
    const/4 v0, 0x0

    sput v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    .line 420
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/util/NtpTrustedTime;->setBackupmode(Z)V

    .line 423
    :cond_0
    const-string/jumbo v0, "NtpTrustedTime"

    const-string/jumbo v1, "countInBackupmode() func"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void
.end method

.method private forceRefreshInThread()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 229
    const-string/jumbo v3, "NtpTrustedTime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "forceRefreshInThread() mTimeout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string/jumbo v3, "persist.sys.force_ntp_server"

    const-string/jumbo v4, "default"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "forceNtpServer":Ljava/lang/String;
    const-string/jumbo v3, "NtpTrustedTime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "forceRefreshInThread() forceNtpServer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string/jumbo v3, "CN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->getTimeFromOppoServer()Z

    .line 237
    return v8

    .line 239
    :cond_0
    const-string/jumbo v3, "OverSeas"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->getTimeFromAndroidServer()Z

    .line 242
    return v8

    .line 244
    :cond_1
    const-string/jumbo v3, "NotGet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    const-string/jumbo v3, "NtpTrustedTime"

    const-string/jumbo v4, "forceRefreshInThread() do nothing !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return v8

    .line 250
    :cond_2
    new-array v3, v8, [I

    aput v9, v3, v9

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 251
    const-string/jumbo v3, "NtpTrustedTime"

    const-string/jumbo v4, "forceRefreshInThread() for CHINA SKU"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string/jumbo v3, "persist.sys.oem.region"

    const-string/jumbo v4, "CN"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "region":Ljava/lang/String;
    const-string/jumbo v3, "CN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "OC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 256
    :cond_3
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->getTimeFromOppoServer()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 258
    return v8

    .line 262
    :cond_4
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->getTimeFromAndroidServer()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 264
    return v8

    .line 268
    .end local v2    # "region":Ljava/lang/String;
    :cond_5
    const-string/jumbo v3, "NtpTrustedTime"

    const-string/jumbo v4, "forceRefreshInThread() for O2 SKU"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string/jumbo v3, "sys.radio.mcc"

    const-string/jumbo v4, "000"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "mcc":Ljava/lang/String;
    const-string/jumbo v3, "NtpTrustedTime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "forceRefreshInThread() mcc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string/jumbo v3, "460"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 273
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->getTimeFromOppoServer()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 275
    return v8

    .line 279
    :cond_6
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->getTimeFromAndroidServer()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 281
    return v8

    .line 285
    .end local v1    # "mcc":Ljava/lang/String;
    :cond_7
    const-string/jumbo v3, "NtpTrustedTime"

    const-string/jumbo v4, "forceRefreshInThread() return false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return v9
.end method

.method private getBackupmode()Z
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mBackupmode:Z

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v11, Landroid/util/NtpTrustedTime;

    monitor-enter v11

    .line 134
    :try_start_0
    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v10, :cond_0

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 136
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 139
    .local v5, "resolver":Landroid/content/ContentResolver;
    const v10, 0x1040161

    .line 138
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "defaultServer":Ljava/lang/String;
    const v10, 0x10e0073

    .line 140
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-long v2, v10

    .line 144
    .local v2, "defaultTimeout":J
    const-string/jumbo v10, "ntp_server"

    .line 143
    invoke-static {v5, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "secureServer":Ljava/lang/String;
    const-string/jumbo v10, "ntp_timeout"

    .line 145
    invoke-static {v5, v10, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 148
    .local v8, "timeout":J
    if-eqz v6, :cond_1

    move-object v7, v6

    .line 149
    .local v7, "server":Ljava/lang/String;
    :goto_0
    new-instance v10, Landroid/util/NtpTrustedTime;

    invoke-direct {v10, v7, v8, v9}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;J)V

    sput-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    .line 150
    sput-object p0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    .line 152
    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-eqz v10, :cond_0

    .line 153
    const-string/jumbo v10, "persist.backup.ntpServer"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "backupServer":Ljava/lang/String;
    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    .line 156
    const v10, 0x10e0071

    .line 155
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    sput v10, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    .line 158
    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    sget v10, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    if-lez v10, :cond_2

    .line 159
    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2

    .line 161
    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v12, "\""

    const-string/jumbo v13, ""

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    .line 169
    .end local v0    # "backupServer":Ljava/lang/String;
    .end local v1    # "defaultServer":Ljava/lang/String;
    .end local v2    # "defaultTimeout":J
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "secureServer":Ljava/lang/String;
    .end local v7    # "server":Ljava/lang/String;
    .end local v8    # "timeout":J
    :cond_0
    :goto_1
    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    return-object v10

    .line 148
    .restart local v1    # "defaultServer":Ljava/lang/String;
    .restart local v2    # "defaultTimeout":J
    .restart local v4    # "res":Landroid/content/res/Resources;
    .restart local v5    # "resolver":Landroid/content/ContentResolver;
    .restart local v6    # "secureServer":Ljava/lang/String;
    .restart local v8    # "timeout":J
    :cond_1
    move-object v7, v1

    .restart local v7    # "server":Ljava/lang/String;
    goto :goto_0

    .line 163
    .restart local v0    # "backupServer":Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    const/4 v10, 0x0

    sput v10, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    .line 164
    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    const-string/jumbo v10, ""

    sput-object v10, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "backupServer":Ljava/lang/String;
    .end local v1    # "defaultServer":Ljava/lang/String;
    .end local v2    # "defaultTimeout":J
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "secureServer":Ljava/lang/String;
    .end local v7    # "server":Ljava/lang/String;
    .end local v8    # "timeout":J
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10
.end method

.method private getTimeFromAndroidServer()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 208
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 209
    .local v0, "client":Landroid/net/SntpClient;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->oemNTPserver:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 210
    const-string/jumbo v2, "NtpTrustedTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getTimeFromAndroidServer() SntpClient requestTime() start, server = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/NtpTrustedTime;->oemNTPserver:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->oemNTPserver:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    const-string/jumbo v2, "NtpTrustedTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getTimeFromAndroidServer() request time from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/NtpTrustedTime;->oemNTPserver:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " successfully!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iput-boolean v6, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 214
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 215
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 216
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 218
    const-string/jumbo v2, "NtpTrustedTime"

    const-string/jumbo v3, "getTimeFromAndroidServer() return true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return v6

    .line 221
    :cond_0
    const-string/jumbo v2, "NtpTrustedTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getTimeFromAndroidServer() request time from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/NtpTrustedTime;->oemNTPserver:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 224
    :cond_1
    const-string/jumbo v2, "NtpTrustedTime"

    const-string/jumbo v3, "getTimeFromAndroidServer() return false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v2, 0x0

    return v2
.end method

.method private getTimeFromOppoServer()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 175
    new-instance v0, Landroid/net/OemHttpClient;

    invoke-direct {v0}, Landroid/net/OemHttpClient;-><init>()V

    .line 177
    .local v0, "oemHttpClient":Landroid/net/OemHttpClient;
    const-string/jumbo v1, "NtpTrustedTime"

    const-string/jumbo v2, "getTimeFromOppoServer() oemHttpClient requestTime() from http server 1 start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-object v1, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v5, v2}, Landroid/net/OemHttpClient;->requestTime(Landroid/content/Context;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const-string/jumbo v1, "NtpTrustedTime"

    const-string/jumbo v2, "getTimeFromOppoServer() Use oem http server 1 algin time success!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iput-boolean v4, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 182
    invoke-virtual {v0}, Landroid/net/OemHttpClient;->getHttpTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 183
    invoke-virtual {v0}, Landroid/net/OemHttpClient;->getHttpTimeReference()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 184
    invoke-virtual {v0}, Landroid/net/OemHttpClient;->getRoundTripTime()J

    move-result-wide v2

    div-long/2addr v2, v6

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 186
    const-string/jumbo v1, "NtpTrustedTime"

    const-string/jumbo v2, "getTimeFromOppoServer() return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return v4

    .line 190
    :cond_0
    const-string/jumbo v1, "NtpTrustedTime"

    const-string/jumbo v2, "getTimeFromOppoServer() oemHttpClient requestTime() from http server 2 start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v1, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/net/OemHttpClient;->requestTime(Landroid/content/Context;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    const-string/jumbo v1, "NtpTrustedTime"

    const-string/jumbo v2, "getTimeFromOppoServer() Use oem http server 2 algin time success!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iput-boolean v4, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 195
    invoke-virtual {v0}, Landroid/net/OemHttpClient;->getHttpTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 196
    invoke-virtual {v0}, Landroid/net/OemHttpClient;->getHttpTimeReference()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 197
    invoke-virtual {v0}, Landroid/net/OemHttpClient;->getRoundTripTime()J

    move-result-wide v2

    div-long/2addr v2, v6

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 199
    const-string/jumbo v1, "NtpTrustedTime"

    const-string/jumbo v2, "getTimeFromOppoServer() return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return v4

    .line 203
    :cond_1
    const-string/jumbo v1, "NtpTrustedTime"

    const-string/jumbo v2, "getTimeFromOppoServer() Use oem http server 1 & 2 algin time failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return v5
.end method

.method private isBackupSupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 410
    sget v1, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    if-lez v1, :cond_0

    .line 411
    sget-object v1, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 412
    sget-object v1, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 410
    :cond_0
    return v0
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 4

    .prologue
    .line 379
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Missing authoritative time source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_0
    const-string/jumbo v0, "NtpTrustedTime"

    const-string/jumbo v1, "currentTimeMillis() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public forceRefresh()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 292
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    const-string/jumbo v2, "NtpTrustedTime"

    const-string/jumbo v3, "missing server, so no trusted time available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return v4

    .line 302
    :cond_0
    monitor-enter p0

    .line 303
    :try_start_0
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_1

    .line 304
    sget-object v2, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 308
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_3

    const/4 v1, 0x0

    .line 309
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 310
    :cond_2
    const-string/jumbo v2, "NtpTrustedTime"

    const-string/jumbo v3, "forceRefresh: no connectivity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return v4

    .line 302
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 308
    :cond_3
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .local v1, "ni":Landroid/net/NetworkInfo;
    goto :goto_0

    .line 316
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    :cond_4
    const-string/jumbo v2, "NtpTrustedTime"

    const-string/jumbo v3, "forceRefresh() send MSG_FORCE_REFRESH"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mNtpTrustedTimeHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 318
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mNtpTrustedTimeHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 321
    const-string/jumbo v2, "NtpTrustedTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "forceRefresh() hasCache() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->hasCache()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->hasCache()Z

    move-result v2

    if-nez v2, :cond_5

    .line 324
    const-string/jumbo v2, "NtpTrustedTime"

    const-string/jumbo v3, "forceRefresh() before 1sec delay"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 328
    :cond_5
    const-string/jumbo v2, "NtpTrustedTime"

    const-string/jumbo v3, "forceRefresh() return true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return v5
.end method

.method public getCacheAge()J
    .locals 4

    .prologue
    .line 361
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 362
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 364
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getCacheCertainty()J
    .locals 2

    .prologue
    .line 370
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 371
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    return-wide v0

    .line 373
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getCachedNtpTime()J
    .locals 2

    .prologue
    .line 390
    const-string/jumbo v0, "NtpTrustedTime"

    const-string/jumbo v1, "getCachedNtpTime() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .locals 2

    .prologue
    .line 395
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    return-wide v0
.end method

.method public hasCache()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    return v0
.end method

.method public setBackupmode(Z)V
    .locals 3
    .param p1, "mode"    # Z

    .prologue
    .line 399
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->isBackupSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iput-boolean p1, p0, Landroid/util/NtpTrustedTime;->mBackupmode:Z

    .line 402
    :cond_0
    const-string/jumbo v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBackupmode() set the backup mode to be:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/util/NtpTrustedTime;->mBackupmode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-void
.end method
