.class final Lcom/android/server/autofill/RemoteFillService;
.super Ljava/lang/Object;
.source "RemoteFillService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;,
        Lcom/android/server/autofill/RemoteFillService$MyHandler;,
        Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;,
        Lcom/android/server/autofill/RemoteFillService$PendingRequest;,
        Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;,
        Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RemoteFillService"

.field private static final TIMEOUT_IDLE_BIND_MILLIS:J = 0x1388L

.field private static final TIMEOUT_REMOTE_REQUEST_MILLIS:J = 0x1388L


# instance fields
.field private mAutoFillService:Landroid/service/autofill/IAutoFillService;

.field private mBinding:Z

.field private final mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

.field private mCompleted:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mHandler:Lcom/android/internal/os/HandlerCaller;

.field private final mIntent:Landroid/content/Intent;

.field private mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceDied:Z

.field private final mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/autofill/RemoteFillService;)Landroid/service/autofill/IAutoFillService;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/autofill/RemoteFillService;

    .prologue
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/autofill/RemoteFillService;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/autofill/RemoteFillService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/autofill/RemoteFillService;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/autofill/RemoteFillService;

    .prologue
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/autofill/RemoteFillService;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/autofill/RemoteFillService;

    .prologue
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/autofill/RemoteFillService;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/autofill/RemoteFillService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/autofill/RemoteFillService;)Lcom/android/internal/os/HandlerCaller;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/autofill/RemoteFillService;

    .prologue
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/autofill/RemoteFillService;)Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/autofill/RemoteFillService;

    .prologue
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/autofill/RemoteFillService;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/autofill/RemoteFillService;

    .prologue
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/IAutoFillService;)Landroid/service/autofill/IAutoFillService;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "-value"    # Landroid/service/autofill/IAutoFillService;

    .prologue
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/autofill/RemoteFillService;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "-value"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .prologue
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/autofill/RemoteFillService;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceDied:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;IILandroid/service/autofill/FillResponse;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .param p2, "callingUid"    # I
    .param p3, "requestFlags"    # I
    .param p4, "response"    # Landroid/service/autofill/FillResponse;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingRequest;IILandroid/service/autofill/FillResponse;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/autofill/RemoteFillService;Landroid/os/ICancellationSignal;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "cancellationSignal"    # Landroid/os/ICancellationSignal;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillTimeout(Landroid/os/ICancellationSignal;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnSaveRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnSaveRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/autofill/RemoteFillService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/autofill/RemoteFillService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->handleBinderDied()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/autofill/RemoteFillService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/autofill/RemoteFillService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->handleDestroy()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handlePendingRequest(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/autofill/RemoteFillService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/autofill/RemoteFillService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->handleUnbind()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "callbacks"    # Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;-><init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 115
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mContext:Landroid/content/Context;

    .line 116
    iput-object p4, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    .line 117
    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.autofill.AutofillService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mIntent:Landroid/content/Intent;

    .line 119
    iput p3, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    .line 120
    new-instance v0, Lcom/android/server/autofill/RemoteFillService$MyHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/autofill/RemoteFillService$MyHandler;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    .line 121
    return-void
.end method

.method private cancelScheduledUnbind()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->removeMessages(I)V

    .line 216
    return-void
.end method

.method private dispatchOnFillRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/-$Lambda$JYqZriexGNVTrQ5cwTlcgjPSZFY;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1, p2}, Lcom/android/server/autofill/-$Lambda$JYqZriexGNVTrQ5cwTlcgjPSZFY;-><init>(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 309
    return-void
.end method

.method private dispatchOnFillRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingRequest;IILandroid/service/autofill/FillResponse;)V
    .locals 7
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .param p2, "callingUid"    # I
    .param p3, "requestFlags"    # I
    .param p4, "response"    # Landroid/service/autofill/FillResponse;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/android/server/autofill/-$Lambda$JYqZriexGNVTrQ5cwTlcgjPSZFY$1;

    move v1, p3

    move v2, p2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/-$Lambda$JYqZriexGNVTrQ5cwTlcgjPSZFY$1;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 300
    return-void
.end method

.method private dispatchOnFillTimeout(Landroid/os/ICancellationSignal;)V
    .locals 3
    .param p1, "cancellationSignal"    # Landroid/os/ICancellationSignal;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/-$Lambda$tQjSpU6IVjrOfYzILn21rTYl4Vo;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/android/server/autofill/-$Lambda$tQjSpU6IVjrOfYzILn21rTYl4Vo;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 319
    return-void
.end method

