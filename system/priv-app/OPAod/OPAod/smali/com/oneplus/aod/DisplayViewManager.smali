.class public Lcom/oneplus/aod/DisplayViewManager;
.super Ljava/lang/Object;
.source "DisplayViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/DisplayViewManager$1;
    }
.end annotation


# static fields
.field public static final STATE_MAIN:I = 0x1

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_NOTIFICATION:I = 0x2

.field public static final STATE_THREE_KEY:I = 0x3


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mDozeParameters:Lcom/oneplus/doze/DozeParameters;

.field private mHandler:Landroid/os/Handler;

.field private mMainView:Lcom/oneplus/aod/AodMain;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mResetViewRunnable:Ljava/lang/Runnable;

.field private mScrimView:Landroid/view/View;

.field private mSingleNotificationView:Landroid/view/ViewGroup;

.field private mState:I

.field private mThreeKeyview:Landroid/view/ViewGroup;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/oneplus/aod/DisplayViewManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/DisplayViewManager;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string/jumbo v0, "DisplayViewManager"

    iput-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->TAG:Ljava/lang/String;

    .line 32
    iput v2, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mHandler:Landroid/os/Handler;

    .line 115
    new-instance v0, Lcom/oneplus/aod/DisplayViewManager$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/DisplayViewManager$1;-><init>(Lcom/oneplus/aod/DisplayViewManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mResetViewRunnable:Ljava/lang/Runnable;

    .line 39
    const v0, 0x7f0e0041

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/AodMain;

    iput-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mMainView:Lcom/oneplus/aod/AodMain;

    .line 40
    const v0, 0x7f0e004c

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mSingleNotificationView:Landroid/view/ViewGroup;

    .line 41
    const v0, 0x7f0e0054

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mThreeKeyview:Landroid/view/ViewGroup;

    .line 42
    const v0, 0x7f0e0057

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mScrimView:Landroid/view/View;

    .line 43
    iput-object p1, p0, Lcom/oneplus/aod/DisplayViewManager;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/oneplus/doze/DozeParameters;

    invoke-direct {v0, p1}, Lcom/oneplus/doze/DozeParameters;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    .line 45
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mPowerManager:Landroid/os/PowerManager;

    .line 46
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "DisplayViewManager"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 47
    return-void
.end method

.method private updateView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 71
    const-string/jumbo v0, "DisplayViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateView: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mScrimView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 75
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mMainView:Lcom/oneplus/aod/AodMain;

    invoke-virtual {v0, v4}, Lcom/oneplus/aod/AodMain;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mSingleNotificationView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mThreeKeyview:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 78
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mScrimView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 83
    iget v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 84
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mMainView:Lcom/oneplus/aod/AodMain;

    invoke-virtual {v0, v4}, Lcom/oneplus/aod/AodMain;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mSingleNotificationView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mThreeKeyview:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 98
    :cond_1
    :goto_0
    return-void

    .line 89
    :cond_2
    iget v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 90
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mMainView:Lcom/oneplus/aod/AodMain;

    invoke-virtual {v0, v3}, Lcom/oneplus/aod/AodMain;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mSingleNotificationView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mThreeKeyview:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 93
    :cond_3
    iget v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 94
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mMainView:Lcom/oneplus/aod/AodMain;

    invoke-virtual {v0, v3}, Lcom/oneplus/aod/AodMain;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mSingleNotificationView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mThreeKeyview:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    return v0
.end method

.method public postDelayResetViewState()V
    .locals 6

    .prologue
    .line 127
    iget-object v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/aod/DisplayViewManager;->mResetViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 130
    iget-object v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "duration":I
    iget v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 138
    iget-object v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/doze/DozeParameters;->getPulseVisibleDuration(I)I

    move-result v0

    .line 145
    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/aod/DisplayViewManager;->mResetViewRunnable:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    return-void

    .line 139
    :cond_1
    iget v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 140
    iget-object v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/oneplus/doze/DozeParameters;->getPulseVisibleDuration(I)I

    move-result v0

    goto :goto_0

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    invoke-virtual {v1}, Lcom/oneplus/doze/DozeParameters;->getPulseVisibleDuration()I

    move-result v0

    goto :goto_0
.end method

.method public resetMainViewPosition()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mMainView:Lcom/oneplus/aod/AodMain;

    invoke-virtual {v0}, Lcom/oneplus/aod/AodMain;->resetPosition()V

    .line 151
    return-void
.end method

.method public resetViewState()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->isWakingUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string/jumbo v0, "DisplayViewManager"

    const-string/jumbo v1, "resetViewState: don\'t reset view state during waking up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->isAlwaysOnFired()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    .line 108
    invoke-direct {p0}, Lcom/oneplus/aod/DisplayViewManager;->updateView()V

    .line 109
    return-void

    .line 107
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->isDozing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const-string/jumbo v0, "DisplayViewManager"

    const-string/jumbo v1, "setState: don\'t view set if not dozing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->isWakingUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const-string/jumbo v0, "DisplayViewManager"

    const-string/jumbo v1, "setState: don\'t view set if waking up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void

    .line 62
    :cond_1
    const-string/jumbo v0, "DisplayViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    if-eq v0, p1, :cond_2

    .line 64
    iput p1, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    .line 67
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/aod/DisplayViewManager;->updateView()V

    .line 68
    return-void
.end method
