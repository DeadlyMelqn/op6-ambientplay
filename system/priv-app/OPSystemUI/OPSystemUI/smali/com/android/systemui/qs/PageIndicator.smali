.class public Lcom/android/systemui/qs/PageIndicator;
.super Landroid/view/ViewGroup;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/PageIndicator$1;
    }
.end annotation


# instance fields
.field private mAnimating:Z

.field private final mAnimationDone:Ljava/lang/Runnable;

.field private final mColor:I

.field private final mPageDotWidth:I

.field private final mPageIndicatorHeight:I

.field private final mPageIndicatorWidth:I

.field private mPosition:I

.field private final mQueuedPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/PageIndicator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/PageIndicator;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/PageIndicator;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/PageIndicator;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimating:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/PageIndicator;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/PageIndicator;
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/PageIndicator;->setPosition(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    .line 234
    new-instance v0, Lcom/android/systemui/qs/PageIndicator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/PageIndicator$1;-><init>(Lcom/android/systemui/qs/PageIndicator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimationDone:Ljava/lang/Runnable;

    .line 45
    iget-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07038c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 44
    iput v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    .line 47
    iget-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07038b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 46
    iput v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    .line 48
    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    int-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotWidth:I

    .line 51
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_INDICATOR:I

    invoke-static {v0}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/PageIndicator;->mColor:I

    .line 53
    return-void
.end method

.method private animate(II)V
    .locals 12
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 126
    shr-int/lit8 v2, p1, 0x1

    .line 127
    .local v2, "fromIndex":I
    shr-int/lit8 v7, p2, 0x1

    .line 131
    .local v7, "toIndex":I
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/PageIndicator;->setIndex(I)V

    .line 133
    and-int/lit8 v8, p1, 0x1

    if-eqz v8, :cond_2

    const/4 v3, 0x1

    .line 134
    .local v3, "fromTransition":Z
    :goto_0
    if-eqz v3, :cond_4

    if-le p1, p2, :cond_3

    :goto_1
    const/4 v4, 0x1

    .line 135
    .local v4, "isAState":Z
    :goto_2
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 136
    .local v1, "firstIndex":I
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 137
    .local v6, "secondIndex":I
    if-ne v6, v1, :cond_0

    .line 138
    add-int/lit8 v6, v6, 0x1

    .line 140
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 141
    .local v0, "first":Landroid/widget/ImageView;
    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 142
    .local v5, "second":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    if-nez v5, :cond_5

    .line 144
    :cond_1
    return-void

    .line 133
    .end local v0    # "first":Landroid/widget/ImageView;
    .end local v1    # "firstIndex":I
    .end local v3    # "fromTransition":Z
    .end local v4    # "isAState":Z
    .end local v5    # "second":Landroid/widget/ImageView;
    .end local v6    # "secondIndex":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "fromTransition":Z
    goto :goto_0

    .line 134
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "isAState":Z
    goto :goto_2

    .end local v4    # "isAState":Z
    :cond_4
    if-ge p1, p2, :cond_3

    goto :goto_1

    .line 147
    .restart local v0    # "first":Landroid/widget/ImageView;
    .restart local v1    # "firstIndex":I
    .restart local v4    # "isAState":Z
    .restart local v5    # "second":Landroid/widget/ImageView;
    .restart local v6    # "secondIndex":I
    :cond_5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v8

    invoke-virtual {v5}, Landroid/widget/ImageView;->getX()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 149
    invoke-direct {p0, v3, v4, v10}, Lcom/android/systemui/qs/PageIndicator;->getTransition(ZZZ)I

    move-result v8

    invoke-direct {p0, v0, v8}, Lcom/android/systemui/qs/PageIndicator;->playAnimation(Landroid/widget/ImageView;I)V

    .line 150
    invoke-direct {p0, v10}, Lcom/android/systemui/qs/PageIndicator;->getAlpha(Z)F

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 152
    invoke-direct {p0, v3, v4, v11}, Lcom/android/systemui/qs/PageIndicator;->getTransition(ZZZ)I

    move-result v8

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/qs/PageIndicator;->playAnimation(Landroid/widget/ImageView;I)V

    .line 153
    invoke-direct {p0, v11}, Lcom/android/systemui/qs/PageIndicator;->getAlpha(Z)F

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 155
    iput-boolean v11, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimating:Z

    .line 156
    return-void
.end method

.method private getAlpha(Z)F
    .locals 1
    .param p1, "isMajor"    # Z

    .prologue
    .line 159
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method private getTransition(ZZZ)I
    .locals 1
    .param p1, "fromB"    # Z
    .param p2, "isMajorAState"    # Z
    .param p3, "isMajor"    # Z

    .prologue
    .line 173
    if-eqz p3, :cond_3

    .line 174
    if-eqz p1, :cond_1

    .line 175
    if-eqz p2, :cond_0

    .line 176
    const v0, 0x7f08031e

    return v0

    .line 178
    :cond_0
    const v0, 0x7f080320

    return v0

    .line 181
    :cond_1
    if-eqz p2, :cond_2

    .line 182
    const v0, 0x7f08031c

    return v0

    .line 184
    :cond_2
    const v0, 0x7f080322

    return v0

    .line 188
    :cond_3
    if-eqz p1, :cond_5

    .line 189
    if-eqz p2, :cond_4

    .line 190
    const v0, 0x7f080328

    return v0

    .line 192
    :cond_4
    const v0, 0x7f080326

    return v0

    .line 195
    :cond_5
    if-eqz p2, :cond_6

    .line 196
    const v0, 0x7f08032a

    return v0

    .line 198
    :cond_6
    const v0, 0x7f080324

    return v0
.end method

.method private playAnimation(Landroid/widget/ImageView;I)V
    .locals 4
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "res"    # I

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 164
    .local v0, "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 166
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 169
    iget-object v1, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimationDone:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/qs/PageIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    return-void
.end method

.method private setIndex(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v0

    .line 111
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 112
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 114
    .local v2, "v":Landroid/widget/ImageView;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 115
    const v3, 0x7f08031b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    iget v3, p0, Lcom/android/systemui/qs/PageIndicator;->mColor:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 119
    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/PageIndicator;->getAlpha(Z)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 121
    .end local v2    # "v":Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

.method private setPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 100
    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/PageIndicator;->animate(II)V

    .line 106
    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    .line 107
    return-void

    .line 104
    :cond_0
    shr-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/PageIndicator;->setIndex(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v6, 0x0

    .line 224
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v0

    .line 225
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 226
    return-void

    .line 228
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 229
    iget v3, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    iget v4, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotWidth:I

    sub-int/2addr v3, v4

    mul-int v2, v3, v1

    .line 230
    .local v2, "left":I
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    invoke-virtual {v3, v2, v6, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v2    # "left":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v0

    .line 207
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 208
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 209
    return-void

    .line 211
    :cond_0
    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 213
    .local v4, "widthChildSpec":I
    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 215
    .local v1, "heightChildSpec":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 216
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/view/View;->measure(II)V

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    :cond_1
    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    iget v6, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotWidth:I

    sub-int/2addr v5, v6

    add-int/lit8 v6, v0, -0x1

    mul-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotWidth:I

    add-int v3, v5, v6

    .line 219
    .local v3, "width":I
    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/qs/PageIndicator;->setMeasuredDimension(II)V

    .line 220
    return-void
.end method

.method public setLocation(F)V
    .locals 8
    .param p1, "location"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 78
    float-to-int v0, p1

    .line 79
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 80
    add-int/lit8 v7, v0, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 79
    const v7, 0x7f1100cc

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 81
    shl-int/lit8 v5, v0, 0x1

    int-to-float v6, v0

    cmpl-float v6, p1, v6

    if-eqz v6, :cond_1

    :goto_0
    or-int v2, v5, v3

    .line 84
    .local v2, "position":I
    iget v1, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    .line 85
    .local v1, "lastPosition":I
    iget-object v3, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    iget-object v3, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 88
    :cond_0
    if-ne v2, v1, :cond_2

    return-void

    .end local v1    # "lastPosition":I
    .end local v2    # "position":I
    :cond_1
    move v3, v4

    .line 81
    goto :goto_0

    .line 89
    .restart local v1    # "lastPosition":I
    .restart local v2    # "position":I
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimating:Z

    if-eqz v3, :cond_3

    .line 91
    iget-object v3, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    return-void

    .line 95
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/PageIndicator;->setPosition(I)V

    .line 96
    return-void
.end method

.method public setNumPages(I)V
    .locals 7
    .param p1, "numPages"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 56
    if-le p1, v6, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/PageIndicator;->setVisibility(I)V

    .line 57
    iget-boolean v3, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimating:Z

    if-eqz v3, :cond_0

    .line 58
    const-string/jumbo v3, "PageIndicator"

    const-string/jumbo v5, "setNumPages during animation"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/PageIndicator;->removeViewAt(I)V

    goto :goto_1

    .line 56
    :cond_1
    const/4 v3, 0x4

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 64
    new-array v5, v6, [I

    const v6, 0x1010030

    aput v6, v5, v4

    .line 63
    invoke-virtual {v3, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 66
    .local v1, "color":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v3

    if-le p1, v3, :cond_3

    .line 68
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/qs/PageIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 69
    .local v2, "v":Landroid/widget/ImageView;
    const v3, 0x7f080323

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 71
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget v4, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/PageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 74
    .end local v2    # "v":Landroid/widget/ImageView;
    :cond_3
    iget v3, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    shr-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/PageIndicator;->setIndex(I)V

    .line 75
    return-void
.end method
