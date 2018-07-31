.class Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "GuidanceStylingRelativeLayout.java"


# instance fields
.field private mTitleKeylinePercent:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-static {p1}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getKeyLinePercent(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->mTitleKeylinePercent:F

    .line 33
    return-void
.end method

.method public static getKeyLinePercent(Landroid/content/Context;)F
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 37
    sget-object v3, Landroid/support/v17/leanback/R$styleable;->LeanbackGuidedStepTheme:[I

    .line 36
    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 38
    .local v1, "ta":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/v17/leanback/R$styleable;->LeanbackGuidedStepTheme_guidedStepKeyline:I

    const/high16 v3, 0x42200000    # 40.0f

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 39
    .local v0, "percent":F
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    return v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 45
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 47
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v10

    sget v11, Landroid/support/v17/leanback/R$id;->guidance_title:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 48
    .local v7, "mTitleView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v10

    sget v11, Landroid/support/v17/leanback/R$id;->guidance_breadcrumb:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 49
    .local v2, "mBreadcrumbView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v10

    .line 50
    sget v11, Landroid/support/v17/leanback/R$id;->guidance_description:I

    .line 49
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 51
    .local v4, "mDescriptionView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v10

    sget v11, Landroid/support/v17/leanback/R$id;->guidance_icon:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 52
    .local v5, "mIconView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->mTitleKeylinePercent:F

    mul-float/2addr v10, v11

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v10, v11

    float-to-int v6, v10

    .line 54
    .local v6, "mTitleKeylinePixels":I
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-ne v10, p0, :cond_1

    .line 55
    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v9

    .line 56
    .local v9, "titleViewBaseline":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 57
    .local v3, "mBreadcrumbViewHeight":I
    sub-int v10, v6, v9

    sub-int/2addr v10, v3

    .line 58
    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    .line 57
    sub-int v1, v10, v11

    .line 59
    .local v1, "guidanceTextContainerTop":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v8, v1, v10

    .line 61
    .local v8, "offset":I
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-ne v10, p0, :cond_0

    .line 62
    invoke-virtual {v2, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 65
    :cond_0
    invoke-virtual {v7, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 67
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-ne v10, p0, :cond_1

    .line 68
    invoke-virtual {v4, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 72
    .end local v1    # "guidanceTextContainerTop":I
    .end local v3    # "mBreadcrumbViewHeight":I
    .end local v8    # "offset":I
    .end local v9    # "titleViewBaseline":I
    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-ne v10, p0, :cond_2

    .line 73
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 74
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int v10, v6, v10

    .line 75
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 79
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void
.end method
