.class public Lcom/android/server/storage/DeviceStorageMonitorService;
.super Lcom/android/server/SystemService;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/DeviceStorageMonitorService$1;,
        Lcom/android/server/storage/DeviceStorageMonitorService$2;,
        Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;,
        Lcom/android/server/storage/DeviceStorageMonitorService$Shell;,
        Lcom/android/server/storage/DeviceStorageMonitorService$State;
    }
.end annotation


# static fields
.field private static final BOOT_IMAGE_STORAGE_REQUIREMENT:J = 0xfa00000L

.field private static final DEFAULT_CHECK_INTERVAL:J = 0xea60L

.field private static final DEFAULT_LOG_DELTA_BYTES:J = 0x4000000L

.field public static final EXTRA_SEQUENCE:Ljava/lang/String; = "seq"

.field private static final MSG_CHECK:I = 0x1

.field static final OPTION_FORCE_UPDATE:I = 0x1

.field static final SERVICE:Ljava/lang/String; = "devicestoragemonitor"

.field private static final TAG:Ljava/lang/String; = "DeviceStorageMonitorService"

.field private static final TV_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "devicestoragemonitor.tv"


# instance fields
.field private mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

.field private volatile mForceLevel:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

.field private mNotifManager:Landroid/app/NotificationManager;

.field private final mRemoteService:Landroid/os/Binder;

.field private final mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/util/UUID;",
            "Lcom/android/server/storage/DeviceStorageMonitorService$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->check()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 99
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    .line 301
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$1;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$1;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 321
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$2;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/Binder;

    .line 249
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "DeviceStorageMonitorService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 250
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 252
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$3;

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService$3;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    .line 262
    return-void
.end method

