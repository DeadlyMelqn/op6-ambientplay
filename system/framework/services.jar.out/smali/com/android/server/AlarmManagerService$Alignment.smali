.class Lcom/android/server/AlarmManagerService$Alignment;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Alignment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$Alignment$AlignmentConfigUpdater;,
        Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;
    }
.end annotation


# static fields
.field static final ALIGNMENT_DEBOUNCE:I = 0xbb8

.field private static final ALIGNMENT_WINDOW:J = 0x493e0L

.field private static final DELIMITER:Ljava/lang/String; = ":"

.field private static final INDEX_FIRST:I = 0x0

.field private static final INDEX_SECOND:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "AlarmManager_ALIGNMENT"

.field static final ONLINECONFIG_PROJECT_NAME:Ljava/lang/String; = "AlarmManagement"


# instance fields
.field private mAlarmBlacklist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAlarmSpecialList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAlarmWhitelist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAlignmentActive:Z

.field private mAlignmentEnabled:Z

.field private mConfigHandler:Landroid/os/Handler;

.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mScreenStateReceiver:Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/AlarmManagerService$Alignment;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/AlarmManagerService$Alignment;

    .prologue
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/AlarmManagerService$Alignment;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/AlarmManagerService$Alignment;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActive:Z

    return p1
.end method

