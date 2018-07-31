.class public Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;
.super Landroid/support/v7/preference/Preference;
.source "OPPhoneControlWayCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;
    }
.end annotation


# static fields
.field private static final BACK_ANIM_INDEX:I = 0x2

.field private static final HOME_ANIM_INDEX:I = 0x0

.field private static final KEY_OP_NAVIGATION_BAR_TYPE:Ljava/lang/String; = "op_navigation_bar_type"

.field private static final LAND_ANIM_INDEX:I = 0x3

.field private static final RECENT_ANIM_INDEX:I = 0x1

.field private static final TYPE_ALWAYS_SHOW_NAVIGATION_BAR:I = 0x1

.field private static final TYPE_GESTURE_NAVIGATION_BAR:I = 0x3

.field private static final TYPE_HIDE_NAVIGATION_BAR:I = 0x2


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mAlwaysShowNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrIndex:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mHasInited:Z

.field private mHideNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mLandAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mLayoutResId:I

.field private mNormalDrawable:Landroid/graphics/drawable/Drawable;

.field private mPage0:Landroid/widget/ImageView;

.field private mPage1:Landroid/widget/ImageView;

.field private mPage2:Landroid/widget/ImageView;

.field private mPage3:Landroid/widget/ImageView;

.field private mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerContainer:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage0:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage3:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;I)I
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 46
    const v0, 0x7f040105

    iput v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLayoutResId:I

    .line 61
    iput v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    .line 62
    iput-boolean v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    .line 67
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->initViews(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const v0, 0x7f040105

    iput v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLayoutResId:I

    .line 61
    iput v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    .line 62
    iput-boolean v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    .line 73
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->initViews(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const v0, 0x7f040105

    iput v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLayoutResId:I

    .line 61
    iput v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    .line 62
    iput-boolean v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->initViews(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method private initViewPage()V
    .locals 19

    .prologue
    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 131
    .local v11, "mLi":Landroid/view/LayoutInflater;
    const v17, 0x7f0400f0

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 132
    .local v5, "home":Landroid/view/View;
    const v17, 0x7f0a023e

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 133
    .local v7, "homeTitle":Landroid/widget/TextView;
    const v17, 0x7f0f04d8

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 134
    const v17, 0x7f0a0240

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 135
    .local v6, "homeSummary":Landroid/widget/TextView;
    const v17, 0x7f0f04d9

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    .line 136
    const v17, 0x7f0a023f

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v17, v0

    const-string/jumbo v18, "op_home_gesture_dark_anim.json"

    invoke-virtual/range {v17 .. v18}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 142
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 145
    const v17, 0x7f0400f0

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 146
    .local v13, "recent":Landroid/view/View;
    const v17, 0x7f0a023e

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 147
    .local v15, "recentTitle":Landroid/widget/TextView;
    const v17, 0x7f0f04da

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 148
    const v17, 0x7f0a0240

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 149
    .local v14, "recentSummary":Landroid/widget/TextView;
    const v17, 0x7f0f04db

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 150
    const v17, 0x7f0a023f

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v17, v0

    const-string/jumbo v18, "op_recent_gesture_dark_anim.json"

    invoke-virtual/range {v17 .. v18}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 156
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 159
    const v17, 0x7f0400f0

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 160
    .local v2, "back":Landroid/view/View;
    const v17, 0x7f0a023e

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 161
    .local v4, "backTitle":Landroid/widget/TextView;
    const v17, 0x7f0f04dc

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 162
    const v17, 0x7f0a0240

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 163
    .local v3, "backSummary":Landroid/widget/TextView;
    const v17, 0x7f0f04dd

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 164
    const v17, 0x7f0a023f

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v17, v0

    const-string/jumbo v18, "op_back_gesture_dark_anim.json"

    invoke-virtual/range {v17 .. v18}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 170
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 173
    const v17, 0x7f0400f1

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 174
    .local v8, "land":Landroid/view/View;
    const v17, 0x7f0a023e

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 175
    .local v10, "landTitle":Landroid/widget/TextView;
    const v17, 0x7f0f04de

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(I)V

    .line 176
    const v17, 0x7f0a0240

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 177
    .local v9, "landSummary":Landroid/widget/TextView;
    const v17, 0x7f0f04df

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 178
    const v17, 0x7f0a023f

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandAnim:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v17, v0

    const-string/jumbo v18, "op_landscape_dark_anim.json"

    invoke-virtual/range {v17 .. v18}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 184
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandAnim:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandAnim:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 187
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v16, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v12, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v12, v0, v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;-><init>(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;Ljava/util/ArrayList;)V

    .line 216
    .local v12, "mPagerAdapter":Landroid/support/v4/view/PagerAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 218
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->startAnim()V

    .line 220
    return-void

    .line 140
    .end local v2    # "back":Landroid/view/View;
    .end local v3    # "backSummary":Landroid/widget/TextView;
    .end local v4    # "backTitle":Landroid/widget/TextView;
    .end local v8    # "land":Landroid/view/View;
    .end local v9    # "landSummary":Landroid/widget/TextView;
    .end local v10    # "landTitle":Landroid/widget/TextView;
    .end local v12    # "mPagerAdapter":Landroid/support/v4/view/PagerAdapter;
    .end local v13    # "recent":Landroid/view/View;
    .end local v14    # "recentSummary":Landroid/widget/TextView;
    .end local v15    # "recentTitle":Landroid/widget/TextView;
    .end local v16    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v17, v0

    const-string/jumbo v18, "op_home_gesture_light_anim.json"

    invoke-virtual/range {v17 .. v18}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    .restart local v13    # "recent":Landroid/view/View;
    .restart local v14    # "recentSummary":Landroid/widget/TextView;
    .restart local v15    # "recentTitle":Landroid/widget/TextView;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v17, v0

    const-string/jumbo v18, "op_recent_gesture_light_anim.json"

    invoke-virtual/range {v17 .. v18}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 168
    .restart local v2    # "back":Landroid/view/View;
    .restart local v3    # "backSummary":Landroid/widget/TextView;
    .restart local v4    # "backTitle":Landroid/widget/TextView;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v17, v0

    const-string/jumbo v18, "op_back_gesture_light_anim.json"

    invoke-virtual/range {v17 .. v18}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 182
    .restart local v8    # "land":Landroid/view/View;
    .restart local v9    # "landSummary":Landroid/widget/TextView;
    .restart local v10    # "landTitle":Landroid/widget/TextView;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandAnim:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v17, v0

    const-string/jumbo v18, "op_landscape_light_anim.json"

    invoke-virtual/range {v17 .. v18}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    .line 85
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020325

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020324

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    const-string/jumbo v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 90
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    const-string/jumbo v1, "#4CFFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 95
    :goto_0
    iget v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLayoutResId:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->setLayoutResource(I)V

    .line 96
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    const-string/jumbo v1, "#969696"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 93
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    const-string/jumbo v1, "#E6E6E6"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 100
    const v0, 0x7f0a0263

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 101
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string/jumbo v1, "op_fix_navigation_bar_dark_anim.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 106
    :goto_0
    const v0, 0x7f0a0264

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHideNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 107
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHideNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string/jumbo v1, "op_hide_navigation_bar_dark_anim.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 112
    :goto_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHideNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 113
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHideNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 114
    const v0, 0x7f0a0268

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage0:Landroid/widget/ImageView;

    .line 115
    const v0, 0x7f0a0269

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage1:Landroid/widget/ImageView;

    .line 116
    const v0, 0x7f0a026a

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage2:Landroid/widget/ImageView;

    .line 117
    const v0, 0x7f0a026b

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage3:Landroid/widget/ImageView;

    .line 118
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage0:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage3:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    const v0, 0x7f0a0265

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPagerContainer:Landroid/view/View;

    .line 123
    const v0, 0x7f0a0266

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 124
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;-><init>(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 125
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->initViewPage()V

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 127
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string/jumbo v1, "op_fix_navigation_bar_light_anim.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHideNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string/jumbo v1, "op_hide_navigation_bar_light_anim.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public playCurrentPageAnim(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 288
    packed-switch p1, :pswitch_data_0

    .line 316
    :goto_0
    return-void

    .line 290
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 291
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 292
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 293
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto :goto_0

    .line 296
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 297
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 298
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 299
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto :goto_0

    .line 302
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 303
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 304
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 305
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto :goto_0

    .line 308
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 309
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 310
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 311
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_0

    .line 288
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public releaseAnim()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 270
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    if-nez v0, :cond_0

    .line 271
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 274
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHideNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 275
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 276
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 277
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 278
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 279
    iput-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 280
    iput-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHideNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 281
    iput-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 282
    iput-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 283
    iput-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 284
    iput-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 285
    return-void
.end method

.method public setViewType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 230
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    if-nez v0, :cond_0

    .line 231
    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->stopAnim()V

    .line 234
    packed-switch p1, :pswitch_data_0

    .line 256
    :goto_0
    return-void

    .line 236
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 238
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHideNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPagerContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 242
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHideNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHideNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 245
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPagerContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 248
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHideNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPagerContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->playCurrentPageAnim(I)V

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startAnim()V
    .locals 4

    .prologue
    .line 223
    iget-boolean v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "op_navigation_bar_type"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 225
    .local v0, "value":I
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->setViewType(I)V

    .line 227
    .end local v0    # "value":I
    :cond_0
    return-void
.end method

.method public stopAnim()V
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 261
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHideNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 262
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 263
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 264
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 265
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 267
    :cond_0
    return-void
.end method
