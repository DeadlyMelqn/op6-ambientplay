.class Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;
.super Lcom/android/settingslib/graph/BatteryMeterDrawableBase;
.source "BluetoothDeviceLayerDrawable.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BatteryMeterDrawable"
.end annotation


# instance fields
.field private final mAspectRatio:F

.field mFrameColor:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameColor"    # I
    .param p3, "batteryLevel"    # I

    .prologue
    const/4 v3, 0x1

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;-><init>(Landroid/content/Context;I)V

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 117
    .local v0, "resources":Landroid/content/res/Resources;
    sget v2, Lcom/android/settingslib/R$fraction;->bt_battery_button_height_fraction:I

    .line 116
    invoke-virtual {v0, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iput v2, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;->mButtonHeightFraction:F

    .line 118
    sget v2, Lcom/android/settingslib/R$fraction;->bt_battery_ratio_fraction:I

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iput v2, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;->mAspectRatio:F

    .line 122
    const v2, 0x1010435

    invoke-static {p1, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    .line 124
    .local v1, "tintColor":I
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v2}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 125
    invoke-virtual {p0, p3}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;->setBatteryLevel(I)V

    .line 126
    iput p2, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;->mFrameColor:I

    .line 127
    return-void
.end method


# virtual methods
.method protected getAspectRatio()F
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;->mAspectRatio:F

    return v0
.end method

.method protected getRadiusRatio()F
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method