.method constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "configHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 227
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActive:Z

    .line 206
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    .line 228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    .line 231
    iput-object p2, p0, Lcom/android/server/AlarmManagerService$Alignment;->mContext:Landroid/content/Context;

    .line 232
    iput-object p3, p0, Lcom/android/server/AlarmManagerService$Alignment;->mHandler:Landroid/os/Handler;

    .line 233
    iput-object p4, p0, Lcom/android/server/AlarmManagerService$Alignment;->mConfigHandler:Landroid/os/Handler;

    .line 234
    new-instance v0, Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;

    invoke-direct {v0, p0, p2}, Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;-><init>(Lcom/android/server/AlarmManagerService$Alignment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mScreenStateReceiver:Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;

    .line 235
    return-void
.end method


# virtual methods
.method calculateAlignedTime(J)J
    .locals 7
    .param p1, "when"    # J

    .prologue
    const-wide/32 v4, 0x493e0

    .line 365
    rem-long v0, p1, v4

    .line 366
    .local v0, "remainder":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 367
    sub-long v2, v4, v0

    add-long/2addr p1, v2

    .line 369
    :cond_0
    return-wide p1
.end method

.method checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 260
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 261
    .local v2, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 262
    return v4

    .line 264
    :cond_0
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "black_action"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 265
    return v5

    .line 267
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "s$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 268
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 269
    return v5

    .line 272
    .end local v0    # "s":Ljava/lang/String;
    :cond_3
    return v4
.end method

.method convertToAligned(Lcom/android/server/AlarmManagerService$Alarm;Z)J
    .locals 18
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "needRestore"    # Z

    .prologue
    .line 282
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 285
    .local v11, "type":I
    if-eqz p2, :cond_0

    .line 286
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    .line 291
    .local v12, "when":J
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    if-nez v14, :cond_1

    .line 292
    return-wide v12

    .line 288
    .end local v12    # "when":J
    :cond_0
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .restart local v12    # "when":J
    goto :goto_0

    .line 296
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActive:Z

    if-nez v14, :cond_2

    .line 297
    return-wide v12

    .line 302
    :cond_2
    const/4 v9, 0x0

    .line 303
    .local v9, "specialAlarm":Z
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v14, :cond_5

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    .line 304
    .local v10, "tag":Ljava/lang/String;
    :goto_1
    const-string/jumbo v14, ":"

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v10, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    monitor-enter v15

    .line 306
    :try_start_0
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v14, v1}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    if-eqz v14, :cond_3

    .line 307
    const/4 v9, 0x1

    :cond_3
    monitor-exit v15

    .line 314
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$Alignment;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v14, v14, Lcom/android/server/AlarmManagerService;->mDeviceIdleUserWhitelist:[I

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v15

    invoke-static {v14, v15}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v14

    if-ltz v14, :cond_6

    const/4 v3, 0x1

    .line 315
    .local v3, "deviceIdleWhitelist":Z
    :goto_2
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    const/16 v15, 0x2710

    if-lt v14, v15, :cond_4

    .line 316
    if-eqz v3, :cond_7

    xor-int/lit8 v14, v9, 0x1

    .line 315
    if-eqz v14, :cond_7

    .line 317
    :cond_4
    return-wide v12

    .line 303
    .end local v2    # "action":Ljava/lang/String;
    .end local v3    # "deviceIdleWhitelist":Z
    .end local v10    # "tag":Ljava/lang/String;
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "<listener>:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$Alarm;->listenerTag:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "tag":Ljava/lang/String;
    goto :goto_1

    .line 305
    .restart local v2    # "action":Ljava/lang/String;
    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14

    .line 314
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "deviceIdleWhitelist":Z
    goto :goto_2

    .line 321
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    monitor-enter v15

    .line 322
    :try_start_1
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v14, v1}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v14

    if-eqz v14, :cond_8

    monitor-exit v15

    .line 323
    return-wide v12

    :cond_8
    monitor-exit v15

    .line 328
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_9

    .line 329
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_b

    .line 330
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    monitor-enter v15

    .line 331
    if-nez v9, :cond_a

    :try_start_2
    const-string/jumbo v14, "black_action"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v14, v1}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_a

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v14, v1}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_a

    monitor-exit v15

    .line 332
    return-wide v12

    .line 321
    :catchall_1
    move-exception v14

    monitor-exit v15

    throw v14

    :cond_a
    monitor-exit v15

    .line 337
    :cond_b
    sget-boolean v14, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v14, :cond_c

    .line 338
    const-string/jumbo v14, "Before alignment: "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v12, v13}, Lcom/android/server/AlarmManagerService$Alignment;->dumpAlarmInfo(Lcom/android/server/AlarmManagerService$Alarm;Ljava/lang/String;J)V

    .line 341
    :cond_c
    const/4 v14, 0x1

    if-eq v11, v14, :cond_d

    if-nez v11, :cond_f

    :cond_d
    const/4 v8, 0x1

    .line 344
    .local v8, "isRtc":Z
    :goto_3
    if-eqz v8, :cond_11

    .line 345
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/server/AlarmManagerService$Alignment;->calculateAlignedTime(J)J

    move-result-wide v4

    .line 353
    .local v4, "alignWhen":J
    :goto_4
    sget-boolean v14, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v14, :cond_e

    .line 354
    const-string/jumbo v14, "After alignment: "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v4, v5}, Lcom/android/server/AlarmManagerService$Alignment;->dumpAlarmInfo(Lcom/android/server/AlarmManagerService$Alarm;Ljava/lang/String;J)V

    .line 357
    :cond_e
    return-wide v4

    .line 330
    .end local v4    # "alignWhen":J
    .end local v8    # "isRtc":Z
    :catchall_2
    move-exception v14

    monitor-exit v15

    throw v14

    .line 342
    :cond_f
    const/4 v14, 0x5

    if-ne v11, v14, :cond_10

    const/4 v8, 0x1

    .restart local v8    # "isRtc":Z
    goto :goto_3

    .end local v8    # "isRtc":Z
    :cond_10
    const/4 v8, 0x0

    .restart local v8    # "isRtc":Z
    goto :goto_3

    .line 347
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v6, v14, v16

    .line 348
    .local v6, "bootTime":J
    add-long/2addr v12, v6

    .line 349
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/server/AlarmManagerService$Alignment;->calculateAlignedTime(J)J

    move-result-wide v4

    .line 350
    .restart local v4    # "alignWhen":J
    sub-long/2addr v4, v6

    goto :goto_4
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 429
    const-string/jumbo v0, "  Alarm Alignment Information:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    const-string/jumbo v0, "    ALIGNMENT_DEBOUNCE = 3000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    const-string/jumbo v0, "    ALIGNMENT_WINDOW = 300000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mAlignmentEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mAlignmentActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    const-string/jumbo v0, "    mAlarmBlacklist: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/AlarmManagerService$Alignment;->dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    .line 435
    const-string/jumbo v0, "    mAlarmWhitelist: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/AlarmManagerService$Alignment;->dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    .line 436
    const-string/jumbo v0, "    mAlarmSpecialList: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/AlarmManagerService$Alignment;->dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    .line 437
    return-void
.end method

