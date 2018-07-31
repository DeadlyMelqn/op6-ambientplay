.class public Lcom/android/systemui/qs/tiles/GameModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "GameModeTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsListening:Z

.field private mLastUpdateNavBarTime:J

.field private mModeSetting:Lcom/android/systemui/qs/SystemSetting;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/GameModeTile;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/GameModeTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/GameModeTile;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/GameModeTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 6
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mHandler:Landroid/os/Handler;

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mLastUpdateNavBarTime:J

    .line 47
    new-instance v0, Lcom/android/systemui/qs/tiles/GameModeTile$1;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mHandler:Landroid/os/Handler;

    const-string/jumbo v4, "game_mode_status"

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/tiles/GameModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/GameModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mModeSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 54
    return-void
.end method

.method private isEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 95
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setEnabled(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    .line 75
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 77
    .local v2, "time":J
    iget-wide v4, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mLastUpdateNavBarTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x2bc

    sub-long v0, v6, v4

    .line 79
    .local v0, "retryDelay":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 80
    const-wide/16 v0, 0x0

    .line 83
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/systemui/qs/tiles/GameModeTile$2;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/qs/tiles/GameModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/GameModeTile;Z)V

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mLastUpdateNavBarTime:J

    .line 92
    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.OP_GAMING_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 116
    const/16 v0, 0x7d0

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f11044a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 3

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v0, v1, 0x1

    .line 69
    .local v0, "activated":Z
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/GameModeTile;->getMetricsCategory()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 70
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/GameModeTile;->setEnabled(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setVibrateTweak()V

    return-void
.end method

.method protected handleSetListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mIsListening:Z

    .line 127
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 128
    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/GameModeTile;->refreshState()V

    .line 131
    :cond_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/GameModeTile;->isEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 101
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 104
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f11044a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 106
    const v0, 0x7f08022b

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 107
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mContext:Landroid/content/Context;

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    .line 108
    const v0, 0x7f11044c

    .line 107
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 110
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 111
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_1
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 112
    return-void

    .line 109
    :cond_1
    const v0, 0x7f11044b

    goto :goto_0

    .line 111
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 98
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/GameModeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/GameModeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method
