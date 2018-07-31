.class public Lcom/android/systemui/qs/QSContainerImpl;
.super Landroid/widget/FrameLayout;
.source "QSContainerImpl.java"


# instance fields
.field private mBackground:Landroid/view/View;

.field private mFullElevation:F

.field private mGameModeDemo:Lcom/android/systemui/qs/GameModeDemo;

.field protected mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

.field private mHeightOverride:I

.field private mOrientation:I

.field private mQSBtFooter:Lcom/android/systemui/qs/QSBtFooter;

.field private mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

.field private mQSDetail:Landroid/view/View;

.field private mQSFooter:Landroid/view/View;

.field protected mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field protected mQsExpansion:F

.field private final mSizePoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mOrientation:I

    .line 66
    invoke-static {p1}, Lcom/android/systemui/qs/GameModeDemo;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qs/GameModeDemo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mGameModeDemo:Lcom/android/systemui/qs/GameModeDemo;

    .line 68
    return-void
.end method

.method private updateLayout()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 206
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 208
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 209
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    .line 210
    const v1, 0x7f07038e

    .line 208
    :goto_0
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 213
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSBtFooter:Lcom/android/systemui/qs/QSBtFooter;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSBtFooter;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/QSPanel;->updateLayout(Z)V

    .line 215
    return-void

    .line 210
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    const v1, 0x7f07038d

    goto :goto_0

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    move v1, v3

    .line 213
    goto :goto_1
.end method

.method private updateThemeColor()V
    .locals 3

    .prologue
    .line 95
    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->QS_PANEL_PRIMARY:I

    invoke-static {v1}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    .line 96
    .local v0, "primaryColor":I
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 97
    return-void
.end method


# virtual methods
.method protected calculateContainerHeight()I
    .locals 3

    .prologue
    .line 193
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    .line 194
    .local v0, "heightOverride":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->getHeight()I

    move-result v1

    :goto_1
    return v1

    .line 193
    .end local v0    # "heightOverride":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getMeasuredHeight()I

    move-result v0

    .restart local v0    # "heightOverride":I
    goto :goto_0

    .line 195
    :cond_1
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v2

    sub-int v2, v0, v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 196
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v2

    .line 195
    add-int/2addr v1, v2

    goto :goto_1
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 155
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 111
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 112
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mOrientation:I

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateLayout()V

    .line 116
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 73
    const v0, 0x7f0a027b

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 74
    const v0, 0x7f0a026f

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Landroid/view/View;

    .line 75
    const v0, 0x7f0a0121

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 76
    const v0, 0x7f0a026e

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 77
    const v0, 0x7f0a0272

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooter:Landroid/view/View;

    .line 79
    const v0, 0x7f0a026c

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBtFooter;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSBtFooter:Lcom/android/systemui/qs/QSBtFooter;

    .line 81
    const v0, 0x7f0a026b

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getElevation()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFullElevation:F

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->setClickable(Z)V

    .line 85
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->setImportantForAccessibility(I)V

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateThemeColor()V

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateLayout()V

    .line 91
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 147
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    .line 149
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 124
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 125
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 124
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/android/systemui/qs/QSPanel;->measure(II)V

    .line 126
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->getMeasuredWidth()I

    move-result v2

    .line 127
    .local v2, "width":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 128
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    .line 129
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->getMeasuredHeight()I

    move-result v4

    .line 128
    add-int v0, v3, v4

    .line 130
    .local v0, "height":I
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 131
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 130
    invoke-super {p0, v3, v4}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 137
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-nez v3, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 141
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 142
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 141
    invoke-virtual {v3, p1, v4}, Lcom/android/systemui/qs/customize/QSCustomizer;->measure(II)V

    .line 143
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public setExpansion(F)V
    .locals 0
    .param p1, "expansion"    # F

    .prologue
    .line 200
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    .line 202
    return-void
.end method

.method public setHeightOverride(I)V
    .locals 0
    .param p1, "heightOverride"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    .line 167
    return-void
.end method

.method public updateExpansion()V
    .locals 5

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->calculateContainerHeight()I

    move-result v1

    .line 171
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getTop()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSContainerImpl;->setBottom(I)V

    .line 172
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getTop()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBottom(I)V

    .line 174
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getTop()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBottom(I)V

    .line 177
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSBtFooter:Lcom/android/systemui/qs/QSBtFooter;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSBtFooter;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooter:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSBtFooter:Lcom/android/systemui/qs/QSBtFooter;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSBtFooter;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 179
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSBtFooter:Lcom/android/systemui/qs/QSBtFooter;

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSBtFooter:Lcom/android/systemui/qs/QSBtFooter;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSBtFooter;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSBtFooter;->setTranslationY(F)V

    .line 183
    :goto_0
    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFullElevation:F

    mul-float v0, v2, v3

    .line 184
    .local v0, "elevation":F
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setElevation(F)V

    .line 185
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setElevation(F)V

    .line 186
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooter:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setElevation(F)V

    .line 187
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSBtFooter:Lcom/android/systemui/qs/QSBtFooter;

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/QSBtFooter;->setElevation(F)V

    .line 188
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/QSPanel;->setElevation(F)V

    .line 190
    return-void

    .line 181
    .end local v0    # "elevation":F
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooter:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method
