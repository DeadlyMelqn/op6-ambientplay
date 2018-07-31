.class public Lcom/android/systemui/BatteryMeterView;
.super Landroid/widget/LinearLayout;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterView$SettingObserver;
    }
.end annotation


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final SHOW_CUSTOM_STATUS_BAR:Z


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

.field private mBatteryIconColor:I

.field private final mBatteryIconView:Landroid/widget/ImageView;

.field private mBatteryPercentColor:I

.field private mBatteryPercentShow:Z

.field public mBatteryPercentView:Landroid/widget/TextView;

.field private mBatteryStyle:I

.field mClockPosition:I

.field private mDarkIconColor:I

.field private mDarkIntensity:F

.field private mDarkModeBackgroundColor:I

.field private mDarkModeFillColor:I

.field private final mDrawable:Lcom/android/systemui/OPBatteryMeterDrawable;

.field private mFastCharge:Z

.field private mFontScale:F

.field private mForceShowPercent:Z

.field private mLevel:I

.field private mLightModeBackgroundColor:I

.field private mLightModeFillColor:I

.field private final mPercentViewFastChargePaddingEnd:I

.field private final mPercentViewPaddingEnd:I

.field private mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

.field private final mSlotBattery:Ljava/lang/String;

.field private mTextColor:I

