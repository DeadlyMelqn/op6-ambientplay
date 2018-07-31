.class final Lcom/android/server/am/VrController;
.super Ljava/lang/Object;
.source "VrController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/VrController$1;
    }
.end annotation


# static fields
.field private static final FLAG_NON_VR_MODE:I = 0x0

.field private static final FLAG_PERSISTENT_VR_MODE:I = 0x2

.field private static final FLAG_VR_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VrController"


# instance fields
.field private final mGlobalAmLock:Ljava/lang/Object;

.field private final mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

.field private mVrRenderThreadTid:I

.field private mVrState:I


# direct methods
.method static synthetic -get0(Lcom/android/server/am/VrController;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/VrController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/VrController;->mGlobalAmLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/VrController;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/VrController;

    .prologue
    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/am/VrController;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/VrController;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/am/VrController;->mVrState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/am/VrController;IZ)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/VrController;
    .param p1, "newTid"    # I
    .param p2, "suppressLogs"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VrController;->setPersistentVrRenderThreadLocked(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/VrController;IIZ)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/VrController;
    .param p1, "newTid"    # I
    .param p2, "schedGroup"    # I
    .param p3, "suppressLogs"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/VrController;->setVrRenderThreadLocked(IIZ)I

    move-result v0

    return v0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "globalAmLock"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    .line 89
    iput v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    .line 94
    new-instance v0, Lcom/android/server/am/VrController$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/VrController$1;-><init>(Lcom/android/server/am/VrController;)V

    .line 93
    iput-object v0, p0, Lcom/android/server/am/VrController;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 117
    iput-object p1, p0, Lcom/android/server/am/VrController;->mGlobalAmLock:Ljava/lang/Object;

    .line 118
    return-void
.end method

.method private changeVrModeLocked(ZLcom/android/server/am/ProcessRecord;)Z
    .locals 5
    .param p1, "vrMode"    # Z
    .param p2, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v4, 0x0

    .line 273
    iget v1, p0, Lcom/android/server/am/VrController;->mVrState:I

    .line 277
    .local v1, "oldVrState":I
    if-eqz p1, :cond_1

    .line 278
    iget v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    .line 283
    :goto_0
    iget v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    if-eq v1, v2, :cond_2

    const/4 v0, 0x1

    .line 285
    .local v0, "changed":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 286
    if-eqz p2, :cond_3

    .line 287
    iget v2, p2, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    if-lez v2, :cond_0

    .line 288
    iget v2, p2, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    iget v3, p2, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/am/VrController;->setVrRenderThreadLocked(IIZ)I

    .line 294
    :cond_0
    :goto_2
    return v0

    .line 280
    .end local v0    # "changed":Z
    :cond_1
    iget v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    goto :goto_0

    .line 283
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_1

    .line 291
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/am/VrController;->clearVrRenderThreadLocked(Z)V

    goto :goto_2
.end method

.method private clearVrRenderThreadLocked(Z)V
    .locals 1
    .param p1, "suppressLogs"    # Z

    .prologue
    .line 390
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/VrController;->updateVrRenderThreadLocked(IZ)I

    .line 391
    return-void
.end method

