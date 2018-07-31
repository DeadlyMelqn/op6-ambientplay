.class final Lcom/android/internal/widget/GapWorker;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/GapWorker$1;,
        Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;,
        Lcom/android/internal/widget/GapWorker$Task;
    }
.end annotation


# static fields
.field static final sGapWorker:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/internal/widget/GapWorker;",
            ">;"
        }
    .end annotation
.end field

.field static sTaskComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/internal/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFrameIntervalNs:J

.field mPostTimeNs:J

.field mRecyclerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/internal/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    .line 183
    new-instance v0, Lcom/android/internal/widget/GapWorker$1;

    invoke-direct {v0}, Lcom/android/internal/widget/GapWorker$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    .line 29
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method private buildTaskList()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    .line 210
    iget-object v10, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 211
    .local v8, "viewCount":I
    const/4 v5, 0x0

    .line 212
    .local v5, "totalTaskCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 213
    iget-object v10, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/RecyclerView;

    .line 214
    .local v7, "view":Lcom/android/internal/widget/RecyclerView;
    iget-object v10, v7, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v10, v7, v11}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Lcom/android/internal/widget/RecyclerView;Z)V

    .line 215
    iget-object v10, v7, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v10, v10, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/2addr v5, v10

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v7    # "view":Lcom/android/internal/widget/RecyclerView;
    :cond_0
    iget-object v10, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 220
    const/4 v6, 0x0

    .line 221
    .local v6, "totalTaskIndex":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_4

    .line 222
    iget-object v10, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/RecyclerView;

    .line 223
    .restart local v7    # "view":Lcom/android/internal/widget/RecyclerView;
    iget-object v3, v7, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 224
    .local v3, "prefetchRegistry":Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;
    iget v10, v3, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 225
    iget v12, v3, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 224
    add-int v9, v10, v12

    .line 226
    .local v9, "viewVelocity":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget v10, v3, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v10, v10, 0x2

    if-ge v2, v10, :cond_3

    .line 228
    iget-object v10, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v6, v10, :cond_1

    .line 229
    new-instance v4, Lcom/android/internal/widget/GapWorker$Task;

    invoke-direct {v4}, Lcom/android/internal/widget/GapWorker$Task;-><init>()V

    .line 230
    .local v4, "task":Lcom/android/internal/widget/GapWorker$Task;
    iget-object v10, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :goto_3
    iget-object v10, v3, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    add-int/lit8 v12, v2, 0x1

    aget v0, v10, v12

    .line 236
    .local v0, "distanceToItem":I
    if-gt v0, v9, :cond_2

    const/4 v10, 0x1

    :goto_4
    iput-boolean v10, v4, Lcom/android/internal/widget/GapWorker$Task;->immediate:Z

    .line 237
    iput v9, v4, Lcom/android/internal/widget/GapWorker$Task;->viewVelocity:I

    .line 238
    iput v0, v4, Lcom/android/internal/widget/GapWorker$Task;->distanceToItem:I

    .line 239
    iput-object v7, v4, Lcom/android/internal/widget/GapWorker$Task;->view:Lcom/android/internal/widget/RecyclerView;

    .line 240
    iget-object v10, v3, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v10, v10, v2

    iput v10, v4, Lcom/android/internal/widget/GapWorker$Task;->position:I

    .line 242
    add-int/lit8 v6, v6, 0x1

    .line 226
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 232
    .end local v0    # "distanceToItem":I
    .end local v4    # "task":Lcom/android/internal/widget/GapWorker$Task;
    :cond_1
    iget-object v10, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/GapWorker$Task;

    .restart local v4    # "task":Lcom/android/internal/widget/GapWorker$Task;
    goto :goto_3

    .restart local v0    # "distanceToItem":I
    :cond_2
    move v10, v11

    .line 236
    goto :goto_4

    .line 221
    .end local v0    # "distanceToItem":I
    .end local v4    # "task":Lcom/android/internal/widget/GapWorker$Task;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 247
    .end local v2    # "j":I
    .end local v3    # "prefetchRegistry":Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;
    .end local v7    # "view":Lcom/android/internal/widget/RecyclerView;
    .end local v9    # "viewVelocity":I
    :cond_4
    iget-object v10, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    sget-object v11, Lcom/android/internal/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 248
    return-void
