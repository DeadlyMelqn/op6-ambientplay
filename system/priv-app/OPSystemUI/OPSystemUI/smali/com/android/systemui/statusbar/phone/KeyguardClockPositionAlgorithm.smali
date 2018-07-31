.class public Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;
.super Ljava/lang/Object;
.source "KeyguardClockPositionAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;
    }
.end annotation


# static fields
.field private static final sSlowDownInterpolator:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mBurnInPreventionOffsetX:I

.field private mBurnInPreventionOffsetY:I

.field private mClockBottom:I

.field private mClockNotificationsMarginMax:I

.field private mClockNotificationsMarginMin:I

.field private mClockYFractionMax:F

.field private mClockYFractionMin:F

.field private mDarkAmount:F

.field private mDensity:F

.field private mDozingStackPadding:I

.field private mEmptyDragAmount:F

.field private mExpandedHeight:F

.field private mHeight:I

.field private mKeyguardStatusHeight:I

.field private mMaxKeyguardNotifications:I

.field private mMaxPanelHeight:I

.field private mMoreCardNotificationAmount:F

.field private mNotificationCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 72
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 73
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 74
    const v1, 0x3e99999a    # 0.3f

    const/high16 v2, 0x3f600000    # 0.875f

    const v3, 0x3f19999a    # 0.6f

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 75
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    sput-object v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->sSlowDownInterpolator:Landroid/view/animation/PathInterpolator;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 31
    return-void
.end method

.method private burnInPreventionOffsetX()F
    .locals 4

    .prologue
    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-float v0, v0

    .line 187
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetX:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 188
    const/high16 v2, 0x42a60000    # 83.0f

    .line 186
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->zigzag(FFF)F

    move-result v0

    .line 189
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetX:I

    int-to-float v1, v1

    .line 186
    sub-float/2addr v0, v1

    return v0
.end method

.method private burnInPreventionOffsetY()F
    .locals 4

    .prologue
    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-float v0, v0

    .line 180
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetY:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 181
    const v2, 0x44024000    # 521.0f

    .line 179
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->zigzag(FFF)F

    move-result v0

    .line 182
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetY:I

    int-to-float v1, v1

    .line 179
    sub-float/2addr v0, v1

    return v0
.end method

.method private getClockAlpha(F)F
    .locals 5
    .param p1, "scale"    # F

    .prologue
    const/4 v4, 0x0

    .line 235
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getNotificationAmountT()F

    move-result v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    .line 236
    const/high16 v1, 0x3f000000    # 0.5f

    .line 238
    .local v1, "fadeEnd":F
    :goto_0
    sub-float v2, p1, v1

    .line 239
    const v3, 0x3f733333    # 0.95f

    sub-float/2addr v3, v1

    .line 238
    div-float v0, v2, v3

    .line 240
    .local v0, "alpha":F
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2

    .line 237
    .end local v0    # "alpha":F
    .end local v1    # "fadeEnd":F
    :cond_0
    const/high16 v1, 0x3f400000    # 0.75f

    .restart local v1    # "fadeEnd":F
    goto :goto_0
.end method

