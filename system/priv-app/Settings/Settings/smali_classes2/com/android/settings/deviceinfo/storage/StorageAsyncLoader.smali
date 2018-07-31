.class public Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;
.super Lcom/android/settings/utils/AsyncLoader;
.source "StorageAsyncLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;,
        Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/utils/AsyncLoader",
        "<",
        "Landroid/util/SparseArray",
        "<",
        "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageAsyncLoader"


# instance fields
.field private mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

.field private mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

.field private mUserManager:Lcom/android/settings/applications/UserManagerWrapper;

.field private mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/UserManagerWrapper;Ljava/lang/String;Lcom/android/settingslib/applications/StorageStatsSource;Lcom/android/settings/applications/PackageManagerWrapper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userManager"    # Lcom/android/settings/applications/UserManagerWrapper;
    .param p3, "uuid"    # Ljava/lang/String;
    .param p4, "source"    # Lcom/android/settingslib/applications/StorageStatsSource;
    .param p5, "pm"    # Lcom/android/settings/applications/PackageManagerWrapper;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    .line 55
    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUserManager:Lcom/android/settings/applications/UserManagerWrapper;

    .line 56
    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUuid:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

    .line 58
    iput-object p5, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

    .line 59
    return-void
.end method

.method private getStorageResultForUser(I)Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;
    .locals 18
    .param p1, "userId"    # I

    .prologue
    .line 77
    const-string/jumbo v13, "StorageAsyncLoader"

    const-string/jumbo v14, "Loading apps"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-interface {v13, v14, v0}, Lcom/android/settings/applications/PackageManagerWrapper;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v3

    .line 80
    .local v3, "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    invoke-direct {v10}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;-><init>()V

    .line 81
    .local v10, "result":Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    .line 82
    .local v9, "myUser":Landroid/os/UserHandle;
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    .local v11, "size":I
    :goto_0
    if-ge v8, v11, :cond_2

    .line 83
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 87
    .local v2, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUuid:Ljava/lang/String;

    iget-object v15, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14, v15, v9}, Lcom/android/settingslib/applications/StorageStatsSource;->getStatsForPackage(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 94
    .local v12, "stats":Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;
    invoke-interface {v12}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getDataBytes()J

    move-result-wide v14

    invoke-interface {v12}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCacheBytes()J

    move-result-wide v16

    sub-long v4, v14, v16

    .line 98
    .local v4, "blamedSize":J
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    move/from16 v0, p1

    if-ne v0, v13, :cond_0

    .line 99
    invoke-interface {v12}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCodeBytes()J

    move-result-wide v14

    add-long/2addr v4, v14

    .line 102
    :cond_0
    iget v13, v2, Landroid/content/pm/ApplicationInfo;->category:I

    packed-switch v13, :pswitch_data_0

    .line 114
    iget v13, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v14, 0x2000000

    and-int/2addr v13, v14

    if-eqz v13, :cond_1

    .line 115
    iget-wide v14, v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    add-long/2addr v14, v4

    iput-wide v14, v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    .line 82
    .end local v4    # "blamedSize":J
    .end local v12    # "stats":Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 88
    :catch_0
    move-exception v7

    .line 90
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "StorageAsyncLoader"

    const-string/jumbo v14, "App unexpectedly not found"

    invoke-static {v13, v14, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 104
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "blamedSize":J
    .restart local v12    # "stats":Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;
    :pswitch_0
    iget-wide v14, v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    add-long/2addr v14, v4

    iput-wide v14, v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    goto :goto_1

    .line 107
    :pswitch_1
    iget-wide v14, v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    add-long/2addr v14, v4

    iput-wide v14, v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    goto :goto_1

    .line 110
    :pswitch_2
    iget-wide v14, v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    add-long/2addr v14, v4

    iput-wide v14, v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    goto :goto_1

    .line 118
    :cond_1
    iget-wide v14, v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    add-long/2addr v14, v4

    iput-wide v14, v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    goto :goto_1

    .line 123
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "blamedSize":J
    .end local v12    # "stats":Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;
    :cond_2
    const-string/jumbo v13, "StorageAsyncLoader"

    const-string/jumbo v14, "Loading external stats"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUuid:Ljava/lang/String;

    .line 126
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v15

    .line 125
    invoke-virtual {v13, v14, v15}, Lcom/android/settingslib/applications/StorageStatsSource;->getExternalStorageStats(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    move-result-object v13

    iput-object v13, v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    :goto_2
    const-string/jumbo v13, "StorageAsyncLoader"

    const-string/jumbo v14, "Obtaining result completed"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-object v10

    .line 127
    :catch_1
    move-exception v6

    .line 128
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v13, "StorageAsyncLoader"

    invoke-static {v13, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private loadApps()Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 68
    .local v3, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;>;"
    iget-object v5, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUserManager:Lcom/android/settings/applications/UserManagerWrapper;

    invoke-interface {v5}, Lcom/android/settings/applications/UserManagerWrapper;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 69
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "userCount":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 70
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 71
    .local v1, "info":Landroid/content/pm/UserInfo;
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->getStorageResultForUser(I)Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    :cond_0
    return-object v3
.end method


# virtual methods
.method public loadInBackground()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->loadApps()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->loadInBackground()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method protected onDiscardResult(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;>;"
    return-void
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 134
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->onDiscardResult(Landroid/util/SparseArray;)V

    return-void
.end method
