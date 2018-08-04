.class public Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final UNDEFINED_DURATION:I = -0x80000000


# instance fields
.field private mChanged:Z

.field private mConsecutiveUpdates:I

.field private mDuration:I

.field private mDx:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mJumpToPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 11472
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 11473
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .prologue
    .line 11481
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 11482
    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v1, 0x0

    .line 11491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11457
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 11461
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11465
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 11492
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 11493
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 11494
    iput p3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 11495
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11496
    return-void
.end method

.method private validate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 11555
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-ge v0, v1, :cond_0

    .line 11556
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11558
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-ge v0, v1, :cond_1

    .line 11559
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11561
    :cond_1
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    .line 11582
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    return v0
.end method

.method public getDx()I
    .locals 1

    .prologue
    .line 11564
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    return v0
.end method

.method public getDy()I
    .locals 1

    .prologue
    .line 11573
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 11591
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method hasJumpTarget()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 11518
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public jumpTo(I)V
    .locals 0
    .param p1, "targetPosition"    # I

    .prologue
    .line 11514
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 11515
    return-void
.end method

.method runIfNecessary(Landroid/support/v7/widget/RecyclerView;)V
    .locals 7
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/4 v6, 0x0

    .line 11522
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v1, :cond_0

    .line 11523
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 11524
    .local v0, "position":I
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 11525
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    .line 11526
    iput-boolean v6, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11527
    return-void

    .line 11529
    .end local v0    # "position":I
    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    if-eqz v1, :cond_4

    .line 11530
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->validate()V

    .line 11531
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_3

    .line 11532
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    .line 11533
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    .line 11541
    :goto_0
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 11542
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    .line 11545
    const-string/jumbo v1, "RecyclerView"

    const-string/jumbo v2, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11548
    :cond_1
    iput-boolean v6, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11552
    :goto_1
    return-void

    .line 11535
    :cond_2
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    goto :goto_0

    .line 11538
    :cond_3
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    .line 11539
    iget v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11538
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 11550
    :cond_4
    iput v6, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    goto :goto_1
.end method

.method public setDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 11586
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11587
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 11588
    return-void
.end method

.method public setDx(I)V
    .locals 1
    .param p1, "dx"    # I

    .prologue
    .line 11568
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11569
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 11570
    return-void
.end method

.method public setDy(I)V
    .locals 1
    .param p1, "dy"    # I

    .prologue
    .line 11577
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11578
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 11579
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 11601
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11602
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11603
    return-void
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 11614
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 11615
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 11616
    iput p3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 11617
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11618
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11619
    return-void
.end method