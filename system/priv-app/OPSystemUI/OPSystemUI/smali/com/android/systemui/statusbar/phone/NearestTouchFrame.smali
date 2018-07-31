.class public Lcom/android/systemui/statusbar/phone/NearestTouchFrame;
.super Landroid/widget/FrameLayout;
.source "NearestTouchFrame.java"


# instance fields
.field private final mClickableChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsActive:Z

.field private final mOffset:[I

.field private final mTmpInt:[I

.field private mTouchingChild:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/Configuration;)V

    .line 48
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "c"    # Landroid/content/res/Configuration;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mClickableChildren:Ljava/util/ArrayList;

    .line 42
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mTmpInt:[I

    .line 43
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mOffset:[I

    .line 53
    iget v0, p3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mIsActive:Z

    .line 54
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addClickableChildren(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 71
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 72
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 73
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mClickableChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .restart local v1    # "child":Landroid/view/View;
    :cond_1
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 76
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "child":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->addClickableChildren(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 79
    :cond_2
    return-void
.end method

.method private distance(Landroid/view/View;Landroid/view/MotionEvent;)I
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 103
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mTmpInt:[I

    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 104
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mTmpInt:[I

    aget v6, v6, v8

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mOffset:[I

    aget v7, v7, v8

    sub-int v1, v6, v7

    .line 105
    .local v1, "left":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mTmpInt:[I

    aget v6, v6, v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mOffset:[I

    aget v7, v7, v9

    sub-int v3, v6, v7

    .line 106
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int v2, v1, v6

    .line 107
    .local v2, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int v0, v3, v6

    .line 109
    .local v0, "bottom":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    sub-int v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 110
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 109
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 111
    .local v4, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    sub-int v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 112
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 111
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 114
    .local v5, "y":I
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    return v6
.end method

.method private findNearestChild(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mClickableChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$t84YMscG_HuhcF-TFkwLvEAF9dg$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$t84YMscG_HuhcF-TFkwLvEAF9dg$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/-$Lambda$t84YMscG_HuhcF-TFkwLvEAF9dg;->$INST$0:Lcom/android/systemui/statusbar/phone/-$Lambda$t84YMscG_HuhcF-TFkwLvEAF9dg;

    .line 99
    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    .line 98
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_NearestTouchFrame_3552(Landroid/util/Pair;)I
    .locals 1

    .prologue
    .line 99
    .local p0, "f":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/View;>;"
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_statusbar_phone_NearestTouchFrame_3467(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/util/Pair;
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 98
    new-instance v0, Landroid/util/Pair;

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->distance(Landroid/view/View;Landroid/view/MotionEvent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 65
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mOffset:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->getLocationInWindow([I)V

    .line 67
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mClickableChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60
    invoke-direct {p0, p0}, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->addClickableChildren(Landroid/view/ViewGroup;)V

    .line 61
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 83
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mIsActive:Z

    if-eqz v1, :cond_2

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->findNearestChild(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mTouchingChild:Landroid/view/View;

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mTouchingChild:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mTouchingChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 89
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mTouchingChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    .line 88
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 90
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mTouchingChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mTouchingChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 90
    :cond_1
    return v0

    .line 94
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
