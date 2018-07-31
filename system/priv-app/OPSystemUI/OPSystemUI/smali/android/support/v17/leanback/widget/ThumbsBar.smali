.class public Landroid/support/v17/leanback/widget/ThumbsBar;
.super Landroid/widget/LinearLayout;
.source "ThumbsBar.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field final mBitmaps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mHeroThumbHeightInPixel:I

.field mHeroThumbWidthInPixel:I

.field private mIsUserSets:Z

.field mMeasuredMarginInPixel:I

.field mNumOfThumbs:I

.field mThumbHeightInPixel:I

.field mThumbWidthInPixel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ThumbsBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mBitmaps:Landroid/util/SparseArray;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mIsUserSets:Z

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_transport_thumbs_width:I

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbWidthInPixel:I

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_transport_thumbs_height:I

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbHeightInPixel:I

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_transport_hero_thumbs_width:I

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbHeightInPixel:I

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_transport_hero_thumbs_height:I

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbWidthInPixel:I

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_transport_thumbs_margin:I

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mMeasuredMarginInPixel:I

    .line 70
    return-void
.end method

.method private calculateNumOfThumbs(I)I
    .locals 4
    .param p1, "widthInPixel"    # I

    .prologue
    .line 203
    iget v1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbWidthInPixel:I

    sub-int v1, p1, v1

    .line 204
    iget v2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbWidthInPixel:I

    iget v3, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mMeasuredMarginInPixel:I

    add-int/2addr v2, v3

    .line 203
    invoke-static {v1, v2}, Landroid/support/v17/leanback/widget/ThumbsBar;->roundUp(II)I

    move-result v0

    .line 205
    .local v0, "nonHeroThumbNum":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 208
    const/4 v0, 0x2

    .line 215
    :cond_0
    :goto_0
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 209
    :cond_1
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static roundUp(II)I
    .locals 1
    .param p0, "num"    # I
    .param p1, "divisor"    # I

    .prologue
    .line 180
    add-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    return v0
.end method

.method private setNumberOfThumbsInternal()V
    .locals 7

    .prologue
    .line 155
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v5

    iget v6, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    if-le v5, v6, :cond_0

    .line 156
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/ThumbsBar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 158
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v5

    iget v6, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    if-ge v5, v6, :cond_1

    .line 159
    invoke-virtual {p0, p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->createThumbView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 160
    .local v4, "view":Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbWidthInPixel:I

    .line 161
    iget v6, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbHeightInPixel:I

    .line 160
    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 162
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v4, v3}, Landroid/support/v17/leanback/widget/ThumbsBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 164
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getHeroIndex()I

    move-result v1

    .line 165
    .local v1, "heroIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 166
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 168
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-ne v1, v2, :cond_2

    .line 169
    iget v5, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbWidthInPixel:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 170
    iget v5, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbHeightInPixel:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 175
    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 172
    :cond_2
    iget v5, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbWidthInPixel:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 173
    iget v5, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbHeightInPixel:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_3

    .line 177
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    return-void
.end method


# virtual methods
.method protected createThumbView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 269
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getHeroIndex()I
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 236
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 237
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getHeroIndex()I

    move-result v2

    .line 238
    .local v2, "heroIndex":I
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 239
    .local v5, "heroView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v3, v7, v8

    .line 240
    .local v3, "heroLeft":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v4, v7, v8

    .line 241
    .local v4, "heroRight":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getPaddingTop()I

    move-result v7

    .line 242
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getPaddingTop()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 241
    invoke-virtual {v5, v3, v7, v4, v8}, Landroid/view/View;->layout(IIII)V

    .line 243
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getPaddingTop()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v1, v7, v8

    .line 245
    .local v1, "heroCenter":I
    add-int/lit8 v6, v2, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_0

    .line 246
    iget v7, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mMeasuredMarginInPixel:I

    sub-int/2addr v3, v7

    .line 247
    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 248
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v3, v7

    .line 249
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v1, v8

    .line 251
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v1

    .line 248
    invoke-virtual {v0, v7, v8, v3, v9}, Landroid/view/View;->layout(IIII)V

    .line 252
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v3, v7

    .line 245
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 254
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v6, v2, 0x1

    :goto_1
    iget v7, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    if-ge v6, v7, :cond_1

    .line 255
    iget v7, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mMeasuredMarginInPixel:I

    add-int/2addr v4, v7

    .line 256
    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 258
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v1, v7

    .line 259
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v4

    .line 260
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v1

    .line 257
    invoke-virtual {v0, v4, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 261
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v4, v7

    .line 254
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 263
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 220
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 221
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getMeasuredWidth()I

    move-result v1

    .line 224
    .local v1, "width":I
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mIsUserSets:Z

    if-nez v2, :cond_0

    .line 225
    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/ThumbsBar;->calculateNumOfThumbs(I)I

    move-result v0

    .line 227
    .local v0, "numOfThumbs":I
    iget v2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    if-eq v2, v0, :cond_0

    .line 228
    iput v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    .line 229
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->setNumberOfThumbsInternal()V

    .line 232
    .end local v0    # "numOfThumbs":I
    :cond_0
    return-void
.end method
