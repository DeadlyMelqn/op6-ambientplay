.class Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemTouchHelperGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/helper/ItemTouchHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/helper/ItemTouchHelper;

    .prologue
    .line 2239
    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2240
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2244
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 2249
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v6, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    .line 2250
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 2251
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 2252
    .local v3, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_1

    .line 2253
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v7, v7, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v6, v7, v3}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->hasDragFlag(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2254
    return-void

    .line 2256
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 2260
    .local v2, "pointerId":I
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v6, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ne v2, v6, :cond_1

    .line 2261
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v6, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 2262
    .local v1, "index":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 2263
    .local v4, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 2264
    .local v5, "y":F
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iput v4, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 2265
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iput v5, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 2266
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iput v8, v7, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    iput v8, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 2271
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v6}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2272
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    const/4 v7, 0x2

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 2277
    .end local v1    # "index":I
    .end local v2    # "pointerId":I
    .end local v3    # "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_1
    return-void
.end method
