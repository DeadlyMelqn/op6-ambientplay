.class Lcom/android/server/storage/AppCollector$BackgroundHandler;
.super Landroid/os/Handler;
.source "AppCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/AppCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundHandler"
.end annotation


# static fields
.field static final MSG_START_LOADING_SIZES:I


# instance fields
.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

.field private final mUm:Landroid/os/UserManager;

.field private final mVolume:Landroid/os/storage/VolumeInfo;

.field final synthetic this$0:Lcom/android/server/storage/AppCollector;


# direct methods
.method constructor <init>(Lcom/android/server/storage/AppCollector;Landroid/os/Looper;Landroid/os/storage/VolumeInfo;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Landroid/app/usage/StorageStatsManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/storage/AppCollector;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "volume"    # Landroid/os/storage/VolumeInfo;
    .param p4, "pm"    # Landroid/content/pm/PackageManager;
    .param p5, "um"    # Landroid/os/UserManager;
    .param p6, "storageStatsManager"    # Landroid/app/usage/StorageStatsManager;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->this$0:Lcom/android/server/storage/AppCollector;

    .line 106
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 107
    iput-object p3, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 108
    iput-object p4, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mPm:Landroid/content/pm/PackageManager;

    .line 109
    iput-object p5, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mUm:Landroid/os/UserManager;

    .line 110
    iput-object p6, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    .line 111
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 115
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    packed-switch v14, :pswitch_data_0

    .line 150
    :goto_0
    return-void

    .line 117
    :pswitch_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v8, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageStats;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mUm:Landroid/os/UserManager;

    invoke-virtual {v14}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v13

    .line 119
    .local v13, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v11, 0x0

    .local v11, "userCount":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v12

    .local v12, "userSize":I
    :goto_1
    if-ge v11, v12, :cond_2

    .line 121
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .line 122
    .local v10, "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mPm:Landroid/content/pm/PackageManager;

    .line 123
    iget v15, v10, Landroid/content/pm/UserInfo;->id:I

    const/16 v16, 0x200

    .line 122
    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v4

    .line 125
    .local v4, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v3, 0x0

    .local v3, "appCount":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "size":I
    :goto_2
    if-ge v3, v7, :cond_1

    .line 126
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 127
    .local v2, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v14, v2, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v15}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 125
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 133
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    iget-object v15, v2, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 134
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v17

    .line 133
    invoke-virtual/range {v14 .. v17}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v9

    .line 135
    .local v9, "storageStats":Landroid/app/usage/StorageStats;
    new-instance v6, Landroid/content/pm/PackageStats;

    iget-object v14, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 136
    iget v15, v10, Landroid/content/pm/UserInfo;->id:I

    .line 135
    invoke-direct {v6, v14, v15}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    .line 137
    .local v6, "packageStats":Landroid/content/pm/PackageStats;
    invoke-virtual {v9}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v14

    iput-wide v14, v6, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 138
    invoke-virtual {v9}, Landroid/app/usage/StorageStats;->getCodeBytes()J

    move-result-wide v14

    iput-wide v14, v6, Landroid/content/pm/PackageStats;->codeSize:J

    .line 139
    invoke-virtual {v9}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v14

    iput-wide v14, v6, Landroid/content/pm/PackageStats;->dataSize:J

    .line 140
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 141
    .end local v6    # "packageStats":Landroid/content/pm/PackageStats;
    .end local v9    # "storageStats":Landroid/app/usage/StorageStats;
    :catch_0
    move-exception v5

    .line 142
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/storage/AppCollector;->-get0()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "An exception occurred while fetching app size"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 120
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 147
    .end local v3    # "appCount":I
    .end local v4    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v7    # "size":I
    .end local v10    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->this$0:Lcom/android/server/storage/AppCollector;

    invoke-static {v14}, Lcom/android/server/storage/AppCollector;->-get1(Lcom/android/server/storage/AppCollector;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