.method private check()V
    .locals 30

    .prologue
    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v24, Landroid/os/storage/StorageManager;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/storage/StorageManager;

    .line 178
    .local v20, "storage":Landroid/os/storage/StorageManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    .line 181
    .local v18, "seq":I
    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "vol$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/storage/VolumeInfo;

    .line 182
    .local v22, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual/range {v22 .. v22}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v12

    .line 183
    .local v12, "file":Ljava/io/File;
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v14

    .line 184
    .local v14, "fullBytes":J
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v16

    .line 189
    .local v16, "lowBytes":J
    invoke-virtual {v12}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v24

    const-wide/16 v26, 0x3

    mul-long v26, v26, v16

    const-wide/16 v28, 0x2

    div-long v26, v26, v28

    cmp-long v5, v24, v26

    if-gez v5, :cond_0

    .line 191
    const-string/jumbo v5, "package"

    .line 190
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PackageManagerService;

    .line 193
    .local v13, "pms":Lcom/android/server/pm/PackageManagerService;
    :try_start_0
    invoke-virtual/range {v22 .. v22}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v24, 0x2

    mul-long v24, v24, v16

    const/16 v26, 0x0

    move-wide/from16 v0, v24

    move/from16 v2, v26

    invoke-virtual {v13, v5, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v13    # "pms":Lcom/android/server/pm/PackageManagerService;
    :cond_0
    :goto_1
    invoke-virtual/range {v22 .. v22}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v21

    .line 202
    .local v21, "uuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->findOrCreateState(Ljava/util/UUID;)Lcom/android/server/storage/DeviceStorageMonitorService$State;

    move-result-object v19

    .line 203
    .local v19, "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    invoke-virtual {v12}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v10

    .line 204
    .local v10, "totalBytes":J
    invoke-virtual {v12}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v8

    .line 206
    .local v8, "usableBytes":J
    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    .line 208
    .local v6, "oldLevel":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v5, v0, :cond_3

    .line 211
    const/4 v6, -0x1

    .line 212
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 225
    .local v7, "newLevel":I
    :goto_2
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    move-wide/from16 v24, v0

    sub-long v24, v24, v8

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    const-wide/32 v26, 0x4000000

    cmp-long v5, v24, v26

    if-gtz v5, :cond_1

    .line 226
    if-eq v6, v7, :cond_2

    .line 227
    :cond_1
    invoke-virtual/range {v21 .. v21}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v5 .. v11}, Lcom/android/server/EventLogTags;->writeStorageState(Ljava/lang/String;IIJJ)V

    .line 229
    move-object/from16 v0, v19

    iput-wide v8, v0, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    .line 232
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v6, v7}, Lcom/android/server/storage/DeviceStorageMonitorService;->updateNotifications(Landroid/os/storage/VolumeInfo;II)V

    .line 233
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v18

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->updateBroadcasts(Landroid/os/storage/VolumeInfo;III)V

    .line 235
    move-object/from16 v0, v19

    iput v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    goto/16 :goto_0

    .line 194
    .end local v6    # "oldLevel":I
    .end local v7    # "newLevel":I
    .end local v8    # "usableBytes":J
    .end local v10    # "totalBytes":J
    .end local v19    # "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    .end local v21    # "uuid":Ljava/util/UUID;
    .restart local v13    # "pms":Lcom/android/server/pm/PackageManagerService;
    :catch_0
    move-exception v4

    .line 195
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v5, "DeviceStorageMonitorService"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 213
    .end local v4    # "e":Ljava/io/IOException;
    .end local v13    # "pms":Lcom/android/server/pm/PackageManagerService;
    .restart local v6    # "oldLevel":I
    .restart local v8    # "usableBytes":J
    .restart local v10    # "totalBytes":J
    .restart local v19    # "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    .restart local v21    # "uuid":Ljava/util/UUID;
    :cond_3
    cmp-long v5, v8, v14

    if-gtz v5, :cond_4

    .line 214
    const/4 v7, 0x2

    .restart local v7    # "newLevel":I
    goto :goto_2

    .line 215
    .end local v7    # "newLevel":I
    :cond_4
    cmp-long v5, v8, v16

    if-gtz v5, :cond_5

    .line 216
    const/4 v7, 0x1

    .restart local v7    # "newLevel":I
    goto :goto_2

    .line 217
    .end local v7    # "newLevel":I
    :cond_5
    sget-object v5, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/server/storage/DeviceStorageMonitorService;->isBootImageOnDisk()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6

    .line 218
    const-wide/32 v24, 0xfa00000

    cmp-long v5, v8, v24

    if-gez v5, :cond_6

    .line 219
    const/4 v7, 0x1

    .line 218
    .restart local v7    # "newLevel":I
    goto :goto_2

    .line 221
    .end local v7    # "newLevel":I
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "newLevel":I
    goto :goto_2

    .line 240
    .end local v6    # "oldLevel":I
    .end local v7    # "newLevel":I
    .end local v8    # "usableBytes":J
    .end local v10    # "totalBytes":J
    .end local v12    # "file":Ljava/io/File;
    .end local v14    # "fullBytes":J
    .end local v16    # "lowBytes":J
    .end local v19    # "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    .end local v21    # "uuid":Ljava/util/UUID;
    .end local v22    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_8

    .line 241
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    .line 242
    const-wide/32 v26, 0xea60

    .line 241
    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 244
    :cond_8
    return-void
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 411
    const-string/jumbo v0, "Device storage monitor service (devicestoragemonitor) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    const-string/jumbo v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    const-string/jumbo v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    const-string/jumbo v0, "  force-low [-f]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    const-string/jumbo v0, "    Force storage to be low, freezing storage state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    const-string/jumbo v0, "    -f: force a storage change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    const-string/jumbo v0, "  force-not-low [-f]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    const-string/jumbo v0, "    Force storage to not be low, freezing storage state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    const-string/jumbo v0, "    -f: force a storage change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    const-string/jumbo v0, "  reset [-f]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    const-string/jumbo v0, "    Unfreeze storage state, returning to current real values."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    const-string/jumbo v0, "    -f: force a storage change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method private findOrCreateState(Ljava/util/UUID;)Lcom/android/server/storage/DeviceStorageMonitorService$State;
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    .line 163
    .local v0, "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    .end local v0    # "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    invoke-direct {v0, v2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService$State;)V

    .line 165
    .restart local v0    # "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_0
    return-object v0
.end method