.method private getClockNotificationsPadding()I
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getNotificationAmountT()F

    move-result v0

    .line 159
    .local v0, "t":F
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 160
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMarginMin:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMarginMax:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getClockScale(III)F
    .locals 11
    .param p1, "notificationPadding"    # I
    .param p2, "clockY"    # I
    .param p3, "startPadding"    # I

    .prologue
    const/4 v6, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getNotificationAmountT()F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_0

    const/high16 v3, 0x40c00000    # 6.0f

    .line 148
    .local v3, "scaleMultiplier":F
    :goto_0
    int-to-float v4, p2

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float v2, v4, v5

    .line 149
    .local v2, "scaleEnd":F
    int-to-float v4, p1

    sub-float v0, v4, v2

    .line 150
    .local v0, "distanceToScaleEnd":F
    int-to-float v4, p3

    sub-float/2addr v4, v2

    div-float v1, v0, v4

    .line 151
    .local v1, "progress":F
    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 152
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v4, v1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v1

    .line 153
    float-to-double v4, v1

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mEmptyDragAmount:F

    iget v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDensity:F

    div-float/2addr v6, v7

    const/high16 v7, 0x43960000    # 300.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v10

    float-to-double v6, v6

    const-wide v8, 0x3fd3333340000000L    # 0.30000001192092896

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v1, v4

    .line 154
    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    invoke-static {v1, v10, v4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v4

    return v4

    .line 147
    .end local v0    # "distanceToScaleEnd":F
    .end local v1    # "progress":F
    .end local v2    # "scaleEnd":F
    .end local v3    # "scaleMultiplier":F
    :cond_0
    const/high16 v3, 0x40a00000    # 5.0f

    .restart local v3    # "scaleMultiplier":F
    goto :goto_0
.end method

.method private getClockY()I
    .locals 5

    .prologue
    .line 172
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHeight:I

    int-to-float v2, v2

    const v3, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockBottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->burnInPreventionOffsetY()F

    move-result v3

    .line 172
    add-float v0, v2, v3

    .line 174
    .local v0, "clockYDark":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockYFraction()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHeight:I

    int-to-float v3, v3

    mul-float v1, v2, v3

    .line 175
    .local v1, "clockYRegular":F
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    invoke-static {v1, v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    float-to-int v2, v2

    return v2
.end method

.method private getClockYExpansionAdjustment()F
    .locals 6

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockYExpansionRubberbandFactor()F

    move-result v0

    .line 209
    .local v0, "rubberbandFactor":F
    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxPanelHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mExpandedHeight:F

    sub-float/2addr v4, v5

    mul-float v3, v0, v4

    .line 210
    .local v3, "value":F
    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxPanelHeight:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 211
    .local v2, "t":F
    sget-object v4, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->sSlowDownInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v4

    neg-float v4, v4

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v5

    .line 212
    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxPanelHeight:I

    int-to-float v5, v5

    .line 211
    mul-float v1, v4, v5

    .line 213
    .local v1, "slowedDownValue":F
    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mNotificationCount:I

    if-nez v4, :cond_0

    .line 214
    const/high16 v4, -0x40000000    # -2.0f

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    return v4

    .line 216
    :cond_0
    return v1
.end method

.method private getClockYExpansionRubberbandFactor()F
    .locals 6

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 221
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getNotificationAmountT()F

    move-result v0

    .line 222
    .local v0, "t":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 223
    float-to-double v2, v0

    const-wide v4, 0x3fd3333340000000L    # 0.30000001192092896

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 224
    sub-float/2addr v1, v0

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    const v2, 0x3da3d70a    # 0.08f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method

.method private getClockYFraction()F
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getNotificationAmountT()F

    move-result v0

    .line 165
    .local v0, "t":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 166
    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockYFractionMax:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockYFractionMin:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method

.method private getNotificationAmountT()F
    .locals 3

    .prologue
    .line 247
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mNotificationCount:I

    int-to-float v0, v0

    .line 248
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxKeyguardNotifications:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMoreCardNotificationAmount:F

    add-float/2addr v1, v2

    .line 247
    div-float/2addr v0, v1

    return v0
.end method

.method private getTopPaddingAdjMultiplier()F
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 228
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getNotificationAmountT()F

    move-result v0

    .line 229
    .local v0, "t":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 230
    sub-float/2addr v1, v0

    const v2, 0x3fb33333    # 1.4f

    mul-float/2addr v1, v2

    .line 231
    const v2, 0x404ccccd    # 3.2f

    mul-float/2addr v2, v0

    .line 230
    add-float/2addr v1, v2

    return v1
.end method

.method private zigzag(FFF)F
    .locals 5
    .param p1, "x"    # F
    .param p2, "amplitude"    # F
    .param p3, "period"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 202
    rem-float v2, p1, p3

    div-float v3, p3, v4

    div-float v1, v2, v3

    .line 203
    .local v1, "xprime":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    move v0, v1

    .line 204
    .local v0, "interpolationAmount":F
    :goto_0
    const/4 v2, 0x0

    invoke-static {v2, p2, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    return v2

    .line 203
    .end local v0    # "interpolationAmount":F
    :cond_0
    sub-float v0, v4, v1

    .restart local v0    # "interpolationAmount":F
    goto :goto_0
.end method


# virtual methods
.method public getMinStackScrollerPadding(II)F
    .locals 2
    .param p1, "height"    # I
    .param p2, "keyguardStatusHeight"    # I

    .prologue
    .line 119
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockYFractionMin:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 120
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMarginMin:I

    int-to-float v1, v1

    .line 119
    add-float/2addr v0, v1

    return v0
.end method

.method public loadDimens(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x1

    .line 88
    const v0, 0x7f07014d

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMarginMin:I

    .line 90
    const v0, 0x7f07014c

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMarginMax:I

    .line 91
    const v0, 0x7f090007

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockYFractionMin:F

    .line 92
    const v0, 0x7f090006

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockYFractionMax:F

    .line 94
    const v0, 0x7f0702aa

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 95
    const v1, 0x7f07029e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 94
    div-float/2addr v0, v1

    .line 93
    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMoreCardNotificationAmount:F

    .line 96
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDensity:F

    .line 98
    const v0, 0x7f07007e

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetX:I

    .line 100
    const v0, 0x7f07007f

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetY:I

    .line 101
    const v0, 0x7f070101

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDozingStackPadding:I

    .line 102
    return-void
.end method

.method public run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V
    .locals 9
    .param p1, "result"    # Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockY()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 125
    .local v4, "y":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockYExpansionAdjustment()F

    move-result v0

    .line 126
    .local v0, "clockAdjustment":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getTopPaddingAdjMultiplier()F

    move-result v3

    .line 127
    .local v3, "topPaddingAdjMultiplier":F
    mul-float v5, v0, v3

    float-to-int v5, v5

    iput v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingAdjustment:I

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockNotificationsPadding()I

    move-result v5

    .line 129
    iget v6, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingAdjustment:I

    .line 128
    add-int v1, v5, v6

    .line 130
    .local v1, "clockNotificationsPadding":I
    add-int v2, v4, v1

    .line 131
    .local v2, "padding":I
    iput v4, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    .line 132
    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    add-int/2addr v5, v2

    iput v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 133
    iget v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 134
    iget v6, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockNotificationsPadding()I

    move-result v7

    add-int/2addr v7, v4

    iget v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    add-int/2addr v7, v8

    .line 133
    invoke-direct {p0, v5, v6, v7}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockScale(III)F

    move-result v5

    iput v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    .line 136
    iget v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockAlpha(F)F

    move-result v5

    iput v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    .line 139
    iget v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    int-to-float v5, v5

    .line 140
    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockBottom:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDozingStackPadding:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    .line 141
    iget v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    .line 138
    invoke-static {v5, v6, v7}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 143
    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->burnInPreventionOffsetX()F

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    invoke-static {v5, v6, v7}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    .line 144
    return-void
.end method

.method public setup(IIFIIIFIF)V
    .locals 0
    .param p1, "maxKeyguardNotifications"    # I
    .param p2, "maxPanelHeight"    # I
    .param p3, "expandedHeight"    # F
    .param p4, "notificationCount"    # I
    .param p5, "height"    # I
    .param p6, "keyguardStatusHeight"    # I
    .param p7, "emptyDragAmount"    # F
    .param p8, "clockBottom"    # I
    .param p9, "dark"    # F

    .prologue
    .line 107
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxKeyguardNotifications:I

    .line 108
    iput p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxPanelHeight:I

    .line 109
    iput p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mExpandedHeight:F

    .line 110
    iput p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mNotificationCount:I

    .line 111
    iput p5, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHeight:I

    .line 112
    iput p6, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    .line 113
    iput p7, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mEmptyDragAmount:F

    .line 114
    iput p8, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockBottom:I

    .line 115
    iput p9, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    .line 116
    return-void
.end method
