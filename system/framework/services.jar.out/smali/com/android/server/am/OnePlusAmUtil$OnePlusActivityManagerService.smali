.class public Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;
.super Ljava/lang/Object;
.source "OnePlusAmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusAmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnePlusActivityManagerService"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

.field private mContext:Landroid/content/Context;

.field public mFossModeFeature:Z

.field private mHandler:Landroid/os/Handler;

.field private mLruProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mNetBoostFeature:Z

.field private mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

.field private mOemFossModeManager:Lcom/android/server/am/OemFossModeManager;

.field private mOnePlusDuallteManager:Lcom/android/server/am/OnePlusDuallteManager;

.field private mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

.field private mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    .line 47
    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 48
    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    .line 51
    iput-boolean v3, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mNetBoostFeature:Z

    .line 55
    iput-boolean v3, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mFossModeFeature:Z

    .line 62
    iput-object p1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 63
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    .line 64
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mHandler:Landroid/os/Handler;

    .line 65
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    .line 67
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 68
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    .line 71
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5080011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/am/IEmbryoManager;->setBlackList(Ljava/util/List;)V

    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x4a

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mFossModeFeature:Z

    .line 78
    return-void
.end method


# virtual methods
.method public appDiedLocked(Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;Z)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "pid"    # I
    .param p3, "thread"    # Landroid/app/IApplicationThread;
    .param p4, "fromBinderDied"    # Z

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-interface {v0, p1, v1}, Lcom/android/server/am/IEmbryoManager;->prepare(Lcom/android/server/am/ProcessRecord;Ljava/util/List;)V

    .line 114
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->cancelBgDetectNotificationIfNeeded()V

    .line 115
    return-void
.end method

.method public finishBooting()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->startMonitor()V

    .line 123
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceUpdateOnlineConfig()V

    .line 127
    invoke-static {}, Lcom/android/server/am/OnePlusPerfManager;->getInstance()Lcom/android/server/am/OnePlusPerfManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusPerfManager;->initOnlineConfig(Landroid/content/Context;)V

    .line 129
    return-void
.end method

.method public getOHPD()Lcom/android/server/am/OnePlusHighPowerDetector;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    return-object v0
.end method

.method public ifOHPDInited()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestPermission(Z)V
    .locals 5
    .param p1, "request"    # Z

    .prologue
    .line 132
    const-string/jumbo v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isRequestPermission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    const-string/jumbo v1, "ActivityManager"

    const-string/jumbo v2, "Only applications are allowed to call isRequestPermission!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 139
    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 140
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 141
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_1

    .line 142
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->permRequestInc()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    .line 137
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 148
    return-void

    .line 144
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->permRequestDec()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 139
    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v3

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 137
    :catchall_1
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public startProcessLocked(Lcom/android/server/am/ProcessRecord;I)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "pid"    # I

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mNetBoostFeature:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->addPidToCgroupTasksWithJudge(Lcom/android/server/am/ProcessRecord;I)V

    .line 162
    :cond_0
    return-void
.end method

.method public systemReady(Ljava/lang/Runnable;Landroid/util/TimingsTraceLog;)V
    .locals 4
    .param p1, "goingCallback"    # Ljava/lang/Runnable;
    .param p2, "traceLog"    # Landroid/util/TimingsTraceLog;

    .prologue
    .line 83
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OnePlusAppBootManager;->initEnv(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v2}, Lcom/android/server/am/IEmbryoManager;->initiate(Landroid/content/Context;Landroid/os/Handler;)V

    .line 91
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 92
    iget-object v3, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    .line 91
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->getInstance(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/RestartProcessManager;)Lcom/android/server/am/OnePlusHighPowerDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    .line 96
    invoke-static {}, Lcom/android/server/am/GraphManager;->getInstance()Lcom/android/server/am/GraphManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/GraphManager;->initiate(Landroid/content/Context;Landroid/os/Handler;)V

    .line 99
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mNetBoostFeature:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OnePlusNetCgroupSetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .line 102
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mFossModeFeature:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/OemFossModeManager;->getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OemFossModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOemFossModeManager:Lcom/android/server/am/OemFossModeManager;

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/OnePlusDuallteManager;->getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OnePlusDuallteManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOnePlusDuallteManager:Lcom/android/server/am/OnePlusDuallteManager;

    .line 106
    return-void
.end method
