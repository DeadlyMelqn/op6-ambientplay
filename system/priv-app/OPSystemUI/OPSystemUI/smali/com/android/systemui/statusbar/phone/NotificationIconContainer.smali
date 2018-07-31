.class public Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
.super Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;
.source "NotificationIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;,
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;,
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;,
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;,
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    }
.end annotation


# static fields
.field private static final ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final sTempProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;


# instance fields
.field private mActualLayoutWidth:I

.field private mActualPaddingEnd:F

.field private mActualPaddingStart:F

.field private mAddAnimationStartIndex:I

.field private mAnimationsEnabled:Z

.field private mCannedAnimationStartIndex:I

.field private mChangingViewPositions:Z

.field private mDark:Z

.field private mDarkOffsetX:I

.field private mDisallowNextAnimation:Z

.field private mDotPadding:I

.field private mDotPaddingStart:I

.field private mIconSize:I

.field private final mIconStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenedAmount:F

.field private mOrientation:I

.field private mReplacingIcons:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;>;"
        }
    .end annotation
.end field

.field private mShowAllIcons:Z

.field private mSpeedBumpIndex:I

.field private mStaticDotRadius:I

.field private mVibrateOnAnimation:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mVisualOverflowAdaption:F


# direct methods
.method static synthetic -get0()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic -get1()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic -get10()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->sTempProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic -get2()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVibrateOnAnimation:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    .line 63
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;-><init>()V

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;-><init>()V

    .line 81
    const-wide/16 v2, 0x64

    .line 72
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    .line 82
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    sget-object v2, Lcom/android/systemui/Interpolators;->ICON_OVERSHOT:Landroid/view/animation/Interpolator;

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 87
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->sTempProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 96
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;-><init>()V

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    .line 103
    const-wide/16 v2, 0x32

    .line 96
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v3, -0x31000000

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mShowAllIcons:Z

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 111
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    .line 112
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    .line 113
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    .line 116
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 117
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    .line 118
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    .line 123
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->initDimens()V

    .line 136
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setWillNotDraw(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVibrator:Landroid/os/Vibrator;

    .line 138
    return-void
.end method

.method private findFirstViewIndexAfter(F)I
    .locals 3
    .param p1, "translationX"    # F

    .prologue
    .line 274
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 275
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 276
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_0

    .line 277
    return v0

    .line 274
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v2

    return v2
.end method

.method private getActualPaddingEnd()F
    .locals 2

    .prologue
    .line 443
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    const/high16 v1, -0x31000000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingEnd()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 446
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    return v0
.end method

.method private getActualPaddingStart()F
    .locals 2

    .prologue
    .line 450
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    const/high16 v1, -0x31000000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingStart()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 453
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    return v0
.end method

.method private getLayoutEnd()F
    .locals 2

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingEnd()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private initDimens()V
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070319

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070318

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOrientation:I

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070317

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPaddingStart:I

    .line 145
    return-void
.end method

.method private isReplacingIcon(Landroid/view/View;)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 225
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroid/support/v4/util/ArrayMap;

    if-nez v5, :cond_0

    .line 226
    return v6

    .line 228
    :cond_0
    instance-of v5, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v5, :cond_1

    .line 229
    return v6

    :cond_1
    move-object v1, p1

    .line 231
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 232
    .local v1, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 233
    .local v3, "sourceIcon":Landroid/graphics/drawable/Icon;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "groupKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 235
    .local v4, "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    if-eqz v4, :cond_2

    .line 236
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 237
    .local v2, "replacedIcon":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v5, v2, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 238
    const/4 v5, 0x1

    return v5

    .line 241
    .end local v2    # "replacedIcon":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_2
    return v6
.end method


# virtual methods
.method public applyIconStates()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 186
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 187
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 188
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/stack/ViewState;

    .line 189
    .local v1, "childState":Lcom/android/systemui/statusbar/stack/ViewState;
    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 186
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childState":Lcom/android/systemui/statusbar/stack/ViewState;
    :cond_1
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 194
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    .line 195
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    .line 196
    return-void
.end method

.method public calculateIconTranslations()V
    .locals 31

    .prologue
    .line 299
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v25

    .line 300
    .local v25, "translationX":F
    const/4 v9, -0x1

    .line 301
    .local v9, "firstOverflowIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    .line 302
    .local v3, "childCount":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3

    const/16 v16, 0x5

    .line 303
    .local v16, "maxVisibleIcons":I
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v15

    .line 306
    .local v15, "layoutEnd":F
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v28

    if-eqz v28, :cond_5

    .line 307
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOrientation:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    const/4 v4, 0x1

    .line 309
    .local v4, "custom":Z
    :goto_1
    if-eqz v4, :cond_6

    .line 310
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const v29, 0x3f99999a    # 1.2f

    mul-float v28, v28, v29

    sub-float v21, v15, v28

    .line 315
    .local v21, "overflowStart":F
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    move/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_7

    const/4 v12, 0x1

    .line 316
    .local v12, "hasAmbient":Z
    :goto_3
    const/16 v27, 0x0

    .line 317
    .local v27, "visualOverflowStart":F
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    if-ge v13, v3, :cond_15

    .line 318
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    .line 319
    .local v26, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 320
    .local v14, "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    move/from16 v0, v25

    iput v0, v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 321
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-lt v13, v0, :cond_8

    .line 322
    iget v0, v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_8

    .line 321
    const/4 v11, 0x1

    .line 323
    .local v11, "forceOverflow":Z
    :goto_5
    add-int/lit8 v28, v3, -0x1

    move/from16 v0, v28

    if-ne v13, v0, :cond_a

    const/16 v18, 0x1

    .line 324
    .local v18, "noOverflowAfter":Z
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    move/from16 v28, v0

    if-eqz v28, :cond_b

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    move/from16 v28, v0

    if-eqz v28, :cond_b

    move-object/from16 v28, v26

    .line 325
    check-cast v28, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScaleFullyDark()F

    move-result v8

    .line 327
    .local v8, "drawingScale":F
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_0

    .line 328
    if-eqz v18, :cond_c

    xor-int/lit8 v28, v12, 0x1

    if-eqz v28, :cond_c

    xor-int/lit8 v18, v11, 0x1

    .line 330
    .end local v18    # "noOverflowAfter":Z
    :cond_0
    :goto_8
    const/16 v28, 0x0

    move/from16 v0, v28

    iput v0, v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 331
    const/16 v28, -0x1

    move/from16 v0, v28

    if-ne v9, v0, :cond_2

    if-nez v11, :cond_1

    .line 332
    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v15, v28

    :goto_9
    cmpl-float v28, v25, v28

    if-ltz v28, :cond_2

    .line 333
    :cond_1
    if-eqz v18, :cond_e

    xor-int/lit8 v28, v11, 0x1

    if-eqz v28, :cond_e

    add-int/lit8 v9, v13, -0x1

    .line 334
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    move/from16 v28, v0

    mul-int/lit8 v28, v28, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    move/from16 v29, v0

    mul-int/lit8 v29, v29, 0x2

    add-int v24, v28, v29

    .line 335
    .local v24, "totalDotLength":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const v29, 0x3f99999a    # 1.2f

    mul-float v28, v28, v29

    add-float v28, v28, v21

    .line 336
    div-int/lit8 v29, v24, 0x2

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    .line 335
    sub-float v28, v28, v29

    .line 337
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x3f000000    # 0.5f

    mul-float v29, v29, v30

    .line 335
    sub-float v28, v28, v29

    .line 337
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    .line 335
    add-float v27, v28, v29

    .line 338
    if-eqz v11, :cond_f

    .line 340
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    move/from16 v28, v0

    mul-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    .line 339
    add-float v28, v28, v27

    .line 340
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    .line 339
    add-float v28, v28, v29

    move/from16 v0, v25

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v27

    .line 347
    :goto_b
    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-nez v28, :cond_13

    .line 348
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowAdaption:F

    .line 349
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPaddingStart:I

    move/from16 v28, v0

    mul-int/lit8 v28, v28, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    move/from16 v29, v0

    mul-int/lit8 v29, v29, 0x2

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    move/from16 v29, v0

    mul-int/lit8 v29, v29, 0x6

    add-int v7, v28, v29

    .line 350
    .local v7, "dotWidth":I
    int-to-float v0, v7

    move/from16 v28, v0

    add-float v28, v28, v25

    cmpl-float v28, v28, v15

    if-lez v28, :cond_10

    const/16 v20, 0x1

    .line 351
    .local v20, "overEnd":Z
    :goto_c
    if-eqz v20, :cond_11

    add-int/lit8 v9, v13, -0x1

    .line 352
    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v29, v0

    if-eqz v20, :cond_12

    const/high16 v28, 0x3fc00000    # 1.5f

    :goto_e
    mul-float v28, v28, v29

    sub-float v28, v25, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPaddingStart:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v27, v28, v29

    .line 374
    .end local v7    # "dotWidth":I
    .end local v20    # "overEnd":Z
    .end local v24    # "totalDotLength":I
    :cond_2
    :goto_f
    iget v0, v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v28, v28, v29

    mul-float v28, v28, v8

    add-float v25, v25, v28

    .line 317
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 302
    .end local v4    # "custom":Z
    .end local v8    # "drawingScale":F
    .end local v11    # "forceOverflow":Z
    .end local v12    # "hasAmbient":Z
    .end local v13    # "i":I
    .end local v14    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .end local v15    # "layoutEnd":F
    .end local v16    # "maxVisibleIcons":I
    .end local v21    # "overflowStart":F
    .end local v26    # "view":Landroid/view/View;
    .end local v27    # "visualOverflowStart":F
    :cond_3
    move/from16 v16, v3

    .restart local v16    # "maxVisibleIcons":I
    goto/16 :goto_0

    .line 307
    .restart local v15    # "layoutEnd":F
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "custom":Z
    goto/16 :goto_1

    .line 306
    .end local v4    # "custom":Z
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "custom":Z
    goto/16 :goto_1

    .line 312
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const v29, 0x400ccccd    # 2.2f

    mul-float v28, v28, v29

    sub-float v21, v15, v28

    .restart local v21    # "overflowStart":F
    goto/16 :goto_2

    .line 315
    :cond_7
    const/4 v12, 0x0

    .restart local v12    # "hasAmbient":Z
    goto/16 :goto_3

    .line 322
    .restart local v13    # "i":I
    .restart local v14    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .restart local v26    # "view":Landroid/view/View;
    .restart local v27    # "visualOverflowStart":F
    :cond_8
    move/from16 v0, v16

    if-lt v13, v0, :cond_9

    const/4 v11, 0x1

    .restart local v11    # "forceOverflow":Z
    goto/16 :goto_5

    .end local v11    # "forceOverflow":Z
    :cond_9
    const/4 v11, 0x0

    .restart local v11    # "forceOverflow":Z
    goto/16 :goto_5

    .line 323
    :cond_a
    const/16 v18, 0x0

    .restart local v18    # "noOverflowAfter":Z
    goto/16 :goto_6

    .line 326
    :cond_b
    const/high16 v8, 0x3f800000    # 1.0f

    .restart local v8    # "drawingScale":F
    goto/16 :goto_7

    .line 328
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_8

    .end local v18    # "noOverflowAfter":Z
    :cond_d
    move/from16 v28, v21

    .line 332
    goto/16 :goto_9

    .line 333
    :cond_e
    move v9, v13

    goto/16 :goto_a

    .line 342
    .restart local v24    # "totalDotLength":I
    :cond_f
    sub-float v28, v25, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v28, v29

    .line 343
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    move/from16 v29, v0

    mul-int/lit8 v29, v29, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    .line 342
    mul-float v28, v28, v29

    add-float v27, v27, v28

    goto/16 :goto_b

    .line 350
    .restart local v7    # "dotWidth":I
    :cond_10
    const/16 v20, 0x0

    .restart local v20    # "overEnd":Z
    goto/16 :goto_c

    .line 351
    :cond_11
    move v9, v13

    goto/16 :goto_d

    .line 352
    :cond_12
    const/high16 v28, 0x3f000000    # 0.5f

    goto/16 :goto_e

    .line 355
    .end local v7    # "dotWidth":I
    .end local v20    # "overEnd":Z
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mShowAllIcons:Z

    move/from16 v28, v0

    if-eqz v28, :cond_14

    .line 358
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowAdaption:F

    .line 359
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v9, v0, :cond_2

    .line 360
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 361
    .local v10, "firstOverflowView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 362
    .local v22, "overflowState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    move/from16 v28, v0

    sub-float v23, v15, v28

    .line 363
    .local v23, "totalAmount":F
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    move/from16 v28, v0

    const/high16 v29, 0x40000000    # 2.0f

    div-float v29, v23, v29

    add-float v28, v28, v29

    .line 364
    div-int/lit8 v29, v24, 0x2

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    .line 363
    sub-float v28, v28, v29

    .line 365
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x3f000000    # 0.5f

    mul-float v29, v29, v30

    .line 363
    sub-float v28, v28, v29

    .line 365
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    .line 363
    add-float v17, v28, v29

    .line 366
    .local v17, "newPosition":F
    sub-float v28, v17, v27

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowAdaption:F

    .line 367
    move/from16 v27, v17

    goto/16 :goto_f

    .line 370
    .end local v10    # "firstOverflowView":Landroid/view/View;
    .end local v17    # "newPosition":F
    .end local v22    # "overflowState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .end local v23    # "totalAmount":F
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowAdaption:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    move/from16 v29, v0

    const/high16 v30, 0x3f800000    # 1.0f

    sub-float v29, v30, v29

    mul-float v28, v28, v29

    add-float v27, v27, v28

    goto/16 :goto_f

    .line 376
    .end local v8    # "drawingScale":F
    .end local v11    # "forceOverflow":Z
    .end local v14    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .end local v24    # "totalDotLength":I
    .end local v26    # "view":Landroid/view/View;
    :cond_15
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v9, v0, :cond_1a

    .line 377
    const/16 v19, 0x1

    .line 378
    .local v19, "numDots":I
    move/from16 v25, v27

    .line 379
    move v13, v9

    :goto_10
    if-ge v13, v3, :cond_1a

    .line 380
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    .line 381
    .restart local v26    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 382
    .restart local v14    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    move/from16 v28, v0

    mul-int/lit8 v28, v28, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    move/from16 v29, v0

    add-int v7, v28, v29

    .line 385
    .restart local v7    # "dotWidth":I
    if-eqz v4, :cond_16

    const/16 v28, 0x1

    move/from16 v0, v19

    move/from16 v1, v28

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-nez v28, :cond_16

    .line 386
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPaddingStart:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v25, v25, v28

    .line 389
    :cond_16
    move/from16 v0, v25

    iput v0, v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 390
    const/16 v28, 0x3

    move/from16 v0, v19

    move/from16 v1, v28

    if-gt v0, v1, :cond_19

    .line 391
    const/16 v28, 0x1

    move/from16 v0, v19

    move/from16 v1, v28

    if-ne v0, v1, :cond_18

    iget v0, v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    move/from16 v28, v0

    const v29, 0x3f4ccccd    # 0.8f

    cmpg-float v28, v28, v29

    if-gez v28, :cond_18

    .line 392
    const/16 v28, 0x0

    move/from16 v0, v28

    iput v0, v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 393
    add-int/lit8 v19, v19, -0x1

    .line 397
    :goto_11
    const/16 v28, 0x3

    move/from16 v0, v19

    move/from16 v1, v28

    if-ne v0, v1, :cond_17

    mul-int/lit8 v7, v7, 0x3

    .end local v7    # "dotWidth":I
    :cond_17
    int-to-float v0, v7

    move/from16 v28, v0

    .line 398
    iget v0, v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    move/from16 v29, v0

    .line 397
    mul-float v28, v28, v29

    add-float v25, v25, v28

    .line 402
    :goto_12
    add-int/lit8 v19, v19, 0x1

    .line 379
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_10

    .line 395
    .restart local v7    # "dotWidth":I
    :cond_18
    const/16 v28, 0x1

    move/from16 v0, v28

    iput v0, v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    goto :goto_11

    .line 400
    :cond_19
    const/16 v28, 0x2

    move/from16 v0, v28

    iput v0, v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    goto :goto_12

    .line 405
    .end local v7    # "dotWidth":I
    .end local v14    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .end local v19    # "numDots":I
    .end local v26    # "view":Landroid/view/View;
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    .line 406
    .local v2, "center":Z
    if-eqz v2, :cond_1c

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v28

    cmpg-float v28, v25, v28

    if-gez v28, :cond_1c

    .line 407
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v28

    sub-float v28, v28, v25

    const/high16 v29, 0x40000000    # 2.0f

    div-float v5, v28, v29

    .line 408
    .local v5, "delta":F
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v9, v0, :cond_1b

    .line 411
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v28

    sub-float v28, v28, v27

    const/high16 v29, 0x40000000    # 2.0f

    div-float v6, v28, v29

    .line 412
    .local v6, "deltaIgnoringOverflow":F
    add-float v28, v6, v5

    const/high16 v29, 0x40000000    # 2.0f

    div-float v5, v28, v29

    .line 414
    .end local v6    # "deltaIgnoringOverflow":F
    :cond_1b
    const/4 v13, 0x0

    :goto_13
    if-ge v13, v3, :cond_1c

    .line 415
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    .line 416
    .restart local v26    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 417
    .restart local v14    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    iget v0, v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    move/from16 v28, v0

    add-float v28, v28, v5

    move/from16 v0, v28

    iput v0, v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 414
    add-int/lit8 v13, v13, 0x1

    goto :goto_13

    .line 421
    .end local v5    # "delta":F
    .end local v14    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .end local v26    # "view":Landroid/view/View;
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isLayoutRtl()Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 422
    const/4 v13, 0x0

    :goto_14
    if-ge v13, v3, :cond_1d

    .line 423
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    .line 424
    .restart local v26    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 425
    .restart local v14    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    iget v0, v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    iput v0, v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 422
    add-int/lit8 v13, v13, 0x1

    goto :goto_14

    .line 429
    .end local v14    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .end local v26    # "view":Landroid/view/View;
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDarkOffsetX:I

    move/from16 v28, v0

    if-eqz v28, :cond_1e

    .line 430
    const/4 v13, 0x0

    :goto_15
    if-ge v13, v3, :cond_1e

    .line 431
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    .line 432
    .restart local v26    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 433
    .restart local v14    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    iget v0, v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDarkOffsetX:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v28, v28, v29

    move/from16 v0, v28

    iput v0, v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 430
    add-int/lit8 v13, v13, 0x1

    goto :goto_15

    .line 436
    .end local v14    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .end local v26    # "view":Landroid/view/View;
    :cond_1e
    return-void
.end method

.method public getActualWidth()I
    .locals 2

    .prologue
    .line 488
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v0

    return v0

    .line 491
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    return v0
.end method

.method public getIconSize()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    return v0
.end method

.method public getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .locals 1
    .param p1, "icon"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    return-object v0
.end method

.method public getVisualOverflowAdaption()F
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowAdaption:F

    return v0
.end method

.method public hasOverflow()Z
    .locals 3

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    int-to-float v2, v2

    mul-float v0, v1, v2

    .line 531
    .local v0, "width":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingEnd()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float v1, v0, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_NotificationIconContainer_10387(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0
    .param p1, "icon"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeTransientView(Landroid/view/View;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->initDimens()V

    .line 160
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 150
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 151
    .local v5, "paint":Landroid/graphics/Paint;
    const/high16 v0, -0x10000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 154
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v8

    .line 165
    .local v0, "centerY":F
    iput v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    .line 166
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 167
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 170
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 171
    .local v5, "width":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 172
    .local v2, "height":I
    int-to-float v6, v2

    div-float/2addr v6, v8

    sub-float v6, v0, v6

    float-to-int v4, v6

    .line 173
    .local v4, "top":I
    add-int v6, v4, v2

    invoke-virtual {v1, v7, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 174
    if-nez v3, :cond_0

    .line 175
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    .line 166
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "height":I
    .end local v4    # "top":I
    .end local v5    # "width":I
    :cond_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mShowAllIcons:Z

    if-eqz v6, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    .line 180
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconTranslations()V

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    .line 183
    :cond_2
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 200
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 201
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isReplacingIcon(Landroid/view/View;)Z

    move-result v1

    .line 202
    .local v1, "isReplacingIcon":Z
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    if-nez v3, :cond_1

    .line 203
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    .line 204
    .local v2, "v":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    if-eqz v1, :cond_0

    .line 205
    iput-boolean v6, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 206
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->-set0(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;Z)Z

    .line 208
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .end local v2    # "v":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 211
    .local v0, "childIndex":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    xor-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_2

    .line 212
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 213
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    if-gez v3, :cond_4

    .line 214
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 219
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    if-eqz v3, :cond_3

    instance-of v3, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_3

    .line 220
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local p1    # "child":Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v6, v4, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDark(ZZJ)V

    .line 222
    :cond_3
    return-void

    .line 216
    .restart local p1    # "child":Landroid/view/View;
    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    goto :goto_0
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 246
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onViewRemoved(Landroid/view/View;)V

    .line 247
    instance-of v3, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_1

    .line 248
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isReplacingIcon(Landroid/view/View;)Z

    move-result v2

    .local v2, "isReplacingIcon":Z
    move-object v1, p1

    .line 249
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 250
    .local v1, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 250
    if-eqz v2, :cond_0

    .line 252
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTranslationX()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->findFirstViewIndexAfter(F)I

    move-result v0

    .line 253
    .local v0, "animationStartIndex":I
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    if-gez v3, :cond_2

    .line 254
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 259
    .end local v0    # "animationStartIndex":I
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    if-nez v3, :cond_1

    .line 260
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    if-nez v2, :cond_1

    .line 262
    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addTransientView(Landroid/view/View;I)V

    .line 264
    new-instance v3, Lcom/android/systemui/statusbar/phone/-$Lambda$0bHtyKFJ7kwHShDU04o3QjO6EJY;

    invoke-direct {v3, v5, p0, v1}, Lcom/android/systemui/statusbar/phone/-$Lambda$0bHtyKFJ7kwHShDU04o3QjO6EJY;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    .line 263
    const/4 v4, 0x1

    invoke-virtual {v1, v5, v4, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLjava/lang/Runnable;)V

    .line 268
    .end local v1    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v2    # "isReplacingIcon":Z
    :cond_1
    return-void

    .line 256
    .restart local v0    # "animationStartIndex":I
    .restart local v1    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    .restart local v2    # "isReplacingIcon":Z
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    goto :goto_0
.end method

.method public resetViewStates()V
    .locals 4

    .prologue
    .line 284
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 285
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 286
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/stack/ViewState;

    .line 287
    .local v1, "iconState":Lcom/android/systemui/statusbar/stack/ViewState;
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 288
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 289
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    .end local v1    # "iconState":Lcom/android/systemui/statusbar/stack/ViewState;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setActualLayoutWidth(I)V
    .locals 0
    .param p1, "actualLayoutWidth"    # I

    .prologue
    .line 467
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    .line 471
    return-void
.end method

.method public setActualPaddingEnd(F)V
    .locals 0
    .param p1, "paddingEnd"    # F

    .prologue
    .line 474
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    .line 478
    return-void
.end method

.method public setActualPaddingStart(F)V
    .locals 0
    .param p1, "paddingStart"    # F

    .prologue
    .line 481
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    .line 485
    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 543
    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    if-eqz v3, :cond_1

    .line 544
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 545
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 546
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/stack/ViewState;

    .line 547
    .local v1, "childState":Lcom/android/systemui/statusbar/stack/ViewState;
    if-eqz v1, :cond_0

    .line 548
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimations(Landroid/view/View;)V

    .line 549
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 544
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 553
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childState":Lcom/android/systemui/statusbar/stack/ViewState;
    .end local v2    # "i":I
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    .line 554
    return-void
.end method

.method public setChangingViewPositions(Z)V
    .locals 0
    .param p1, "changingViewPositions"    # Z

    .prologue
    .line 495
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    .line 496
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 5
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 499
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    .line 500
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    xor-int/lit8 v3, p2, 0x1

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    .line 501
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 502
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 503
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v2, :cond_0

    .line 504
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDark(ZZJ)V

    .line 501
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    :cond_1
    return-void
.end method

.method public setDarkOffsetX(I)V
    .locals 0
    .param p1, "offsetX"    # I

    .prologue
    .line 557
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDarkOffsetX:I

    .line 558
    return-void
.end method

.method public setOpenedAmount(F)V
    .locals 0
    .param p1, "expandAmount"    # F

    .prologue
    .line 518
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    .line 519
    return-void
.end method

.method public setReplacingIcons(Landroid/support/v4/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 561
    .local p1, "replacingIcons":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroid/support/v4/util/ArrayMap;

    .line 562
    return-void
.end method

.method public setShowAllIcons(Z)V
    .locals 0
    .param p1, "showAllIcons"    # Z

    .prologue
    .line 463
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mShowAllIcons:Z

    .line 464
    return-void
.end method

.method public setSpeedBumpIndex(I)V
    .locals 0
    .param p1, "speedBumpIndex"    # I

    .prologue
    .line 514
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    .line 515
    return-void
.end method

.method public setVibrateOnAnimation(Z)V
    .locals 0
    .param p1, "vibrateOnAnimation"    # Z

    .prologue
    .line 535
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVibrateOnAnimation:Z

    .line 536
    return-void
.end method

.method public setVisualOverflowAdaption(F)V
    .locals 0
    .param p1, "visualOverflowAdaption"    # F

    .prologue
    .line 526
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowAdaption:F

    .line 527
    return-void
.end method
