.class public abstract Lcom/android/settings/deviceinfo/MigrateEstimateTask;
.super Landroid/os/AsyncTask;
.source "MigrateEstimateTask.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field private static final EXTRA_SIZE_BYTES:Ljava/lang/String; = "size_bytes"

.field private static final SPEED_ESTIMATE_BPS:J = 0xa00000L


# instance fields
.field private final mConnected:Ljava/util/concurrent/CountDownLatch;

.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/android/internal/app/IMediaContainerService;

.field private mSizeBytes:J

.field private final mStorage:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Landroid/content/ComponentName;

    .line 53
    const-string/jumbo v1, "com.android.defcontainer"

    const-string/jumbo v2, "com.android.defcontainer.DefaultContainerService"

    .line 52
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mConnected:Ljava/util/concurrent/CountDownLatch;

    .line 66
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mSizeBytes:J

    .line 69
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    .line 70
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mStorage:Landroid/os/storage/StorageManager;

    .line 71
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    const-string/jumbo v0, "size_bytes"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mSizeBytes:J

    .line 75
    return-void
.end method

.method public copyTo(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    const-string/jumbo v0, "size_bytes"

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mSizeBytes:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 79
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 18
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 83
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mSizeBytes:J

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_0

    .line 84
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mSizeBytes:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    return-object v14

    .line 87
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    const-class v15, Landroid/os/UserManager;

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserManager;

    .line 88
    .local v13, "user":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    const-class v15, Landroid/os/storage/StorageManager;

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/StorageManager;

    .line 89
    .local v10, "storage":Landroid/os/storage/StorageManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    const-class v15, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/StorageStatsManager;

    .line 91
    .local v7, "stats":Landroid/app/usage/StorageStatsManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v5

    .line 92
    .local v5, "privateVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v10, v5}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v4

    .line 94
    .local v4, "emulatedVol":Landroid/os/storage/VolumeInfo;
    if-nez v4, :cond_1

    .line 95
    const-string/jumbo v14, "StorageSettings"

    const-string/jumbo v15, "Failed to find current primary storage"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    const-wide/16 v14, -0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    return-object v14

    .line 100
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v3

    .line 101
    .local v3, "emulatedUuid":Ljava/util/UUID;
    const-string/jumbo v14, "StorageSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Measuring size of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    const-wide/16 v8, 0x0

    .line 104
    .local v8, "size":J
    invoke-virtual {v13}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "u$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    .line 106
    .local v11, "u":Landroid/content/pm/UserInfo;
    iget v14, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v14}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v14

    .line 105
    invoke-virtual {v7, v3, v14}, Landroid/app/usage/StorageStatsManager;->queryExternalStatsForUser(Ljava/util/UUID;Landroid/os/UserHandle;)Landroid/app/usage/ExternalStorageStats;

    move-result-object v6

    .line 107
    .local v6, "s":Landroid/app/usage/ExternalStorageStats;
    invoke-virtual {v6}, Landroid/app/usage/ExternalStorageStats;->getTotalBytes()J

    move-result-wide v14

    add-long/2addr v8, v14

    .line 108
    iget v14, v11, Landroid/content/pm/UserInfo;->id:I

    if-nez v14, :cond_2

    .line 109
    invoke-virtual {v6}, Landroid/app/usage/ExternalStorageStats;->getObbBytes()J

    move-result-wide v14

    add-long/2addr v8, v14

    goto :goto_0

    .line 112
    .end local v6    # "s":Landroid/app/usage/ExternalStorageStats;
    .end local v11    # "u":Landroid/content/pm/UserInfo;
    :cond_3
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    return-object v14

    .line 113
    .end local v3    # "emulatedUuid":Ljava/util/UUID;
    .end local v8    # "size":J
    .end local v12    # "u$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v14, "StorageSettings"

    const-string/jumbo v15, "Failed to measure"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v2, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    const-wide/16 v14, -0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    return-object v14
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/Long;

    .prologue
    const-wide/16 v8, 0x3e8

    .line 121
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mSizeBytes:J

    .line 122
    iget-wide v4, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mSizeBytes:J

    mul-long/2addr v4, v8

    const-wide/32 v6, 0xa00000

    div-long v2, v4, v6

    .line 123
    .local v2, "timeMillis":J
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 125
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mSizeBytes:J

    invoke-static {v4, v6, v7}, Lcom/oneplus/settings/utils/OPUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "size":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "time":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->onPostExecute(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 119
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method public abstract onPostExecute(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 134
    invoke-static {p2}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mService:Lcom/android/internal/app/IMediaContainerService;

    .line 135
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mConnected:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 136
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 142
    return-void
.end method
