.class public Lcom/android/systemui/qs/tiles/ColorInversionTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "ColorInversionTile.java"


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
.field private final mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mSetting:Lcom/android/systemui/qs/SecureSetting;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/ColorInversionTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ColorInversionTile;
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 37
    const v0, 0x7f080157

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 45
    new-instance v0, Lcom/android/systemui/qs/tiles/ColorInversionTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 46
    const-string/jumbo v3, "accessibility_display_inversion_enabled"

    .line 45
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/ColorInversionTile$1;-><init>(Lcom/android/systemui/qs/tiles/ColorInversionTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 52
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mContext:Landroid/content/Context;

    .line 116
    const v1, 0x7f1100a6

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mContext:Landroid/content/Context;

    .line 119
    const v1, 0x7f1100a5

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 109
    const/16 v0, 0x74

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mContext:Landroid/content/Context;

    const v1, 0x7f110453

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecureSetting;->setValue(I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setVibrateTweak()V

    return-void

    .line 83
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 58
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 68
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 93
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 94
    .local v1, "value":I
    :goto_0
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 95
    .local v0, "enabled":Z
    :goto_1
    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez v2, :cond_0

    .line 96
    new-instance v2, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {v2}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 98
    :cond_0
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 99
    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v3, v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 100
    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    :goto_2
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 101
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mContext:Landroid/content/Context;

    const v3, 0x7f110453

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 102
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 103
    const-class v2, Landroid/widget/Switch;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 104
    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 105
    return-void

    .line 93
    .end local v0    # "enabled":Z
    .end local v1    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v1

    .restart local v1    # "value":I
    goto :goto_0

    .line 94
    .end local p2    # "arg":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_1

    .line 100
    :cond_3
    const/4 v2, 0x1

    goto :goto_2
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 91
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->setUserId(I)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->handleRefreshState(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method
