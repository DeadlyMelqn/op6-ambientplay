.class public Lcom/android/server/storage/CacheQuotaStrategy;
.super Ljava/lang/Object;
.source "CacheQuotaStrategy.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# static fields
.field private static final ATTR_PREVIOUS_BYTES:Ljava/lang/String; = "previousBytes"

.field private static final ATTR_QUOTA_IN_BYTES:Ljava/lang/String; = "bytes"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_UUID:Ljava/lang/String; = "uuid"

.field private static final CACHE_INFO_TAG:Ljava/lang/String; = "cache-info"

.field private static final TAG:Ljava/lang/String; = "CacheQuotaStrategy"

.field private static final TAG_QUOTA:Ljava/lang/String; = "quota"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mLock:Ljava/lang/Object;

.field private mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

.field private final mQuotaMap:Landroid/util/ArrayMap;
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

.field private mRemoteService:Landroid/app/usage/ICacheQuotaService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method static synthetic -get0(Lcom/android/server/storage/CacheQuotaStrategy;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/storage/CacheQuotaStrategy;

    .prologue
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/storage/CacheQuotaStrategy;)Landroid/app/usage/ICacheQuotaService;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/storage/CacheQuotaStrategy;

    .prologue
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mRemoteService:Landroid/app/usage/ICacheQuotaService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/storage/CacheQuotaStrategy;Landroid/app/usage/ICacheQuotaService;)Landroid/app/usage/ICacheQuotaService;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/storage/CacheQuotaStrategy;
    .param p1, "-value"    # Landroid/app/usage/ICacheQuotaService;

    .prologue
    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mRemoteService:Landroid/app/usage/ICacheQuotaService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/storage/CacheQuotaStrategy;)Ljava/util/List;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/storage/CacheQuotaStrategy;

    .prologue
    invoke-direct {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->getUnfulfilledRequests()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/usage/UsageStatsManagerInternal;Lcom/android/server/pm/Installer;Landroid/util/ArrayMap;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "usageStatsManager"    # Landroid/app/usage/UsageStatsManagerInternal;
    .param p3, "installer"    # Lcom/android/server/pm/Installer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/usage/UsageStatsManagerInternal;",
            "Lcom/android/server/pm/Installer;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseLongArray;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p4, "quotaMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseLongArray;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mLock:Ljava/lang/Object;

    .line 99
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    .line 100
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 101
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Installer;

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mInstaller:Lcom/android/server/pm/Installer;

    .line 102
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mQuotaMap:Landroid/util/ArrayMap;

    .line 103
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 104
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "system"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "cachequota.xml"

    .line 103
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

    .line 105
    return-void
.end method

.method private createServiceConnection()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 125
    return-void

    .line 128
    :cond_0
    new-instance v0, Lcom/android/server/storage/CacheQuotaStrategy$1;

    invoke-direct {v0, p0}, Lcom/android/server/storage/CacheQuotaStrategy$1;-><init>(Lcom/android/server/storage/CacheQuotaStrategy;)V

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 161
    return-void
.end method

.method private disconnectService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 256
    iput-object v2, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 258
    :cond_0
    return-void
.end method

.method static getRequestFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/usage/CacheQuotaHint;
    .locals 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v7, 0x0

    .line 396
    :try_start_0
    const-string/jumbo v5, "uuid"

    const/4 v6, 0x0

    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 397
    .local v4, "uuid":Ljava/lang/String;
    const-string/jumbo v5, "uid"

    const/4 v6, 0x0

    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 398
    .local v3, "uid":I
    const-string/jumbo v5, "bytes"

    const/4 v6, 0x0

    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 399
    .local v0, "bytes":J
    new-instance v5, Landroid/app/usage/CacheQuotaHint$Builder;

    invoke-direct {v5}, Landroid/app/usage/CacheQuotaHint$Builder;-><init>()V

    invoke-virtual {v5, v4}, Landroid/app/usage/CacheQuotaHint$Builder;->setVolumeUuid(Ljava/lang/String;)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/usage/CacheQuotaHint$Builder;->setUid(I)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Landroid/app/usage/CacheQuotaHint$Builder;->setQuota(J)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/usage/CacheQuotaHint$Builder;->build()Landroid/app/usage/CacheQuotaHint;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 401
    .end local v0    # "bytes":J
    .end local v3    # "uid":I
    .end local v4    # "uuid":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 402
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CacheQuotaStrategy"

    const-string/jumbo v6, "Invalid cache quota request, skipping."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-object v7
.end method

.method private getServiceComponentName()Landroid/content/ComponentName;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 262
    iget-object v4, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 264
    const-string/jumbo v4, "CacheQuotaStrategy"

    const-string/jumbo v5, "could not access the cache quota service: no package!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-object v6

    .line 268
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.app.usage.CacheQuotaService"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    iget-object v4, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 271
    const/16 v5, 0x84

    .line 270
    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 272
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_1

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v4, :cond_2

    .line 273
    :cond_1
    const-string/jumbo v4, "CacheQuotaStrategy"

    const-string/jumbo v5, "No valid components found."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-object v6

    .line 276
    :cond_2
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 277
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method private getUnfulfilledRequests()Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 169
    .local v8, "timeNow":J
    const-wide v4, 0x7528ad000L

    sub-long v6, v8, v4

    .line 171
    .local v6, "oneYearAgo":J
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v16, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/UserManager;

    .line 173
    .local v20, "um":Landroid/os/UserManager;
    invoke-virtual/range {v20 .. v20}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v22

    .line 174
    .local v22, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v21

    .line 175
    .local v21, "userCount":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 176
    .local v14, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v21

    if-ge v12, v0, :cond_2

    .line 177
    move-object/from16 v0, v22

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/UserInfo;

    .line 179
    .local v13, "info":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/storage/CacheQuotaStrategy;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget v4, v13, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x4

    .line 180
    const/4 v10, 0x0

    .line 179
    invoke-virtual/range {v3 .. v10}, Landroid/app/usage/UsageStatsManagerInternal;->queryUsageStatsForUser(IIJJZ)Ljava/util/List;

    move-result-object v19

    .line 181
    .local v19, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-nez v19, :cond_1

    .line 176
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 185
    :cond_1
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "stat$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/usage/UsageStats;

    .line 186
    .local v17, "stat":Landroid/app/usage/UsageStats;
    invoke-virtual/range {v17 .. v17}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 191
    .local v15, "packageName":Ljava/lang/String;
    :try_start_0
    iget v3, v13, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x0

    .line 190
    invoke-virtual {v14, v15, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 193
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v3, Landroid/app/usage/CacheQuotaHint$Builder;

    invoke-direct {v3}, Landroid/app/usage/CacheQuotaHint$Builder;-><init>()V

    .line 194
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 193
    invoke-virtual {v3, v4}, Landroid/app/usage/CacheQuotaHint$Builder;->setVolumeUuid(Ljava/lang/String;)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v3

    .line 195
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 193
    invoke-virtual {v3, v4}, Landroid/app/usage/CacheQuotaHint$Builder;->setUid(I)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/usage/CacheQuotaHint$Builder;->setUsageStats(Landroid/app/usage/UsageStats;)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v3

    .line 197
    const-wide/16 v4, -0x1

    .line 193
    invoke-virtual {v3, v4, v5}, Landroid/app/usage/CacheQuotaHint$Builder;->setQuota(J)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/usage/CacheQuotaHint$Builder;->build()Landroid/app/usage/CacheQuotaHint;

    move-result-object v3

    .line 192
    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 199
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v11

    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 205
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "info":Landroid/content/pm/UserInfo;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v17    # "stat":Landroid/app/usage/UsageStats;
    .end local v18    # "stat$iterator":Ljava/util/Iterator;
    .end local v19    # "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_2
    return-object v16
.end method

.method private insertIntoQuotaMap(Ljava/lang/String;IIJ)V
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "appId"    # I
    .param p4, "quota"    # J

    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mQuotaMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseLongArray;

    .line 246
    .local v0, "volumeMap":Landroid/util/SparseLongArray;
    if-nez v0, :cond_0

    .line 247
    new-instance v0, Landroid/util/SparseLongArray;

    .end local v0    # "volumeMap":Landroid/util/SparseLongArray;
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 248
    .restart local v0    # "volumeMap":Landroid/util/SparseLongArray;
    iget-object v1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mQuotaMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_0
    invoke-static {p2, p3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    invoke-virtual {v0, v1, p4, p5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 251
    return-void
.end method

.method private pushProcessedQuotas(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "processedRequests":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    .line 219
    .local v9, "requestSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_1

    .line 220
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/CacheQuotaHint;

    .line 221
    .local v8, "request":Landroid/app/usage/CacheQuotaHint;
    invoke-virtual {v8}, Landroid/app/usage/CacheQuotaHint;->getQuota()J

    move-result-wide v4

    .line 222
    .local v4, "proposedQuota":J
    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    .line 219
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 227
    :cond_0
    :try_start_0
    invoke-virtual {v8}, Landroid/app/usage/CacheQuotaHint;->getUid()I

    move-result v10

    .line 228
    .local v10, "uid":I
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v8}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 230
    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 228
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Installer;->setAppQuota(Ljava/lang/String;IIJ)V

    .line 231
    invoke-virtual {v8}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 233
    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    move-object v0, p0

    .line 231
    invoke-direct/range {v0 .. v5}, Lcom/android/server/storage/CacheQuotaStrategy;->insertIntoQuotaMap(Ljava/lang/String;IIJ)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 234
    .end local v10    # "uid":I
    :catch_0
    move-exception v6

    .line 235
    .local v6, "ex":Lcom/android/server/pm/Installer$InstallerException;
    const-string/jumbo v0, "CacheQuotaStrategy"

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to set cache quota for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/app/usage/CacheQuotaHint;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 241
    .end local v4    # "proposedQuota":J
    .end local v6    # "ex":Lcom/android/server/pm/Installer$InstallerException;
    .end local v8    # "request":Landroid/app/usage/CacheQuotaHint;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->disconnectService()V

    .line 242
    return-void
.end method

.method protected static readFromXml(Ljava/io/InputStream;)Landroid/util/Pair;
    .locals 13
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 347
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 348
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, p0, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 350
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 351
    .local v1, "eventType":I
    :goto_0
    if-eq v1, v12, :cond_0

    .line 352
    if-eq v1, v10, :cond_0

    .line 353
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 356
    :cond_0
    if-ne v1, v10, :cond_1

    .line 357
    const-string/jumbo v8, "CacheQuotaStrategy"

    const-string/jumbo v9, "No quotas found in quota file."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-object v11

    .line 361
    :cond_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 362
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v8, "cache-info"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 363
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "Invalid starting tag."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 366
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v3, "quotas":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    :try_start_0
    const-string/jumbo v8, "previousBytes"

    const/4 v9, 0x0

    .line 369
    invoke-interface {v2, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 376
    .local v4, "previousBytes":J
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 378
    :cond_3
    if-ne v1, v12, :cond_5

    .line 379
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 380
    const-string/jumbo v8, "quota"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 381
    invoke-static {v2}, Lcom/android/server/storage/CacheQuotaStrategy;->getRequestFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/usage/CacheQuotaHint;

    move-result-object v6

    .line 382
    .local v6, "request":Landroid/app/usage/CacheQuotaHint;
    if-nez v6, :cond_4

    .line 389
    .end local v6    # "request":Landroid/app/usage/CacheQuotaHint;
    :goto_1
    if-ne v1, v10, :cond_3

    .line 390
    new-instance v8, Landroid/util/Pair;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8

    .line 371
    .end local v4    # "previousBytes":J
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/IllegalStateException;

    .line 373
    const-string/jumbo v9, "Previous bytes formatted incorrectly; aborting quota read."

    .line 372
    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 385
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "previousBytes":J
    .restart local v6    # "request":Landroid/app/usage/CacheQuotaHint;
    :cond_4
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    .end local v6    # "request":Landroid/app/usage/CacheQuotaHint;
    :cond_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1
.end method

.method static saveToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;J)V
    .locals 10
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "bytesWhenCalculated"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    const/4 v8, 0x0

    .line 325
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p0, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 326
    const-string/jumbo v4, "cache-info"

    invoke-interface {p0, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 328
    .local v2, "requestSize":I
    const-string/jumbo v4, "previousBytes"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 330
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 331
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/CacheQuotaHint;

    .line 332
    .local v1, "request":Landroid/app/usage/CacheQuotaHint;
    const-string/jumbo v4, "quota"

    invoke-interface {p0, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 333
    invoke-virtual {v1}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, "uuid":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 335
    const-string/jumbo v4, "uuid"

    invoke-virtual {v1}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 337
    :cond_0
    const-string/jumbo v4, "uid"

    invoke-virtual {v1}, Landroid/app/usage/CacheQuotaHint;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 338
    const-string/jumbo v4, "bytes"

    invoke-virtual {v1}, Landroid/app/usage/CacheQuotaHint;->getQuota()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 339
    const-string/jumbo v4, "quota"

    invoke-interface {p0, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    .end local v1    # "request":Landroid/app/usage/CacheQuotaHint;
    .end local v3    # "uuid":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "cache-info"

    invoke-interface {p0, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 342
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 343
    return-void
.end method

.method private writeXmlToFile(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, "processedRequests":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    const/4 v1, 0x0

    .line 283
    .local v1, "fileStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 284
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    iget-object v3, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 285
    .local v1, "fileStream":Ljava/io/FileOutputStream;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 286
    const-wide/16 v4, 0x0

    invoke-static {v2, p1, v4, v5}, Lcom/android/server/storage/CacheQuotaStrategy;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;J)V

    .line 287
    iget-object v3, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3, v1}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v1    # "fileStream":Ljava/io/FileOutputStream;
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "CacheQuotaStrategy"

    const-string/jumbo v4, "An error occurred while writing the cache quota file."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    iget-object v3, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3, v1}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 212
    const-string/jumbo v1, "requests"

    .line 211
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 213
    .local v0, "processedRequests":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    invoke-direct {p0, v0}, Lcom/android/server/storage/CacheQuotaStrategy;->pushProcessedQuotas(Ljava/util/List;)V

    .line 214
    invoke-direct {p0, v0}, Lcom/android/server/storage/CacheQuotaStrategy;->writeXmlToFile(Ljava/util/List;)V

    .line 215
    return-void
.end method

.method public recalculateQuotas()V
    .locals 6

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->createServiceConnection()V

    .line 113
    invoke-direct {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 114
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 115
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 117
    iget-object v2, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    .line 118
    iget-object v3, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x1

    .line 117
    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 120
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setupQuotasFromFile()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 301
    :try_start_0
    iget-object v4, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v4}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 307
    .local v3, "stream":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 309
    .local v0, "cachedValues":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;>;"
    :try_start_1
    invoke-static {v3}, Lcom/android/server/storage/CacheQuotaStrategy;->readFromXml(Ljava/io/InputStream;)Landroid/util/Pair;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 314
    .local v0, "cachedValues":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;>;"
    if-nez v0, :cond_0

    .line 315
    const-string/jumbo v4, "CacheQuotaStrategy"

    const-string/jumbo v5, "An error occurred while parsing the cache quota file."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-wide v6

    .line 302
    .end local v0    # "cachedValues":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;>;"
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Ljava/io/FileNotFoundException;
    return-wide v6

    .line 310
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .local v0, "cachedValues":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;>;"
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 311
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 318
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .local v0, "cachedValues":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;>;"
    :cond_0
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/android/server/storage/CacheQuotaStrategy;->pushProcessedQuotas(Ljava/util/List;)V

    .line 319
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    return-wide v4
.end method
