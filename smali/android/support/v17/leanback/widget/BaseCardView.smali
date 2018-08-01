.class public Landroid/support/v17/leanback/widget/BaseCardView;
.super Landroid/widget/FrameLayout;
.source "BaseCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/BaseCardView$1;,
        Landroid/support/v17/leanback/widget/BaseCardView$AnimationBase;,
        Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;,
        Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;,
        Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;,
        Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    }
.end annotation


# static fields
.field private static final LB_PRESSED_STATE_SET:[I


# instance fields
.field private final mActivatedAnimDuration:I

.field private mAnim:Landroid/view/animation/Animation;

.field private final mAnimationTrigger:Ljava/lang/Runnable;

.field private mCardType:I

.field private mDelaySelectedAnim:Z

.field mExtraViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraVisibility:I

.field mInfoAlpha:F

.field mInfoOffset:F

.field mInfoViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mInfoVisFraction:F

.field private mInfoVisibility:I

.field private mMainViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private final mSelectedAnimDuration:I

.field private mSelectedAnimationDelay:I


# direct methods
.method static synthetic -wrap0(Landroid/support/v17/leanback/widget/BaseCardView;)V
    .locals 0
    .param p0, "-this"    # Landroid/support/v17/leanback/widget/BaseCardView;

    .prologue
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->cancelAnimations()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 137
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 138
    const v1, 0x10100a7

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 137
    sput-object v0, Landroid/support/v17/leanback/widget/BaseCardView;->LB_PRESSED_STATE_SET:[I

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 152
    sget v0, Landroid/support/v17/leanback/R$attr;->baseCardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 156
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    new-instance v3, Landroid/support/v17/leanback/widget/BaseCardView$1;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/BaseCardView$1;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    .line 158
    sget-object v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 162
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_cardType:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    .line 163
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_cardForeground:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 164
    .local v2, "cardForeground":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 165
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/BaseCardView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 167
    :cond_0
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_cardBackground:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 168
    .local v1, "cardBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/BaseCardView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 171
    :cond_1
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_infoVisibility:I

    .line 172
    const/4 v4, 0x1

    .line 171
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    .line 173
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_extraVisibility:I

    .line 174
    const/4 v4, 0x2

    .line 173
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraVisibility:I

    .line 176
    iget v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraVisibility:I

    iget v4, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ge v3, v4, :cond_2

    .line 177
    iget v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraVisibility:I

    .line 181
    :cond_2
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_selectedAnimationDelay:I

    .line 182
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$integer;->lb_card_selected_animation_delay:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 180
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mSelectedAnimationDelay:I

    .line 185
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_selectedAnimationDuration:I

    .line 186
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$integer;->lb_card_selected_animation_duration:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 184
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    .line 189
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_activatedAnimationDuration:I

    .line 190
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$integer;->lb_card_activated_animation_duration:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 189
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 188
    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mActivatedAnimDuration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 195
    iput-boolean v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    .line 197
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    .line 198
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 199
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    .line 201
    const/4 v3, 0x0

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    .line 202
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getFinalInfoVisFraction()F

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    .line 203
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getFinalInfoAlpha()F

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    .line 204
    return-void

    .line 191
    .end local v1    # "cardBackground":Landroid/graphics/drawable/Drawable;
    .end local v2    # "cardForeground":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v3

    .line 192
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 191
    throw v3
.end method

.method private animateInfoAlpha(Z)V
    .locals 6
    .param p1, "shown"    # Z

    .prologue
    .line 780
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->cancelAnimations()V

    .line 782
    if-eqz p1, :cond_0

    .line 783
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 784
    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 783
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 787
    .end local v0    # "i":I
    :cond_0
    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 788
    .local v1, "targetAlpha":F
    :goto_1
    iget v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    cmpl-float v2, v1, v2

    if-nez v2, :cond_2

    .line 789
    return-void

    .line 787
    .end local v1    # "targetAlpha":F
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "targetAlpha":F
    goto :goto_1

    .line 792
    :cond_2
    new-instance v3, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;

    iget v4, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    if-eqz p1, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    invoke-direct {v3, p0, v4, v2}, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;FF)V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    .line 793
    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    iget v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mActivatedAnimDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 794
    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 795
    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v3, Landroid/support/v17/leanback/widget/BaseCardView$4;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/BaseCardView$4;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 814
    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/BaseCardView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 815
    return-void

    .line 792
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private animateInfoHeight(Z)V
    .locals 6
    .param p1, "shown"    # Z

    .prologue
    .line 737
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->cancelAnimations()V

    .line 739
    if-eqz p1, :cond_0

    .line 740
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 741
    iget-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 742
    .local v0, "extraView":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 740
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 746
    .end local v0    # "extraView":Landroid/view/View;
    .end local v1    # "i":I
    :cond_0
    if-eqz p1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 747
    .local v2, "targetFraction":F
    :goto_1
    iget v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_2

    .line 748
    return-void

    .line 746
    .end local v2    # "targetFraction":F
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "targetFraction":F
    goto :goto_1

    .line 750
    :cond_2
    new-instance v3, Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;

    iget v4, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    invoke-direct {v3, p0, v4, v2}, Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;FF)V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    .line 751
    iget-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    iget v4, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 752
    iget-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 753
    iget-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v4, Landroid/support/v17/leanback/widget/BaseCardView$3;

    invoke-direct {v4, p0}, Landroid/support/v17/leanback/widget/BaseCardView$3;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 772
    iget-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/BaseCardView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 773
    return-void
