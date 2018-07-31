.class public Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
.super Ljava/lang/Object;
.source "PrivateStorageInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PrivateStorageInfo"


# instance fields
.field public final freeBytes:J

.field public final totalBytes:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "freeBytes"    # J
    .param p3, "totalBytes"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    .line 38
    iput-wide p3, p0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    .line 39
    return-void
.end method

.method public static getPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .locals 12
    .param p0, "sm"    # Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    .prologue
    .line 42
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 43
    .local v0, "context":Landroid/content/Context;
    const-class v9, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/StorageStatsManager;

    .line 45
    .local v8, "stats":Landroid/app/usage/StorageStatsManager;
    const-wide/16 v4, 0x0

    .line 46
    .local v4, "privateFreeBytes":J
    const-wide/16 v6, 0x0

    .line 47
    .local v6, "privateTotalBytes":J
    invoke-interface {p0}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->getVolumes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 48
    .local v2, "info":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 50
    :try_start_0
    invoke-interface {p0, v8, v2}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->getTotalBytes(Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)J

    move-result-wide v10

    add-long/2addr v6, v10

    .line 51
    invoke-interface {p0, v8, v2}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->getFreeBytes(Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    add-long/2addr v4, v10

    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v9, "PrivateStorageInfo"

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 57
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "info":Landroid/os/storage/VolumeInfo;
    :cond_1
    new-instance v9, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    invoke-direct {v9, v4, v5, v6, v7}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;-><init>(JJ)V

    return-object v9
.end method

.method public static getTotalSize(Landroid/os/storage/VolumeInfo;J)J
    .locals 6
    .param p0, "info"    # Landroid/os/storage/VolumeInfo;
    .param p1, "totalInternalStorage"    # J

    .prologue
    .line 61
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 62
    .local v0, "context":Landroid/content/Context;
    const-class v3, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/StorageStatsManager;

    .line 64
    .local v2, "stats":Landroid/app/usage/StorageStatsManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/usage/StorageStatsManager;->getTotalBytes(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    return-wide v4

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "PrivateStorageInfo"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    const-wide/16 v4, 0x0

    return-wide v4
.end method
