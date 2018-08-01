.class public Lcom/android/systemui/qs/tiles/BatterySaverTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "BatterySaverTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;,
        Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverIcon;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;"
    }
.end annotation


# static fields
.field private static mCharging:Z


# instance fields
.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mDashCharger:Z

.field private mHasDashCharger:Z

.field private mHasTurboCharger:Z

.field private mLevel:I

.field private mPluggedIn:Z

.field private mPowerSave:Z

.field private mTurboCharger:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mCharging:Z

    return v0
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 57
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 58
    return-void
.end method

.method private getBatteryLevel(Landroid/content/Context;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 219
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, "filter":Landroid/content/IntentFilter;
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 221
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "level"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 222
    .local v2, "level":I
    const-string/jumbo v4, "scale"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 224
    .local v3, "scale":I
    if-ltz v2, :cond_0

    if-gtz v3, :cond_1

    .line 225
    :cond_0
    return v5

    .line 228
    :cond_1
    mul-int/lit8 v4, v2, 0x64

    div-int/2addr v4, v3

    return v4
.end method

.method private isDashCharger()Z
    .locals 6

    .prologue
    .line 191
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string/jumbo v5, "/sys/class/power_supply/battery/fastchg_status"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 192
    .local v3, "file":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 193
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "state":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 195
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 196
    const-string/jumbo v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    return v5

    .line 197
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/FileReader;
    .end local v4    # "state":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 200
    :goto_0
    const/4 v5, 0x0

    return v5

    .line 198
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private isTurboPower()Z
    .locals 6

    .prologue
    .line 206
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string/jumbo v5, "/sys/class/power_supply/battery/charge_rate"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 207
    .local v3, "file":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 208
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, "state":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 210
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 211
    const-string/jumbo v5, "Turbo"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    return v5

    .line 212
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/FileReader;
    .end local v4    # "state":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 215
    :goto_0
    const/4 v5, 0x0

    return v5

    .line 213
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_0
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x105

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mContext:Landroid/content/Context;

    const v1, 0x7f110119

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPowerSave:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->setPowerSaveMode(Z)V

    .line 87
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 97
    const v3, 0x1120074

    .line 96
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mHasDashCharger:Z

    .line 98
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mHasDashCharger:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->isDashCharger()Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mDashCharger:Z

    .line 100
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 101
    const v3, 0x1120077

    .line 100
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mHasTurboCharger:Z

    .line 102
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mHasTurboCharger:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->isTurboPower()Z

    move-result v1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mTurboCharger:Z

    .line 104
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPluggedIn:Z

    if-eqz v1, :cond_6

    :goto_2
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 107
    new-instance v0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverIcon;

    invoke-direct {v0}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverIcon;-><init>()V

    .line 108
    .local v0, "bsi":Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverIcon;
    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverIcon;->-set0(Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverIcon;I)I

    .line 109
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 111
    sget-boolean v1, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mCharging:Z

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mContext:Landroid/content/Context;

    const v2, 0x7f110286

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 114
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mDashCharger:Z

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mContext:Landroid/content/Context;

    const v2, 0x7f110289

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 117
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mTurboCharger:Z

    if-eqz v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mContext:Landroid/content/Context;

    const v2, 0x7f11028a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 120
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mDashCharger:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mTurboCharger:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mCharging:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 121
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->getBatteryLevel(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_8

    .line 122
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mContext:Landroid/content/Context;

    const v2, 0x7f11012d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 127
    :cond_3
    :goto_3
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 128
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPowerSave:Z

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 129
    const-class v1, Landroid/widget/Switch;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 130
    return-void

    .end local v0    # "bsi":Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverIcon;
    :cond_4
    move v1, v2

    .line 98
    goto/16 :goto_0

    :cond_5
    move v1, v2

    .line 102
    goto :goto_1

    .line 105
    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPowerSave:Z

    if-eqz v1, :cond_7

    const/4 v2, 0x2

    goto :goto_2

    :cond_7
    const/4 v2, 0x1

    goto :goto_2

    .line 124
    .restart local v0    # "bsi":Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverIcon;
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    goto :goto_3
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 94
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

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
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 134
    iput p1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mLevel:I

    .line 135
    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPluggedIn:Z

    .line 136
    sput-boolean p3, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mCharging:Z

    .line 137
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->refreshState(Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 1
    .param p1, "isPowerSave"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPowerSave:Z

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->refreshState(Ljava/lang/Object;)V

    .line 144
    return-void
.end method
