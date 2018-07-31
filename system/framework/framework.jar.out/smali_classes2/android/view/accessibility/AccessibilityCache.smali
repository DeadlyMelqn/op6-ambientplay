.class public final Landroid/view/accessibility/AccessibilityCache;
.super Ljava/lang/Object;
.source "AccessibilityCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;
    }
.end annotation


# static fields
.field public static final CACHE_CRITICAL_EVENTS_MASK:I = 0x41b83d

.field private static final CHECK_INTEGRITY:Z

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityCache"


# instance fields
.field private mAccessibilityFocus:J

.field private final mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

.field private mInputFocus:J

.field private mIsAllWindowsCached:Z

.field private final mLock:Ljava/lang/Object;

.field private final mNodeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTempWindowArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Landroid/view/accessibility/AccessibilityCache;->CHECK_INTEGRITY:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;)V
    .locals 4
    .param p1, "nodeRefresher"    # Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    .prologue
    const-wide/32 v2, 0x7fffffff

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    .line 69
    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 70
    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 74
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 77
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 80
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mTempWindowArray:Landroid/util/SparseArray;

    .line 84
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    .line 85
    return-void
.end method

.method private clearNodesForWindowLocked(I)V
    .locals 5
    .param p1, "windowId"    # I

    .prologue
    .line 385
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/LongSparseArray;

    .line 386
    .local v3, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v3, :cond_0

    .line 387
    return-void

    .line 390
    :cond_0
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 391
    .local v2, "nodeCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 392
    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 393
    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 394
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 391
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 396
    .end local v1    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 397
    return-void
.end method

.method private clearSubTreeLocked(IJ)V
    .locals 2
    .param p1, "windowId"    # I
    .param p2, "rootNodeId"    # J

    .prologue
    .line 410
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 411
    .local v0, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v0, :cond_0

    .line 412
    invoke-direct {p0, v0, p2, p3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)V

    .line 414
    :cond_0
    return-void
.end method

.method private clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)V
    .locals 6
    .param p2, "rootNodeId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 426
    .local v1, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v1, :cond_0

    .line 427
    return-void

    .line 429
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 430
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    .line 431
    .local v0, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 432
    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v2

    .line 433
    .local v2, "childNodeId":J
    invoke-direct {p0, p1, v2, v3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)V

    .line 431
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 435
    .end local v2    # "childNodeId":J
    :cond_1
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 436
    return-void
.end method

.method private clearWindowCache()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 369
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 370
    .local v2, "windowCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 371
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 372
    .local v1, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 373
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 370
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 375
    .end local v1    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_0
    iput-boolean v4, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    .line 376
    return-void
.end method

