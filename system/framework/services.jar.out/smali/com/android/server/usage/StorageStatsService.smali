.class public Lcom/android/server/usage/StorageStatsService;
.super Landroid/app/usage/IStorageStatsManager$Stub;
.source "StorageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/StorageStatsService$H;,
        Lcom/android/server/usage/StorageStatsService$Lifecycle;
    }
.end annotation


# static fields
.field private static final DEFAULT_QUOTA:J = 0x4000000L

.field private static final DELAY_IN_MILLIS:J = 0x7530L

.field private static final PROP_DISABLE_QUOTA:Ljava/lang/String; = "fw.disable_quota"

.field private static final PROP_VERIFY_STORAGE:Ljava/lang/String; = "fw.verify_storage"

.field private static final TAG:Ljava/lang/String; = "StorageStatsService"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mCacheQuotas:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseLongArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/usage/StorageStatsService$H;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mPackage:Landroid/content/pm/PackageManager;

.field private final mStorage:Landroid/os/storage/StorageManager;

.field private final mUser:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/usage/StorageStatsService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/usage/StorageStatsService;

    .prologue
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/usage/StorageStatsService;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/usage/StorageStatsService;

    .prologue
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/usage/StorageStatsService;)Lcom/android/server/pm/Installer;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/usage/StorageStatsService;

    .prologue
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/usage/StorageStatsService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/usage/StorageStatsService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService;->invalidateMounts()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/app/usage/IStorageStatsManager$Stub;-><init>()V

    .line 103
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 104
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 105
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mUser:Landroid/os/UserManager;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    .line 107
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    .line 108
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    .line 110
    new-instance v0, Lcom/android/server/pm/Installer;

    invoke-direct {v0, p1}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 111
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->onStart()V

    .line 112
    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService;->invalidateMounts()V

    .line 114
    new-instance v0, Lcom/android/server/usage/StorageStatsService$H;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/StorageStatsService$H;-><init>(Lcom/android/server/usage/StorageStatsService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mHandler:Lcom/android/server/usage/StorageStatsService$H;

    .line 115
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mHandler:Lcom/android/server/usage/StorageStatsService$H;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/usage/StorageStatsService$H;->sendEmptyMessage(I)Z

    .line 117
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    new-instance v1, Lcom/android/server/usage/StorageStatsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/usage/StorageStatsService$1;-><init>(Lcom/android/server/usage/StorageStatsService;)V

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 129
    return-void
.end method

.method private static checkEquals(Ljava/lang/String;JJ)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "expected"    # J
    .param p3, "actual"    # J

    .prologue
    .line 435
    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 436
    const-string/jumbo v0, "StorageStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    return-void
.end method

.method private static checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "a"    # Landroid/content/pm/PackageStats;
    .param p2, "b"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " codeSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v4, p2, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " dataSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v4, p2, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " cacheSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v4, p2, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " externalCodeSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v4, p2, Landroid/content/pm/PackageStats;->externalCodeSize:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " externalDataSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v4, p2, Landroid/content/pm/PackageStats;->externalDataSize:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " externalCacheSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-wide v4, p2, Landroid/content/pm/PackageStats;->externalCacheSize:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 432
    return-void
.end method

.method private static checkEquals(Ljava/lang/String;[J[J)V
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "a"    # [J
    .param p2, "b"    # [J

    .prologue
    .line 420
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_0
    return-void
.end method

.method private enforcePermission(ILjava/lang/String;)V
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x2b

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    .line 142
    .local v0, "mode":I
    packed-switch v0, :pswitch_data_0

    .line 150
    :pswitch_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 151
    const-string/jumbo v3, " blocked by mode "

    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :pswitch_1
    return-void

    .line 146
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 147
    const-string/jumbo v2, "android.permission.PACKAGE_USAGE_STATS"

    const-string/jumbo v3, "StorageStatsService"

    .line 146
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getAppIds(I)[I
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 400
    const/4 v3, 0x0

    .line 401
    .local v3, "appIds":[I
    iget-object v4, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    .line 402
    const/16 v5, 0x2000

    .line 401
    invoke-virtual {v4, v5, p1}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v3    # "appIds":[I
    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 403
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 404
    .local v2, "appId":I
    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 405
    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    .local v3, "appIds":[I
    goto :goto_0

    .line 408
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "appId":I
    .end local v3    # "appIds":[I
    :cond_1
    return-object v3
.end method

.method private static getDefaultFlags()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 412
    const-string/jumbo v0, "fw.disable_quota"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    return v1

    .line 415
    :cond_0
    const/16 v0, 0x1000

    return v0
.end method

.method private invalidateMounts()V
    .locals 3

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1}, Lcom/android/server/pm/Installer;->invalidateMounts()V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string/jumbo v1, "StorageStatsService"

    const-string/jumbo v2, "Failed to invalidate mounts"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static isCacheQuotaCalculationsEnabled(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 537
    const-string/jumbo v2, "enable_cache_quota_calculation"

    .line 536
    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;
    .locals 6
    .param p0, "stats"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 441
    new-instance v0, Landroid/app/usage/StorageStats;

    invoke-direct {v0}, Landroid/app/usage/StorageStats;-><init>()V

    .line 442
    .local v0, "res":Landroid/app/usage/StorageStats;
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v4, p0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/app/usage/StorageStats;->codeBytes:J

    .line 443
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v4, p0, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/app/usage/StorageStats;->dataBytes:J

    .line 444
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v4, p0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/app/usage/StorageStats;->cacheBytes:J

    .line 445
    return-object v0
.end method


# virtual methods
.method public getCacheBytes(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p0, v5, p2}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    .line 216
    const-wide/16 v0, 0x0

    .line 217
    .local v0, "cacheBytes":J
    iget-object v5, p0, Lcom/android/server/usage/StorageStatsService;->mUser:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 218
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/server/usage/StorageStatsService;->queryStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object v2

    .line 219
    .local v2, "stats":Landroid/app/usage/StorageStats;
    iget-wide v6, v2, Landroid/app/usage/StorageStats;->cacheBytes:J

    add-long/2addr v0, v6

    goto :goto_0

    .line 221
    .end local v2    # "stats":Landroid/app/usage/StorageStats;
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    return-wide v0
.end method

.method public getCacheQuotaBytes(Ljava/lang/String;ILjava/lang/String;)J
    .locals 4
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    const-wide/32 v2, 0x4000000

    .line 226
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1, p3}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseLongArray;

    .line 230
    .local v0, "uidMap":Landroid/util/SparseLongArray;
    invoke-virtual {v0, p2, v2, v3}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v2

    return-wide v2

    .line 233
    .end local v0    # "uidMap":Landroid/util/SparseLongArray;
    :cond_0
    return-wide v2
.end method

.method public getFreeBytes(Ljava/lang/String;Ljava/lang/String;)J
    .locals 14
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 190
    .local v8, "token":J
    :try_start_0
    iget-object v10, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v10, p1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 198
    .local v7, "path":Ljava/io/File;
    :try_start_1
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/usage/StorageStatsService;->isQuotaSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 199
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/usage/StorageStatsService;->getCacheBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 200
    .local v4, "cacheTotal":J
    iget-object v10, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v7, v11}, Landroid/os/storage/StorageManager;->getStorageCacheBytes(Ljava/io/File;I)J

    move-result-wide v2

    .line 201
    .local v2, "cacheReserved":J
    const-wide/16 v10, 0x0

    sub-long v12, v4, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 203
    .local v0, "cacheClearable":J
    invoke-virtual {v7}, Ljava/io/File;->getUsableSpace()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    add-long/2addr v10, v0

    .line 208
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 203
    return-wide v10

    .line 191
    .end local v0    # "cacheClearable":J
    .end local v2    # "cacheReserved":J
    .end local v4    # "cacheTotal":J
    .end local v7    # "path":Ljava/io/File;
    :catch_0
    move-exception v6

    .line 192
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    new-instance v10, Landroid/os/ParcelableException;

    invoke-direct {v10, v6}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v10

    .line 208
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    throw v10

    .line 205
    .restart local v7    # "path":Ljava/io/File;
    :cond_0
    :try_start_3
    invoke-virtual {v7}, Ljava/io/File;->getUsableSpace()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v10

    .line 208
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    return-wide v10
.end method

.method public getTotalBytes(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 170
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    if-ne p1, v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getPrimaryStorageSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v2

    return-wide v2

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 174
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    if-nez v0, :cond_1

    .line 175
    new-instance v1, Landroid/os/ParcelableException;

    .line 176
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to find storage device for UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 178
    :cond_1
    iget-object v1, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    iget-wide v2, v1, Landroid/os/storage/DiskInfo;->size:J

    invoke-static {v2, v3}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v2

    return-wide v2
.end method

.method public isQuotaSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Installer;->isQuotaSupported(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method notifySignificantDelta()V
    .locals 4

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 546
    const-string/jumbo v1, "content://com.android.externalstorage.documents/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 545
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 547
    return-void
.end method

.method public queryExternalStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/ExternalStorageStats;
    .locals 9
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 367
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    if-eq p2, v5, :cond_0

    .line 368
    iget-object v5, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 369
    const-string/jumbo v6, "android.permission.INTERACT_ACROSS_USERS"

    const-string/jumbo v7, "StorageStatsService"

    .line 368
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p0, v5, p3}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    .line 375
    invoke-direct {p0, p2}, Lcom/android/server/usage/StorageStatsService;->getAppIds(I)[I

    move-result-object v0

    .line 378
    .local v0, "appIds":[I
    :try_start_0
    iget-object v5, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->getDefaultFlags()I

    move-result v6

    invoke-virtual {v5, p1, p2, v6, v0}, Lcom/android/server/pm/Installer;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v4

    .line 380
    .local v4, "stats":[J
    const-string/jumbo v5, "fw.verify_storage"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 381
    iget-object v5, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, p2, v6, v0}, Lcom/android/server/pm/Installer;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v2

    .line 383
    .local v2, "manualStats":[J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "External "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;[J[J)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .end local v2    # "manualStats":[J
    :cond_1
    new-instance v3, Landroid/app/usage/ExternalStorageStats;

    invoke-direct {v3}, Landroid/app/usage/ExternalStorageStats;-><init>()V

    .line 390
    .local v3, "res":Landroid/app/usage/ExternalStorageStats;
    aget-wide v6, v4, v8

    iput-wide v6, v3, Landroid/app/usage/ExternalStorageStats;->totalBytes:J

    .line 391
    const/4 v5, 0x1

    aget-wide v6, v4, v5

    iput-wide v6, v3, Landroid/app/usage/ExternalStorageStats;->audioBytes:J

    .line 392
    const/4 v5, 0x2

    aget-wide v6, v4, v5

    iput-wide v6, v3, Landroid/app/usage/ExternalStorageStats;->videoBytes:J

    .line 393
    const/4 v5, 0x3

    aget-wide v6, v4, v5

    iput-wide v6, v3, Landroid/app/usage/ExternalStorageStats;->imageBytes:J

    .line 394
    const/4 v5, 0x4

    aget-wide v6, v4, v5

    iput-wide v6, v3, Landroid/app/usage/ExternalStorageStats;->appBytes:J

    .line 395
    const/4 v5, 0x5

    aget-wide v6, v4, v5

    iput-wide v6, v3, Landroid/app/usage/ExternalStorageStats;->obbBytes:J

    .line 396
    return-object v3

    .line 385
    .end local v3    # "res":Landroid/app/usage/ExternalStorageStats;
    .end local v4    # "stats":[J
    :catch_0
    move-exception v1

    .line 386
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v5, Landroid/os/ParcelableException;

    new-instance v6, Ljava/io/IOException;

    invoke-virtual {v1}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public queryStatsForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .locals 13
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    move/from16 v0, p3

    if-eq v0, v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 241
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    const-string/jumbo v4, "StorageStatsService"

    .line 240
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    .line 247
    const/16 v2, 0x2000

    .line 246
    move/from16 v0, p3

    invoke-virtual {v1, p2, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 252
    .local v10, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v2, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v2, :cond_1

    .line 258
    :goto_0
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    iget v2, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 260
    iget v1, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/usage/StorageStatsService;->queryStatsForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object v1

    return-object v1

    .line 248
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v11

    .line 249
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, v11}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 255
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move-object/from16 v0, p4

    invoke-direct {p0, v1, v0}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_2
    iget v1, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 264
    .local v6, "appId":I
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v3, v1

    .line 265
    .local v3, "packageNames":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v7, v1, [J

    .line 266
    .local v7, "ceDataInodes":[J
    const/4 v1, 0x0

    new-array v8, v1, [Ljava/lang/String;

    .line 268
    .local v8, "codePaths":[Ljava/lang/String;
    invoke-virtual {v10}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v10}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 275
    :goto_1
    new-instance v9, Landroid/content/pm/PackageStats;

    const-string/jumbo v1, "StorageStatsService"

    invoke-direct {v9, v1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 277
    .local v9, "stats":Landroid/content/pm/PackageStats;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v5, 0x0

    move-object v2, p1

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 282
    invoke-static {v9}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object v1

    return-object v1

    .line 271
    .end local v9    # "stats":Landroid/content/pm/PackageStats;
    :cond_3
    const-class v1, Ljava/lang/String;

    .line 272
    invoke-virtual {v10}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-static {v1, v8, v2}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "codePaths":[Ljava/lang/String;
    check-cast v8, [Ljava/lang/String;

    .restart local v8    # "codePaths":[Ljava/lang/String;
    goto :goto_1

    .line 279
    .restart local v9    # "stats":Landroid/content/pm/PackageStats;
    :catch_1
    move-exception v12

    .line 280
    .local v12, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v12}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryStatsForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .locals 24
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 289
    .local v5, "userId":I
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    .line 291
    .local v7, "appId":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-eq v5, v2, :cond_0

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 293
    const-string/jumbo v3, "android.permission.INTERACT_ACROSS_USERS"

    const-string/jumbo v6, "StorageStatsService"

    .line 292
    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_1

    .line 302
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 303
    .local v4, "packageNames":[Ljava/lang/String;
    array-length v2, v4

    new-array v8, v2, [J

    .line 304
    .local v8, "ceDataInodes":[J
    const/4 v2, 0x0

    new-array v9, v2, [Ljava/lang/String;

    .line 306
    .local v9, "codePaths":[Ljava/lang/String;
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_1
    array-length v2, v4

    move/from16 v0, v23

    if-ge v0, v2, :cond_3

    .line 308
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    aget-object v3, v4, v23

    .line 309
    const/16 v6, 0x2000

    .line 308
    invoke-virtual {v2, v3, v6, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v20

    .line 310
    .local v20, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 306
    :goto_2
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 299
    .end local v4    # "packageNames":[Ljava/lang/String;
    .end local v8    # "ceDataInodes":[J
    .end local v9    # "codePaths":[Ljava/lang/String;
    .end local v20    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v23    # "i":I
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    goto :goto_0

    .line 313
    .restart local v4    # "packageNames":[Ljava/lang/String;
    .restart local v8    # "ceDataInodes":[J
    .restart local v9    # "codePaths":[Ljava/lang/String;
    .restart local v20    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v23    # "i":I
    :cond_2
    :try_start_1
    const-class v2, Ljava/lang/String;

    .line 314
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v3

    .line 313
    invoke-static {v2, v9, v3}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "codePaths":[Ljava/lang/String;
    check-cast v9, [Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v9    # "codePaths":[Ljava/lang/String;
    goto :goto_2

    .line 316
    .end local v9    # "codePaths":[Ljava/lang/String;
    .end local v20    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v21

    .line 317
    .local v21, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Landroid/os/ParcelableException;

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 321
    .end local v21    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9    # "codePaths":[Ljava/lang/String;
    :cond_3
    new-instance v10, Landroid/content/pm/PackageStats;

    const-string/jumbo v2, "StorageStatsService"

    invoke-direct {v10, v2}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 323
    .local v10, "stats":Landroid/content/pm/PackageStats;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->getDefaultFlags()I

    move-result v6

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V

    .line 326
    const-string/jumbo v2, "fw.verify_storage"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 327
    new-instance v19, Landroid/content/pm/PackageStats;

    const-string/jumbo v2, "StorageStatsService"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 328
    .local v19, "manualStats":Landroid/content/pm/PackageStats;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v15, 0x0

    move-object/from16 v12, p1

    move-object v13, v4

    move v14, v5

    move/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    invoke-virtual/range {v11 .. v19}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-static {v2, v0, v10}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 335
    .end local v19    # "manualStats":Landroid/content/pm/PackageStats;
    :cond_4
    invoke-static {v10}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object v2

    return-object v2

    .line 332
    :catch_1
    move-exception v22

    .line 333
    .local v22, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v2, Landroid/os/ParcelableException;

    new-instance v3, Ljava/io/IOException;

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public queryStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .locals 14
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 340
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    move/from16 v0, p2

    if-eq v0, v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 342
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    const-string/jumbo v3, "StorageStatsService"

    .line 341
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move-object/from16 v0, p3

    invoke-direct {p0, v1, v0}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    .line 348
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/usage/StorageStatsService;->getAppIds(I)[I

    move-result-object v5

    .line 349
    .local v5, "appIds":[I
    new-instance v6, Landroid/content/pm/PackageStats;

    const-string/jumbo v1, "StorageStatsService"

    invoke-direct {v6, v1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 351
    .local v6, "stats":Landroid/content/pm/PackageStats;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->getDefaultFlags()I

    move-result v4

    move-object v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Installer;->getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V

    .line 353
    const-string/jumbo v1, "fw.verify_storage"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 354
    new-instance v12, Landroid/content/pm/PackageStats;

    const-string/jumbo v1, "StorageStatsService"

    invoke-direct {v12, v1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 355
    .local v12, "manualStats":Landroid/content/pm/PackageStats;
    iget-object v7, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v10, 0x0

    move-object v8, p1

    move/from16 v9, p2

    move-object v11, v5

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/pm/Installer;->getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12, v6}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    .end local v12    # "manualStats":Landroid/content/pm/PackageStats;
    :cond_1
    invoke-static {v6}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object v1

    return-object v1

    .line 358
    :catch_0
    move-exception v13

    .line 359
    .local v13, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v13}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
