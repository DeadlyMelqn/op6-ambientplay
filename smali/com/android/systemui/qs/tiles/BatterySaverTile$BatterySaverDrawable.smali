.class Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;
.super Lcom/android/settingslib/graph/BatteryMeterDrawableBase;
.source "BatterySaverTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BatterySaverTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatterySaverDrawable"
.end annotation


# instance fields
.field private mState:I


# direct methods
.method static synthetic -set0(Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;->mState:I

    return p1
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameColor"    # I

    .prologue
    const/4 v1, 0x1

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;-><init>(Landroid/content/Context;I)V

    .line 167
    const/16 v0, 0x64

    invoke-super {p0, v0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setBatteryLevel(I)V

    .line 168
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;->setPowerSave(Z)V

    .line 170
    invoke-static {}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;->setCharging(Z)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;->setCharging(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected batteryColorForLevel(I)I
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;->mState:I

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getColorForState(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public setBatteryLevel(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 185
    return-void
.end method