.method dumpAlarmInfo(Lcom/android/server/AlarmManagerService$Alarm;Ljava/lang/String;J)V
    .locals 11
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "when"    # J

    .prologue
    .line 408
    iget v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 409
    .local v5, "type":I
    move-wide v2, p3

    .line 410
    .local v2, "setWhen":J
    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    if-nez v5, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 413
    .local v0, "isRtc":Z
    :goto_0
    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v6, :cond_4

    .line 414
    iget-object v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    .line 416
    .local v4, "tag":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 418
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    if-nez v0, :cond_1

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, p3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 422
    :cond_1
    const-string/jumbo v7, "AlarmManager_ALIGNMENT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " when="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 423
    const-string/jumbo v8, ", packageName="

    .line 422
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 423
    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    .line 422
    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 424
    const-string/jumbo v8, ", tag="

    .line 422
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 424
    const-string/jumbo v8, ", type="

    .line 422
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 424
    iget v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v8}, Lcom/android/server/AlarmManagerService;->-wrap5(I)Ljava/lang/String;

    move-result-object v8

    .line 422
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 425
    const-string/jumbo v8, ", window="

    .line 422
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 425
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    .line 422
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 425
    const-string/jumbo v8, ", interval="

    .line 422
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 425
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 422
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-void

    .line 411
    .end local v0    # "isRtc":Z
    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v4    # "tag":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    const/4 v0, 0x1

    .restart local v0    # "isRtc":Z
    goto/16 :goto_0

    .end local v0    # "isRtc":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isRtc":Z
    goto/16 :goto_0

    .line 414
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "<listener>:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->listenerTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "tag":Ljava/lang/String;
    goto/16 :goto_1

    .line 423
    .restart local v1    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_5
    const-string/jumbo v6, "null"

    goto :goto_2
.end method

.method dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V
    .locals 10
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x40

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 379
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 380
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 381
    .local v6, "packageName":Ljava/lang/String;
    const-string/jumbo v8, "package="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    const-string/jumbo v8, " | actions="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 385
    .local v2, "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v5

    .line 386
    .local v5, "i":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "action$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 387
    .local v0, "action":Ljava/lang/String;
    add-int/lit8 v5, v5, -0x1

    .line 388
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    if-lez v5, :cond_1

    .line 390
    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 395
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "action$iterator":Ljava/util/Iterator;
    .end local v2    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v5    # "i":I
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_3

    .line 396
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    :goto_1
    return-void

    .line 398
    :cond_3
    const-string/jumbo v8, "AlarmManager_ALIGNMENT"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public enabled(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    .line 250
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    return v0
.end method

.method grabOnlineConfig()V
    .locals 3

    .prologue
    .line 455
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "AlarmManagement"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 456
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService$Alignment;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    .line 457
    return-void
.end method

.method public isDeepSleepBlock(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 5
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    const/4 v3, 0x0

    .line 239
    iget-object v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    .line 240
    .local v1, "tag":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "black_action"

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v2, v4}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v2, v4}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v2, v4}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    :goto_1
    return v2

    .line 239
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "<listener>:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->listenerTag:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    move v2, v3

    .line 241
    goto :goto_1
.end method

.method registerOnlineConfig()V
    .locals 5

    .prologue
    .line 449
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Alignment;->mConfigHandler:Landroid/os/Handler;

    .line 450
    new-instance v3, Lcom/android/server/AlarmManagerService$Alignment$AlignmentConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$Alignment$AlignmentConfigUpdater;-><init>(Lcom/android/server/AlarmManagerService$Alignment;)V

    const-string/jumbo v4, "AlarmManagement"

    .line 449
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 451
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 452
    return-void
.end method

