.class public Lcom/android/systemui/qs/car/CarStatusBarHeader;
.super Landroid/widget/RelativeLayout;
.source "CarStatusBarHeader.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method private applyDarkness(ILandroid/graphics/Rect;FI)V
    .locals 2
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "tintArea"    # Landroid/graphics/Rect;
    .param p3, "intensity"    # F
    .param p4, "color"    # I

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/car/CarStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    if-eqz v1, :cond_0

    .line 57
    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    .end local v0    # "v":Landroid/view/View;
    invoke-interface {v0, p2, p3, p4}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 7

    .prologue
    const v6, 0x7f0a005a

    const/4 v5, 0x0

    .line 40
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/qs/car/CarStatusBarHeader;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1010030

    invoke-static {v3, v4}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    .line 44
    .local v0, "colorForeground":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v1, 0x0

    .line 45
    .local v1, "intensity":F
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 47
    .local v2, "tintArea":Landroid/graphics/Rect;
    const v3, 0x7f0a0264

    invoke-direct {p0, v3, v2, v1, v0}, Lcom/android/systemui/qs/car/CarStatusBarHeader;->applyDarkness(ILandroid/graphics/Rect;FI)V

    .line 48
    invoke-direct {p0, v6, v2, v1, v0}, Lcom/android/systemui/qs/car/CarStatusBarHeader;->applyDarkness(ILandroid/graphics/Rect;FI)V

    .line 49
    const v3, 0x7f0a0084

    invoke-direct {p0, v3, v2, v1, v0}, Lcom/android/systemui/qs/car/CarStatusBarHeader;->applyDarkness(ILandroid/graphics/Rect;FI)V

    .line 51
    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/car/CarStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/BatteryMeterView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/BatteryMeterView;->setForceShowPercent(Z)V

    .line 52
    return-void

    .line 44
    .end local v1    # "intensity":F
    .end local v2    # "tintArea":Landroid/graphics/Rect;
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "intensity":F
    goto :goto_0
.end method
