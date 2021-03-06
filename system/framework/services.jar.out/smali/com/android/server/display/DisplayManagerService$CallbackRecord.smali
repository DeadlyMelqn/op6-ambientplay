.class final Lcom/android/server/display/DisplayManagerService$CallbackRecord;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackRecord"
.end annotation


# instance fields
.field private final mCallback:Landroid/hardware/display/IDisplayManagerCallback;

.field public final mPid:I

.field public final mUid:I

.field public mWifiDisplayScanRequested:Z

.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;ILandroid/hardware/display/IDisplayManagerCallback;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayManagerService;
    .param p2, "pid"    # I
    .param p3, "callback"    # Landroid/hardware/display/IDisplayManagerCallback;
    .param p4, "callingUid"    # I

    .prologue
    .line 1531
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 1533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1537
    iput p2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 1538
    iput-object p3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    .line 1541
    iput p4, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    .line 1544
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 1548
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1549
    const-string/jumbo v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Display listener for pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p0}, Lcom/android/server/display/DisplayManagerService;->-wrap17(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 1552
    return-void
.end method

.method public notifyDisplayEventAsync(IIZ)Z
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "event"    # I
    .param p3, "isDelay"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1563
    :try_start_0
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->isSupportFrozenApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1564
    if-nez p3, :cond_0

    iget v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->isDeliverDisplayChange(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1565
    const/4 v1, 0x0

    return v1

    .line 1567
    :cond_0
    iget v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    .line 1568
    const-string/jumbo v2, "notifyDisplayEventAsync"

    const/4 v3, 0x1

    .line 1567
    invoke-static {v1, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out_Delay(ILjava/lang/String;I)V

    .line 1571
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {v1, p1, p2}, Landroid/hardware/display/IDisplayManagerCallback;->onDisplayEvent(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1572
    return v4

    .line 1576
    :catch_0
    move-exception v0

    .line 1577
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to notify process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1578
    iget v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 1577
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1578
    const-string/jumbo v3, " that displays changed, assuming it died."

    .line 1577
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1579
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    .line 1582
    return v4
.end method
