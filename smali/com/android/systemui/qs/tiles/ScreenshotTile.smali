.class public Lcom/android/systemui/qs/tiles/ScreenshotTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "ScreenshotTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/ScreenshotTile$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private mListening:Z

.field private mRegion:Z

.field private mScreenshotConnection:Landroid/content/ServiceConnection;

.field private mScreenshotFullscreen:I

.field private final mScreenshotLock:Ljava/lang/Object;

.field private mScreenshotSelectedRegion:I

.field final mScreenshotTimeout:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/ScreenshotTile;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ScreenshotTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/ScreenshotTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ScreenshotTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/ScreenshotTile;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ScreenshotTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/ScreenshotTile;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ScreenshotTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mScreenshotLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/ScreenshotTile;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ScreenshotTile;
    .param p1, "-value"    # Landroid/content/ServiceConnection;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mRegion:Z

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mScreenshotLock:Ljava/lang/Object;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mScreenshotFullscreen:I

    .line 56
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mScreenshotSelectedRegion:I

    .line 126
    new-instance v0, Lcom/android/systemui/qs/tiles/ScreenshotTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/ScreenshotTile$1;-><init>(Lcom/android/systemui/qs/tiles/ScreenshotTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 60
    return-void
.end method

.method private takeScreenshot(I)V
    .locals 8
    .param p1, "screenshotType"    # I

    .prologue
    .line 138
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v4

    .line 139
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v4

    .line 140
    return-void

    .line 142
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.systemui"

    .line 143
    const-string/jumbo v5, "com.android.systemui.screenshot.TakeScreenshotService"

    .line 142
    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 145
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 146
    new-instance v1, Lcom/android/systemui/qs/tiles/ScreenshotTile$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tiles/ScreenshotTile$2;-><init>(Lcom/android/systemui/qs/tiles/ScreenshotTile;I)V

    .line 182
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mContext:Landroid/content/Context;

    .line 183
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x1

    .line 182
    invoke-virtual {v3, v2, v1, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    iput-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 185
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v4

    .line 188
    return-void

    .line 138
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 123
    const/16 v0, 0xc6

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1103f8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mRegion:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mRegion:Z

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ScreenshotTile;->refreshState()V

    .line 82
    return-void
.end method

.method public handleLongClick()V
    .locals 4

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    .line 89
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mRegion:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/ScreenshotTile;->takeScreenshot(I)V

    .line 94
    return-void

    .line 90
    :catch_0
    move-exception v0

    .local v0, "ie":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 93
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public handleSetListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 75
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mListening:Z

    .line 76
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v2, 0x7f1103f8

    const v1, 0x7f1103ea

    .line 103
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mRegion:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 105
    const v0, 0x7f0801aa

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 110
    const v0, 0x7f0801b0

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/ScreenshotTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ScreenshotTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method
