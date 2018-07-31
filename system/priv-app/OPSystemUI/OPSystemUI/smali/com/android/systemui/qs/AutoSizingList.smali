.class public Lcom/android/systemui/qs/AutoSizingList;
.super Landroid/widget/LinearLayout;
.source "AutoSizingList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/AutoSizingList$1;,
        Lcom/android/systemui/qs/AutoSizingList$2;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private final mBindChildren:Ljava/lang/Runnable;

.field private mCount:I

.field private final mDataObserver:Landroid/database/DataSetObserver;

.field private mEnableAutoSizing:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mItemSize:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/AutoSizingList;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/AutoSizingList;

    .prologue
    iget v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/AutoSizingList;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/AutoSizingList;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/AutoSizingList;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/AutoSizingList;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/AutoSizingList;->getDesiredCount()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/AutoSizingList;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/AutoSizingList;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/AutoSizingList;->postRebindChildren()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/AutoSizingList;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/AutoSizingList;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/AutoSizingList;->rebindChildren()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    new-instance v1, Lcom/android/systemui/qs/AutoSizingList$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/AutoSizingList$1;-><init>(Lcom/android/systemui/qs/AutoSizingList;)V

    iput-object v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mBindChildren:Ljava/lang/Runnable;

    .line 116
    new-instance v1, Lcom/android/systemui/qs/AutoSizingList$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/AutoSizingList$2;-><init>(Lcom/android/systemui/qs/AutoSizingList;)V

    iput-object v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mDataObserver:Landroid/database/DataSetObserver;

    .line 45
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mHandler:Landroid/os/Handler;

    .line 46
    sget-object v1, Lcom/android/systemui/R$styleable;->AutoSizingList:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mItemSize:I

    .line 48
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mEnableAutoSizing:Z

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void
.end method

.method private getDesiredCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getItemCount(I)I
    .locals 2
    .param p1, "requestedHeight"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/systemui/qs/AutoSizingList;->getDesiredCount()I

    move-result v0

    .line 77
    .local v0, "desiredCount":I
    iget-boolean v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mEnableAutoSizing:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mItemSize:I

    div-int v1, p1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .end local v0    # "desiredCount":I
    :cond_0
    return v0
.end method

.method private postRebindChildren()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mBindChildren:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method

.method private rebindChildren()V
    .locals 5

    .prologue
    .line 90
    iget-object v3, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v3, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    if-ge v0, v3, :cond_4

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/qs/AutoSizingList;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/AutoSizingList;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 95
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v0, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 96
    .local v1, "newView":Landroid/view/View;
    if-eq v1, v2, :cond_2

    .line 97
    if-eqz v2, :cond_1

    .line 98
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/AutoSizingList;->removeView(Landroid/view/View;)V

    .line 100
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/AutoSizingList;->addView(Landroid/view/View;I)V

    .line 93
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "newView":Landroid/view/View;
    :cond_3
    const/4 v2, 0x0

    .local v2, "v":Landroid/view/View;
    goto :goto_1

    .line 104
    .end local v2    # "v":Landroid/view/View;
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/AutoSizingList;->getChildCount()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    if-le v3, v4, :cond_5

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/qs/AutoSizingList;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/AutoSizingList;->removeViewAt(I)V

    goto :goto_2

    .line 107
    :cond_5
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 64
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 65
    .local v1, "requestedHeight":I
    if-eqz v1, :cond_0

    .line 66
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/AutoSizingList;->getItemCount(I)I

    move-result v0

    .line 67
    .local v0, "count":I
    iget v2, p0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    if-eq v2, v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/qs/AutoSizingList;->postRebindChildren()V

    .line 69
    iput v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    .line 72
    .end local v0    # "count":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 73
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    .line 57
    if-eqz p1, :cond_1

    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 60
    :cond_1
    return-void
.end method
