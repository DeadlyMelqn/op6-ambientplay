.class public Lcom/android/systemui/qs/tiles/ScreenrecordTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "ScreenrecordTile.java"


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
.field private mMode:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 7
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 43
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenrecordTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 44
    const-string/jumbo v2, "screen_record_quality"

    const/4 v3, -0x2

    .line 43
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 45
    .local v0, "qualitySetting":I
    if-nez v0, :cond_1

    .line 46
    iput v4, p0, Lcom/android/systemui/qs/tiles/ScreenrecordTile;->mMode:I

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    if-ne v0, v5, :cond_2

    .line 48
    iput v5, p0, Lcom/android/systemui/qs/tiles/ScreenrecordTile;->mMode:I

    goto :goto_0

    .line 49
    :cond_2
    if-ne v0, v6, :cond_0

    .line 50
    iput v6, p0, Lcom/android/systemui/qs/tiles/ScreenrecordTile;->mMode:I

    goto :goto_0
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, -0x1

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenrecordTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1103f7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleClick()V
    .locals 4

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenrecordTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    .line 71
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    iget v1, p0, Lcom/android/systemui/qs/tiles/ScreenrecordTile;->mMode:I

    invoke-static {v1}, Lcom/android/internal/util/aoscp/FeatureUtils;->takeScreenrecord(I)V

    .line 74
    return-void

    .line 72
    :catch_0
    move-exception v0

    .local v0, "ie":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method protected handleLongClick()V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ScreenrecordTile;->handleClick()V

    .line 84
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 65
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v1, 0x7f1103f7

    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenrecordTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenrecordTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 96
    const v0, 0x7f0801ae

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 97
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 91
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/ScreenrecordTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ScreenrecordTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method
