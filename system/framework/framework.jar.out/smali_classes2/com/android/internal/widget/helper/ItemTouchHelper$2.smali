.class Lcom/android/internal/widget/helper/ItemTouchHelper$2;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/helper/ItemTouchHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/helper/ItemTouchHelper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 300
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 304
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 305
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 306
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 307
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 308
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 309
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v5}, Lcom/android/internal/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    .line 310
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-nez v5, :cond_1

    .line 311
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v5, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->findAnimation(Landroid/view/MotionEvent;)Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-result-object v1

    .line 312
    .local v1, "animation":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    if-eqz v1, :cond_1

    .line 313
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v6, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    iget v7, v1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    sub-float/2addr v6, v7

    iput v6, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 314
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v6, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    iget v7, v1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    sub-float/2addr v6, v7

    iput v6, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 315
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v6, v1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5, v6, v3}, Lcom/android/internal/widget/helper/ItemTouchHelper;->endRecoverAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)I

    .line 316
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v6, v1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v6, v6, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 317
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v7, v1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->clearView(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 319
    :cond_0
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v6, v1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget v7, v1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 320
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v6, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v5, p2, v6, v4}, Lcom/android/internal/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 337
    .end local v1    # "animation":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_2

    .line 338
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 340
    :cond_2
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v5, :cond_6

    :goto_1
    return v3

    .line 323
    :cond_3
    const/4 v5, 0x3

    if-eq v0, v5, :cond_4

    if-ne v0, v3, :cond_5

    .line 324
    :cond_4
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iput v7, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 325
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v5, v6, v4}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 326
    :cond_5
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v5, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-eq v5, v7, :cond_1

    .line 329
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v5, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 333
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 334
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v5, v0, p2, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z

    goto :goto_0

    .end local v2    # "index":I
    :cond_6
    move v3, v4

    .line 340
    goto :goto_1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 3
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 403
    if-nez p1, :cond_0

    .line 404
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 407
    return-void
.end method

.method public onTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 345
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v6, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 350
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_0

    .line 351
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 353
    :cond_0
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v6, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ne v6, v9, :cond_1

    .line 354
    return-void

    .line 356
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 357
    .local v0, "action":I
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v6, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 358
    .local v1, "activePointerIndex":I
    if-ltz v1, :cond_2

    .line 359
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v6, v0, p2, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z

    .line 361
    :cond_2
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v5, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 362
    .local v5, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-nez v5, :cond_3

    .line 363
    return-void

    .line 365
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 399
    :cond_4
    :goto_0
    :pswitch_0
    return-void

    .line 368
    :pswitch_1
    if-ltz v1, :cond_4

    .line 369
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v7, v7, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v6, p2, v7, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 370
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/helper/ItemTouchHelper;->moveIfNecessary(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 371
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v7, v7, Lcom/android/internal/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 372
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 373
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    goto :goto_0

    .line 378
    :pswitch_2
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_5

    .line 379
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->clear()V

    .line 383
    :cond_5
    :pswitch_3
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v6, v8, v7}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 384
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iput v9, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    goto :goto_0

    .line 387
    :pswitch_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 388
    .local v4, "pointerIndex":I
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 389
    .local v3, "pointerId":I
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v6, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ne v3, v6, :cond_4

    .line 392
    if-nez v4, :cond_6

    const/4 v2, 0x1

    .line 393
    .local v2, "newPointerIndex":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 394
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v7, v7, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v6, p2, v7, v4}, Lcom/android/internal/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    goto :goto_0

    .line 392
    .end local v2    # "newPointerIndex":I
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "newPointerIndex":I
    goto :goto_1

    .line 365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
