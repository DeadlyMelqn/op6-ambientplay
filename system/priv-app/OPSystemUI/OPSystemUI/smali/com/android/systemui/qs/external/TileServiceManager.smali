.class public Lcom/android/systemui/qs/external/TileServiceManager;
.super Ljava/lang/Object;
.source "TileServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/external/TileServiceManager$1;,
        Lcom/android/systemui/qs/external/TileServiceManager$2;,
        Lcom/android/systemui/qs/external/TileServiceManager$3;
    }
.end annotation


# static fields
.field static final PREFS_FILE:Ljava/lang/String; = "CustomTileModes"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mBindAllowed:Z

.field private mBindRequested:Z

.field private mBound:Z

.field private final mHandler:Landroid/os/Handler;

.field private mJustBound:Z

.field final mJustBoundOver:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mLastUpdate:J

.field private mPendingBind:Z

.field private mPriority:I

.field private final mServices:Lcom/android/systemui/qs/external/TileServices;

.field private mShowingDialog:Z

.field private final mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

.field private final mUnbind:Ljava/lang/Runnable;

.field private final mUninstallReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/external/TileServiceManager;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/external/TileServiceManager;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/external/TileServiceManager;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/external/TileServiceManager;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/external/TileServiceManager;)Lcom/android/systemui/qs/external/TileServices;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/external/TileServiceManager;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/external/TileServiceManager;)Lcom/android/systemui/qs/external/TileLifecycleManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/external/TileServiceManager;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/external/TileServiceManager;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/external/TileServiceManager;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBound:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/external/TileServiceManager;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/external/TileServiceManager;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->unbindService()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/qs/external/TileServices;Landroid/os/Handler;Landroid/content/ComponentName;Landroid/service/quicksettings/Tile;)V
    .locals 7
    .param p1, "tileServices"    # Lcom/android/systemui/qs/external/TileServices;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "tile"    # Landroid/service/quicksettings/Tile;

    .prologue
    .line 76
    new-instance v0, Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 77
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/TileServices;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 78
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-direct {v6, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object v1, p2

    move-object v3, p1

    move-object v4, p4

    .line 76
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/external/TileLifecycleManager;-><init>(Landroid/os/Handler;Landroid/content/Context;Landroid/service/quicksettings/IQSService;Landroid/service/quicksettings/Tile;Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/external/TileServiceManager;-><init>(Lcom/android/systemui/qs/external/TileServices;Landroid/os/Handler;Lcom/android/systemui/qs/external/TileLifecycleManager;)V

    .line 79
    return-void
.end method

.method constructor <init>(Lcom/android/systemui/qs/external/TileServices;Landroid/os/Handler;Lcom/android/systemui/qs/external/TileLifecycleManager;)V
    .locals 8
    .param p1, "tileServices"    # Lcom/android/systemui/qs/external/TileServices;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "tileLifecycleManager"    # Lcom/android/systemui/qs/external/TileLifecycleManager;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v7, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    .line 223
    new-instance v1, Lcom/android/systemui/qs/external/TileServiceManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/external/TileServiceManager$1;-><init>(Lcom/android/systemui/qs/external/TileServiceManager;)V

    iput-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUnbind:Ljava/lang/Runnable;

    .line 233
    new-instance v1, Lcom/android/systemui/qs/external/TileServiceManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/external/TileServiceManager$2;-><init>(Lcom/android/systemui/qs/external/TileServiceManager;)V

    iput-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBoundOver:Ljava/lang/Runnable;

    .line 241
    new-instance v1, Lcom/android/systemui/qs/external/TileServiceManager$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/external/TileServiceManager$3;-><init>(Lcom/android/systemui/qs/external/TileServiceManager;)V

    iput-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUninstallReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    .line 85
    iput-object p2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    .line 86
    iput-object p3, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 88
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string/jumbo v1, "package"

    invoke-virtual {v3, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileServices;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 92
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUninstallReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-direct {v2, v4}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v5, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    .line 92
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p3}, Lcom/android/systemui/qs/external/TileLifecycleManager;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 95
    .local v6, "component":Landroid/content/ComponentName;
    invoke-static {v0, v6}, Lcom/android/systemui/qs/external/TileLifecycleManager;->isTileAdded(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    invoke-static {v0, v6, v7}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setTileAdded(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 97
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onTileAdded()V

    .line 98
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->flushMessagesAndUnbind()V

    .line 100
    :cond_0
    return-void
.end method

.method private bindService()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 170
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-eqz v0, :cond_0

    .line 171
    const-string/jumbo v0, "TileServiceManager"

    const-string/jumbo v1, "Service already bound"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void

    .line 174
    :cond_0
    iput-boolean v4, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    .line 175
    iput-boolean v4, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    .line 176
    iput-boolean v4, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBound:Z

    .line 177
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBoundOver:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setBindService(Z)V

    .line 179
    return-void
.end method

.method private unbindService()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-nez v0, :cond_0

    .line 183
    const-string/jumbo v0, "TileServiceManager"

    const-string/jumbo v1, "Service not bound"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void

    .line 186
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    .line 187
    iput-boolean v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBound:Z

    .line 188
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setBindService(Z)V

    .line 189
    return-void
.end method


# virtual methods
.method public calculateBindPriority(J)V
    .locals 5
    .param p1, "currentTime"    # J

    .prologue
    .line 192
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v2}, Lcom/android/systemui/qs/external/TileLifecycleManager;->hasPendingClick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    const v2, 0x7fffffff

    iput v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    .line 217
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mShowingDialog:Z

    if-eqz v2, :cond_1

    .line 198
    const v2, 0x7ffffffe

    iput v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_0

    .line 199
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBound:Z

    if-eqz v2, :cond_2

    .line 202
    const v2, 0x7ffffffd

    iput v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_0

    .line 203
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-nez v2, :cond_3

    .line 205
    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_0

    .line 208
    :cond_3
    iget-wide v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mLastUpdate:J

    sub-long v0, p1, v2

    .line 211
    .local v0, "timeSinceUpdate":J
    const-wide/32 v2, 0x7ffffffc

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    .line 212
    const v2, 0x7ffffffc

    iput v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_0

    .line 214
    :cond_4
    long-to-int v2, v0

    iput v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_0
.end method

.method public clearPendingBind()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    .line 167
    return-void
.end method

.method public getBindPriority()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    return v0
.end method

.method public getTileService()Landroid/service/quicksettings/IQSTileService;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->getToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public handleDestroy()V
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileServices;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUninstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDestroy()V

    .line 149
    return-void
.end method

.method public hasPendingBind()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    return v0
.end method

.method public isActiveTile()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->isActiveTile()Z

    move-result v0

    return v0
.end method

.method public setBindAllowed(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindAllowed:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 153
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindAllowed:Z

    .line 154
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindAllowed:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-eqz v0, :cond_2

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->unbindService()V

    .line 159
    :cond_1
    :goto_0
    return-void

    .line 156
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindAllowed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->bindService()V

    goto :goto_0
.end method

.method public setBindRequested(Z)V
    .locals 4
    .param p1, "bindRequested"    # Z

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 124
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    .line 125
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindAllowed:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUnbind:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->bindService()V

    .line 131
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUnbind:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    :cond_1
    return-void

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileServices;->recalculateBindAllowance()V

    goto :goto_0
.end method

.method public setLastUpdate(J)V
    .locals 1
    .param p1, "lastUpdate"    # J

    .prologue
    .line 137
    iput-wide p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mLastUpdate:J

    .line 138
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStopListening()V

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileServices;->recalculateBindAllowance()V

    .line 143
    return-void
.end method

.method public setShowingDialog(Z)V
    .locals 0
    .param p1, "dialog"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mShowingDialog:Z

    .line 112
    return-void
.end method

.method public setTileChangeListener(Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;)V
    .locals 1
    .param p1, "changeListener"    # Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setTileChangeListener(Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;)V

    .line 104
    return-void
.end method