.method private static isBootImageOnDisk()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 265
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getAllDexCodeInstructionSets()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    .local v0, "instructionSet":Ljava/lang/String;
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 266
    invoke-static {v0}, Ldalvik/system/VMRuntime;->isBootClassPathOnDisk(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 267
    return v2

    .line 265
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private updateBroadcasts(Landroid/os/storage/VolumeInfo;III)V
    .locals 10
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldLevel"    # I
    .param p3, "newLevel"    # I
    .param p4, "seq"    # I

    .prologue
    const/high16 v9, 0x5200000

    const/high16 v8, 0x4000000

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 508
    sget-object v4, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 510
    return-void

    .line 513
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 517
    const-string/jumbo v5, "seq"

    .line 513
    invoke-virtual {v4, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 518
    .local v1, "lowIntent":Landroid/content/Intent;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 522
    const-string/jumbo v5, "seq"

    .line 518
    invoke-virtual {v4, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 524
    .local v3, "notLowIntent":Landroid/content/Intent;
    invoke-static {v6, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-wrap0(III)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 525
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 531
    :cond_1
    :goto_0
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 533
    const-string/jumbo v5, "seq"

    .line 531
    invoke-virtual {v4, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 534
    .local v0, "fullIntent":Landroid/content/Intent;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 536
    const-string/jumbo v5, "seq"

    .line 534
    invoke-virtual {v4, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 538
    .local v2, "notFullIntent":Landroid/content/Intent;
    invoke-static {v7, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-wrap0(III)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 539
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 544
    :cond_2
    :goto_1
    return-void

    .line 526
    .end local v0    # "fullIntent":Landroid/content/Intent;
    .end local v2    # "notFullIntent":Landroid/content/Intent;
    :cond_3
    invoke-static {v6, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-wrap1(III)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 527
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 528
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 540
    .restart local v0    # "fullIntent":Landroid/content/Intent;
    .restart local v2    # "notFullIntent":Landroid/content/Intent;
    :cond_4
    invoke-static {v7, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-wrap1(III)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 541
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 542
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1
.end method

.method private updateNotifications(Landroid/os/storage/VolumeInfo;II)V
    .locals 11
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldLevel"    # I
    .param p3, "newLevel"    # I

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 460
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v10

    .line 462
    .local v10, "uuid":Ljava/util/UUID;
    const/4 v1, 0x1

    invoke-static {v1, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-wrap0(III)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 463
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v1, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 464
    .local v2, "lowMemIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.os.storage.extra.UUID"

    invoke-virtual {v2, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 465
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 468
    const v1, 0x1040334

    .line 467
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 471
    .local v9, "title":Ljava/lang/CharSequence;
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v1, v10}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 472
    invoke-static {}, Lcom/android/server/storage/DeviceStorageMonitorService;->isBootImageOnDisk()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    const v1, 0x1040332

    .line 472
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 481
    .local v6, "details":Ljava/lang/CharSequence;
    :goto_1
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 480
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 481
    const/4 v4, 0x0

    .line 480
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 483
    .local v7, "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 484
    const v3, 0x108077c

    .line 483
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 487
    const v3, 0x106014c

    .line 486
    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 483
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 491
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    .line 483
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 493
    const/4 v3, 0x1

    .line 483
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 494
    const-string/jumbo v3, "sys"

    .line 483
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 495
    new-instance v3, Landroid/app/Notification$TvExtender;

    invoke-direct {v3}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 496
    const-string/jumbo v4, "devicestoragemonitor.tv"

    .line 495
    invoke-virtual {v3, v4}, Landroid/app/Notification$TvExtender;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$TvExtender;

    move-result-object v3

    .line 483
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 498
    .local v8, "notification":Landroid/app/Notification;
    iget v1, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v8, Landroid/app/Notification;->flags:I

    .line 499
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 500
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 499
    const/16 v5, 0x17

    invoke-virtual {v1, v3, v5, v8, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 505
    .end local v2    # "lowMemIntent":Landroid/content/Intent;
    .end local v6    # "details":Ljava/lang/CharSequence;
    .end local v7    # "intent":Landroid/app/PendingIntent;
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "title":Ljava/lang/CharSequence;
    :cond_0
    :goto_2
    return-void

    .line 474
    .restart local v2    # "lowMemIntent":Landroid/content/Intent;
    .restart local v9    # "title":Ljava/lang/CharSequence;
    :cond_1
    const v1, 0x1040333

    goto :goto_0

    .line 477
    :cond_2
    const v1, 0x1040332

    .line 476
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .restart local v6    # "details":Ljava/lang/CharSequence;
    goto :goto_1

    .line 501
    .end local v2    # "lowMemIntent":Landroid/content/Intent;
    .end local v6    # "details":Ljava/lang/CharSequence;
    .end local v9    # "title":Ljava/lang/CharSequence;
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-wrap1(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 503
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 502
    const/16 v5, 0x17

    invoke-virtual {v1, v3, v5, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_2
.end method


# virtual methods
.method dumpImpl(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "_pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 426
    new-instance v9, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v1, "  "

    invoke-direct {v9, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 427
    .local v9, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    if-eqz p3, :cond_0

    array-length v1, p3

    if-nez v1, :cond_1

    .line 428
    :cond_0
    const-string/jumbo v1, "Known volumes:"

    invoke-virtual {v9, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 430
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v8, v1, :cond_3

    .line 431
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/UUID;

    .line 432
    .local v11, "uuid":Ljava/util/UUID;
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    .line 433
    .local v10, "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v1, v11}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 434
    const-string/jumbo v1, "Default:"

    invoke-virtual {v9, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 438
    :goto_1
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 439
    const-string/jumbo v1, "level"

    iget v2, v10, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-wrap2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 440
    const-string/jumbo v1, "lastUsableBytes"

    iget-wide v2, v10, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 441
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 442
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 430
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 427
    .end local v8    # "i":I
    .end local v10    # "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    .end local v11    # "uuid":Ljava/util/UUID;
    :cond_1
    const-string/jumbo v1, "-a"

    aget-object v3, p3, v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 453
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    .line 454
    .local v0, "shell":Lcom/android/server/storage/DeviceStorageMonitorService$Shell;
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/Binder;

    new-instance v7, Landroid/os/ResultReceiver;

    invoke-direct {v7, v2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v3, p1

    move-object v4, v2

    move-object v5, p3

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 456
    .end local v0    # "shell":Lcom/android/server/storage/DeviceStorageMonitorService$Shell;
    :goto_2
    return-void

    .line 436
    .restart local v8    # "i":I
    .restart local v10    # "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    .restart local v11    # "uuid":Ljava/util/UUID;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 444
    .end local v10    # "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    .end local v11    # "uuid":Ljava/util/UUID;
    :cond_3
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 445
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 447
    const-string/jumbo v1, "mSeq"

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 448
    const-string/jumbo v1, "mForceState"

    iget v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-wrap2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 450
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_2
.end method

.method onShellCommand(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;Ljava/lang/String;)I
    .locals 8
    .param p1, "shell"    # Lcom/android/server/storage/DeviceStorageMonitorService$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 363
    if-nez p2, :cond_0

    .line 364
    invoke-virtual {p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 366
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 367
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v3, "force-low"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 369
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    move-result v0

    .line 370
    .local v0, "opts":I
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 371
    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    .line 370
    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iput v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 373
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 374
    .local v2, "seq":I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_1

    .line 375
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 376
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 377
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 407
    :cond_1
    :goto_0
    return v6

    .line 367
    .end local v0    # "opts":I
    .end local v2    # "seq":I
    :cond_2
    const-string/jumbo v3, "force-not-low"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 381
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    move-result v0

    .line 382
    .restart local v0    # "opts":I
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 383
    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    .line 382
    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iput v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 385
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 386
    .restart local v2    # "seq":I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_1

    .line 387
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 388
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 389
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_0

    .line 367
    .end local v0    # "opts":I
    .end local v2    # "seq":I
    :cond_3
    const-string/jumbo v3, "reset"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 393
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    move-result v0

    .line 394
    .restart local v0    # "opts":I
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 395
    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    .line 394
    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 397
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 398
    .restart local v2    # "seq":I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_1

    .line 399
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 401
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_0

    .line 405
    .end local v0    # "opts":I
    .end local v2    # "seq":I
    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 275
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 276
    .local v0, "context":Landroid/content/Context;
    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    .line 278
    new-instance v3, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-direct {v3}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;-><init>()V

    iput-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    .line 279
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-virtual {v3}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;->startWatching()V

    .line 282
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 283
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v3, "android.software.leanback"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 285
    .local v1, "isTv":Z
    if-eqz v1, :cond_0

    .line 286
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    new-instance v4, Landroid/app/NotificationChannel;

    .line 287
    const-string/jumbo v5, "devicestoragemonitor.tv"

    .line 289
    const v6, 0x10401b5

    .line 288
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 290
    const/4 v7, 0x4

    .line 286
    invoke-direct {v4, v5, v6, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 293
    :cond_0
    const-string/jumbo v3, "devicestoragemonitor"

    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/Binder;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 294
    const-class v3, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 297
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 299
    return-void
.end method

.method parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I
    .locals 3
    .param p1, "shell"    # Lcom/android/server/storage/DeviceStorageMonitorService$Shell;

    .prologue
    .line 353
    const/4 v1, 0x0

    .line 354
    .local v1, "opts":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 355
    const-string/jumbo v2, "-f"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    :cond_1
    return v1
.end method
