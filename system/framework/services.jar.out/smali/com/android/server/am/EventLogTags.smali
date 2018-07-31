.class public Lcom/android/server/am/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final AM_ACTIVITY_FULLY_DRAWN_TIME:I = 0x755a

.field public static final AM_ACTIVITY_LAUNCH_TIME:I = 0x7539

.field public static final AM_ANR:I = 0x7538

.field public static final AM_BROADCAST_DISCARD_APP:I = 0x7549

.field public static final AM_BROADCAST_DISCARD_FILTER:I = 0x7548

.field public static final AM_CRASH:I = 0x7557

.field public static final AM_CREATE_ACTIVITY:I = 0x7535

.field public static final AM_CREATE_SERVICE:I = 0x754e

.field public static final AM_CREATE_TASK:I = 0x7534

.field public static final AM_DESTROY_ACTIVITY:I = 0x7542

.field public static final AM_DESTROY_SERVICE:I = 0x754f

.field public static final AM_DROP_PROCESS:I = 0x7551

.field public static final AM_FAILED_TO_PAUSE:I = 0x753c

.field public static final AM_FINISH_ACTIVITY:I = 0x7531

.field public static final AM_FOCUSED_STACK:I = 0x755c

.field public static final AM_KILL:I = 0x7547

.field public static final AM_LOW_MEMORY:I = 0x7541

.field public static final AM_MEMINFO:I = 0x755e

.field public static final AM_MEM_FACTOR:I = 0x7562

.field public static final AM_NEW_INTENT:I = 0x7533

.field public static final AM_ON_PAUSED_CALLED:I = 0x7545

.field public static final AM_ON_RESUME_CALLED:I = 0x7546

.field public static final AM_ON_STOP_CALLED:I = 0x7561

.field public static final AM_PAUSE_ACTIVITY:I = 0x753d

.field public static final AM_PRE_BOOT:I = 0x755d

.field public static final AM_PROCESS_CRASHED_TOO_MUCH:I = 0x7550

.field public static final AM_PROCESS_START_TIMEOUT:I = 0x7555

.field public static final AM_PROC_BAD:I = 0x753f

.field public static final AM_PROC_BOUND:I = 0x753a

.field public static final AM_PROC_DIED:I = 0x753b

.field public static final AM_PROC_GOOD:I = 0x7540

.field public static final AM_PROC_START:I = 0x753e

.field public static final AM_PROVIDER_LOST_PROCESS:I = 0x7554

.field public static final AM_PSS:I = 0x755f

.field public static final AM_RELAUNCH_ACTIVITY:I = 0x7544

.field public static final AM_RELAUNCH_RESUME_ACTIVITY:I = 0x7543

.field public static final AM_RESTART_ACTIVITY:I = 0x7536

.field public static final AM_RESUME_ACTIVITY:I = 0x7537

.field public static final AM_SCHEDULE_SERVICE_RESTART:I = 0x7553

.field public static final AM_SERVICE_CRASHED_TOO_MUCH:I = 0x7552

.field public static final AM_SET_RESUMED_ACTIVITY:I = 0x755b

.field public static final AM_STOP_ACTIVITY:I = 0x7560

.field public static final AM_STOP_IDLE_SERVICE:I = 0x7568

.field public static final AM_SWITCH_USER:I = 0x7559

.field public static final AM_TASK_TO_FRONT:I = 0x7532

.field public static final AM_UID_ACTIVE:I = 0x7566

.field public static final AM_UID_IDLE:I = 0x7567

.field public static final AM_UID_RUNNING:I = 0x7564

.field public static final AM_UID_STOPPED:I = 0x7565

.field public static final AM_USER_STATE_CHANGED:I = 0x7563

.field public static final AM_WTF:I = 0x7558

.field public static final BOOT_PROGRESS_AMS_READY:I = 0xbe0

.field public static final BOOT_PROGRESS_ENABLE_SCREEN:I = 0xbea

.field public static final CONFIGURATION_CHANGED:I = 0xa9f

.field public static final CPU:I = 0xaa1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeAmActivityFullyDrawnTime(IILjava/lang/String;J)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "time"    # J

    .prologue
    .line 339
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x755a

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 340
    return-void
.end method

.method public static writeAmActivityLaunchTime(IILjava/lang/String;J)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "time"    # J

    .prologue
    .line 227
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x7539

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 228
    return-void
.end method

