.class public Lcom/android/systemui/qs/customize/RtlViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "RtlViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;,
        Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;,
        Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;
    }
.end annotation


# instance fields
.field private mLayoutDirection:I

.field private mPageChangeListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
            "Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/qs/customize/RtlViewPager;)Landroid/support/v4/view/PagerAdapter;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/RtlViewPager;

    .prologue
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/customize/RtlViewPager;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/RtlViewPager;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/RtlViewPager;->isRtl()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager;->mLayoutDirection:I

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager;->mPageChangeListeners:Ljava/util/HashMap;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager;->mLayoutDirection:I

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager;->mPageChangeListeners:Ljava/util/HashMap;

    .line 53
    return-void
.end method

.method private isRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 89
    iget v1, p0, Lcom/android/systemui/qs/customize/RtlViewPager;->mLayoutDirection:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 187
    new-instance v0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;-><init>(Lcom/android/systemui/qs/customize/RtlViewPager;Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 188
    .local v0, "reversingListener":Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;
    iget-object v1, p0, Lcom/android/systemui/qs/customize/RtlViewPager;->mPageChangeListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 190
    return-void
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;

    .line 85
    .local v0, "adapter":Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->getDelegate()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 95
    .local v1, "item":I
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 96
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/RtlViewPager;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v1, v2, -0x1

    .line 99
    :cond_0
    return v1
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 199
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-nez v4, :cond_2

    .line 200
    const/4 v2, 0x0

    .line 201
    .local v2, "height":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/RtlViewPager;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 202
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/customize/RtlViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 203
    .local v0, "child":Landroid/view/View;
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, p1, v4}, Landroid/view/View;->measure(II)V

    .line 204
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 205
    .local v1, "h":I
    if-le v1, v2, :cond_0

    .line 206
    move v2, v1

    .line 201
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "h":I
    :cond_1
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 211
    .end local v2    # "height":I
    .end local v3    # "i":I
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 212
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 170
    instance-of v1, p1, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;

    if-nez v1, :cond_0

    .line 171
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 172
    return-void

    :cond_0
    move-object v0, p1

    .line 175
    check-cast v0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;

    .line 176
    .local v0, "ss":Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;
    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->-get0(Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/customize/RtlViewPager;->mLayoutDirection:I

    .line 177
    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->-get1(Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/support/v4/view/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 178
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onRtlPropertiesChanged(I)V

    .line 58
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    const/4 v2, 0x1

    .line 59
    .local v2, "viewCompatLayoutDirection":I
    :goto_0
    iget v3, p0, Lcom/android/systemui/qs/customize/RtlViewPager;->mLayoutDirection:I

    if-eq v2, v3, :cond_1

    .line 60
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 61
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    const/4 v1, 0x0

    .line 62
    .local v1, "position":I
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/RtlViewPager;->getCurrentItem()I

    move-result v1

    .line 65
    :cond_0
    iput v2, p0, Lcom/android/systemui/qs/customize/RtlViewPager;->mLayoutDirection:I

    .line 66
    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 68
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/RtlViewPager;->setCurrentItem(I)V

    .line 71
    .end local v0    # "adapter":Landroid/support/v4/view/PagerAdapter;
    .end local v1    # "position":I
    :cond_1
    return-void

    .line 58
    .end local v2    # "viewCompatLayoutDirection":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "viewCompatLayoutDirection":I
    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 164
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 165
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;

    iget v2, p0, Lcom/android/systemui/qs/customize/RtlViewPager;->mLayoutDirection:I

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;-><init>(Landroid/os/Parcelable;ILcom/android/systemui/qs/customize/RtlViewPager$SavedState;)V

    return-object v1
.end method

.method public removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager;->mPageChangeListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 195
    return-void
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    new-instance v0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;-><init>(Lcom/android/systemui/qs/customize/RtlViewPager;Landroid/support/v4/view/PagerAdapter;)V

    .end local p1    # "adapter":Landroid/support/v4/view/PagerAdapter;
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    move-object p1, v0

    .line 78
    .end local v0    # "adapter":Landroid/support/v4/view/PagerAdapter;
    .restart local p1    # "adapter":Landroid/support/v4/view/PagerAdapter;
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 79
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/RtlViewPager;->setCurrentItem(I)V

    .line 80
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 113
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 114
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/RtlViewPager;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 p1, v1, -0x1

    .line 117
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 118
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 104
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 105
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/RtlViewPager;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 p1, v1, -0x1

    .line 108
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 109
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 182
    new-instance v0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;-><init>(Lcom/android/systemui/qs/customize/RtlViewPager;Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 183
    return-void
.end method