.method public resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 20
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 461
    if-nez p1, :cond_0

    .line 462
    const-string/jumbo v17, "AlarmManager_ALIGNMENT"

    const-string/jumbo v18, "[OnlineConfig] AlignmentConfigObserver jsonArray ==null"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-void

    .line 466
    :cond_0
    sget-boolean v17, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v17, :cond_1

    .line 467
    const-string/jumbo v17, "AlarmManager_ALIGNMENT"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "[OnlineConfig] jsonArray = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_1
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_4

    .line 497
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 498
    .local v15, "json":Lorg/json/JSONObject;
    const-string/jumbo v17, "name"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "config_alignment"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 499
    const-string/jumbo v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 500
    .local v6, "enabled":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_3

    .line 501
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    .line 496
    .end local v6    # "enabled":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 505
    .restart local v6    # "enabled":I
    :cond_3
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    .line 593
    .end local v6    # "enabled":I
    .end local v15    # "json":Lorg/json/JSONObject;
    :cond_4
    const-string/jumbo v17, "AlarmManager_ALIGNMENT"

    const-string/jumbo v18, "[OnlineConfig] FrequentBlackListConfigUpdater updated complete !"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :goto_1
    return-void

    .line 511
    .restart local v15    # "json":Lorg/json/JSONObject;
    :cond_5
    const-string/jumbo v17, "name"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "blacklist"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clear()V

    .line 513
    const-string/jumbo v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 514
    .local v11, "jaBlack":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_2

    .line 516
    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 518
    .local v13, "joBlack":Lorg/json/JSONObject;
    const-string/jumbo v17, "package"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 519
    .local v16, "packageName":Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 521
    .local v4, "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v17, "action"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 522
    .local v10, "jaAction":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_6

    .line 523
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 524
    .local v3, "action":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 522
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 527
    .end local v3    # "action":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    sget-boolean v17, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v17, :cond_7

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AlarmManagerService$Alignment;->dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    :try_start_2
    monitor-exit v18

    .line 514
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 527
    :catchall_0
    move-exception v17

    monitor-exit v18

    throw v17
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 594
    .end local v4    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v7    # "i":I
    .end local v9    # "j":I
    .end local v10    # "jaAction":Lorg/json/JSONArray;
    .end local v11    # "jaBlack":Lorg/json/JSONArray;
    .end local v13    # "joBlack":Lorg/json/JSONObject;
    .end local v15    # "json":Lorg/json/JSONObject;
    .end local v16    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 595
    .local v5, "e":Lorg/json/JSONException;
    const-string/jumbo v17, "AlarmManager_ALIGNMENT"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 596
    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v19

    .line 595
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 538
    .end local v5    # "e":Lorg/json/JSONException;
    .restart local v15    # "json":Lorg/json/JSONObject;
    :cond_8
    :try_start_3
    const-string/jumbo v17, "name"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "whitelist"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clear()V

    .line 540
    const-string/jumbo v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 541
    .local v12, "jaWhite":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_2

    .line 543
    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 545
    .local v14, "joWhite":Lorg/json/JSONObject;
    const-string/jumbo v17, "package"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 546
    .restart local v16    # "packageName":Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 548
    .restart local v4    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v17, "action"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 549
    .restart local v10    # "jaAction":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_5
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_9

    .line 550
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 551
    .restart local v3    # "action":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 549
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 554
    .end local v3    # "action":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 555
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    sget-boolean v17, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v17, :cond_a

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AlarmManagerService$Alignment;->dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_a
    :try_start_5
    monitor-exit v18

    .line 541
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 554
    :catchall_1
    move-exception v17

    monitor-exit v18

    throw v17

    .line 565
    .end local v4    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v7    # "i":I
    .end local v9    # "j":I
    .end local v10    # "jaAction":Lorg/json/JSONArray;
    .end local v12    # "jaWhite":Lorg/json/JSONArray;
    .end local v14    # "joWhite":Lorg/json/JSONObject;
    .end local v16    # "packageName":Ljava/lang/String;
    :cond_b
    const-string/jumbo v17, "name"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "special_list"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clear()V

    .line 567
    const-string/jumbo v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 568
    .restart local v12    # "jaWhite":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_6
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_2

    .line 570
    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 572
    .restart local v14    # "joWhite":Lorg/json/JSONObject;
    const-string/jumbo v17, "package"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 573
    .restart local v16    # "packageName":Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 575
    .restart local v4    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v17, "action"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 576
    .restart local v10    # "jaAction":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_7
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_c

    .line 577
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 578
    .restart local v3    # "action":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 576
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 581
    .end local v3    # "action":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 582
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    sget-boolean v17, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v17, :cond_d

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AlarmManagerService$Alignment;->dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_d
    :try_start_7
    monitor-exit v18

    .line 568
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 581
    :catchall_2
    move-exception v17

    monitor-exit v18

    throw v17
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
.end method