.method public static writeAmAnr(IILjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    .line 223
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/16 v1, 0x7538

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 224
    return-void
.end method

.method public static writeAmBroadcastDiscardApp(IILjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "broadcast"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "receiverNumber"    # I
    .param p4, "app"    # Ljava/lang/String;

    .prologue
    .line 291
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/16 v1, 0x7549

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 292
    return-void
.end method

.method public static writeAmBroadcastDiscardFilter(IILjava/lang/String;II)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "broadcast"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "receiverNumber"    # I
    .param p4, "broadcastfilter"    # I

    .prologue
    .line 287
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x7548

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 288
    return-void
.end method

.method public static writeAmCrash(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "exception"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "file"    # Ljava/lang/String;
    .param p7, "line"    # I

    .prologue
    .line 327
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x7557

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 328
    return-void
.end method

.method public static writeAmCreateActivity(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "taskId"    # I
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "mimeType"    # Ljava/lang/String;
    .param p6, "uri"    # Ljava/lang/String;
    .param p7, "flags"    # I

    .prologue
    .line 211
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x7535

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 212
    return-void
.end method

.method public static writeAmCreateService(IILjava/lang/String;II)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "serviceRecord"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .prologue
    .line 295
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x754e

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 296
    return-void
.end method

.method public static writeAmCreateTask(II)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "taskId"    # I

    .prologue
    .line 207
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x7534

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 208
    return-void
.end method

.method public static writeAmDestroyActivity(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "taskId"    # I
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    .line 263
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/16 v1, 0x7542

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 264
    return-void
.end method

.method public static writeAmDestroyService(III)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "serviceRecord"    # I
    .param p2, "pid"    # I

    .prologue
    .line 299
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x754f

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 300
    return-void
.end method

.method public static writeAmDropProcess(I)V
    .locals 1
    .param p0, "pid"    # I

    .prologue
    .line 307
    const/16 v0, 0x7551

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 308
    return-void
.end method

.method public static writeAmFailedToPause(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "wantingToPause"    # Ljava/lang/String;
    .param p3, "currentlyPausing"    # Ljava/lang/String;

    .prologue
    .line 239
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/16 v1, 0x753c

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 240
    return-void
.end method

.method public static writeAmFinishActivity(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "taskId"    # I
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    .line 195
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/16 v1, 0x7531

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 196
    return-void
.end method

.method public static writeAmFocusedStack(IIILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "focusedStackId"    # I
    .param p2, "lastFocusedStackId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 347
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/16 v1, 0x755c

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 348
    return-void
.end method

.method public static writeAmKill(IILjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "oomadj"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    .line 283
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/16 v1, 0x7547

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 284
    return-void
.end method

.method public static writeAmLowMemory(I)V
    .locals 1
    .param p0, "numProcesses"    # I

    .prologue
    .line 259
    const/16 v0, 0x7541

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 260
    return-void
.end method

.method public static writeAmMemFactor(II)V
    .locals 3
    .param p0, "current"    # I
    .param p1, "previous"    # I

    .prologue
    .line 371
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x7562

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 372
    return-void
.end method

.method public static writeAmMeminfo(JJJJJ)V
    .locals 4
    .param p0, "cached"    # J
    .param p2, "free"    # J
    .param p4, "zram"    # J
    .param p6, "kernel"    # J
    .param p8, "native_"    # J

    .prologue
    .line 355
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x755e

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 356
    return-void
.end method

.method public static writeAmNewIntent(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "taskId"    # I
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "mimeType"    # Ljava/lang/String;
    .param p6, "uri"    # Ljava/lang/String;
    .param p7, "flags"    # I

    .prologue
    .line 203
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x7533

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 204
    return-void
.end method

.method public static writeAmOnPausedCalled(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 275
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/16 v1, 0x7545

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 276
    return-void
.end method

.method public static writeAmOnResumeCalled(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 279
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/16 v1, 0x7546

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 280
    return-void
.end method

.method public static writeAmOnStopCalled(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 367
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/16 v1, 0x7561

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 368
    return-void
.end method

.method public static writeAmPauseActivity(IILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "componentName"    # Ljava/lang/String;

    .prologue
    .line 243
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/16 v1, 0x753d

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 244
    return-void
.end method

.method public static writeAmPreBoot(ILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "package_"    # Ljava/lang/String;

    .prologue
    .line 351
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/16 v1, 0x755d

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 352
    return-void
.end method

.method public static writeAmProcBad(IILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .prologue
    .line 251
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/16 v1, 0x753f

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 252
    return-void
.end method

.method public static writeAmProcBound(IILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .prologue
    .line 231
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/16 v1, 0x753a

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 232
    return-void
.end method

.method public static writeAmProcDied(IILjava/lang/String;II)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "oomadj"    # I
    .param p4, "procstate"    # I

    .prologue
    .line 235
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x753b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 236
    return-void
.end method

.method public static writeAmProcGood(IILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .prologue
    .line 255
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/16 v1, 0x7540

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 256
    return-void
.end method

.method public static writeAmProcStart(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "component"    # Ljava/lang/String;

    .prologue
    .line 247
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/16 v1, 0x753e

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 248
    return-void
.end method

.method public static writeAmProcessCrashedTooMuch(ILjava/lang/String;I)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 303
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x7550

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 304
    return-void
.end method

.method public static writeAmProcessStartTimeout(IIILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "processName"    # Ljava/lang/String;

    .prologue
    .line 323
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/16 v1, 0x7555

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 324
    return-void
.end method

.method public static writeAmProviderLostProcess(ILjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 319
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/16 v1, 0x7554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 320
    return-void
.end method

.method public static writeAmPss(IILjava/lang/String;JJJ)V
    .locals 3
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "pss"    # J
    .param p5, "uss"    # J
    .param p7, "swappss"    # J

    .prologue
    .line 359
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x755f

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 360
    return-void
.end method

.method public static writeAmRelaunchActivity(IIILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "taskId"    # I
    .param p3, "componentName"    # Ljava/lang/String;

    .prologue
    .line 271
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/16 v1, 0x7544

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 272
    return-void
.end method

.method public static writeAmRelaunchResumeActivity(IIILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "taskId"    # I
    .param p3, "componentName"    # Ljava/lang/String;

    .prologue
    .line 267
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/16 v1, 0x7543

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 268
    return-void
.end method

.method public static writeAmRestartActivity(IIILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "taskId"    # I
    .param p3, "componentName"    # Ljava/lang/String;

    .prologue
    .line 215
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/16 v1, 0x7536

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 216
    return-void
.end method

.method public static writeAmResumeActivity(IIILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "taskId"    # I
    .param p3, "componentName"    # Ljava/lang/String;

    .prologue
    .line 219
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/16 v1, 0x7537

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 220
    return-void
.end method

.method public static writeAmScheduleServiceRestart(ILjava/lang/String;J)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 315
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x7553

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 316
    return-void
.end method

.method public static writeAmServiceCrashedTooMuch(IILjava/lang/String;I)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "crashCount"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .prologue
    .line 311
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x7552

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 312
    return-void
.end method

.method public static writeAmSetResumedActivity(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 343
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/16 v1, 0x755b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 344
    return-void
.end method

.method public static writeAmStopActivity(IILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "componentName"    # Ljava/lang/String;

    .prologue
    .line 363
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/16 v1, 0x7560

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 364
    return-void
.end method

.method public static writeAmStopIdleService(ILjava/lang/String;)V
    .locals 3
    .param p0, "uid"    # I
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 395
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/16 v1, 0x7568

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 396
    return-void
.end method

.method public static writeAmSwitchUser(I)V
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 335
    const/16 v0, 0x7559

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 336
    return-void
.end method

.method public static writeAmTaskToFront(II)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "task"    # I

    .prologue
    .line 199
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x7532

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 200
    return-void
.end method

.method public static writeAmUidActive(I)V
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 387
    const/16 v0, 0x7566

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 388
    return-void
.end method

.method public static writeAmUidIdle(I)V
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 391
    const/16 v0, 0x7567

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 392
    return-void
.end method

.method public static writeAmUidRunning(I)V
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 379
    const/16 v0, 0x7564

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 380
    return-void
.end method

.method public static writeAmUidStopped(I)V
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 383
    const/16 v0, 0x7565

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 384
    return-void
.end method

.method public static writeAmUserStateChanged(II)V
    .locals 3
    .param p0, "id"    # I
    .param p1, "state"    # I

    .prologue
    .line 375
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x7563

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 376
    return-void
.end method

.method public static writeAmWtf(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .prologue
    .line 331
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/16 v1, 0x7558

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 332
    return-void
.end method

.method public static writeBootProgressAmsReady(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 187
    const/16 v0, 0xbe0

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 188
    return-void
.end method

.method public static writeBootProgressEnableScreen(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 191
    const/16 v0, 0xbea

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 192
    return-void
.end method

.method public static writeConfigurationChanged(I)V
    .locals 1
    .param p0, "configMask"    # I

    .prologue
    .line 179
    const/16 v0, 0xa9f

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 180
    return-void
.end method

.method public static writeCpu(IIIIII)V
    .locals 3
    .param p0, "total"    # I
    .param p1, "user"    # I
    .param p2, "system"    # I
    .param p3, "iowait"    # I
    .param p4, "irq"    # I
    .param p5, "softirq"    # I

    .prologue
    .line 183
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0xaa1

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 184
    return-void
.end method