.method private dispatchOnSaveRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/-$Lambda$JYqZriexGNVTrQ5cwTlcgjPSZFY;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1, p2}, Lcom/android/server/autofill/-$Lambda$JYqZriexGNVTrQ5cwTlcgjPSZFY;-><init>(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    return-void
.end method

.method private dispatchOnSaveRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V
    .locals 3
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/-$Lambda$tQjSpU6IVjrOfYzILn21rTYl4Vo$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/autofill/-$Lambda$tQjSpU6IVjrOfYzILn21rTYl4Vo$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    return-void
.end method

.method private ensureBound()V
    .locals 6

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    if-eqz v1, :cond_1

    .line 253
    :cond_0
    return-void

    .line 255
    :cond_1
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "RemoteFillService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] ensureBound()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    .line 258
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 260
    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 259
    const v5, 0x4000001

    .line 258
    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    .line 262
    .local v0, "willBind":Z
    if-nez v0, :cond_4

    .line 263
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "RemoteFillService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] could not bind to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    .line 266
    iget-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceDied:Z

    if-nez v1, :cond_4

    .line 267
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->handleBinderDied()V

    .line 270
    :cond_4
    return-void
.end method

.method private ensureUnbound()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 273
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 274
    return-void

    .line 276
    :cond_0
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "RemoteFillService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] ensureUnbound()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    .line 278
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/service/autofill/IAutoFillService;->onConnectedStateChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    if-eqz v1, :cond_2

    .line 285
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    invoke-interface {v1}, Landroid/service/autofill/IAutoFillService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 286
    iput-object v5, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    .line 289
    :cond_2
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 290
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "RemoteFillService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception calling onDisconnected(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleBinderDied()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 142
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    if-eqz v1, :cond_0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    invoke-interface {v1}, Landroid/service/autofill/IAutoFillService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    .line 152
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceDied:Z

    .line 153
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-interface {v1, p0}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onServiceDied(Lcom/android/server/autofill/RemoteFillService;)V

    .line 154
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string/jumbo v1, "RemoteFillService"

    const-string/jumbo v2, "exception throw while unlinking auto fill service"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->cancel()Z

    .line 130
    iput-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->ensureUnbound()V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    .line 134
    return-void
.end method

.method private handlePendingRequest(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V
    .locals 3
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCompleted:Z

    if-eqz v0, :cond_1

    .line 230
    :cond_0
    return-void

    .line 232
    :cond_1
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v0

    if-nez v0, :cond_4

    .line 233
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->cancel()Z

    .line 236
    :cond_2
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .line 237
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->ensureBound()V

    .line 245
    :cond_3
    :goto_0
    return-void

    .line 239
    :cond_4
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "RemoteFillService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] handlePendingRequest()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->run()V

    .line 241
    invoke-virtual {p1}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCompleted:Z

    goto :goto_0
.end method

.method private handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z
    .locals 2
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .prologue
    const/4 v1, 0x0

    .line 339
    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 340
    const/4 v0, 0x0

    return v0

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-ne v0, p1, :cond_1

    .line 343
    iput-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-nez v0, :cond_2

    .line 346
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->scheduleUnbind()V

    .line 348
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private handleUnbind()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->ensureUnbound()V

    .line 226
    return-void
.end method

.method private isBound()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_autofill_RemoteFillService_11099(Landroid/os/ICancellationSignal;)V
    .locals 4
    .param p0, "cancellationSignal"    # Landroid/os/ICancellationSignal;

    .prologue
    .line 314
    :try_start_0
    invoke-interface {p0}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemoteFillService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error calling cancellation signal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private scheduleUnbind()V
    .locals 4

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->cancelScheduledUnbind()V

    .line 220
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 221
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/os/HandlerCaller;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 222
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 139
    return-void
.end method

.method public cancelCurrentRequest()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    iget-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 167
    const/high16 v1, -0x80000000

    return v1

    .line 170
    :cond_0
    const/high16 v0, -0x80000000

    .line 171
    .local v0, "requestId":I
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-eqz v1, :cond_2

    .line 172
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    instance-of v1, v1, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    check-cast v1, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-static {v1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->-get0(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Landroid/service/autofill/FillRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v0

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    invoke-virtual {v1}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->cancel()Z

    .line 177
    iput-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .line 180
    :cond_2
    return v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 125
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 199
    const-string/jumbo v0, "  "

    .line 200
    .local v0, "tab":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "service:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 201
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "userId="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 202
    iget v2, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 203
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "componentName="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 204
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 205
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "destroyed="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 206
    iget-boolean v2, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 207
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "bound="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 208
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 209
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "hasPendingRequest="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    .line 210
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 211
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 212
    return-void

    .line 210
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_autofill_RemoteFillService_10373(Lcom/android/server/autofill/RemoteFillService$PendingRequest;ILandroid/service/autofill/FillResponse;I)V
    .locals 2
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .param p2, "requestFlags"    # I
    .param p3, "response"    # Landroid/service/autofill/FillResponse;
    .param p4, "callingUid"    # I

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    .line 297
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-interface {v0, p2, p3, p4, v1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestSuccess(ILandroid/service/autofill/FillResponse;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_server_autofill_RemoteFillService_10778(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestFailure(Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_server_autofill_RemoteFillService_11435(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V
    .locals 2
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onSaveRequestSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_server_autofill_RemoteFillService_11780(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onSaveRequestFailure(Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFillRequest(Landroid/service/autofill/FillRequest;)V
    .locals 3
    .param p1, "request"    # Landroid/service/autofill/FillRequest;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->cancelScheduledUnbind()V

    .line 185
    new-instance v0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-direct {v0, p1, p0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;-><init>(Landroid/service/autofill/FillRequest;Lcom/android/server/autofill/RemoteFillService;)V

    .line 186
    .local v0, "pendingRequest":Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 187
    return-void
.end method

.method public onSaveRequest(Landroid/service/autofill/SaveRequest;)V
    .locals 3
    .param p1, "request"    # Landroid/service/autofill/SaveRequest;

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->cancelScheduledUnbind()V

    .line 191
    new-instance v0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    invoke-direct {v0, p1, p0}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;-><init>(Landroid/service/autofill/SaveRequest;Lcom/android/server/autofill/RemoteFillService;)V

    .line 192
    .local v0, "pendingRequest":Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 193
    return-void
.end method