.end method

.method private applyActiveState(Z)V
    .locals 2
    .param p1, "active"    # Z

    .prologue
    .line 623
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 624
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->isRegionVisible(I)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->setInfoViewVisibility(Z)V

    .line 626
    :cond_0
    return-void
.end method

.method private applySelectedState(Z)V
    .locals 4
    .param p1, "focused"    # Z

    .prologue
    .line 661
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 663
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 665
    if-eqz p1, :cond_2

    .line 666
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    if-nez v0, :cond_1

    .line 667
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->post(Ljava/lang/Runnable;)Z

    .line 668
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mSelectedAnimationDelay:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v17/leanback/widget/BaseCardView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 673
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->animateInfoOffset(Z)V

    goto :goto_0

    .line 675
    :cond_3
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 676
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->setInfoViewVisibility(Z)V

    goto :goto_0
.end method

.method private cancelAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 681
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 683
    iput-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    .line 686
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->clearAnimation()V

    .line 688
    :cond_0
    return-void
.end method

.method private findChildrenViews()V
    .locals 10

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 562
    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 563
    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 564
    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 566
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getChildCount()I

    move-result v1

    .line 568
    .local v1, "count":I
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    invoke-direct {p0, v6}, Landroid/support/v17/leanback/widget/BaseCardView;->isCurrentRegionVisible(I)Z

    move-result v4

    .line 569
    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasExtraRegion()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    const/4 v9, 0x0

    cmpl-float v6, v6, v9

    if-lez v6, :cond_1

    const/4 v2, 0x1

    .line 571
    .local v2, "extraVisible":Z
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_7

    .line 572
    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/BaseCardView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 574
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_2

    .line 571
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 568
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "extraVisible":Z
    .end local v3    # "i":I
    :cond_0
    const/4 v4, 0x0

    .local v4, "infoVisible":Z
    goto :goto_0

    .line 569
    .end local v4    # "infoVisible":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "extraVisible":Z
    goto :goto_1

    .line 578
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    .line 580
    .local v5, "lp":Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    iget v6, v5, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    const/4 v9, 0x1

    if-ne v6, v9, :cond_4

    .line 581
    iget v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 582
    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    if-eqz v4, :cond_3

    move v6, v7

    :goto_4
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_3
    move v6, v8

    goto :goto_4

    .line 584
    :cond_4
    iget v6, v5, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_6

    .line 585
    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    if-eqz v2, :cond_5

    move v6, v7

    :goto_5
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    move v6, v8

    goto :goto_5

    .line 589
    :cond_6
    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 594
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    :cond_7
    return-void
.end method

