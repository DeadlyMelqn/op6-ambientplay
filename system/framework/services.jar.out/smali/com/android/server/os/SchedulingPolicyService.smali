.class public Lcom/android/server/os/SchedulingPolicyService;
.super Landroid/os/ISchedulingPolicyService$Stub;
.source "SchedulingPolicyService.java"


# static fields
.field private static final PRIORITY_MAX:I = 0x3

.field private static final PRIORITY_MIN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SchedulingPolicyService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/ISchedulingPolicyService$Stub;-><init>()V

    .line 39
    return-void
.end method

.method private isPermitted()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 79
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 80
    return v2

    .line 83
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 89
    const/4 v0, 0x0

    return v0

    .line 87
    :sswitch_0
    return v2

    .line 83
    :sswitch_data_0
    .sparse-switch
        0x3ea -> :sswitch_0
        0x411 -> :sswitch_0
        0x417 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public requestPriority(IIIZ)I
    .locals 5
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "prio"    # I
    .param p4, "isForApp"    # Z

    .prologue
    const/4 v4, -0x1

    .line 52
    invoke-direct {p0}, Lcom/android/server/os/SchedulingPolicyService;->isPermitted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-ge p3, v1, :cond_1

    .line 54
    :cond_0
    return v4

    .line 53
    :cond_1
    const/4 v1, 0x3

    if-gt p3, v1, :cond_0

    invoke-static {p2}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 56
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3ea

    if-eq v1, v2, :cond_2

    .line 59
    if-nez p4, :cond_3

    .line 60
    const/4 v1, 0x4

    .line 59
    :goto_0
    :try_start_0
    invoke-static {p2, v1}, Landroid/os/Process;->setThreadGroup(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_2
    const v1, 0x40000001    # 2.0000002f

    :try_start_1
    invoke-static {p2, v1, p3}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    const/4 v1, 0x0

    return v1

    .line 60
    :cond_3
    const/4 v1, 0x6

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "SchedulingPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed setThreadGroup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return v4

    .line 70
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 71
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "SchedulingPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed setThreadScheduler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return v4
.end method
