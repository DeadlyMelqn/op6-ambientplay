.class public Landroid/telephony/MbmsDownloadSession;
.super Ljava/lang/Object;
.source "MbmsDownloadSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/MbmsDownloadSession$1;
    }
.end annotation


# static fields
.field public static final DEFAULT_TOP_LEVEL_TEMP_DIRECTORY:Ljava/lang/String; = "androidMbmsTempFileRoot"

.field public static final EXTRA_MBMS_COMPLETED_FILE_URI:Ljava/lang/String; = "android.telephony.extra.MBMS_COMPLETED_FILE_URI"

.field public static final EXTRA_MBMS_DOWNLOAD_REQUEST:Ljava/lang/String; = "android.telephony.extra.MBMS_DOWNLOAD_REQUEST"

.field public static final EXTRA_MBMS_DOWNLOAD_RESULT:Ljava/lang/String; = "android.telephony.extra.MBMS_DOWNLOAD_RESULT"

.field public static final EXTRA_MBMS_FILE_INFO:Ljava/lang/String; = "android.telephony.extra.MBMS_FILE_INFO"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MBMS_DOWNLOAD_SERVICE_ACTION:Ljava/lang/String; = "android.telephony.action.EmbmsDownload"

.field public static final RESULT_CANCELLED:I = 0x2

.field public static final RESULT_EXPIRED:I = 0x3

.field public static final RESULT_IO_ERROR:I = 0x4

.field public static final RESULT_SUCCESSFUL:I = 0x1

.field public static final STATUS_ACTIVELY_DOWNLOADING:I = 0x1

.field public static final STATUS_PENDING_DOWNLOAD:I = 0x2

.field public static final STATUS_PENDING_DOWNLOAD_WINDOW:I = 0x4

.field public static final STATUS_PENDING_REPAIR:I = 0x3

.field public static final STATUS_UNKNOWN:I

.field private static sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

.field private final mInternalDownloadCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/telephony/mbms/DownloadStateCallback;",
            "Landroid/telephony/mbms/InternalDownloadStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/telephony/mbms/vendor/IMbmsDownloadService;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionId:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/telephony/MbmsDownloadSession;)Landroid/os/IBinder$DeathRecipient;
    .locals 1
    .param p0, "-this"    # Landroid/telephony/MbmsDownloadSession;

    .prologue
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic -get2(Landroid/telephony/MbmsDownloadSession;)Landroid/telephony/mbms/InternalDownloadSessionCallback;
    .locals 1
    .param p0, "-this"    # Landroid/telephony/MbmsDownloadSession;

    .prologue
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    return-object v0
.end method