.end method

.method private flushTaskWithDeadline(Lcom/android/internal/widget/GapWorker$Task;J)V
    .locals 6
    .param p1, "task"    # Lcom/android/internal/widget/GapWorker$Task;
    .param p2, "deadlineNs"    # J

    .prologue
    .line 324
    iget-boolean v1, p1, Lcom/android/internal/widget/GapWorker$Task;->immediate:Z

    if-eqz v1, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    .line 325
    .local v2, "taskDeadlineNs":J
    :goto_0
    iget-object v1, p1, Lcom/android/internal/widget/GapWorker$Task;->view:Lcom/android/internal/widget/RecyclerView;

    .line 326
    iget v4, p1, Lcom/android/internal/widget/GapWorker$Task;->position:I

    .line 325
    invoke-direct {p0, v1, v4, v2, v3}, Lcom/android/internal/widget/GapWorker;->prefetchPositionWithDeadline(Lcom/android/internal/widget/RecyclerView;IJ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 327
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0, v1, p2, p3}, Lcom/android/internal/widget/GapWorker;->prefetchInnerRecyclerViewWithDeadline(Lcom/android/internal/widget/RecyclerView;J)V

    .line 330
    :cond_0
    return-void

    .line 324
    .end local v0    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v2    # "taskDeadlineNs":J
    :cond_1
    move-wide v2, p2

    .restart local v2    # "taskDeadlineNs":J
    goto :goto_0
.end method

