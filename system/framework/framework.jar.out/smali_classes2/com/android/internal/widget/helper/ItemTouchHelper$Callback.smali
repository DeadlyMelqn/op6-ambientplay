.class public abstract Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/helper/ItemTouchHelper$Callback$1;,
        Lcom/android/internal/widget/helper/ItemTouchHelper$Callback$2;
    }
.end annotation


# static fields
.field private static final ABS_HORIZONTAL_DIR_FLAGS:I = 0xc0c0c

.field public static final DEFAULT_DRAG_ANIMATION_DURATION:I = 0xc8

.field public static final DEFAULT_SWIPE_ANIMATION_DURATION:I = 0xfa

.field private static final DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS:J = 0x7d0L

.field static final RELATIVE_DIR_FLAGS:I = 0x303030

.field private static final sDragScrollInterpolator:Landroid/view/animation/Interpolator;

.field private static final sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

.field private static final sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;


# instance fields
.field private mCachedMaxScrollSpeed:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1355
    new-instance v0, Lcom/android/internal/widget/helper/ItemTouchUIUtilImpl;

    invoke-direct {v0}, Lcom/android/internal/widget/helper/ItemTouchUIUtilImpl;-><init>()V

    sput-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;

    .line 1361
    new-instance v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback$1;

    invoke-direct {v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 1368
    new-instance v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback$2;

    invoke-direct {v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback$2;-><init>()V

    sput-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    .line 1345
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1381
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    .line 1345
    return-void
.end method

.method public static convertToRelativeDirection(II)I
    .locals 4
    .param p0, "flags"    # I
    .param p1, "layoutDirection"    # I

    .prologue
    const v3, 0xc0c0c

    .line 1439
    and-int v0, p0, v3

    .line 1440
    .local v0, "masked":I
    if-nez v0, :cond_0

    .line 1441
    return p0

    .line 1443
    :cond_0
    not-int v1, v0

    and-int/2addr p0, v1

    .line 1444
    if-nez p1, :cond_1

    .line 1446
    shl-int/lit8 v1, v0, 0x2

    or-int/2addr p0, v1

    .line 1447
    return p0

    .line 1450
    :cond_1
    shl-int/lit8 v1, v0, 0x1

    const v2, -0xc0c0d

    and-int/2addr v1, v2

    or-int/2addr p0, v1

    .line 1452
    shl-int/lit8 v1, v0, 0x1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr p0, v1

    .line 1454
    return p0
.end method

.method public static getDefaultUIUtil()Lcom/android/internal/widget/helper/ItemTouchUIUtil;
    .locals 1

    .prologue
    .line 1424
    sget-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;

    return-object v0
.end method

.method private getMaxDragScroll(Lcom/android/internal/widget/RecyclerView;)I
    .locals 2
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .prologue
    .line 1849
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1850
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1851
    const v1, 0x10500a4

    .line 1850
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    .line 1853
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    return v0
.end method

.method public static makeFlag(II)I
    .locals 1
    .param p0, "actionState"    # I
    .param p1, "directions"    # I

    .prologue
    .line 1485
    mul-int/lit8 v0, p0, 0x8

    shl-int v0, p1, v0

    return v0
.end method

.method public static makeMovementFlags(II)I
    .locals 2
    .param p0, "dragFlags"    # I
    .param p1, "swipeFlags"    # I

    .prologue
    .line 1469
    or-int v0, p1, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v0

    .line 1470
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v1

    .line 1469
    or-int/2addr v0, v1

    .line 1471
    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v1

    .line 1469
    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public canDropOver(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "current"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1580
    const/4 v0, 0x1

    return v0
.end method

.method public chooseDropTarget(Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 13
    .param p1, "selected"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p3, "curX"    # I
    .param p4, "curY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;II)",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;"
        }
    .end annotation

    .prologue
    .line 1750
    .local p2, "dropTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    iget-object v11, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int v5, p3, v11

    .line 1751
    .local v5, "right":I
    iget-object v11, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int v0, p4, v11

    .line 1752
    .local v0, "bottom":I
    const/4 v9, 0x0

    .line 1753
    .local v9, "winner":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/4 v10, -0x1

    .line 1754
    .local v10, "winnerScore":I
    iget-object v11, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v2, p3, v11

    .line 1755
    .local v2, "dx":I
    iget-object v11, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int v3, p4, v11

    .line 1756
    .local v3, "dy":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    .line 1757
    .local v8, "targetsSize":I
    const/4 v4, 0x0

    .end local v9    # "winner":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .local v4, "i":I
    :goto_0
    if-ge v4, v8, :cond_4

    .line 1758
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1759
    .local v7, "target":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-lez v2, :cond_0

    .line 1760
    iget-object v11, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    sub-int v1, v11, v5

    .line 1761
    .local v1, "diff":I
    if-gez v1, :cond_0

    iget-object v11, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    iget-object v12, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    if-le v11, v12, :cond_0

    .line 1762
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1763
    .local v6, "score":I
    if-le v6, v10, :cond_0

    .line 1764
    move v10, v6

    .line 1765
    move-object v9, v7

    .line 1769
    .end local v1    # "diff":I
    .end local v6    # "score":I
    :cond_0
    if-gez v2, :cond_1

    .line 1770
    iget-object v11, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v1, v11, p3

    .line 1771
    .restart local v1    # "diff":I
    if-lez v1, :cond_1

    iget-object v11, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    iget-object v12, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    if-ge v11, v12, :cond_1

    .line 1772
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1773
    .restart local v6    # "score":I
    if-le v6, v10, :cond_1

    .line 1774
    move v10, v6

    .line 1775
    move-object v9, v7

    .line 1779
    .end local v1    # "diff":I
    .end local v6    # "score":I
    :cond_1
    if-gez v3, :cond_2

    .line 1780
    iget-object v11, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int v1, v11, p4

    .line 1781
    .restart local v1    # "diff":I
    if-lez v1, :cond_2

    iget-object v11, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v12, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 1782
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1783
    .restart local v6    # "score":I
    if-le v6, v10, :cond_2

    .line 1784
    move v10, v6

    .line 1785
    move-object v9, v7

    .line 1790
    .end local v1    # "diff":I
    .end local v6    # "score":I
    :cond_2
    if-lez v3, :cond_3

    .line 1791
    iget-object v11, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    sub-int v1, v11, v0

    .line 1792
    .restart local v1    # "diff":I
    if-gez v1, :cond_3

    iget-object v11, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    iget-object v12, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    if-le v11, v12, :cond_3

    .line 1793
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1794
    .restart local v6    # "score":I
    if-le v6, v10, :cond_3

    .line 1795
    move v10, v6

    .line 1796
    move-object v9, v7

    .line 1757
    .end local v1    # "diff":I
    .end local v6    # "score":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1801
    .end local v7    # "target":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_4
    return-object v9
.end method

.method public clearView(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1986
    sget-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;

    iget-object v1, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/helper/ItemTouchUIUtil;->clearView(Landroid/view/View;)V

    .line 1987
    return-void
.end method

.method public convertToAbsoluteDirection(II)I
    .locals 4
    .param p1, "flags"    # I
    .param p2, "layoutDirection"    # I

    .prologue
    const v3, 0x303030

    .line 1528
    and-int v0, p1, v3

    .line 1529
    .local v0, "masked":I
    if-nez v0, :cond_0

    .line 1530
    return p1

    .line 1532
    :cond_0
    not-int v1, v0

    and-int/2addr p1, v1

    .line 1533
    if-nez p2, :cond_1

    .line 1535
    shr-int/lit8 v1, v0, 0x2

    or-int/2addr p1, v1

    .line 1536
    return p1

    .line 1539
    :cond_1
    shr-int/lit8 v1, v0, 0x1

    const v2, -0x303031

    and-int/2addr v1, v2

    or-int/2addr p1, v1

    .line 1541
    shr-int/lit8 v1, v0, 0x1

    and-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x2

    or-int/2addr p1, v1

    .line 1543
    return p1
.end method

.method final getAbsoluteMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1548
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1549
    .local v0, "flags":I
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v1

    return v1
.end method

.method public getAnimationDuration(Lcom/android/internal/widget/RecyclerView;IFF)J
    .locals 4
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "animationType"    # I
    .param p3, "animateDx"    # F
    .param p4, "animateDy"    # F

    .prologue
    const/16 v1, 0x8

    .line 2079
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getItemAnimator()Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 2080
    .local v0, "itemAnimator":Lcom/android/internal/widget/RecyclerView$ItemAnimator;
    if-nez v0, :cond_1

    .line 2081
    if-ne p2, v1, :cond_0

    const/16 v1, 0xc8

    :goto_0
    int-to-long v2, v1

    return-wide v2

    .line 2082
    :cond_0
    const/16 v1, 0xfa

    goto :goto_0

    .line 2084
    :cond_1
    if-ne p2, v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide v2

    :goto_1
    return-wide v2

    .line 2085
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    goto :goto_1
.end method

.method public getBoundingBoxMargin()I
    .locals 1

    .prologue
    .line 1643
    const/4 v0, 0x0

    return v0
.end method

.method public getMoveThreshold(Lcom/android/internal/widget/RecyclerView$ViewHolder;)F
    .locals 1
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1671
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public abstract getMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
.end method

.method public getSwipeEscapeVelocity(F)F
    .locals 0
    .param p1, "defaultValue"    # F

    .prologue
    .line 1696
    return p1
.end method

.method public getSwipeThreshold(Lcom/android/internal/widget/RecyclerView$ViewHolder;)F
    .locals 1
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1658
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public getSwipeVelocityThreshold(F)F
    .locals 0
    .param p1, "defaultValue"    # F

    .prologue
    .line 1719
    return p1
.end method

.method hasDragFlag(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x0

    .line 1553
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1554
    .local v0, "flags":I
    const/high16 v2, 0xff0000

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method hasSwipeFlag(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x0

    .line 1559
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1560
    .local v0, "flags":I
    const v2, 0xff00

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public interpolateOutOfBoundsScroll(Lcom/android/internal/widget/RecyclerView;IIIJ)I
    .locals 13
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "viewSize"    # I
    .param p3, "viewSizeOutOfBounds"    # I
    .param p4, "totalSize"    # I
    .param p5, "msSinceStartScroll"    # J

    .prologue
    .line 2112
    invoke-direct {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getMaxDragScroll(Lcom/android/internal/widget/RecyclerView;)I

    move-result v5

    .line 2113
    .local v5, "maxScroll":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 2114
    .local v2, "absOutOfBounds":I
    move/from16 v0, p3

    int-to-float v9, v0

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v9

    float-to-int v4, v9

    .line 2116
    .local v4, "direction":I
    int-to-float v9, v2

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    int-to-float v10, p2

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 2117
    .local v6, "outOfBoundsRatio":F
    mul-int v9, v4, v5

    int-to-float v9, v9

    .line 2118
    sget-object v10, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    .line 2117
    mul-float/2addr v9, v10

    float-to-int v3, v9

    .line 2120
    .local v3, "cappedScroll":I
    const-wide/16 v10, 0x7d0

    cmp-long v9, p5, v10

    if-lez v9, :cond_0

    .line 2121
    const/high16 v7, 0x3f800000    # 1.0f

    .line 2125
    .local v7, "timeRatio":F
    :goto_0
    int-to-float v9, v3

    sget-object v10, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v8, v9

    .line 2127
    .local v8, "value":I
    if-nez v8, :cond_2

    .line 2128
    if-lez p3, :cond_1

    const/4 v9, 0x1

    :goto_1
    return v9

    .line 2123
    .end local v7    # "timeRatio":F
    .end local v8    # "value":I
    :cond_0
    move-wide/from16 v0, p5

    long-to-float v9, v0

    const/high16 v10, 0x44fa0000    # 2000.0f

    div-float v7, v9, v10

    .restart local v7    # "timeRatio":F
    goto :goto_0

    .line 2128
    .restart local v8    # "value":I
    :cond_1
    const/4 v9, -0x1

    goto :goto_1

    .line 2130
    :cond_2
    return v8
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .prologue
    .line 1632
    const/4 v0, 0x1

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .prologue
    .line 1617
    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p3, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 2019
    sget-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;

    iget-object v3, p3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/widget/helper/ItemTouchUIUtil;->onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Landroid/view/View;FFIZ)V

    .line 2021
    return-void
.end method

.method public onChildDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p3, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 2053
    sget-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;

    iget-object v3, p3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/widget/helper/ItemTouchUIUtil;->onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Landroid/view/View;FFIZ)V

    .line 2055
    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p3, "selected"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p5, "actionState"    # I
    .param p6, "dX"    # F
    .param p7, "dY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/android/internal/widget/RecyclerView;",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    .prologue
    .line 1926
    .local p4, "recoverAnimationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v12

    .line 1927
    .local v12, "recoverAnimSize":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v12, :cond_0

    .line 1928
    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1929
    .local v9, "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    invoke-virtual {v9}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->update()V

    .line 1930
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 1931
    .local v10, "count":I
    iget-object v4, v9, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget v5, v9, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v6, v9, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    iget v7, v9, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    .line 1932
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 1931
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1933
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1927
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1935
    .end local v9    # "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    .end local v10    # "count":I
    :cond_0
    if-eqz p3, :cond_1

    .line 1936
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 1937
    .restart local v10    # "count":I
    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1938
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1940
    .end local v10    # "count":I
    :cond_1
    return-void
.end method

.method onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p3, "selected"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p5, "actionState"    # I
    .param p6, "dX"    # F
    .param p7, "dY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/android/internal/widget/RecyclerView;",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    .prologue
    .line 1945
    .local p4, "recoverAnimationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v13

    .line 1946
    .local v13, "recoverAnimSize":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v13, :cond_0

    .line 1947
    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1948
    .local v9, "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 1949
    .local v10, "count":I
    iget-object v4, v9, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget v5, v9, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v6, v9, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    iget v7, v9, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    .line 1950
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    .line 1949
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1951
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1946
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1953
    .end local v9    # "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    .end local v10    # "count":I
    :cond_0
    if-eqz p3, :cond_1

    .line 1954
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 1955
    .restart local v10    # "count":I
    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1956
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1958
    .end local v10    # "count":I
    :cond_1
    const/4 v11, 0x0

    .line 1959
    .local v11, "hasRunningAnimation":Z
    add-int/lit8 v12, v13, -0x1

    :goto_1
    if-ltz v12, :cond_4

    .line 1960
    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1961
    .restart local v9    # "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-boolean v1, v9, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v9, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mIsPendingCleanup:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 1962
    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1959
    :cond_2
    :goto_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 1963
    :cond_3
    iget-boolean v1, v9, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v1, :cond_2

    .line 1964
    const/4 v11, 0x1

    goto :goto_2

    .line 1967
    .end local v9    # "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    :cond_4
    if-eqz v11, :cond_5

    .line 1968
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    .line 1970
    :cond_5
    return-void
.end method

.method public abstract onMove(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
.end method

.method public onMoved(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILcom/android/internal/widget/RecyclerView$ViewHolder;III)V
    .locals 7
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p3, "fromPos"    # I
    .param p4, "target"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p5, "toPos"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I

    .prologue
    .line 1892
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 1893
    .local v0, "layoutManager":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    instance-of v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper$ViewDropHandler;

    if-eqz v5, :cond_0

    .line 1894
    check-cast v0, Lcom/android/internal/widget/helper/ItemTouchHelper$ViewDropHandler;

    .end local v0    # "layoutManager":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    iget-object v5, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1895
    iget-object v6, p4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1894
    invoke-interface {v0, v5, v6, p6, p7}, Lcom/android/internal/widget/helper/ItemTouchHelper$ViewDropHandler;->prepareForDrop(Landroid/view/View;Landroid/view/View;II)V

    .line 1896
    return-void

    .line 1900
    .restart local v0    # "layoutManager":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1901
    iget-object v5, p4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v3

    .line 1902
    .local v3, "minLeft":I
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v5

    if-gt v3, v5, :cond_1

    .line 1903
    invoke-virtual {p1, p5}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    .line 1905
    :cond_1
    iget-object v5, p4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v2

    .line 1906
    .local v2, "maxRight":I
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    if-lt v2, v5, :cond_2

    .line 1907
    invoke-virtual {p1, p5}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    .line 1911
    .end local v2    # "maxRight":I
    .end local v3    # "minLeft":I
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1912
    iget-object v5, p4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v4

    .line 1913
    .local v4, "minTop":I
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    if-gt v4, v5, :cond_3

    .line 1914
    invoke-virtual {p1, p5}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    .line 1916
    :cond_3
    iget-object v5, p4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    .line 1917
    .local v1, "maxBottom":I
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    if-lt v1, v5, :cond_4

    .line 1918
    invoke-virtual {p1, p5}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    .line 1921
    .end local v1    # "maxBottom":I
    .end local v4    # "minTop":I
    :cond_4
    return-void
.end method

.method public onSelectedChanged(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .prologue
    .line 1843
    if-eqz p1, :cond_0

    .line 1844
    sget-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;

    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/helper/ItemTouchUIUtil;->onSelected(Landroid/view/View;)V

    .line 1846
    :cond_0
    return-void
.end method

.method public abstract onSwiped(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
.end method
