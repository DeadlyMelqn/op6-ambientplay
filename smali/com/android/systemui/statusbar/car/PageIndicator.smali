.class public Lcom/android/systemui/statusbar/car/PageIndicator;
.super Landroid/view/View;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;
    }
.end annotation


# instance fields
.field private mCurrentPosition:I

.field private mPageCount:I

.field private final mPageListener:Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:I

.field private mStep:I

.field private mWatchingAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/view/PagerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/car/PageIndicator;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/car/PageIndicator;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mCurrentPosition:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/car/PageIndicator;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/car/PageIndicator;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPageCount:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/car/PageIndicator;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/car/PageIndicator;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mCurrentPosition:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/car/PageIndicator;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/car/PageIndicator;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/PageIndicator;->updateDots()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;-><init>(Lcom/android/systemui/statusbar/car/PageIndicator;Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPageListener:Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/PageIndicator;->init()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;-><init>(Lcom/android/systemui/statusbar/car/PageIndicator;Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPageListener:Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/PageIndicator;->init()V

    .line 67
    return-void
.end method

.method private getRef(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    const/4 v0, 0x0

    .line 140
    if-nez p1, :cond_0

    .line 141
    return-object v0

    .line 143
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPaint:Landroid/graphics/Paint;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/car/PageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mRadius:I

    .line 73
    iget v0, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mRadius:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mStep:I

    .line 74
    return-void
.end method

.method private updateDots()V
    .locals 3

    .prologue
    .line 147
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/car/PageIndicator;->getRef(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/PagerAdapter;

    .line 148
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    if-nez v0, :cond_0

    .line 149
    return-void

    .line 152
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 153
    .local v1, "count":I
    iget v2, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPageCount:I

    if-ne v2, v1, :cond_1

    .line 155
    return-void

    .line 158
    :cond_1
    iput v1, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPageCount:I

    .line 159
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mCurrentPosition:I

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/car/PageIndicator;->invalidate()V

    .line 161
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/car/PageIndicator;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPageListener:Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPageListener:Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 93
    iput-object v2, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPager:Landroid/support/v4/view/ViewPager;

    .line 95
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 103
    iget v3, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPageCount:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 104
    return-void

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPageCount:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mStep:I

    mul-int/2addr v4, v5

    sub-int v1, v3, v4

    .line 107
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/lit8 v2, v3, 0x2

    .line 109
    .local v2, "y":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPageCount:I

    if-ge v0, v3, :cond_2

    .line 110
    iget v3, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mCurrentPosition:I

    if-ne v0, v3, :cond_1

    .line 111
    iget-object v3, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPaint:Landroid/graphics/Paint;

    const v4, -0xa0a0b

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    :goto_1
    int-to-float v3, v1

    int-to-float v4, v2

    iget v5, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mRadius:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 117
    iget v3, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mStep:I

    add-int/2addr v1, v3

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPaint:Landroid/graphics/Paint;

    const v4, -0x424243

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 119
    :cond_2
    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 3
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    const/4 v1, 0x0

    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPager:Landroid/support/v4/view/ViewPager;

    .line 79
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 80
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPageListener:Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;

    invoke-virtual {p1, v2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 81
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPageListener:Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;

    invoke-virtual {p1, v2}, Landroid/support/v4/view/ViewPager;->addOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 82
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/PagerAdapter;

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/car/PageIndicator;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/car/PageIndicator;->invalidate()V

    .line 84
    return-void
.end method

.method updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .locals 2
    .param p1, "oldAdapter"    # Landroid/support/v4/view/PagerAdapter;
    .param p2, "newAdapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    const/4 v1, 0x0

    .line 122
    if-eqz p1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPageListener:Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 124
    iput-object v1, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    .line 127
    :cond_0
    if-eqz p2, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPageListener:Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 129
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/PageIndicator;->updateDots()V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/PageIndicator;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/car/PageIndicator;->requestLayout()V

    .line 137
    :cond_2
    return-void
.end method