.method static synthetic -get3(Landroid/telephony/MbmsDownloadSession;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "-this"    # Landroid/telephony/MbmsDownloadSession;

    .prologue
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic -get4(Landroid/telephony/MbmsDownloadSession;)I
    .locals 1
    .param p0, "-this"    # Landroid/telephony/MbmsDownloadSession;

    .prologue
    iget v0, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    return v0
.end method

.method static synthetic -get5()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Landroid/telephony/MbmsDownloadSession;
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const-class v0, Landroid/telephony/MbmsDownloadSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    .line 184
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/telephony/mbms/MbmsDownloadSessionCallback;ILandroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/telephony/mbms/MbmsDownloadSessionCallback;
    .param p3, "subscriptionId"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    .line 188
    new-instance v0, Landroid/telephony/MbmsDownloadSession$1;

    invoke-direct {v0, p0}, Landroid/telephony/MbmsDownloadSession$1;-><init>(Landroid/telephony/MbmsDownloadSession;)V

    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 195
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadCallbacks:Ljava/util/Map;

    .line 202
    iput-object p1, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    .line 203
    iput p3, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    .line 204
    if-nez p4, :cond_0

    .line 205
    new-instance p4, Landroid/os/Handler;

    .end local p4    # "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 207
    .restart local p4    # "handler":Landroid/os/Handler;
    :cond_0
    new-instance v0, Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-direct {v0, p2, p4}, Landroid/telephony/mbms/InternalDownloadSessionCallback;-><init>(Landroid/telephony/mbms/MbmsDownloadSessionCallback;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    .line 208
    return-void
.end method

.method private bindAndInitialize()I
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.telephony.action.EmbmsDownload"

    .line 273
    new-instance v2, Landroid/telephony/MbmsDownloadSession$3;

    invoke-direct {v2, p0}, Landroid/telephony/MbmsDownloadSession$3;-><init>(Landroid/telephony/MbmsDownloadSession;)V

    .line 272
    invoke-static {v0, v1, v2}, Landroid/telephony/mbms/MbmsUtils;->startBinding(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)I

    move-result v0

    return v0
.end method

.method public static create(Landroid/content/Context;Landroid/telephony/mbms/MbmsDownloadSessionCallback;ILandroid/os/Handler;)Landroid/telephony/MbmsDownloadSession;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Landroid/telephony/mbms/MbmsDownloadSessionCallback;
    .param p2, "subscriptionId"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x0

    .line 252
    sget-object v2, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Cannot have two active instances"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 256
    :cond_0
    new-instance v1, Landroid/telephony/MbmsDownloadSession;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/telephony/MbmsDownloadSession;-><init>(Landroid/content/Context;Landroid/telephony/mbms/MbmsDownloadSessionCallback;ILandroid/os/Handler;)V

    .line 257
    .local v1, "session":Landroid/telephony/MbmsDownloadSession;
    invoke-direct {v1}, Landroid/telephony/MbmsDownloadSession;->bindAndInitialize()I

    move-result v0

    .line 258
    .local v0, "result":I
    if-eqz v0, :cond_1

    .line 259
    sget-object v2, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 260
    new-instance v2, Landroid/telephony/MbmsDownloadSession$2;

    invoke-direct {v2, p1, v0}, Landroid/telephony/MbmsDownloadSession$2;-><init>(Landroid/telephony/mbms/MbmsDownloadSessionCallback;I)V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    const/4 v2, 0x0

    return-object v2

    .line 268
    :cond_1
    return-object v1
.end method

.method public static create(Landroid/content/Context;Landroid/telephony/mbms/MbmsDownloadSessionCallback;Landroid/os/Handler;)Landroid/telephony/MbmsDownloadSession;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Landroid/telephony/mbms/MbmsDownloadSessionCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 216
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Landroid/telephony/MbmsDownloadSession;->create(Landroid/content/Context;Landroid/telephony/mbms/MbmsDownloadSessionCallback;ILandroid/os/Handler;)Landroid/telephony/MbmsDownloadSession;

    move-result-object v0

    return-object v0
.end method

.method private deleteDownloadRequestToken(Landroid/telephony/mbms/DownloadRequest;)V
    .locals 4
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;

    .prologue
    .line 749
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->getDownloadRequestTokenPath(Landroid/telephony/mbms/DownloadRequest;)Ljava/io/File;

    move-result-object v0

    .line 750
    .local v0, "token":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    .line 751
    sget-object v1, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempting to delete non-existent download token at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    return-void

    .line 754
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 755
    sget-object v1, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t delete download token at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_1
    return-void
.end method

.method private getDownloadRequestTokenPath(Landroid/telephony/mbms/DownloadRequest;)Ljava/io/File;
    .locals 4
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;

    .prologue
    .line 760
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    .line 761
    invoke-virtual {p1}, Landroid/telephony/mbms/DownloadRequest;->getFileServiceId()Ljava/lang/String;

    move-result-object v3

    .line 760
    invoke-static {v2, v3}, Landroid/telephony/mbms/MbmsUtils;->getEmbmsTempFileDirForService(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 762
    .local v1, "tempFileLocation":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/mbms/DownloadRequest;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 763
    const-string/jumbo v3, ".download_token"

    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "downloadTokenFileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private sendErrorToApp(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 769
    :try_start_0
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :goto_0
    return-void

    .line 770
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private validateTempFileRootSanity(Ljava/io/File;)V
    .locals 3
    .param p1, "tempFileRootDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 413
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Provided directory does not exist"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 415
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 416
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Provided File is not a directory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 418
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "canonicalTempFilePath":Ljava/lang/String;
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 420
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Temp file root cannot be your data dir"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 422
    :cond_2
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 423
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Temp file root cannot be your cache dir"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 425
    :cond_3
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 426
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Temp file root cannot be your files dir"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 428
    :cond_4
    return-void
.end method

.method private writeDownloadRequestToken(Landroid/telephony/mbms/DownloadRequest;)V
    .locals 5
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;

    .prologue
    .line 729
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->getDownloadRequestTokenPath(Landroid/telephony/mbms/DownloadRequest;)Ljava/io/File;

    move-result-object v1

    .line 730
    .local v1, "token":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 731
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 733
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 734
    sget-object v2, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Download token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " already exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    return-void

    .line 738
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_2

    .line 739
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to create download token for request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to create download token for request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 744
    const-string/jumbo v4, " due to IOException "

    .line 743
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 746
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    return-void
.end method


# virtual methods
.method public cancelDownload(Landroid/telephony/mbms/DownloadRequest;)V
    .locals 6
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;

    .prologue
    const/4 v5, 0x0

    .line 606
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 607
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-nez v0, :cond_0

    .line 608
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Middleware not yet bound"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 612
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->cancelDownload(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v2

    .line 613
    .local v2, "result":I
    if-eqz v2, :cond_2

    .line 614
    const/16 v3, 0x192

    if-ne v2, v3, :cond_1

    .line 615
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Unknown download request."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    .end local v2    # "result":I
    :catch_0
    move-exception v1

    .line 621
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 622
    const/4 v3, 0x3

    invoke-direct {p0, v3, v5}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 623
    return-void

    .line 617
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "result":I
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0, v2, v3}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 618
    return-void

    .line 625
    :cond_2
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->deleteDownloadRequestToken(Landroid/telephony/mbms/DownloadRequest;)V

    .line 626
    return-void
.end method

.method public close()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 712
    :try_start_0
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 713
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-nez v0, :cond_0

    .line 714
    sget-object v2, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Service already dead"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 723
    sget-object v2, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 724
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-virtual {v2}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->stop()V

    .line 715
    return-void

    .line 717
    :cond_0
    :try_start_1
    iget v2, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    invoke-interface {v0, v2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->dispose(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 722
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 723
    sget-object v2, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 724
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-virtual {v2}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->stop()V

    .line 726
    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    :goto_0
    return-void

    .line 718
    :catch_0
    move-exception v1

    .line 720
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v2, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Remote exception while disposing of service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 722
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 723
    sget-object v2, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 724
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-virtual {v2}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->stop()V

    goto :goto_0

    .line 721
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    .line 722
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 723
    sget-object v3, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 724
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-virtual {v3}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->stop()V

    .line 721
    throw v2
.end method

.method public download(Landroid/telephony/mbms/DownloadRequest;)V
    .locals 8
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;

    .prologue
    const/4 v7, 0x0

    .line 465
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 466
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-nez v0, :cond_0

    .line 467
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Middleware not yet bound"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 471
    :cond_0
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    .line 472
    const-string/jumbo v5, "MbmsTempFileRootPrefs"

    const/4 v6, 0x0

    .line 471
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 473
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "mbms_temp_file_root"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 474
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    .line 475
    const-string/jumbo v5, "androidMbmsTempFileRoot"

    .line 474
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 476
    .local v3, "tempRootDirectory":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 477
    invoke-virtual {p0, v3}, Landroid/telephony/MbmsDownloadSession;->setTempFileRootDirectory(Ljava/io/File;)V

    .line 480
    .end local v3    # "tempRootDirectory":Ljava/io/File;
    :cond_1
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->writeDownloadRequestToken(Landroid/telephony/mbms/DownloadRequest;)V

    .line 482
    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->download(Landroid/telephony/mbms/DownloadRequest;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :goto_0
    return-void

    .line 483
    :catch_0
    move-exception v1

    .line 484
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 485
    const/4 v4, 0x3

    invoke-direct {p0, v4, v7}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getDownloadStatus(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)I
    .locals 4
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "fileInfo"    # Landroid/telephony/mbms/FileInfo;

    .prologue
    const/4 v3, 0x0

    .line 641
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 642
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-nez v0, :cond_0

    .line 643
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Middleware not yet bound"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 647
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->getDownloadStatus(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 648
    :catch_0
    move-exception v1

    .line 649
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 650
    const/4 v2, 0x3

    invoke-direct {p0, v2, v3}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 651
    const/4 v2, 0x0

    return v2
.end method

.method public getTempFileRootDirectory()Ljava/io/File;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 440
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    .line 441
    const-string/jumbo v3, "MbmsTempFileRootPrefs"

    const/4 v4, 0x0

    .line 440
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 442
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "mbms_temp_file_root"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 444
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 446
    :cond_0
    return-object v5
.end method

.method public listPendingDownloads()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/mbms/DownloadRequest;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 497
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 498
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-nez v0, :cond_0

    .line 499
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Middleware not yet bound"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 503
    :cond_0
    :try_start_0
    iget v2, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    invoke-interface {v0, v2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->listPendingDownloads(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 504
    :catch_0
    move-exception v1

    .line 505
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 506
    const/4 v2, 0x3

    invoke-direct {p0, v2, v3}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 507
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public registerStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStateCallback;Landroid/os/Handler;)V
    .locals 7
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "callback"    # Landroid/telephony/mbms/DownloadStateCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v6, 0x0

    .line 527
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 528
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-nez v0, :cond_0

    .line 529
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Middleware not yet bound"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 533
    :cond_0
    new-instance v2, Landroid/telephony/mbms/InternalDownloadStateCallback;

    invoke-direct {v2, p2, p3}, Landroid/telephony/mbms/InternalDownloadStateCallback;-><init>(Landroid/telephony/mbms/DownloadStateCallback;Landroid/os/Handler;)V

    .line 537
    .local v2, "internalCallback":Landroid/telephony/mbms/InternalDownloadStateCallback;
    :try_start_0
    invoke-virtual {p2}, Landroid/telephony/mbms/DownloadStateCallback;->getCallbackFilterFlags()I

    move-result v4

    .line 536
    invoke-interface {v0, p1, v2, v4}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->registerStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStateCallback;I)I

    move-result v3

    .line 538
    .local v3, "result":I
    if-eqz v3, :cond_2

    .line 539
    const/16 v4, 0x192

    if-ne v3, v4, :cond_1

    .line 540
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Unknown download request."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    .end local v3    # "result":I
    :catch_0
    move-exception v1

    .line 546
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 547
    const/4 v4, 0x3

    invoke-direct {p0, v4, v6}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 548
    return-void

    .line 542
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v3    # "result":I
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v3, v4}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 543
    return-void

    .line 550
    :cond_2
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadCallbacks:Ljava/util/Map;

    invoke-interface {v4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    return-void
.end method

.method public requestUpdateFileServices(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 337
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 338
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-nez v0, :cond_0

    .line 339
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Middleware not yet bound"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 342
    :cond_0
    :try_start_0
    iget v3, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    invoke-interface {v0, v3, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->requestUpdateFileServices(ILjava/util/List;)I

    move-result v2

    .line 343
    .local v2, "returnCode":I
    if-eqz v2, :cond_1

    .line 344
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .end local v2    # "returnCode":I
    :cond_1
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Remote process died"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 349
    const/4 v3, 0x3

    invoke-direct {p0, v3, v5}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public resetDownloadKnowledge(Landroid/telephony/mbms/DownloadRequest;)V
    .locals 6
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;

    .prologue
    const/4 v5, 0x0

    .line 676
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 677
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-nez v0, :cond_0

    .line 678
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Middleware not yet bound"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 682
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->resetDownloadKnowledge(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v2

    .line 683
    .local v2, "result":I
    if-eqz v2, :cond_1

    .line 684
    const/16 v3, 0x192

    if-ne v2, v3, :cond_2

    .line 685
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Unknown download request."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    .end local v2    # "result":I
    :catch_0
    move-exception v1

    .line 690
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 691
    const/4 v3, 0x3

    invoke-direct {p0, v3, v5}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 693
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void

    .line 687
    .restart local v2    # "result":I
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0, v2, v3}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setTempFileRootDirectory(Ljava/io/File;)V
    .locals 9
    .param p1, "tempFileRootDirectory"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 379
    iget-object v6, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 380
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-nez v0, :cond_0

    .line 381
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Middleware not yet bound"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 384
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->validateTempFileRootSanity(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 396
    .local v3, "filePath":Ljava/lang/String;
    :try_start_2
    iget v6, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    invoke-interface {v0, v6, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->setTempFileRootDirectory(ILjava/lang/String;)I

    move-result v5

    .line 397
    .local v5, "result":I
    if-eqz v5, :cond_1

    .line 398
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 406
    :cond_1
    iget-object v6, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    .line 407
    const-string/jumbo v7, "MbmsTempFileRootPrefs"

    .line 406
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 408
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v7, "mbms_temp_file_root"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 409
    return-void

    .line 385
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    .end local v5    # "result":I
    :catch_0
    move-exception v2

    .line 386
    .local v2, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Got IOException checking directory sanity"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 391
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 392
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to canonicalize the provided path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 400
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "filePath":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 401
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v6, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 402
    const/4 v6, 0x3

    invoke-direct {p0, v6, v7}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 403
    return-void
.end method

.method public unregisterStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStateCallback;)V
    .locals 6
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "callback"    # Landroid/telephony/mbms/DownloadStateCallback;

    .prologue
    .line 568
    :try_start_0
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 569
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-nez v0, :cond_1

    .line 570
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Middleware not yet bound"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    :catchall_0
    move-exception v4

    .line 590
    iget-object v5, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadCallbacks:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/InternalDownloadStateCallback;

    .line 591
    .local v2, "internalCallback":Landroid/telephony/mbms/InternalDownloadStateCallback;
    if-eqz v2, :cond_0

    .line 592
    invoke-virtual {v2}, Landroid/telephony/mbms/InternalDownloadStateCallback;->stop()V

    .line 588
    :cond_0
    throw v4

    .line 574
    .end local v2    # "internalCallback":Landroid/telephony/mbms/InternalDownloadStateCallback;
    .restart local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadCallbacks:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/InternalDownloadStateCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    .restart local v2    # "internalCallback":Landroid/telephony/mbms/InternalDownloadStateCallback;
    :try_start_2
    invoke-interface {v0, p1, v2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->unregisterStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStateCallback;)I

    move-result v3

    .line 578
    .local v3, "result":I
    if-eqz v3, :cond_2

    .line 579
    const/16 v4, 0x192

    if-ne v3, v4, :cond_4

    .line 580
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Unknown download request."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 584
    .end local v3    # "result":I
    :catch_0
    move-exception v1

    .line 585
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 586
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 590
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadCallbacks:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "internalCallback":Landroid/telephony/mbms/InternalDownloadStateCallback;
    check-cast v2, Landroid/telephony/mbms/InternalDownloadStateCallback;

    .line 591
    .restart local v2    # "internalCallback":Landroid/telephony/mbms/InternalDownloadStateCallback;
    if-eqz v2, :cond_3

    .line 592
    invoke-virtual {v2}, Landroid/telephony/mbms/InternalDownloadStateCallback;->stop()V

    .line 595
    :cond_3
    return-void

    .line 582
    .restart local v3    # "result":I
    :cond_4
    const/4 v4, 0x0

    :try_start_4
    invoke-direct {p0, v3, v4}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