.method private refreshCachedNodeLocked(IJ)V
    .locals 4
    .param p1, "windowId"    # I
    .param p2, "sourceId"    # J

    .prologue
    .line 196
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    .line 197
    .local v1, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v1, :cond_0

    .line 198
    return-void

    .line 200
    :cond_0
    invoke-virtual {v1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 202
    .local v0, "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_1

    .line 203
    return-void

    .line 206
    :cond_1
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;->refreshNode(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 207
    return-void

    .line 210
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 211
    return-void
.end method


# virtual methods
.method public add(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 20
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 294
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v14

    .line 295
    .local v14, "windowId":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/LongSparseArray;

    .line 296
    .local v5, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v5, :cond_0

    .line 297
    new-instance v5, Landroid/util/LongSparseArray;

    .end local v5    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 298
    .restart local v5    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v15, v14, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 301
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v12

    .line 302
    .local v12, "sourceId":J
    invoke-virtual {v5, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 303
    .local v7, "oldInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v7, :cond_5

    .line 308
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/LongArray;

    move-result-object v4

    .line 310
    .local v4, "newChildrenIds":Landroid/util/LongArray;
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v6

    .line 311
    .local v6, "oldChildCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_4

    .line 312
    invoke-virtual {v5, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_1

    .line 316
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/view/accessibility/AccessibilityCache;->clearNodesForWindowLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v16

    .line 317
    return-void

    .line 319
    :cond_1
    :try_start_1
    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v8

    .line 321
    .local v8, "oldChildId":J
    if-eqz v4, :cond_2

    invoke-virtual {v4, v8, v9}, Landroid/util/LongArray;->indexOf(J)I

    move-result v15

    if-gez v15, :cond_3

    .line 322
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8, v9}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 311
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 329
    .end local v8    # "oldChildId":J
    :cond_4
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v10

    .line 330
    .local v10, "oldParentId":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v18

    cmp-long v15, v18, v10

    if-eqz v15, :cond_5

    .line 331
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10, v11}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 337
    .end local v3    # "i":I
    .end local v4    # "newChildrenIds":Landroid/util/LongArray;
    .end local v6    # "oldChildCount":I
    .end local v10    # "oldParentId":J
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 338
    .local v2, "clone":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v5, v12, v13, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 339
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 340
    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 342
    :cond_6
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 343
    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    monitor-exit v16

    .line 346
    return-void

    .line 289
    .end local v2    # "clone":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v7    # "oldInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v12    # "sourceId":J
    .end local v14    # "windowId":I
    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15
.end method

.method public addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    .locals 5
    .param p1, "window"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .prologue
    .line 106
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 110
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v1

    .line 111
    .local v1, "windowId":I
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 112
    .local v0, "oldWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 115
    :cond_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 117
    return-void

    .line 106
    .end local v0    # "oldWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v1    # "windowId":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public checkIntegrity()V
    .locals 26

    .prologue
    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 448
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v22

    if-gtz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v22

    if-nez v22, :cond_0

    monitor-exit v23

    .line 449
    return-void

    .line 452
    :cond_0
    const/4 v7, 0x0

    .line 453
    .local v7, "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    const/4 v3, 0x0

    .line 455
    .local v3, "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v20

    .line 456
    .local v20, "windowCount":I
    const/4 v8, 0x0

    .end local v3    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v7    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .local v8, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v8, v0, :cond_5

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 460
    .local v19, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual/range {v19 .. v19}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 461
    if-eqz v3, :cond_3

    .line 462
    const-string/jumbo v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Duplicate active window:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_1
    :goto_1
    invoke-virtual/range {v19 .. v19}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 470
    if-eqz v7, :cond_4

    .line 471
    const-string/jumbo v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Duplicate focused window:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 464
    :cond_3
    move-object/from16 v3, v19

    .local v3, "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    goto :goto_1

    .line 473
    .end local v3    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_4
    move-object/from16 v7, v19

    .local v7, "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    goto :goto_2

    .line 479
    .end local v7    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v19    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_5
    const/4 v2, 0x0

    .line 480
    .local v2, "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v9, 0x0

    .line 482
    .local v9, "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v16

    .line 483
    .local v16, "nodesForWindowCount":I
    const/4 v8, 0x0

    .end local v2    # "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v9    # "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_3
    move/from16 v0, v16

    if-ge v8, v0, :cond_12

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/LongSparseArray;

    .line 485
    .local v15, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    move-result v22

    if-gtz v22, :cond_7

    .line 483
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 489
    :cond_7
    new-instance v18, Landroid/util/ArraySet;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArraySet;-><init>()V

    .line 490
    .local v18, "seen":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v21

    .line 492
    .local v21, "windowId":I
    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    move-result v13

    .line 493
    .local v13, "nodeCount":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_4
    if-ge v10, v13, :cond_6

    .line 494
    invoke-virtual {v15, v10}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 497
    .local v12, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_9

    .line 498
    const-string/jumbo v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Duplicate node: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 499
    const-string/jumbo v25, " in window:"

    .line 498
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 505
    :cond_9
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 506
    if-eqz v2, :cond_f

    .line 507
    const-string/jumbo v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Duplicate accessibility focus:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 508
    const-string/jumbo v25, " in window:"

    .line 507
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_a
    :goto_5
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 516
    if-eqz v9, :cond_10

    .line 517
    const-string/jumbo v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Duplicate input focus: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 518
    const-string/jumbo v25, " in window:"

    .line 517
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_b
    :goto_6
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v15, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 526
    .local v14, "nodeParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v14, :cond_d

    .line 527
    const/4 v6, 0x0

    .line 528
    .local v6, "childOfItsParent":Z
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v5

    .line 529
    .local v5, "childCount":I
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_7
    if-ge v11, v5, :cond_c

    .line 530
    invoke-virtual {v14, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v15, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 531
    .local v4, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-ne v4, v12, :cond_11

    .line 532
    const/4 v6, 0x1

    .line 536
    .end local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_c
    if-nez v6, :cond_d

    .line 537
    const-string/jumbo v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Invalid parent-child relation between parent: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 538
    const-string/jumbo v25, " and child: "

    .line 537
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    .end local v5    # "childCount":I
    .end local v6    # "childOfItsParent":Z
    .end local v11    # "k":I
    :cond_d
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v5

    .line 544
    .restart local v5    # "childCount":I
    const/4 v11, 0x0

    .restart local v11    # "k":I
    :goto_8
    if-ge v11, v5, :cond_8

    .line 545
    invoke-virtual {v12, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v15, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 546
    .restart local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v4, :cond_e

    .line 547
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v15, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 548
    .local v17, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, v17

    if-eq v0, v12, :cond_e

    .line 549
    const-string/jumbo v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Invalid child-parent relation between child: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 550
    const-string/jumbo v25, " and parent: "

    .line 549
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    .end local v17    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 510
    .end local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "childCount":I
    .end local v11    # "k":I
    .end local v14    # "nodeParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_f
    move-object v2, v12

    .local v2, "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto/16 :goto_5

    .line 520
    .end local v2    # "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_10
    move-object v9, v12

    .local v9, "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto/16 :goto_6

    .line 529
    .end local v9    # "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v5    # "childCount":I
    .restart local v6    # "childOfItsParent":Z
    .restart local v11    # "k":I
    .restart local v14    # "nodeParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_11
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_7

    .end local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "childCount":I
    .end local v6    # "childOfItsParent":Z
    .end local v10    # "j":I
    .end local v11    # "k":I
    .end local v12    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v13    # "nodeCount":I
    .end local v14    # "nodeParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v15    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v18    # "seen":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v21    # "windowId":I
    :cond_12
    monitor-exit v23

    .line 557
    return-void

    .line 446
    .end local v8    # "i":I
    .end local v16    # "nodesForWindowCount":I
    .end local v20    # "windowCount":I
    :catchall_0
    move-exception v22

    monitor-exit v23

    throw v22
.end method

.method public clear()V
    .locals 8

    .prologue
    .line 352
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 356
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityCache;->clearWindowCache()V

    .line 357
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 358
    .local v1, "nodesForWindowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 359
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 360
    .local v2, "windowId":I
    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityCache;->clearNodesForWindowLocked(I)V

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    .end local v2    # "windowId":I
    :cond_0
    const-wide/32 v6, 0x7fffffff

    iput-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 364
    const-wide/32 v6, 0x7fffffff

    iput-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 366
    return-void

    .line 352
    .end local v0    # "i":I
    .end local v1    # "nodesForWindowCount":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getNode(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "windowId"    # I
    .param p2, "accessibilityNodeId"    # J

    .prologue
    const/4 v4, 0x0

    .line 222
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 223
    :try_start_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    .local v1, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v1, :cond_0

    monitor-exit v3

    .line 225
    return-object v4

    .line 227
    :cond_0
    :try_start_1
    invoke-virtual {v1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 228
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_1

    .line 231
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :cond_1
    monitor-exit v3

    .line 236
    return-object v0

    .line 222
    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v1    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 4
    .param p1, "windowId"    # I

    .prologue
    const/4 v3, 0x0

    .line 274
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 275
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 276
    .local v0, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v0, :cond_0

    .line 277
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    .line 279
    return-object v3

    .line 274
    .end local v0    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getWindows()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 241
    iget-object v7, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 242
    :try_start_0
    iget-boolean v6, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    monitor-exit v7

    .line 243
    return-object v8

    .line 246
    :cond_0
    :try_start_1
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 247
    .local v4, "windowCount":I
    if-lez v4, :cond_3

    .line 249
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mTempWindowArray:Landroid/util/SparseArray;

    .line 250
    .local v2, "sortedWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 252
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 253
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 254
    .local v3, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v6

    invoke-virtual {v2, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    .end local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 260
    .local v1, "sortedWindowCount":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 261
    .local v5, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 262
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 263
    .restart local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_2
    monitor-exit v7

    .line 267
    return-object v5

    .end local v0    # "i":I
    .end local v1    # "sortedWindowCount":I
    .end local v2    # "sortedWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v5    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :cond_3
    monitor-exit v7

    .line 269
    return-object v8

    .line 241
    .end local v4    # "windowCount":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const-wide/32 v8, 0x7fffffff

    .line 129
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 130
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 131
    .local v0, "eventType":I
    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    monitor-exit v5

    .line 186
    sget-boolean v4, Landroid/view/accessibility/AccessibilityCache;->CHECK_INTEGRITY:Z

    if-eqz v4, :cond_1

    .line 187
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->checkIntegrity()V

    .line 189
    :cond_1
    return-void

    .line 133
    :sswitch_0
    :try_start_1
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    cmp-long v4, v6, v8

    if-eqz v4, :cond_2

    .line 134
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v4, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    .line 136
    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 137
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v4, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    .end local v0    # "eventType":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 141
    .restart local v0    # "eventType":I
    :sswitch_1
    :try_start_2
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-nez v4, :cond_0

    .line 142
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v4, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    .line 143
    const-wide/32 v6, 0x7fffffff

    iput-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    goto :goto_0

    .line 148
    :sswitch_2
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    cmp-long v4, v6, v8

    if-eqz v4, :cond_3

    .line 149
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    invoke-direct {p0, v4, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    .line 151
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 152
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    invoke-direct {p0, v4, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    goto :goto_0

    .line 159
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    invoke-direct {p0, v4, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    goto :goto_0

    .line 163
    :sswitch_4
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    :try_start_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    .line 165
    .local v1, "windowId":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v2

    .line 166
    .local v2, "sourceId":J
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    .line 168
    invoke-direct {p0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 170
    :cond_4
    :try_start_5
    invoke-direct {p0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 163
    .end local v1    # "windowId":I
    .end local v2    # "sourceId":J
    :catchall_1
    move-exception v4

    :try_start_6
    monitor-exit v6

    throw v4

    .line 176
    :sswitch_5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    invoke-direct {p0, v4, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    goto/16 :goto_0

    .line 181
    :sswitch_6
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 131
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_6
        0x800 -> :sswitch_4
        0x1000 -> :sswitch_5
        0x2000 -> :sswitch_3
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_1
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

.method public setWindows(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 92
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityCache;->clearWindowCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    if-nez p1, :cond_0

    monitor-exit v4

    .line 94
    return-void

    .line 96
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 97
    .local v2, "windowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 98
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 99
    .local v1, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityCache;->addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 103
    return-void

    .line 88
    .end local v0    # "i":I
    .end local v2    # "windowCount":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