.field private mUser:I

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/BatteryMeterView;)Lcom/android/systemui/BatteryMeterView$SettingObserver;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/BatteryMeterView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/BatteryMeterView;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/BatteryMeterView;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/BatteryMeterView;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/BatteryMeterView;->SHOW_CUSTOM_STATUS_BAR:Z

    .line 73
    sget-boolean v0, Lcom/android/systemui/util/Utils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/BatteryMeterView;->DEBUG_ONEPLUS:Z

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/BatteryMeterView;->mFastCharge:Z

    .line 100
    const/high16 v6, -0x40800000    # -1.0f

    iput v6, p0, Lcom/android/systemui/BatteryMeterView;->mFontScale:F

    .line 259
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    .line 284
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentShow:Z

    .line 119
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/systemui/BatteryMeterView;->setOrientation(I)V

    .line 120
    const v6, 0x800013

    invoke-virtual {p0, v6}, Lcom/android/systemui/BatteryMeterView;->setGravity(I)V

    .line 122
    sget-object v6, Lcom/android/systemui/R$styleable;->BatteryMeterView:[I

    .line 123
    const/4 v7, 0x0

    .line 122
    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 125
    .local v0, "atts":Landroid/content/res/TypedArray;
    const v6, 0x7f060249

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    .line 124
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 127
    .local v3, "frameColor":I
    new-instance v6, Lcom/android/systemui/OPBatteryMeterDrawable;

    invoke-direct {v6, p1, v3}, Lcom/android/systemui/OPBatteryMeterDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/systemui/OPBatteryMeterDrawable;

    .line 129
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    new-instance v6, Lcom/android/systemui/BatteryMeterView$SettingObserver;

    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/BatteryMeterView$SettingObserver;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    .line 134
    const v6, 0x10405e4

    .line 133
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mSlotBattery:Ljava/lang/String;

    .line 135
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    .line 136
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/systemui/OPBatteryMeterDrawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07041e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07041d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 137
    invoke-direct {v4, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 143
    .local v4, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070070

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 142
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v8, v9, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 145
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v4}, Lcom/android/systemui/BatteryMeterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    new-instance v6, Lcom/android/systemui/BatteryDashChargeView;

    const/4 v7, 0x0

    invoke-direct {v6, p1, v7}, Lcom/android/systemui/BatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    .line 150
    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 152
    .local v5, "mlp_batterydash":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070070

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 151
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v8, v9, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 153
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    invoke-virtual {p0, v6, v5}, Lcom/android/systemui/BatteryMeterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    iput v6, p0, Lcom/android/systemui/BatteryMeterView;->mFontScale:F

    .line 159
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07006e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterView;->mPercentViewPaddingEnd:I

    .line 160
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07006d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterView;->mPercentViewFastChargePaddingEnd:I

    .line 162
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 164
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 165
    const v6, 0x7f040098

    invoke-static {p1, v6}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v6

    .line 164
    invoke-direct {v1, p1, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 166
    .local v1, "dualToneDarkTheme":Landroid/content/Context;
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 167
    const v6, 0x7f040147

    invoke-static {p1, v6}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v6

    .line 166
    invoke-direct {v2, p1, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 168
    .local v2, "dualToneLightTheme":Landroid/content/Context;
    const v6, 0x7f040047

    invoke-static {v1, v6}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeBackgroundColor:I

    .line 169
    const v6, 0x7f0400d5

    invoke-static {v1, v6}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeFillColor:I

    .line 170
    const v6, 0x7f040047

    invoke-static {v2, v6}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeBackgroundColor:I

    .line 171
    const v6, 0x7f0400d5

    invoke-static {v2, v6}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeFillColor:I

    const/4 v0, 0x0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->updateViews(F)V

    .line 174
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/systemui/BatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 175
    new-instance v6, Lcom/android/systemui/BatteryMeterView$1;

    iget-object v7, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/BatteryMeterView$1;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 185
    return-void
.end method

.method private adjustPadding()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 538
    sget-boolean v1, Lcom/android/systemui/BatteryMeterView;->SHOW_CUSTOM_STATUS_BAR:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 539
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mPercentViewPaddingEnd:I

    .line 540
    .local v0, "end":I
    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 541
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mFastCharge:Z

    if-eqz v1, :cond_2

    .line 542
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mPercentViewFastChargePaddingEnd:I

    .line 547
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 549
    .end local v0    # "end":I
    :cond_1
    return-void

    .line 544
    .restart local v0    # "end":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 3
    .param p1, "darkIntensity"    # F
    .param p2, "lightColor"    # I
    .param p3, "darkColor"    # I

    .prologue
    .line 521
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private loadPercentView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 313
    const v1, 0x7f0d001e

    const/4 v2, 0x0

    .line 312
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private scaleBatteryMeterViews()V
    .locals 14

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 420
    .local v6, "res":Landroid/content/res/Resources;
    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    .line 422
    .local v10, "typedValue":Landroid/util/TypedValue;
    const v11, 0x7f070436

    const/4 v12, 0x1

    invoke-virtual {v6, v11, v10, v12}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 423
    invoke-virtual {v10}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    .line 425
    .local v3, "iconScaleFactor":F
    const v11, 0x7f07041d

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 427
    .local v1, "batteryHeight":I
    iget v11, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 428
    move v2, v1

    .line 430
    .local v2, "batteryWidth":I
    :goto_0
    const v11, 0x7f070070

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 432
    .local v4, "marginBottom":I
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 433
    int-to-float v11, v2

    mul-float/2addr v11, v3

    float-to-int v11, v11

    int-to-float v12, v1

    mul-float/2addr v12, v3

    float-to-int v12, v12

    .line 432
    invoke-direct {v7, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 435
    .local v7, "scaledLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v12, v13, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginsRelative(IIII)V

    .line 436
    iget-object v11, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {v11, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    iget-object v11, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f07006f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    iget v12, p0, Lcom/android/systemui/BatteryMeterView;->mFontScale:F

    mul-float v9, v11, v12

    .line 440
    .local v9, "textSize":F
    iget-object v11, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v11, :cond_3

    .line 442
    const-string/jumbo v11, "battery_statusbar"

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getTag()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string/jumbo v11, "battery_keyguard"

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getTag()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 443
    :cond_0
    move v5, v9

    .line 445
    .local v5, "preTextSize":F
    sget-boolean v11, Lcom/android/systemui/BatteryMeterView;->SHOW_CUSTOM_STATUS_BAR:Z

    if-eqz v11, :cond_1

    .line 446
    const-string/jumbo v11, "sys.debug.bat.optest"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 447
    .local v8, "sizeForTest":I
    iget-object v11, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/systemui/util/Utils;->getStatusBarFontSize(Landroid/content/Context;)F

    move-result v9

    .line 448
    sget-boolean v11, Lcom/android/systemui/BatteryMeterView;->DEBUG_ONEPLUS:Z

    if-eqz v11, :cond_1

    if-eqz v8, :cond_1

    .line 449
    int-to-float v11, v8

    const/high16 v12, 0x3f800000    # 1.0f

    div-float v9, v11, v12

    .line 454
    .end local v8    # "sizeForTest":I
    :cond_1
    sget-boolean v11, Lcom/android/systemui/BatteryMeterView;->DEBUG_ONEPLUS:Z

    if-eqz v11, :cond_2

    const-string/jumbo v11, "BatteryMeterView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "PercentView "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getTag()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " change textSize:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .end local v5    # "preTextSize":F
    :cond_2
    iget-object v11, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 460
    :cond_3
    iget-object v11, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    invoke-virtual {v11}, Lcom/android/systemui/BatteryDashChargeView;->updateDisplayAndTextSize()V

    .line 461
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 462
    const/4 v11, -0x2

    const/4 v12, -0x2

    .line 461
    invoke-direct {v0, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 463
    .local v0, "batteryDashChargeViewLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v11, v12, v13, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginsRelative(IIII)V

    .line 464
    iget-object v11, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    invoke-virtual {v11, v0}, Lcom/android/systemui/BatteryDashChargeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    return-void

    .line 428
    .end local v0    # "batteryDashChargeViewLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "batteryWidth":I
    .end local v4    # "marginBottom":I
    .end local v7    # "scaledLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "textSize":F
    :cond_4
    const v11, 0x7f07041e

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .restart local v2    # "batteryWidth":I
    goto/16 :goto_0
.end method

.method private updateBatteryMeterVisibility()V
    .locals 2

    .prologue
    .line 385
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 386
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 393
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mFastCharge:Z

    .line 385
    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePercentText()V
    .locals 4

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    :cond_0
    return-void
.end method

.method private updateShowPercent()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 323
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 330
    .local v1, "showing":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentShow:Z

    if-nez v2, :cond_2

    .line 331
    sget-boolean v2, Lcom/android/systemui/BatteryMeterView;->SHOW_CUSTOM_STATUS_BAR:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    const/4 v0, 0x1

    .line 332
    .local v0, "showPercent":Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowPercent:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_8

    .line 333
    sget-boolean v2, Lcom/android/systemui/BatteryMeterView;->SHOW_CUSTOM_STATUS_BAR:Z

    if-nez v2, :cond_0

    const-class v2, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isHighLightHintShow()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 332
    if-eqz v2, :cond_8

    .line 337
    :cond_0
    if-nez v1, :cond_7

    .line 338
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->loadPercentView()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 339
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-nez v2, :cond_4

    .line 340
    return-void

    .line 323
    .end local v0    # "showPercent":Z
    .end local v1    # "showing":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "showing":Z
    goto :goto_0

    .line 330
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "showPercent":Z
    goto :goto_1

    .line 331
    .end local v0    # "showPercent":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "showPercent":Z
    goto :goto_1

    .line 343
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->adjustPadding()V

    .line 345
    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 346
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    .line 347
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 349
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 350
    const/4 v4, -0x2

    .line 351
    const/4 v5, -0x1

    .line 349
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 347
    invoke-virtual {p0, v2, v6, v3}, Lcom/android/systemui/BatteryMeterView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 353
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    .line 354
    const-string/jumbo v2, "battery_statusbar"

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "battery_keyguard"

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 355
    :cond_6
    const-string/jumbo v2, "BatteryMeterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PercentView "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " create"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_7
    :goto_2
    return-void

    .line 360
    :cond_8
    if-eqz v1, :cond_7

    .line 361
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/BatteryMeterView;->removeView(Landroid/view/View;)V

    .line 362
    iput-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 364
    const-string/jumbo v2, "battery_statusbar"

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "battery_keyguard"

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 365
    :cond_9
    const-string/jumbo v2, "BatteryMeterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PercentView "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " remove"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public batteryPosition()V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mClockPosition:I

    if-eq v0, v1, :cond_0

    const v0, 0x0

    goto :goto_0

    :cond_0
    const v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    return-void
.end method

.method public getBatteryStyle()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public isFastCharge()Z
    .locals 1

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mFastCharge:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 216
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 217
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 218
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    .line 219
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 221
    const-string/jumbo v1, "status_bar_show_battery_percent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    .line 220
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 222
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 223
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "icon_blacklist"

    aput-object v2, v1, v4

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 224
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 227
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    .line 230
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryMeterVisibility()V

    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->batteryPosition()V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 5
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/systemui/OPBatteryMeterDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/OPBatteryMeterDrawable;->setBatteryLevel(I)V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/systemui/OPBatteryMeterDrawable;

    invoke-virtual {v0, p2}, Lcom/android/systemui/OPBatteryMeterDrawable;->setCharging(Z)V

    .line 248
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    .line 249
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    .line 251
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p3, :cond_0

    const v0, 0x7f110034

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 252
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 251
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->updateDashChargeView()V

    .line 256
    return-void

    .line 252
    :cond_0
    const v0, 0x7f110033

    goto :goto_0
.end method

.method public onBatteryPercentShowChange(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentShow:Z

    if-eq v0, p1, :cond_0

    .line 288
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentShow:Z

    .line 289
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 291
    :cond_0
    return-void
.end method

.method public onBatteryStyleChanged(I)V
    .locals 3
    .param p1, "style"    # I

    .prologue
    const/4 v2, 0x3

    .line 263
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/systemui/OPBatteryMeterDrawable;

    invoke-virtual {v1, p1}, Lcom/android/systemui/OPBatteryMeterDrawable;->onBatteryStyleChanged(I)V

    .line 265
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    .line 267
    .local v0, "oldStyle":I
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    .line 270
    sget-boolean v1, Lcom/android/systemui/BatteryMeterView;->SHOW_CUSTOM_STATUS_BAR:Z

    if-eqz v1, :cond_1

    .line 271
    if-eq v0, v2, :cond_0

    .line 272
    if-ne p1, v2, :cond_1

    .line 273
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 276
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    .line 278
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryMeterVisibility()V

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    .line 282
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 9
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .prologue
    .line 470
    iput p2, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIntensity:F

    .line 471
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v3, p2

    .line 472
    .local v3, "intensity":F
    :goto_0
    float-to-int v8, v3

    if-nez v8, :cond_0

    const v3, 0x0

    goto :goto_1

    :cond_0
    const v3, 0x1

    :goto_1
    int-to-float v3, v3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraNotchIgnoring()Z

    move-result v4

    if-nez v4, :cond_1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIconColor:I

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeBackgroundColor:I

    if-nez v8, :cond_2

    :cond_1
    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentColor:I

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeBackgroundColor:I

    .line 474
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/BatteryMeterView;->setTextColor(I)V

    .local v0, "background":I
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraNotchIgnoring()Z

    move-result v4

    if-nez v4, :cond_3

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIconColor:I

    if-nez v8, :cond_4

    :cond_3
    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconColor:I

    .line 474
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/systemui/OPBatteryMeterDrawable;

    invoke-virtual {v4, v2, v0}, Lcom/android/systemui/OPBatteryMeterDrawable;->setColors(II)V

    .line 492
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    invoke-virtual {v4, v2}, Lcom/android/systemui/BatteryDashChargeView;->setIconTint(I)V

    .line 494
    return-void

    .line 471
    .end local v0    # "background":I
    .end local v1
    .end local v2
    .end local v3    # "intensity":F
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "intensity":F
    goto :goto_0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 5

    .prologue
    .line 400
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 401
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 402
    .local v1, "fontScale":F
    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mFontScale:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    .line 403
    iput v1, p0, Lcom/android/systemui/BatteryMeterView;->mFontScale:F

    .line 408
    :cond_0
    const-string/jumbo v2, "battery_statusbar"

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "battery_keyguard"

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 409
    :cond_1
    const-string/jumbo v2, "BatteryMeterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PercentView "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " onDensityOrFontScaleChanged"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    .line 413
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 236
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 238
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeCallback(Ljava/lang/Object;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 240
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 241
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method public onFastChargeChanged(Z)V
    .locals 1
    .param p1, "fastCharge"    # Z

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mFastCharge:Z

    if-eq v0, p1, :cond_0

    .line 296
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mFastCharge:Z

    .line 297
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->updateDashChargeView()V

    .line 298
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryMeterVisibility()V

    .line 300
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->adjustPadding()V

    .line 303
    :cond_0
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 1
    .param p1, "isPowerSave"    # Z

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/systemui/OPBatteryMeterDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/OPBatteryMeterDrawable;->setPowerSave(Z)V

    .line 309
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 199
    const-string/jumbo v2, "icon_blacklist"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 201
    .local v1, "icons":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mSlotBattery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 202
    .local v0, "hidden":Z
    const-class v2, Lcom/android/systemui/statusbar/policy/IconLogger;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/IconLogger;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mSlotBattery:Ljava/lang/String;

    xor-int/lit8 v4, v0, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconVisibility(Ljava/lang/String;Z)V

    .line 203
    if-eqz v0, :cond_1

    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    .line 206
    .end local v0    # "hidden":Z
    .end local v1    # "icons":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryMeterVisibility()V

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 212
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->batteryPosition()V

    return-void

    .line 203
    .restart local v0    # "hidden":Z
    .restart local v1    # "icons":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public readRenovateMods()V
    .locals 1

    sget v0, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentColor:I

    sget v0, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconColor:I

    sget v0, Lcom/android/mwilky/Renovate;->mDarkIconColor:I

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIconColor:I

    sget v0, Lcom/android/mwilky/Renovate;->mClockPosition:I

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mClockPosition:I

    return-void
.end method

.method public setFillColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 513
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeFillColor:I

    if-ne v0, p1, :cond_0

    .line 514
    return-void

    .line 516
    :cond_0
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeFillColor:I

    .line 517
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIntensity:F

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/BatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 518
    return-void
.end method

.method public setForceShowPercent(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowPercent:Z

    .line 189
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 190
    return-void
.end method

.method public setIconTint(II)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "backgroundColor"    # I

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/systemui/OPBatteryMeterDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/OPBatteryMeterDrawable;->setColors(II)V

    .line 500
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/BatteryDashChargeView;->setIconTint(I)V

    .line 502
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 506
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    .line 507
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 510
    :cond_0
    return-void
.end method

.method public updateDashChargeView()V
    .locals 3

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mFastCharge:Z

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/BatteryDashChargeView;->setLevel(IZ)V

    .line 376
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryDashChargeView;->setVisibility(I)V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryDashChargeView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateLockscreenColors()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->readRenovateMods()V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconColor:I

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeBackgroundColor:I

    .line 474
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/systemui/OPBatteryMeterDrawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/OPBatteryMeterDrawable;->setColors(II)V

    .line 492
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Lcom/android/systemui/BatteryDashChargeView;->setIconTint(I)V

    :cond_2
    return-void
.end method

.method public updateViews(F)V
    .locals 3

    float-to-int v2, p1

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->readRenovateMods()V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIconColor:I

    if-nez v2, :cond_0

    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentColor:I

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIconColor:I

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeBackgroundColor:I

    if-nez v2, :cond_2

    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconColor:I

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeBackgroundColor:I

    .line 474
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/systemui/OPBatteryMeterDrawable;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/OPBatteryMeterDrawable;->setColors(II)V

    .line 492
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Lcom/android/systemui/BatteryDashChargeView;->setIconTint(I)V

    :cond_4
    return-void
.end method
