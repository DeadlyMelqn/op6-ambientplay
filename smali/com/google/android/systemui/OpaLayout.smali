.class public Lcom/google/android/systemui/OpaLayout;
.super Landroid/widget/FrameLayout;
.source "OpaLayout.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/OpaLayout$1;,
        Lcom/google/android/systemui/OpaLayout$2;,
        Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;
    }
.end annotation


# instance fields
.field private mAnimationState:I

.field private mBlue:Landroid/view/View;

.field private mBottom:Landroid/view/View;

.field private final mCheckLongPress:Ljava/lang/Runnable;

.field private mCode:I

.field private final mCollapseInterpolator:Landroid/view/animation/Interpolator;

.field private final mCurrentAnimators:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mDarkMode:I

.field private final mDiamondInterpolator:Landroid/view/animation/Interpolator;

.field private final mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mGreen:Landroid/view/View;

.field private mHalo:Landroid/view/View;

.field private mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

.field private final mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mIsPressed:Z

.field private mIsVertical:Z

.field private mLeft:Landroid/view/View;

.field private mLightMode:I

.field private mLongClicked:Z

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNavBarAnimationObserver:Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;

.field private mOpaEnabled:Z

.field private mRed:Landroid/view/View;

.field private final mRetract:Ljava/lang/Runnable;

.field private final mRetractInterpolator:Landroid/view/animation/Interpolator;

.field private mRight:Landroid/view/View;

.field private mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

.field private mStartTime:J

.field private mSupportsLongpress:Z

.field private mTop:Landroid/view/View;

.field private mWhite:Landroid/view/View;

.field private mYellow:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/google/android/systemui/OpaLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/google/android/systemui/OpaLayout;

    .prologue
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/google/android/systemui/OpaLayout;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "-this"    # Lcom/google/android/systemui/OpaLayout;

    .prologue
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get2(Lcom/google/android/systemui/OpaLayout;)Z
    .locals 1
    .param p0, "-this"    # Lcom/google/android/systemui/OpaLayout;

    .prologue
    iget-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mIsPressed:Z

    return v0
.end method

.method static synthetic -get3(Lcom/google/android/systemui/OpaLayout;)Z
    .locals 1
    .param p0, "-this"    # Lcom/google/android/systemui/OpaLayout;

    .prologue
    iget-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mSupportsLongpress:Z

    return v0
.end method

.method static synthetic -set0(Lcom/google/android/systemui/OpaLayout;I)I
    .locals 0
    .param p0, "-this"    # Lcom/google/android/systemui/OpaLayout;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    return p1
.end method