.method private flushTasksWithDeadline(J)V
    .locals 3
    .param p1, "deadlineNs"    # J

    .prologue
    .line 333
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 334
    iget-object v2, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/GapWorker$Task;

    .line 335
    .local v1, "task":Lcom/android/internal/widget/GapWorker$Task;
    iget-object v2, v1, Lcom/android/internal/widget/GapWorker$Task;->view:Lcom/android/internal/widget/RecyclerView;

    if-nez v2, :cond_1

    .line 341
    .end local v1    # "task":Lcom/android/internal/widget/GapWorker$Task;
    :cond_0
    return-void

    .line 338
    .restart local v1    # "task":Lcom/android/internal/widget/GapWorker$Task;
    :cond_1
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/widget/GapWorker;->flushTaskWithDeadline(Lcom/android/internal/widget/GapWorker$Task;J)V

    .line 339
    invoke-virtual {v1}, Lcom/android/internal/widget/GapWorker$Task;->clear()V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static isPrefetchPositionAttached(Lcom/android/internal/widget/RecyclerView;I)Z
    .locals 5
    .param p0, "view"    # Lcom/android/internal/widget/RecyclerView;
    .param p1, "position"    # I

    .prologue
    .line 251
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v4}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .line 252
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 253
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 254
    .local v0, "attachedView":Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 256
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget v4, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 257
    const/4 v4, 0x1

    return v4

    .line 252
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 260
    .end local v0    # "attachedView":Landroid/view/View;
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private prefetchInnerRecyclerViewWithDeadline(Lcom/android/internal/widget/RecyclerView;J)V
    .locals 6
    .param p1, "innerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "deadlineNs"    # J

    .prologue
    .line 292
    if-nez p1, :cond_0

    .line 293
    return-void

    .line 296
    :cond_0
    iget-boolean v3, p1, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_1

    .line 297
    iget-object v3, p1, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->removeAndRecycleViews()V

    .line 304
    :cond_1
    iget-object v2, p1, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 305
    .local v2, "innerPrefetchRegistry":Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Lcom/android/internal/widget/RecyclerView;Z)V

    .line 307
    iget v3, v2, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    if-eqz v3, :cond_3

    .line 309
    :try_start_0
    const-string/jumbo v3, "RV Nested Prefetch"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 310
    iget-object v3, p1, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v4, p1, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RecyclerView$State;->prepareForNestedPrefetch(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, v2, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_2

    .line 314
    iget-object v3, v2, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v1, v3, v0

    .line 315
    .local v1, "innerPosition":I
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/android/internal/widget/GapWorker;->prefetchPositionWithDeadline(Lcom/android/internal/widget/RecyclerView;IJ)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 318
    .end local v1    # "innerPosition":I
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 321
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 317
    :catchall_0
    move-exception v3

    .line 318
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 317
    throw v3
.end method

.method private prefetchPositionWithDeadline(Lcom/android/internal/widget/RecyclerView;IJ)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "position"    # I
    .param p3, "deadlineNs"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 265
    invoke-static {p1, p2}, Lcom/android/internal/widget/GapWorker;->isPrefetchPositionAttached(Lcom/android/internal/widget/RecyclerView;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    return-object v4

    .line 270
    :cond_0
    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 271
    .local v1, "recycler":Lcom/android/internal/widget/RecyclerView$Recycler;
    invoke-virtual {v1, p2, v3, p3, p4}, Lcom/android/internal/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 274
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 278
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 287
    :cond_1
    :goto_0
    return-object v0

    .line 284
    :cond_2
    invoke-virtual {v1, v0, v3}, Lcom/android/internal/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/android/internal/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method postFromTraversal(Lcom/android/internal/widget/RecyclerView;II)V
    .locals 4
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "prefetchDx"    # I
    .param p3, "prefetchDy"    # I

    .prologue
    .line 170
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-wide v0, p0, Lcom/android/internal/widget/GapWorker;->mPostTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/GapWorker;->mPostTimeNs:J

    .line 176
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 180
    :cond_0
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->setPrefetchVector(II)V

    .line 181
    return-void
.end method

.method prefetch(J)V
    .locals 1
    .param p1, "deadlineNs"    # J

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/android/internal/widget/GapWorker;->buildTaskList()V

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/GapWorker;->flushTasksWithDeadline(J)V

    .line 346
    return-void
.end method

.method public remove(Lcom/android/internal/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 164
    .local v0, "removeSuccess":Z
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 351
    :try_start_0
    const-string/jumbo v4, "RV Prefetch"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 353
    iget-object v4, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 375
    iput-wide v8, p0, Lcom/android/internal/widget/GapWorker;->mPostTimeNs:J

    .line 376
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 355
    return-void

    .line 360
    :cond_0
    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 361
    iget-object v4, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView;->getDrawingTime()J

    move-result-wide v6

    .line 360
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 362
    .local v0, "lastFrameVsyncNs":J
    cmp-long v4, v0, v8

    if-nez v4, :cond_1

    .line 375
    iput-wide v8, p0, Lcom/android/internal/widget/GapWorker;->mPostTimeNs:J

    .line 376
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 364
    return-void

    .line 369
    :cond_1
    :try_start_2
    iget-wide v4, p0, Lcom/android/internal/widget/GapWorker;->mFrameIntervalNs:J

    add-long v2, v0, v4

    .line 371
    .local v2, "nextFrameNs":J
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/GapWorker;->prefetch(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 375
    iput-wide v8, p0, Lcom/android/internal/widget/GapWorker;->mPostTimeNs:J

    .line 376
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 378
    return-void

    .line 374
    .end local v0    # "lastFrameVsyncNs":J
    .end local v2    # "nextFrameNs":J
    :catchall_0
    move-exception v4

    .line 375
    iput-wide v8, p0, Lcom/android/internal/widget/GapWorker;->mPostTimeNs:J

    .line 376
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 374
    throw v4
.end method
