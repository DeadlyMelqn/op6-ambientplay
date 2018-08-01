.class public Lcom/android/systemui/doze/DozeScreenState;
.super Ljava/lang/Object;
.source "DozeScreenState.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# instance fields
.field private final mApplyPendingScreenState:Ljava/lang/Runnable;

.field private final mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

.field private final mHandler:Landroid/os/Handler;

.field private mPendingScreenState:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/os/Handler;)V
    .locals 2
    .param p1, "service"    # Lcom/android/systemui/doze/DozeMachine$Service;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/android/systemui/doze/-$Lambda$EDkgq9hVYnTMaUlsvmU4HsSWaRQ;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/doze/-$Lambda$EDkgq9hVYnTMaUlsvmU4HsSWaRQ;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    .line 30
    iput v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 33
    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    .line 34
    iput-object p2, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method private applyPendingScreenState()V
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeScreenState;->applyScreenState(I)V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 73
    return-void
.end method

.method private applyScreenState(I)V
    .locals 2
    .param p1, "screenState"    # I

    .prologue
    const/4 v1, 0x0

    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenState(I)V

    .line 78
    iput v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_doze_DozeScreenState-mthref-0()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeScreenState;->applyPendingScreenState()V

    return-void
.end method

.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 4
    .param p1, "oldState"    # Lcom/android/systemui/doze/DozeMachine$State;
    .param p2, "newState"    # Lcom/android/systemui/doze/DozeMachine$State;

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-virtual {p2}, Lcom/android/systemui/doze/DozeMachine$State;->screenState()I

    move-result v1

    .line 41
    .local v1, "screenState":I
    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, v2, :cond_0

    .line 43
    iput v3, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 44
    iget-object v2, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeScreenState;->applyScreenState(I)V

    .line 47
    return-void

    .line 50
    :cond_0
    if-nez v1, :cond_1

    .line 52
    return-void

    .line 55
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    .line 56
    .local v0, "messagePending":Z
    if-nez v0, :cond_2

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v2, :cond_4

    .line 61
    :cond_2
    iput v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 62
    if-nez v0, :cond_3

    .line 63
    iget-object v2, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    :cond_3
    return-void

    .line 67
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeScreenState;->applyScreenState(I)V

    .line 68
    return-void
.end method
