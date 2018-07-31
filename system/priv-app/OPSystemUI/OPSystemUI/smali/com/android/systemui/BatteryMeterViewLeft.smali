.class public Lcom/android/systemui/BatteryMeterViewLeft;
.super Lcom/android/systemui/BatteryMeterView;
.source "BatteryMeterViewLeft.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/BatteryMeterViewLeft;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterViewLeft;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public batteryPosition()V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mClockPosition:I

    if-ne v0, v1, :cond_0

    const v0, 0x0

    goto :goto_0

    :cond_0
    const v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    return-void
.end method
