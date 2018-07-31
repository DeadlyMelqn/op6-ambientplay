.class public Lcom/android/systemui/ChargingView;
.super Landroid/widget/ImageView;
.source "ChargingView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mCharging:Z

.field private final mClearSuppressCharging:Ljava/lang/Runnable;

.field private final mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private mDark:Z

.field private mImageResource:I

.field private mSuppressCharging:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v2, Lcom/android/systemui/-$Lambda$CBJXSLeEZ81IqvchDh4LhUGU2j4;

    invoke-direct {v2, v4, p0}, Lcom/android/systemui/-$Lambda$CBJXSLeEZ81IqvchDh4LhUGU2j4;-><init>(BLjava/lang/Object;)V

    iput-object v2, p0, Lcom/android/systemui/ChargingView;->mClearSuppressCharging:Ljava/lang/Runnable;

    .line 59
    new-instance v2, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-direct {v2, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/ChargingView;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 61
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x1010119

    aput v3, v2, v4

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 64
    .local v1, "srcResId":I
    if-eqz v1, :cond_0

    .line 65
    iput v1, p0, Lcom/android/systemui/ChargingView;->mImageResource:I

    .line 68
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    invoke-direct {p0}, Lcom/android/systemui/ChargingView;->updateVisibility()V

    .line 71
    return-void
.end method

.method private clearSuppressCharging()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/ChargingView;->mSuppressCharging:Z

    .line 52
    iget-object v0, p0, Lcom/android/systemui/ChargingView;->mClearSuppressCharging:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/ChargingView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/ChargingView;->updateVisibility()V

    .line 54
    return-void
.end method

.method private deviceWillWakeUpWhenPluggedIn()Z
    .locals 4

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/ChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 105
    const v3, 0x11200bc

    .line 104
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 106
    .local v1, "plugTurnsOnScreen":Z
    iget-object v2, p0, Lcom/android/systemui/ChargingView;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    .line 107
    .local v0, "aod":Z
    if-nez v0, :cond_0

    .end local v1    # "plugTurnsOnScreen":Z
    :goto_0
    return v1

    .restart local v1    # "plugTurnsOnScreen":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateVisibility()V
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/systemui/ChargingView;->mCharging:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/ChargingView;->mSuppressCharging:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/ChargingView;->mDark:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/ChargingView;->setVisibility(I)V

    .line 125
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method synthetic -com_android_systemui_ChargingView-mthref-0()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/systemui/ChargingView;->clearSuppressCharging()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 76
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/ChargingView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/ChargingView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    .line 78
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 91
    if-eqz p3, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/ChargingView;->mCharging:Z

    xor-int/lit8 v0, v1, 0x1

    .line 92
    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/ChargingView;->deviceWillWakeUpWhenPluggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/ChargingView;->mDark:Z

    if-eqz v1, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/ChargingView;->clearSuppressCharging()V

    .line 96
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/ChargingView;->mSuppressCharging:Z

    .line 97
    iget-object v1, p0, Lcom/android/systemui/ChargingView;->mClearSuppressCharging:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/ChargingView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    :cond_0
    iput-boolean p3, p0, Lcom/android/systemui/ChargingView;->mCharging:Z

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/ChargingView;->updateVisibility()V

    .line 101
    return-void

    .line 91
    :cond_1
    const/4 v0, 0x0

    .local v0, "startCharging":Z
    goto :goto_0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/systemui/ChargingView;->mImageResource:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/ChargingView;->setImageResource(I)V

    .line 113
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/ChargingView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeCallback(Ljava/lang/Object;)V

    .line 85
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/ChargingView;->mClearSuppressCharging:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/ChargingView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method

.method public setDark(Z)V
    .locals 0
    .param p1, "dark"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/ChargingView;->mDark:Z

    .line 117
    if-nez p1, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/ChargingView;->clearSuppressCharging()V

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/ChargingView;->updateVisibility()V

    .line 121
    return-void
.end method