.method static synthetic -set1(Lcom/google/android/systemui/OpaLayout;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/google/android/systemui/OpaLayout;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mLongClicked:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0
    .param p0, "-this"    # Lcom/google/android/systemui/OpaLayout;

    .prologue
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->cancelCurrentAnimation()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0
    .param p0, "-this"    # Lcom/google/android/systemui/OpaLayout;

    .prologue
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->startCollapseAnimation()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0
    .param p0, "-this"    # Lcom/google/android/systemui/OpaLayout;

    .prologue
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->startLineAnimation()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0
    .param p0, "-this"    # Lcom/google/android/systemui/OpaLayout;

    .prologue
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->startRetractAnimation()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v4, 0x3ecccccd    # 0.4f

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 160
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 79
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    .line 80
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mSupportsLongpress:Z

    .line 105
    new-instance v0, Lcom/google/android/systemui/OpaLayout$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/OpaLayout$1;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    .line 123
    new-instance v0, Lcom/google/android/systemui/OpaLayout$2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/OpaLayout$2;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    .line 131
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    .line 132
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 133
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    .line 134
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    .line 135
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 136
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 161
    const v0, 0x7f060037

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mDarkMode:I

    .line 162
    const v0, 0x7f060086

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mLightMode:I

    .line 164
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mNavBarAnimationObserver:Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;-><init>(Lcom/google/android/systemui/OpaLayout;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mNavBarAnimationObserver:Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mNavBarAnimationObserver:Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;

    invoke-virtual {v0}, Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;->observe()V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v4, 0x3ecccccd    # 0.4f

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 171
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 79
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    .line 80
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mSupportsLongpress:Z

    .line 105
    new-instance v0, Lcom/google/android/systemui/OpaLayout$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/OpaLayout$1;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    .line 123
    new-instance v0, Lcom/google/android/systemui/OpaLayout$2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/OpaLayout$2;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    .line 131
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    .line 132
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 133
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    .line 134
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    .line 135
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 136
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 172
    const v0, 0x7f060037

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mDarkMode:I

    .line 173
    const v0, 0x7f060086

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mLightMode:I

    .line 175
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mNavBarAnimationObserver:Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;-><init>(Lcom/google/android/systemui/OpaLayout;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mNavBarAnimationObserver:Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mNavBarAnimationObserver:Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;

    invoke-virtual {v0}, Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;->observe()V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v7, 0x3e4ccccd    # 0.2f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 182
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    iput v5, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 79
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    .line 80
    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/MetricsLogger;

    iput-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 86
    iput-boolean v6, p0, Lcom/google/android/systemui/OpaLayout;->mSupportsLongpress:Z

    .line 105
    new-instance v1, Lcom/google/android/systemui/OpaLayout$1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/OpaLayout$1;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    .line 123
    new-instance v1, Lcom/google/android/systemui/OpaLayout$2;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/OpaLayout$2;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    .line 131
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    .line 132
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 133
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v7, v3, v7, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    .line 134
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    .line 135
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 136
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 183
    const v1, 0x7f060037

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/systemui/OpaLayout;->mDarkMode:I

    .line 184
    const v1, 0x7f060086

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/systemui/OpaLayout;->mLightMode:I

    .line 186
    sget-object v1, Lcom/android/systemui/R$styleable;->KeyButtonView:[I

    invoke-virtual {p1, p2, v1, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 189
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/systemui/OpaLayout;->mCode:I

    .line 191
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mSupportsLongpress:Z

    .line 193
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 195
    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    .line 196
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {p0, v1}, Lcom/google/android/systemui/OpaLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mNavBarAnimationObserver:Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;

    if-nez v1, :cond_0

    .line 199
    new-instance v1, Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;-><init>(Lcom/google/android/systemui/OpaLayout;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mNavBarAnimationObserver:Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mNavBarAnimationObserver:Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;

    invoke-virtual {v1}, Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;->observe()V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const v4, 0x3ecccccd    # 0.4f

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 205
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 79
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    .line 80
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mSupportsLongpress:Z

    .line 105
    new-instance v0, Lcom/google/android/systemui/OpaLayout$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/OpaLayout$1;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    .line 123
    new-instance v0, Lcom/google/android/systemui/OpaLayout$2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/OpaLayout$2;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    .line 131
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    .line 132
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 133
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    .line 134
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    .line 135
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 136
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 206
    const v0, 0x7f060037

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mDarkMode:I

    .line 207
    const v0, 0x7f060086

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mLightMode:I

    .line 209
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mNavBarAnimationObserver:Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;-><init>(Lcom/google/android/systemui/OpaLayout;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mNavBarAnimationObserver:Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mNavBarAnimationObserver:Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;

    invoke-virtual {v0}, Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;->observe()V

    .line 213
    return-void
.end method

.method private cancelCurrentAnimation()V
    .locals 3

    .prologue
    .line 251
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    return-void

    .line 253
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 254
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 255
    .local v0, "curAnim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 256
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    .end local v0    # "curAnim":Landroid/animation/Animator;
    :cond_1
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 259
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 260
    return-void
.end method

.method private endCurrentAnimation()V
    .locals 3

    .prologue
    .line 263
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    return-void

    .line 265
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 266
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 267
    .local v0, "curAnim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 268
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    .end local v0    # "curAnim":Landroid/animation/Animator;
    :cond_1
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 271
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 272
    return-void
.end method

.method private getBackgroundColor(F)I
    .locals 2
    .param p1, "darkIntensity"    # F

    .prologue
    .line 597
    iget v0, p0, Lcom/google/android/systemui/OpaLayout;->mLightMode:I

    iget v1, p0, Lcom/google/android/systemui/OpaLayout;->mDarkMode:I

    .line 596
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/systemui/OpaLayout;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method private getCollapseAnimatorSet()Landroid/util/ArraySet;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 277
    .local v8, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/animation/Animator;>;"
    iget-boolean v9, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    if-eqz v9, :cond_0

    .line 278
    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    const v11, 0x7f07021d

    invoke-direct {p0, v11}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v11

    neg-float v11, v11

    const/16 v12, 0x53

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v0

    .line 282
    .local v0, "animator":Landroid/animation/Animator;
    :goto_0
    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v12, 0xc8

    invoke-direct {p0, v9, v11, v12, v10}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v12, 0xc8

    invoke-direct {p0, v9, v11, v12, v10}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 286
    iget-boolean v9, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    if-eqz v9, :cond_1

    .line 287
    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    const v11, 0x7f07021c

    invoke-direct {p0, v11}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v11

    neg-float v11, v11

    const/16 v12, 0x64

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    .line 291
    .local v1, "animator2":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v12, 0xc8

    invoke-direct {p0, v9, v11, v12, v10}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v12, 0xc8

    invoke-direct {p0, v9, v11, v12, v10}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 295
    iget-boolean v9, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    if-eqz v9, :cond_2

    .line 296
    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    const v11, 0x7f07021d

    invoke-direct {p0, v11}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v11

    const/16 v12, 0x53

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v2

    .line 300
    .local v2, "animator3":Landroid/animation/Animator;
    :goto_2
    invoke-virtual {v8, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v12, 0xc8

    invoke-direct {p0, v9, v11, v12, v10}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v12, 0xc8

    invoke-direct {p0, v9, v11, v12, v10}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 304
    iget-boolean v9, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    if-eqz v9, :cond_3

    .line 305
    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    const v11, 0x7f07021c

    invoke-direct {p0, v11}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v11

    const/16 v12, 0x64

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v3

    .line 309
    .local v3, "animator4":Landroid/animation/Animator;
    :goto_3
    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v12, 0xc8

    invoke-direct {p0, v9, v11, v12, v10}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v12, 0xc8

    invoke-direct {p0, v9, v11, v12, v10}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v12, 0x96

    invoke-direct {p0, v9, v11, v12, v10}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v4

    .line 313
    .local v4, "scaleAnimatorX":Landroid/animation/Animator;
    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v12, 0x96

    invoke-direct {p0, v9, v11, v12, v10}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v6

    .line 314
    .local v6, "scaleAnimatorY":Landroid/animation/Animator;
    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v12, 0x96

    invoke-direct {p0, v9, v11, v12, v10}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v5

    .line 315
    .local v5, "scaleAnimatorX2":Landroid/animation/Animator;
    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v12, 0x96

    invoke-direct {p0, v9, v11, v12, v10}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v7

    .line 316
    .local v7, "scaleAnimatorY2":Landroid/animation/Animator;
    const-wide/16 v10, 0x21

    invoke-virtual {v4, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 317
    const-wide/16 v10, 0x21

    invoke-virtual {v6, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 318
    const-wide/16 v10, 0x21

    invoke-virtual {v5, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 319
    const-wide/16 v10, 0x21

    invoke-virtual {v7, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 320
    invoke-virtual {v8, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-virtual {v8, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-direct {p0, v8}, Lcom/google/android/systemui/OpaLayout;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v9

    new-instance v10, Lcom/google/android/systemui/OpaLayout$3;

    invoke-direct {v10, p0}, Lcom/google/android/systemui/OpaLayout$3;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    invoke-virtual {v9, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 330
    return-object v8

    .line 280
    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v1    # "animator2":Landroid/animation/Animator;
    .end local v2    # "animator3":Landroid/animation/Animator;
    .end local v3    # "animator4":Landroid/animation/Animator;
    .end local v4    # "scaleAnimatorX":Landroid/animation/Animator;
    .end local v5    # "scaleAnimatorX2":Landroid/animation/Animator;
    .end local v6    # "scaleAnimatorY":Landroid/animation/Animator;
    .end local v7    # "scaleAnimatorY2":Landroid/animation/Animator;
    :cond_0
    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    const v11, 0x7f07021d

    invoke-direct {p0, v11}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v11

    const/16 v12, 0x53

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/Animator;
    goto/16 :goto_0

    .line 289
    :cond_1
    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    const v11, 0x7f07021c

    invoke-direct {p0, v11}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v11

    const/16 v12, 0x64

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    .restart local v1    # "animator2":Landroid/animation/Animator;
    goto/16 :goto_1

    .line 298
    :cond_2
    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    const v11, 0x7f07021d

    invoke-direct {p0, v11}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v11

    neg-float v11, v11

    const/16 v12, 0x53

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v2

    .restart local v2    # "animator3":Landroid/animation/Animator;
    goto/16 :goto_2

    .line 307
    :cond_3
    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    const v11, 0x7f07021c

    invoke-direct {p0, v11}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v11

    neg-float v11, v11

    const/16 v12, 0x64

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v3

    .restart local v3    # "animator4":Landroid/animation/Animator;
    goto/16 :goto_3
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 3
    .param p1, "darkIntensity"    # F
    .param p2, "lightMode"    # I
    .param p3, "darkMode"    # I

    .prologue
    .line 601
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

.method private getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "deltaX"    # F
    .param p4, "duration"    # I

    .prologue
    .line 432
    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v1, p3

    float-to-int v1, v1

    int-to-float v1, v1

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 433
    .local v0, "anim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 434
    invoke-virtual {v0, p2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 435
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 436
    return-object v0
.end method

.method private getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "deltaY"    # F
    .param p4, "duration"    # I

    .prologue
    .line 440
    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v1, p3

    float-to-int v1, v1

    int-to-float v1, v1

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 441
    .local v0, "anim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 442
    invoke-virtual {v0, p2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 443
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 444
    return-object v0
.end method

.method private getDiamondAnimatorSet()Landroid/util/ArraySet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v8, 0x3f200000    # 0.625f

    const v7, 0x3ef3cf3d

    const v6, 0x7f07021a

    const v5, 0x3f4ccccd    # 0.8f

    const/16 v4, 0xc8

    .line 334
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 335
    .local v0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/animation/Animator;>;"
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v6}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    neg-float v3, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v5, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v5, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v6}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v5, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v5, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v6}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    neg-float v3, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v5, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v5, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v6}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v5, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v5, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v8, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const/16 v3, 0x64

    invoke-direct {p0, v1, v7, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const/16 v3, 0x64

    invoke-direct {p0, v1, v7, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/OpaLayout$4;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/OpaLayout$4;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 360
    return-object v0
.end method

.method private getLineAnimatorSet()Landroid/util/ArraySet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    const v8, 0x7f07021e

    const/16 v7, 0x85

    const/16 v6, 0x53

    const/4 v5, 0x0

    const/16 v4, 0x113

    .line 364
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 365
    .local v0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/animation/Animator;>;"
    iget-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v3, 0x7f07021f

    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v3, 0x7f070220

    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    invoke-direct {p0, v1, v2, v3, v7}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v8}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 369
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v3, 0x7f07021f

    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    neg-float v3, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v3, 0x7f070220

    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    neg-float v3, v3

    invoke-direct {p0, v1, v2, v3, v7}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v8}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    neg-float v3, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 380
    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v5, v6, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v5, v6, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v5, v6, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v5, v6, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 384
    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/OpaLayout$5;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/OpaLayout$5;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 393
    return-object v0

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v3, 0x7f07021f

    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    neg-float v3, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v3, 0x7f070220

    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    invoke-direct {p0, v1, v2, v3, v7}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v8}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    neg-float v3, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v3, 0x7f07021f

    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v3, 0x7f070220

    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    neg-float v3, v3

    invoke-direct {p0, v1, v2, v3, v7}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v8}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/animation/Animator;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 480
    .local p1, "animators":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/animation/Animator;>;"
    const-wide/16 v4, -0x1

    .line 481
    .local v4, "longestDuration":J
    const/4 v2, 0x0

    .line 483
    .local v2, "longestAnim":Landroid/animation/Animator;
    const/4 v1, 0x0

    .end local v2    # "longestAnim":Landroid/animation/Animator;
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 484
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 485
    .local v0, "a":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-lez v3, :cond_0

    .line 486
    invoke-virtual {v0}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v4

    .line 487
    move-object v2, v0

    .line 483
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    .end local v0    # "a":Landroid/animation/Animator;
    :cond_1
    return-object v2
.end method

.method private getPxVal(I)F
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/google/android/systemui/OpaLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getRetractAnimatorSet()Landroid/util/ArraySet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v3, 0x12c

    .line 397
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 398
    .local v0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/animation/Animator;>;"
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 403
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 418
    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/OpaLayout$6;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/OpaLayout$6;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 424
    return-object v0
.end method

.method private getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "factor"    # F
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 448
    new-instance v0, Landroid/view/RenderNodeAnimator;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p2}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 449
    .local v0, "anim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 450
    invoke-virtual {v0, p4}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 451
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 452
    return-object v0
.end method

.method private getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "factor"    # F
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 456
    new-instance v0, Landroid/view/RenderNodeAnimator;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p2}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 457
    .local v0, "anim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 458
    invoke-virtual {v0, p4}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 459
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 460
    return-object v0
.end method

.method private getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "duration"    # I

    .prologue
    .line 464
    new-instance v0, Landroid/view/RenderNodeAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 465
    .local v0, "anim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 466
    invoke-virtual {v0, p2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 467
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 468
    return-object v0
.end method

.method private getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "duration"    # I

    .prologue
    .line 472
    new-instance v0, Landroid/view/RenderNodeAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 473
    .local v0, "anim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 474
    invoke-virtual {v0, p2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 475
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 476
    return-object v0
.end method

.method private startAll(Landroid/util/ArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "animators":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/animation/Animator;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 218
    .local v0, "curAnim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    .end local v0    # "curAnim":Landroid/animation/Animator;
    :cond_0
    return-void
.end method

.method private startCollapseAnimation()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 224
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->getCollapseAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 225
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 226
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->startAll(Landroid/util/ArraySet;)V

    .line 227
    return-void
.end method

.method private startDiamondAnimation()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 231
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->getDiamondAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 232
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 233
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->startAll(Landroid/util/ArraySet;)V

    .line 234
    return-void
.end method

.method private startLineAnimation()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 238
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->getLineAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 239
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 240
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->startAll(Landroid/util/ArraySet;)V

    .line 241
    return-void
.end method

.method private startRetractAnimation()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 245
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->getRetractAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 246
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 247
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->startAll(Landroid/util/ArraySet;)V

    .line 248
    return-void
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->abortCurrentGesture()V

    .line 514
    return-void
.end method

.method public isClickable()Z
    .locals 1

    .prologue
    .line 621
    iget v0, p0, Lcom/google/android/systemui/OpaLayout;->mCode:I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->isClickable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 517
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 519
    const v0, 0x7f0a0210

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    .line 520
    const v0, 0x7f0a005e

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    .line 521
    const v0, 0x7f0a02e6

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    .line 522
    const v0, 0x7f0a00ee

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    .line 523
    const v0, 0x7f0a02d8

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/view/View;

    .line 524
    const v0, 0x7f0a010a

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/view/View;

    .line 525
    const v0, 0x7f0a0113

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 527
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->setOpaEnabled(Z)V

    .line 528
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 531
    iget-boolean v3, p0, Lcom/google/android/systemui/OpaLayout;->mOpaEnabled:Z

    if-nez v3, :cond_0

    .line 532
    return v8

    .line 534
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 573
    :cond_1
    :pswitch_0
    return v8

    .line 536
    :pswitch_1
    iget-object v3, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 537
    iget v3, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 538
    return v8

    .line 540
    :cond_2
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->endCurrentAnimation()V

    .line 542
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/systemui/OpaLayout;->mStartTime:J

    .line 543
    iput-boolean v8, p0, Lcom/google/android/systemui/OpaLayout;->mLongClicked:Z

    .line 544
    iput-boolean v6, p0, Lcom/google/android/systemui/OpaLayout;->mIsPressed:Z

    .line 545
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->startDiamondAnimation()V

    .line 546
    iget-object v3, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/google/android/systemui/OpaLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 547
    iget-object v3, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/systemui/OpaLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 548
    return v8

    .line 552
    :pswitch_2
    iget v3, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    if-ne v3, v6, :cond_4

    .line 553
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 554
    .local v0, "elapsedRealtime":J
    iget-object v3, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/google/android/systemui/OpaLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 555
    iget-object v3, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/google/android/systemui/OpaLayout;->mStartTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x64

    sub-long v4, v6, v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/systemui/OpaLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 556
    iget-object v3, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/google/android/systemui/OpaLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 557
    return v8

    .line 560
    .end local v0    # "elapsedRealtime":J
    :cond_4
    iget-boolean v3, p0, Lcom/google/android/systemui/OpaLayout;->mIsPressed:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/google/android/systemui/OpaLayout;->mLongClicked:Z

    if-eqz v3, :cond_6

    .line 561
    :cond_5
    const/4 v2, 0x0

    .line 565
    .local v2, "n":I
    :goto_0
    iput-boolean v8, p0, Lcom/google/android/systemui/OpaLayout;->mIsPressed:Z

    .line 566
    if-eqz v2, :cond_1

    .line 567
    iget-object v3, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 568
    return v8

    .line 563
    .end local v2    # "n":I
    :cond_6
    const/4 v2, 0x1

    .restart local v2    # "n":I
    goto :goto_0

    .line 534
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public sendEvent(II)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "flags"    # I

    .prologue
    .line 494
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/systemui/OpaLayout;->sendEvent(IIJ)V

    .line 495
    return-void
.end method

.method sendEvent(IIJ)V
    .locals 17
    .param p1, "action"    # I
    .param p2, "flags"    # I
    .param p3, "when"    # J

    .prologue
    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/systemui/OpaLayout;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v4, Landroid/metrics/LogMaker;

    const/16 v5, 0x3a3

    invoke-direct {v4, v5}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 499
    const/4 v5, 0x4

    .line 498
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 500
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/systemui/OpaLayout;->mCode:I

    .line 498
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 501
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3a5

    .line 498
    invoke-virtual {v4, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 502
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3a4

    .line 498
    invoke-virtual {v4, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 503
    move/from16 v0, p2

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    const/4 v10, 0x1

    .line 504
    .local v10, "repeatCount":I
    :goto_0
    new-instance v3, Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/systemui/OpaLayout;->mStartTime:J

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/systemui/OpaLayout;->mCode:I

    .line 506
    or-int/lit8 v2, p2, 0x8

    or-int/lit8 v14, v2, 0x40

    .line 505
    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    .line 507
    const v15, 0x4000001

    move-wide/from16 v6, p3

    move/from16 v8, p1

    .line 504
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 508
    .local v3, "ev":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    .line 509
    const/4 v4, 0x0

    .line 508
    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 510
    return-void

    .line 503
    .end local v3    # "ev":Landroid/view/KeyEvent;
    .end local v10    # "repeatCount":I
    :cond_0
    const/4 v10, 0x0

    .restart local v10    # "repeatCount":I
    goto :goto_0
.end method

.method public setCarMode(Z)V
    .locals 1
    .param p1, "carMode"    # Z

    .prologue
    .line 577
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->setOpaEnabled(Z)V

    .line 578
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 4
    .param p1, "darkIntensity"    # F

    .prologue
    .line 589
    invoke-direct {p0, p1}, Lcom/google/android/systemui/OpaLayout;->getBackgroundColor(F)I

    move-result v0

    .line 590
    .local v0, "backgroundColor":I
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 591
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 592
    invoke-virtual {p0}, Lcom/google/android/systemui/OpaLayout;->invalidate()V

    .line 593
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 582
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 630
    return-void
.end method

.method public setOpaEnabled(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    const/4 v7, 0x1

    .line 633
    invoke-virtual {p0}, Lcom/google/android/systemui/OpaLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 634
    const-string/jumbo v5, "navigation_bar_animation"

    const/4 v6, -0x2

    .line 633
    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v7, :cond_1

    const/4 v1, 0x1

    .line 635
    .local v1, "isEnabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/systemui/OpaLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x112000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 636
    .local v0, "configValue":Z
    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/OpaLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v1

    .line 637
    :goto_1
    iput-boolean v2, p0, Lcom/google/android/systemui/OpaLayout;->mOpaEnabled:Z

    .line 639
    if-eqz v2, :cond_3

    const/4 v3, 0x0

    .line 641
    .local v3, "visibility":I
    :goto_2
    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 642
    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 643
    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 644
    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 645
    return-void

    .line 633
    .end local v0    # "configValue":Z
    .end local v1    # "isEnabled":Z
    .end local v3    # "visibility":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isEnabled":Z
    goto :goto_0

    .line 636
    .restart local v0    # "configValue":Z
    :cond_2
    const/4 v2, 0x0

    .local v2, "shouldEnable":Z
    goto :goto_1

    .line 639
    .end local v2    # "shouldEnable":Z
    :cond_3
    const/4 v3, 0x4

    .restart local v3    # "visibility":I
    goto :goto_2
.end method

.method public setVertical(Z)V
    .locals 1
    .param p1, "vertical"    # Z

    .prologue
    .line 605
    iput-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    .line 606
    iget-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    .line 608
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    .line 609
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    .line 610
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    .line 611
    return-void

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    .line 614
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    .line 615
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    .line 616
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    .line 617
    return-void
.end method
