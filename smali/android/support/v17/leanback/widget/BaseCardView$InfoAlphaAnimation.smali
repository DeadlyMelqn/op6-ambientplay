.class final Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;
.super Landroid/support/v17/leanback/widget/BaseCardView$AnimationBase;
.source "BaseCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/BaseCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InfoAlphaAnimation"
.end annotation


# instance fields
.field private mDelta:F

.field private mStartValue:F

.field final synthetic this$0:Landroid/support/v17/leanback/widget/BaseCardView;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/BaseCardView;FF)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/BaseCardView;
    .param p2, "start"    # F
    .param p3, "end"    # F

    .prologue
    .line 956
    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView$AnimationBase;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    .line 957
    iput p2, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->mStartValue:F

    .line 958
    sub-float v0, p3, p2

    iput v0, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->mDelta:F

    .line 959
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 963
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    iget v2, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->mStartValue:F

    iget v3, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->mDelta:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, v1, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    .line 964
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 965
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    iget v2, v2, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 964
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 967
    :cond_0
    return-void
.end method