.method private enforceThreadInProcess(II)V
    .locals 2
    .param p1, "tid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 398
    invoke-static {p2, p1}, Landroid/os/Process;->isThreadInProcess(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "VR thread does not belong to process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_0
    return-void
.end method

.method private hasPersistentVrFlagSet()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 416
    iget v1, p0, Lcom/android/server/am/VrController;->mVrState:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private inVrMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 407
    iget v1, p0, Lcom/android/server/am/VrController;->mVrState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setPersistentVrRenderThreadLocked(IZ)I
    .locals 2
    .param p1, "newTid"    # I
    .param p2, "suppressLogs"    # Z

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/android/server/am/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    if-nez p2, :cond_0

    .line 342
    const-string/jumbo v0, "VrController"

    const-string/jumbo v1, "Failed to set persistent VR thread, system not in persistent VR mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    return v0

    .line 347
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VrController;->updateVrRenderThreadLocked(IZ)I

    move-result v0

    return v0
.end method

.method private setVrRenderThreadLocked(IIZ)I
    .locals 6
    .param p1, "newTid"    # I
    .param p2, "schedGroup"    # I
    .param p3, "suppressLogs"    # Z

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/android/server/am/VrController;->inVrMode()Z

    move-result v1

    .line 367
    .local v1, "inVr":Z
    invoke-direct {p0}, Lcom/android/server/am/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    .line 368
    .local v0, "inPersistentVr":Z
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const/4 v3, 0x2

    if-eq p2, v3, :cond_4

    .line 369
    :cond_0
    if-nez p3, :cond_2

    .line 370
    const-string/jumbo v2, "caller is not the current top application."

    .line 371
    .local v2, "reason":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 372
    const-string/jumbo v2, "system not in VR mode."

    .line 376
    :cond_1
    :goto_0
    const-string/jumbo v3, "VrController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to set VR thread, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .end local v2    # "reason":Ljava/lang/String;
    :cond_2
    iget v3, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    return v3

    .line 373
    .restart local v2    # "reason":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_1

    .line 374
    const-string/jumbo v2, "system in persistent VR mode."

    goto :goto_0

    .line 380
    .end local v2    # "reason":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/VrController;->updateVrRenderThreadLocked(IZ)I

    move-result v3

    return v3
.end method

.method private updateVrRenderThreadLocked(IZ)I
    .locals 2
    .param p1, "newTid"    # I
    .param p2, "suppressLogs"    # Z

    .prologue
    const/4 v1, 0x0

    .line 310
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    if-ne v0, p1, :cond_0

    .line 311
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    return v0

    .line 314
    :cond_0
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    if-lez v0, :cond_1

    .line 315
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    invoke-static {v0, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsRegularPriority(IZ)Z

    .line 316
    iput v1, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    .line 319
    :cond_1
    if-lez p1, :cond_2

    .line 320
    iput p1, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    .line 321
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    invoke-static {v0, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    .line 323
    :cond_2
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    return v0
.end method


# virtual methods
.method public onSystemReady()V
    .locals 2

    .prologue
    .line 124
    const-class v1, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    .line 125
    .local v0, "vrManagerInternal":Lcom/android/server/vr/VrManagerInternal;
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/server/am/VrController;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/server/vr/VrManagerInternal;->addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 128
    :cond_0
    return-void
.end method

.method public onTopProcChangedLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v2, 0x1

    .line 139
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 140
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/VrController;->setVrRenderThreadLocked(IIZ)I

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    iget v1, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    if-ne v0, v1, :cond_0

    .line 143
    invoke-direct {p0, v2}, Lcom/android/server/am/VrController;->clearVrRenderThreadLocked(Z)V

    goto :goto_0
.end method

.method public onVrModeChanged(Lcom/android/server/am/ActivityRecord;)Z
    .locals 9
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 157
    const-class v7, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    .line 158
    .local v0, "vrService":Lcom/android/server/vr/VrManagerInternal;
    if-nez v0, :cond_0

    .line 160
    const/4 v7, 0x0

    return v7

    .line 166
    :cond_0
    const/4 v4, -0x1

    .line 167
    .local v4, "processId":I
    const/4 v6, 0x0

    .line 168
    .local v6, "changed":Z
    iget-object v8, p0, Lcom/android/server/am/VrController;->mGlobalAmLock:Ljava/lang/Object;

    monitor-enter v8

    .line 169
    :try_start_0
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v7, :cond_2

    const/4 v1, 0x1

    .line 170
    .local v1, "vrMode":Z
    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    .line 171
    .local v2, "requestedPackage":Landroid/content/ComponentName;
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 172
    .local v3, "userId":I
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 175
    .local v5, "callingPackage":Landroid/content/ComponentName;
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v1, v7}, Lcom/android/server/am/VrController;->changeVrModeLocked(ZLcom/android/server/am/ProcessRecord;)Z

    move-result v6

    .line 177
    .local v6, "changed":Z
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_1

    .line 178
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v7, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v8

    .line 184
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/vr/VrManagerInternal;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 185
    return v6

    .line 169
    .end local v1    # "vrMode":Z
    .end local v2    # "requestedPackage":Landroid/content/ComponentName;
    .end local v3    # "userId":I
    .end local v5    # "callingPackage":Landroid/content/ComponentName;
    .local v6, "changed":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "vrMode":Z
    goto :goto_0

    .line 168
    .end local v1    # "vrMode":Z
    .end local v6    # "changed":Z
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public setPersistentVrThreadLocked(IILcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "tid"    # I
    .param p2, "pid"    # I
    .param p3, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-direct {p0}, Lcom/android/server/am/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    const-string/jumbo v0, "VrController"

    const-string/jumbo v1, "Persistent VR thread may only be set in persistent VR mode!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void

    .line 242
    :cond_0
    if-nez p3, :cond_1

    .line 243
    const-string/jumbo v0, "VrController"

    const-string/jumbo v1, "Persistent VR thread not set, calling process doesn\'t exist!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void

    .line 246
    :cond_1
    if-eqz p1, :cond_2

    .line 247
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VrController;->enforceThreadInProcess(II)V

    .line 249
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/VrController;->setPersistentVrRenderThreadLocked(IZ)I

    .line 250
    return-void
.end method

.method public setVrThreadLocked(IILcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p1, "tid"    # I
    .param p2, "pid"    # I
    .param p3, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v0, 0x0

    .line 204
    invoke-direct {p0}, Lcom/android/server/am/VrController;->hasPersistentVrFlagSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    const-string/jumbo v0, "VrController"

    const-string/jumbo v1, "VR thread cannot be set in persistent VR mode!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void

    .line 208
    :cond_0
    if-nez p3, :cond_1

    .line 209
    const-string/jumbo v0, "VrController"

    const-string/jumbo v1, "Persistent VR thread not set, calling process doesn\'t exist!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void

    .line 212
    :cond_1
    if-eqz p1, :cond_2

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VrController;->enforceThreadInProcess(II)V

    .line 215
    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/VrController;->inVrMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 216
    const-string/jumbo v1, "VrController"

    const-string/jumbo v2, "VR thread cannot be set when not in VR mode!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_0
    if-lez p1, :cond_4

    .end local p1    # "tid":I
    :goto_1
    iput p1, p3, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    .line 221
    return-void

    .line 218
    .restart local p1    # "tid":I
    :cond_3
    iget v1, p3, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/am/VrController;->setVrRenderThreadLocked(IIZ)I

    goto :goto_0

    :cond_4
    move p1, v0

    .line 220
    goto :goto_1
.end method

.method public shouldDisableNonVrUiLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 258
    iget v1, p0, Lcom/android/server/am/VrController;->mVrState:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 421
    const-string/jumbo v0, "[VrState=0x%x,VrRenderThreadTid=%d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