.method private hasExtraRegion()Z
    .locals 2

    .prologue
    .line 520
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasInfoRegion()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 516
    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCurrentRegionVisible(I)Z
    .locals 4
    .param p1, "regionVisibility"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 544
    packed-switch p1, :pswitch_data_0

    .line 557
    return v1

    .line 546
    :pswitch_0
    return v0

    .line 548
    :pswitch_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isActivated()Z

    move-result v0

    return v0

    .line 550
    :pswitch_2
    iget v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 551
    iget v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 553
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result v0

    return v0

    .line 544
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isRegionVisible(I)Z
    .locals 1
    .param p1, "regionVisibility"    # I

    .prologue
    .line 527
    packed-switch p1, :pswitch_data_0

    .line 536
    const/4 v0, 0x0

    return v0

    .line 529
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 531
    :pswitch_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isActivated()Z

    move-result v0

    return v0

    .line 533
    :pswitch_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result v0

    return v0

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setInfoViewVisibility(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 629
    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 632
    if-eqz p1, :cond_0

    .line 633
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 634
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 633
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 637
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 638
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 637
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 640
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 641
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 640
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 643
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    .line 658
    .end local v0    # "i":I
    :cond_3
    :goto_3
    return-void

    .line 645
    :cond_4
    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    if-ne v1, v5, :cond_7

    .line 647
    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ne v1, v5, :cond_5

    .line 648
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->animateInfoHeight(Z)V

    goto :goto_3

    .line 650
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 651
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz p1, :cond_6

    move v2, v3

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v2, v4

    .line 651
    goto :goto_5

    .line 654
    .end local v0    # "i":I
    :cond_7
    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 656
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->animateInfoAlpha(Z)V

    goto :goto_3
.end method


# virtual methods
.method animateInfoOffset(Z)V
    .locals 8
    .param p1, "shown"    # Z

    .prologue
    const/4 v5, 0x0

    .line 694
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->cancelAnimations()V

    .line 696
    const/4 v0, 0x0

    .line 697
    .local v0, "extraHeight":I
    if-eqz p1, :cond_0

    .line 698
    iget v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 699
    .local v4, "widthSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 701
    .local v2, "heightSpec":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 702
    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 703
    .local v1, "extraView":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 704
    invoke-virtual {v1, v4, v2}, Landroid/view/View;->measure(II)V

    .line 705
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 701
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 709
    .end local v1    # "extraView":Landroid/view/View;
    .end local v2    # "heightSpec":I
    .end local v3    # "i":I
    .end local v4    # "widthSpec":I
    :cond_0
    new-instance v6, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;

    iget v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    if-eqz p1, :cond_1

    .end local v0    # "extraHeight":I
    :goto_1
    int-to-float v5, v0

    invoke-direct {v6, p0, v7, v5}, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;FF)V

    iput-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    .line 710
    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    iget v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 711
    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 712
    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v6, Landroid/support/v17/leanback/widget/BaseCardView$2;

    invoke-direct {v6, p0}, Landroid/support/v17/leanback/widget/BaseCardView$2;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 731
    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/BaseCardView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 732
    return-void

    .restart local v0    # "extraHeight":I
    :cond_1
    move v0, v5

    .line 709
    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 839
    instance-of v0, p1, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 824
    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 822
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->generateDefaultLayoutParams()Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 822
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->generateDefaultLayoutParams()Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 819
    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 830
    instance-of v0, p1, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    if-eqz v0, :cond_0

    .line 831
    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    check-cast p1, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;)V

    return-object v0

    .line 833
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 817
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 828
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 817
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method final getFinalInfoAlpha()F
    .locals 2

    .prologue
    .line 297
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 298
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 297
    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 297
    :goto_0
    return v0

    .line 298
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method final getFinalInfoVisFraction()F
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 292
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ne v0, v1, :cond_0

    .line 293
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 292
    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x0

    .line 292
    :goto_0
    return v0

    .line 293
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 7
    .param p1, "extraSpace"    # I

    .prologue
    .line 599
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 600
    .local v4, "s":[I
    array-length v0, v4

    .line 601
    .local v0, "N":I
    const/4 v3, 0x0

    .line 602
    .local v3, "pressed":Z
    const/4 v1, 0x0

    .line 603
    .local v1, "enabled":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 604
    aget v5, v4, v2

    const v6, 0x10100a7

    if-ne v5, v6, :cond_0

    .line 605
    const/4 v3, 0x1

    .line 607
    :cond_0
    aget v5, v4, v2

    const v6, 0x101009e

    if-ne v5, v6, :cond_1

    .line 608
    const/4 v1, 0x1

    .line 603
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 611
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 612
    sget-object v5, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    return-object v5

    .line 613
    :cond_3
    if-eqz v3, :cond_4

    .line 614
    sget-object v5, Landroid/support/v17/leanback/widget/BaseCardView;->LB_PRESSED_STATE_SET:[I

    return-object v5

    .line 615
    :cond_4
    if-eqz v1, :cond_5

    .line 616
    sget-object v5, Landroid/view/View;->ENABLED_STATE_SET:[I

    return-object v5

    .line 618
    :cond_5
    sget-object v5, Landroid/view/View;->EMPTY_STATE_SET:[I

    return-object v5
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 510
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 511
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 512
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->cancelAnimations()V

    .line 513
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 438
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingTop()I

    move-result v7

    int-to-float v0, v7

    .line 441
    .local v0, "currBottom":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 442
    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 443
    .local v5, "mainView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    .line 444
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v7

    .line 445
    float-to-int v8, v0

    .line 446
    iget v9, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v9, v10

    .line 447
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v0

    float-to-int v10, v10

    .line 444
    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 448
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v0, v7

    .line 441
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 452
    .end local v5    # "mainView":Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 453
    const/4 v3, 0x0

    .line 454
    .local v3, "infoHeight":F
    const/4 v2, 0x0

    :goto_1
    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 455
    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v3, v7

    .line 454
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 458
    :cond_2
    iget v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 460
    sub-float/2addr v0, v3

    .line 461
    const/4 v7, 0x0

    cmpg-float v7, v0, v7

    if-gez v7, :cond_3

    .line 462
    const/4 v0, 0x0

    .line 472
    :cond_3
    :goto_2
    const/4 v2, 0x0

    :goto_3
    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 473
    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 474
    .local v4, "infoView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_9

    .line 475
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 476
    .local v6, "viewHeight":I
    int-to-float v7, v6

    cmpl-float v7, v7, v3

    if-lez v7, :cond_4

    .line 477
    float-to-int v6, v3

    .line 479
    :cond_4
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v7

    .line 480
    float-to-int v8, v0

    .line 481
    iget v9, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v9, v10

    .line 482
    int-to-float v10, v6

    add-float/2addr v10, v0

    float-to-int v10, v10

    .line 479
    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 483
    int-to-float v7, v6

    add-float/2addr v0, v7

    .line 484
    int-to-float v7, v6

    sub-float/2addr v3, v7

    .line 485
    const/4 v7, 0x0

    cmpg-float v7, v3, v7

    if-gtz v7, :cond_9

    .line 491
    .end local v4    # "infoView":Landroid/view/View;
    .end local v6    # "viewHeight":I
    :cond_5
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasExtraRegion()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 492
    const/4 v2, 0x0

    :goto_4
    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_a

    .line 493
    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 494
    .local v1, "extraView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_6

    .line 495
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v7

    .line 496
    float-to-int v8, v0

    .line 497
    iget v9, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v9, v10

    .line 498
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v0

    float-to-int v10, v10

    .line 495
    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 499
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v0, v7

    .line 492
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 464
    .end local v1    # "extraView":Landroid/view/View;
    :cond_7
    iget v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    .line 465
    iget v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 466
    iget v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    mul-float/2addr v3, v7

    goto/16 :goto_2

    .line 469
    :cond_8
    iget v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    sub-float/2addr v0, v7

    goto/16 :goto_2

    .line 472
    .restart local v4    # "infoView":Landroid/view/View;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 505
    .end local v3    # "infoHeight":F
    .end local v4    # "infoView":Landroid/view/View;
    :cond_a
    sub-int v7, p4, p2

    sub-int v8, p5, p3

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10, v7, v8}, Landroid/support/v17/leanback/widget/BaseCardView;->onSizeChanged(IIII)V

    .line 506
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 373
    const/4 v12, 0x0

    iput v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 374
    const/4 v12, 0x0

    iput v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredHeight:I

    .line 375
    const/4 v10, 0x0

    .line 376
    .local v10, "state":I
    const/4 v8, 0x0

    .line 377
    .local v8, "mainHeight":I
    const/4 v6, 0x0

    .line 378
    .local v6, "infoHeight":I
    const/4 v2, 0x0

    .line 380
    .local v2, "extraHeight":I
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->findChildrenViews()V

    .line 382
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 384
    .local v11, "unspecifiedSpec":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_1

    .line 385
    iget-object v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 386
    .local v9, "mainView":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_0

    .line 387
    invoke-virtual {p0, v9, v11, v11}, Landroid/support/v17/leanback/widget/BaseCardView;->measureChild(Landroid/view/View;II)V

    .line 388
    iget v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 389
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v8, v12

    .line 390
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v12

    invoke-static {v10, v12}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    .line 384
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 393
    .end local v9    # "mainView":Landroid/view/View;
    :cond_1
    iget v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {p0, v12}, Landroid/support/v17/leanback/widget/BaseCardView;->setPivotX(F)V

    .line 394
    div-int/lit8 v12, v8, 0x2

    int-to-float v12, v12

    invoke-virtual {p0, v12}, Landroid/support/v17/leanback/widget/BaseCardView;->setPivotY(F)V

    .line 398
    iget v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 400
    .local v1, "cardWidthMeasureSpec":I
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 401
    const/4 v4, 0x0

    :goto_1
    iget-object v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_4

    .line 402
    iget-object v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 403
    .local v7, "infoView":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_3

    .line 404
    invoke-virtual {p0, v7, v1, v11}, Landroid/support/v17/leanback/widget/BaseCardView;->measureChild(Landroid/view/View;II)V

    .line 405
    iget v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_2

    .line 406
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v6, v12

    .line 408
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    move-result v12

    invoke-static {v10, v12}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    .line 401
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 412
    .end local v7    # "infoView":Landroid/view/View;
    :cond_4
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasExtraRegion()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 413
    const/4 v4, 0x0

    :goto_2
    iget-object v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_6

    .line 414
    iget-object v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 415
    .local v3, "extraView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_5

    .line 416
    invoke-virtual {p0, v3, v1, v11}, Landroid/support/v17/leanback/widget/BaseCardView;->measureChild(Landroid/view/View;II)V

    .line 417
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v2, v12

    .line 418
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v12

    invoke-static {v10, v12}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    .line 413
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 424
    .end local v3    # "extraView":Landroid/view/View;
    :cond_6
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v12

    if-eqz v12, :cond_7

    iget v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    const/4 v5, 0x1

    .line 425
    .local v5, "infoAnimating":Z
    :goto_3
    int-to-float v13, v8

    .line 426
    if-eqz v5, :cond_8

    int-to-float v12, v6

    iget v14, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    mul-float/2addr v12, v14

    .line 425
    :goto_4
    add-float/2addr v12, v13

    .line 427
    int-to-float v13, v2

    .line 425
    add-float/2addr v13, v12

    .line 427
    if-eqz v5, :cond_9

    const/4 v12, 0x0

    .line 425
    :goto_5
    sub-float v12, v13, v12

    float-to-int v12, v12

    iput v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredHeight:I

    .line 430
    iget v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v13

    add-int/2addr v12, v13

    .line 431
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingRight()I

    move-result v13

    .line 430
    add-int/2addr v12, v13

    move/from16 v0, p1

    invoke-static {v12, v0, v10}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v12

    .line 432
    iget v13, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredHeight:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingTop()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingBottom()I

    move-result v14

    add-int/2addr v13, v14

    .line 433
    shl-int/lit8 v14, v10, 0x10

    .line 432
    move/from16 v0, p2

    invoke-static {v13, v0, v14}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v13

    .line 430
    invoke-virtual {p0, v12, v13}, Landroid/support/v17/leanback/widget/BaseCardView;->setMeasuredDimension(II)V

    .line 434
    return-void

    .line 424
    .end local v5    # "infoAnimating":Z
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "infoAnimating":Z
    goto :goto_3

    .line 426
    :cond_8
    int-to-float v12, v6

    goto :goto_4

    .line 427
    :cond_9
    iget v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    goto :goto_5
.end method

.method public setActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 344
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isActivated()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 345
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 346
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isActivated()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->applyActiveState(Z)V

    .line 348
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 360
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 361
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 362
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->applySelectedState(Z)V

    .line 364
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1004
    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
