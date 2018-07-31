.class public Lcom/android/internal/widget/helper/ItemTouchHelper;
.super Lcom/android/internal/widget/RecyclerView$ItemDecoration;
.source "ItemTouchHelper.java"

# interfaces
.implements Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/helper/ItemTouchHelper$1;,
        Lcom/android/internal/widget/helper/ItemTouchHelper$2;,
        Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;,
        Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;,
        Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;,
        Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;,
        Lcom/android/internal/widget/helper/ItemTouchHelper$ViewDropHandler;
    }
.end annotation


# static fields
.field static final ACTION_MODE_DRAG_MASK:I = 0xff0000

.field private static final ACTION_MODE_IDLE_MASK:I = 0xff

.field static final ACTION_MODE_SWIPE_MASK:I = 0xff00

.field public static final ACTION_STATE_DRAG:I = 0x2

.field public static final ACTION_STATE_IDLE:I = 0x0

.field public static final ACTION_STATE_SWIPE:I = 0x1

.field static final ACTIVE_POINTER_ID_NONE:I = -0x1

.field public static final ANIMATION_TYPE_DRAG:I = 0x8

.field public static final ANIMATION_TYPE_SWIPE_CANCEL:I = 0x4

.field public static final ANIMATION_TYPE_SWIPE_SUCCESS:I = 0x2

.field static final DEBUG:Z = false

.field static final DIRECTION_FLAG_COUNT:I = 0x8

.field public static final DOWN:I = 0x2

.field public static final END:I = 0x20

.field public static final LEFT:I = 0x4

.field private static final PIXELS_PER_SECOND:I = 0x3e8

.field public static final RIGHT:I = 0x8

.field public static final START:I = 0x10

.field static final TAG:Ljava/lang/String; = "ItemTouchHelper"

.field public static final UP:I = 0x1


# instance fields
.field mActionState:I

.field mActivePointerId:I

.field mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

.field private mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

.field private mDistances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDragScrollStartTimeInMs:J

.field mDx:F

.field mDy:F

.field mGestureDetector:Landroid/view/GestureDetector;

.field mInitialTouchX:F

.field mInitialTouchY:F

.field mMaxSwipeVelocity:F

.field private final mOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

.field mOverdrawChild:Landroid/view/View;

.field mOverdrawChildPosition:I

.field final mPendingCleanup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mRecoverAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerView:Lcom/android/internal/widget/RecyclerView;

.field final mScrollRunnable:Ljava/lang/Runnable;

.field mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

.field mSelectedFlags:I

.field mSelectedStartX:F

.field mSelectedStartY:F

.field private mSlop:I

.field private mSwapTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mSwipeEscapeVelocity:F

.field private final mTmpPosition:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 429
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    .line 169
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    .line 174
    iput-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 213
    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 249
    new-instance v0, Lcom/android/internal/widget/helper/ItemTouchHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/helper/ItemTouchHelper$1;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;)V

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    .line 276
    iput-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 283
    iput-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 290
    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 297
    new-instance v0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/helper/ItemTouchHelper$2;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;)V

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 430
    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    .line 431
    return-void
.end method

.method private addChildDrawingOrderCallback()V
    .locals 2

    .prologue
    .line 1251
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1252
    return-void

    .line 1254
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_1

    .line 1255
    new-instance v0, Lcom/android/internal/widget/helper/ItemTouchHelper$5;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/helper/ItemTouchHelper$5;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;)V

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1273
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setChildDrawingOrderCallback(Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;)V

    .line 1274
    return-void
.end method

.method private checkHorizontalSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)I
    .locals 11
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1198
    and-int/lit8 v6, p2, 0xc

    if-eqz v6, :cond_3

    .line 1199
    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    cmpl-float v6, v6, v10

    if-lez v6, :cond_0

    const/16 v1, 0x8

    .line 1200
    .local v1, "dirFlag":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_2

    .line 1201
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1202
    iget-object v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget v8, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v7

    .line 1201
    const/16 v8, 0x3e8

    invoke-virtual {v6, v8, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1203
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1204
    .local v4, "xVelocity":F
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 1205
    .local v5, "yVelocity":F
    cmpl-float v6, v4, v10

    if-lez v6, :cond_1

    const/16 v3, 0x8

    .line 1206
    .local v3, "velDirFlag":I
    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1207
    .local v0, "absXVelocity":F
    and-int v6, v3, p2

    if-eqz v6, :cond_2

    if-ne v1, v3, :cond_2

    .line 1208
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_2

    .line 1209
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_2

    .line 1210
    return v3

    .line 1199
    .end local v0    # "absXVelocity":F
    .end local v1    # "dirFlag":I
    .end local v3    # "velDirFlag":I
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    :cond_0
    const/4 v1, 0x4

    .restart local v1    # "dirFlag":I
    goto :goto_0

    .line 1205
    .restart local v4    # "xVelocity":F
    .restart local v5    # "yVelocity":F
    :cond_1
    const/4 v3, 0x4

    .restart local v3    # "velDirFlag":I
    goto :goto_1

    .line 1214
    .end local v3    # "velDirFlag":I
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    :cond_2
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v7, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getSwipeThreshold(Lcom/android/internal/widget/RecyclerView$ViewHolder;)F

    move-result v7

    mul-float v2, v6, v7

    .line 1217
    .local v2, "threshold":F
    and-int v6, p2, v1

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v2

    if-lez v6, :cond_3

    .line 1218
    return v1

    .line 1221
    .end local v1    # "dirFlag":I
    .end local v2    # "threshold":F
    :cond_3
    return v9
.end method

.method private checkVerticalSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)I
    .locals 11
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1225
    and-int/lit8 v6, p2, 0x3

    if-eqz v6, :cond_3

    .line 1226
    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    cmpl-float v6, v6, v10

    if-lez v6, :cond_0

    const/4 v1, 0x2

    .line 1227
    .local v1, "dirFlag":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_2

    .line 1228
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1229
    iget-object v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget v8, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v7

    .line 1228
    const/16 v8, 0x3e8

    invoke-virtual {v6, v8, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1230
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1231
    .local v4, "xVelocity":F
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 1232
    .local v5, "yVelocity":F
    cmpl-float v6, v5, v10

    if-lez v6, :cond_1

    const/4 v3, 0x2

    .line 1233
    .local v3, "velDirFlag":I
    :goto_1
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1234
    .local v0, "absYVelocity":F
    and-int v6, v3, p2

    if-eqz v6, :cond_2

    if-ne v3, v1, :cond_2

    .line 1235
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_2

    .line 1236
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_2

    .line 1237
    return v3

    .line 1226
    .end local v0    # "absYVelocity":F
    .end local v1    # "dirFlag":I
    .end local v3    # "velDirFlag":I
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    :cond_0
    const/4 v1, 0x1

    .restart local v1    # "dirFlag":I
    goto :goto_0

    .line 1232
    .restart local v4    # "xVelocity":F
    .restart local v5    # "yVelocity":F
    :cond_1
    const/4 v3, 0x1

    .restart local v3    # "velDirFlag":I
    goto :goto_1

    .line 1241
    .end local v3    # "velDirFlag":I
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    :cond_2
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v7, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getSwipeThreshold(Lcom/android/internal/widget/RecyclerView$ViewHolder;)F

    move-result v7

    mul-float v2, v6, v7

    .line 1243
    .local v2, "threshold":F
    and-int v6, p2, v1

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v2

    if-lez v6, :cond_3

    .line 1244
    return v1

    .line 1247
    .end local v1    # "dirFlag":I
    .end local v2    # "threshold":F
    :cond_3
    return v9
.end method

.method private destroyCallbacks()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 477
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v3, p0}, Lcom/android/internal/widget/RecyclerView;->removeItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;)V

    .line 478
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RecyclerView;->removeOnItemTouchListener(Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;)V

    .line 479
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v3, p0}, Lcom/android/internal/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 481
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 482
    .local v1, "recoverAnimSize":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 483
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 484
    .local v2, "recoverAnimation":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v5, v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->clearView(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 482
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 486
    .end local v2    # "recoverAnimation":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 487
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 488
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 489
    invoke-direct {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->releaseVelocityTracker()V

    .line 490
    return-void
.end method

.method private findSwapTargets(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .locals 25
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 767
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 768
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    .line 773
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getBoundingBoxMargin()I

    move-result v16

    .line 774
    .local v16, "margin":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    sub-int v14, v22, v16

    .line 775
    .local v14, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    sub-int v21, v22, v16

    .line 776
    .local v21, "top":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWidth()I

    move-result v22

    add-int v22, v22, v14

    mul-int/lit8 v23, v16, 0x2

    add-int v20, v22, v23

    .line 777
    .local v20, "right":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v22

    add-int v22, v22, v21

    mul-int/lit8 v23, v16, 0x2

    add-int v4, v22, v23

    .line 778
    .local v4, "bottom":I
    add-int v22, v14, v20

    div-int/lit8 v5, v22, 0x2

    .line 779
    .local v5, "centerX":I
    add-int v22, v21, v4

    div-int/lit8 v6, v22, 0x2

    .line 780
    .local v6, "centerY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v15

    .line 781
    .local v15, "lm":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    invoke-virtual {v15}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v7

    .line 782
    .local v7, "childCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v7, :cond_4

    .line 783
    invoke-virtual {v15, v12}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 784
    .local v17, "other":Landroid/view/View;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 782
    :cond_0
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 770
    .end local v4    # "bottom":I
    .end local v5    # "centerX":I
    .end local v6    # "centerY":I
    .end local v7    # "childCount":I
    .end local v12    # "i":I
    .end local v14    # "left":I
    .end local v15    # "lm":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    .end local v16    # "margin":I
    .end local v17    # "other":Landroid/view/View;
    .end local v20    # "right":I
    .end local v21    # "top":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 787
    .restart local v4    # "bottom":I
    .restart local v5    # "centerX":I
    .restart local v6    # "centerY":I
    .restart local v7    # "childCount":I
    .restart local v12    # "i":I
    .restart local v14    # "left":I
    .restart local v15    # "lm":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    .restart local v16    # "margin":I
    .restart local v17    # "other":Landroid/view/View;
    .restart local v20    # "right":I
    .restart local v21    # "top":I
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    if-gt v0, v4, :cond_0

    .line 788
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v22

    move/from16 v0, v22

    if-lt v0, v14, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v20

    if-gt v0, v1, :cond_0

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v18

    .line 792
    .local v18, "otherVh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->canDropOver(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 794
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v22

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v23

    add-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    sub-int v22, v5, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 795
    .local v10, "dx":I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v22

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v23

    add-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    sub-int v22, v6, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 796
    .local v11, "dy":I
    mul-int v22, v10, v10

    mul-int v23, v11, v11

    add-int v9, v22, v23

    .line 798
    .local v9, "dist":I
    const/16 v19, 0x0

    .line 799
    .local v19, "pos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v8

    .line 800
    .local v8, "cnt":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_3
    if-ge v13, v8, :cond_3

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    if-le v9, v0, :cond_3

    .line 802
    add-int/lit8 v19, v19, 0x1

    .line 800
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 807
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move/from16 v1, v19

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 811
    .end local v8    # "cnt":I
    .end local v9    # "dist":I
    .end local v10    # "dx":I
    .end local v11    # "dy":I
    .end local v13    # "j":I
    .end local v17    # "other":Landroid/view/View;
    .end local v18    # "otherVh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v19    # "pos":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    return-object v22
.end method

.method private findSwipedView(Landroid/view/MotionEvent;)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 10
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 914
    iget-object v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v5

    .line 915
    .local v5, "lm":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    iget v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 916
    return-object v9

    .line 918
    :cond_0
    iget v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 919
    .local v6, "pointerIndex":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iget v8, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float v3, v7, v8

    .line 920
    .local v3, "dx":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    iget v8, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float v4, v7, v8

    .line 921
    .local v4, "dy":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 922
    .local v0, "absDx":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 924
    .local v1, "absDy":F
    iget v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v7, v7

    cmpg-float v7, v0, v7

    if-gez v7, :cond_1

    iget v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v7, v7

    cmpg-float v7, v1, v7

    if-gez v7, :cond_1

    .line 925
    return-object v9

    .line 927
    :cond_1
    cmpl-float v7, v0, v1

    if-lez v7, :cond_2

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 928
    return-object v9

    .line 929
    :cond_2
    cmpl-float v7, v1, v0

    if-lez v7, :cond_3

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 930
    return-object v9

    .line 932
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v2

    .line 933
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_4

    .line 934
    return-object v9

    .line 936
    :cond_4
    iget-object v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v7, v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v7

    return-object v7
.end method

.method private getSelectedDxDy([F)V
    .locals 4
    .param p1, "outPosition"    # [F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 501
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    .line 502
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v2

    .line 506
    :goto_0
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    .line 507
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v3

    .line 511
    :goto_1
    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    aput v0, p1, v2

    goto :goto_0

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    aput v0, p1, v3

    goto :goto_1
.end method

.method private static hitTest(Landroid/view/View;FFFF)Z
    .locals 2
    .param p0, "child"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "left"    # F
    .param p4, "top"    # F

    .prologue
    const/4 v0, 0x0

    .line 434
    cmpl-float v1, p1, p3

    if-ltz v1, :cond_0

    .line 435
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p3

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 436
    cmpl-float v1, p2, p4

    if-ltz v1, :cond_0

    .line 437
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p4

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    .line 434
    :cond_0
    return v0
.end method

.method private initGestureDetector()V
    .locals 3

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 494
    return-void

    .line 496
    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 497
    new-instance v2, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;)V

    .line 496
    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    .line 498
    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 907
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 909
    iput-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 911
    :cond_0
    return-void
.end method

.method private setupCallbacks()V
    .locals 3

    .prologue
    .line 468
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 469
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSlop:I

    .line 470
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/RecyclerView;->addItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;)V

    .line 471
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView;->addOnItemTouchListener(Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;)V

    .line 472
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/RecyclerView;->addOnChildAttachStateChangeListener(Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 473
    invoke-direct {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->initGestureDetector()V

    .line 474
    return-void
.end method

.method private swipeIfNecessary(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
    .locals 9
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .prologue
    const v8, 0xff00

    const/4 v7, 0x0

    .line 1152
    iget v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1153
    return v7

    .line 1155
    :cond_0
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v5, v6, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v3

    .line 1156
    .local v3, "originalMovementFlags":I
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    .line 1158
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView;->getLayoutDirection()I

    move-result v6

    .line 1156
    invoke-virtual {v5, v3, v6}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v0

    .line 1159
    .local v0, "absoluteMovementFlags":I
    and-int v5, v0, v8

    shr-int/lit8 v1, v5, 0x8

    .line 1161
    .local v1, "flags":I
    if-nez v1, :cond_1

    .line 1162
    return v7

    .line 1164
    :cond_1
    and-int v5, v3, v8

    shr-int/lit8 v2, v5, 0x8

    .line 1167
    .local v2, "originalFlags":I
    iget v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 1168
    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->checkHorizontalSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)I

    move-result v4

    .local v4, "swipeDir":I
    if-lez v4, :cond_3

    .line 1170
    and-int v5, v2, v4

    if-nez v5, :cond_2

    .line 1173
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getLayoutDirection()I

    move-result v5

    .line 1172
    invoke-static {v4, v5}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v5

    return v5

    .line 1175
    :cond_2
    return v4

    .line 1177
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->checkVerticalSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)I

    move-result v4

    if-lez v4, :cond_7

    .line 1178
    return v4

    .line 1181
    .end local v4    # "swipeDir":I
    :cond_4
    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->checkVerticalSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)I

    move-result v4

    .restart local v4    # "swipeDir":I
    if-lez v4, :cond_5

    .line 1182
    return v4

    .line 1184
    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->checkHorizontalSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)I

    move-result v4

    if-lez v4, :cond_7

    .line 1186
    and-int v5, v2, v4

    if-nez v5, :cond_6

    .line 1189
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getLayoutDirection()I

    move-result v5

    .line 1188
    invoke-static {v4, v5}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v5

    return v5

    .line 1191
    :cond_6
    return v4

    .line 1194
    :cond_7
    return v7
.end method


# virtual methods
.method public attachToRecyclerView(Lcom/android/internal/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .prologue
    .line 450
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-ne v1, p1, :cond_0

    .line 451
    return-void

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v1, :cond_1

    .line 454
    invoke-direct {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->destroyCallbacks()V

    .line 456
    :cond_1
    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 457
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v1, :cond_2

    .line 458
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 460
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x10500a6

    .line 459
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 462
    const v1, 0x10500a5

    .line 461
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 463
    invoke-direct {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->setupCallbacks()V

    .line 465
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_2
    return-void
.end method

.method checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z
    .locals 11
    .param p1, "action"    # I
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;
    .param p3, "pointerIndex"    # I

    .prologue
    .line 943
    iget-object v9, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-nez v9, :cond_0

    const/4 v9, 0x2

    if-eq p1, v9, :cond_1

    .line 945
    :cond_0
    const/4 v9, 0x0

    return v9

    .line 944
    :cond_1
    iget v9, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v9}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    .line 943
    if-nez v9, :cond_0

    .line 947
    iget-object v9, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v9}, Lcom/android/internal/widget/RecyclerView;->getScrollState()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 948
    const/4 v9, 0x0

    return v9

    .line 950
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->findSwipedView(Landroid/view/MotionEvent;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 951
    .local v6, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-nez v6, :cond_3

    .line 952
    const/4 v9, 0x0

    return v9

    .line 954
    :cond_3
    iget-object v9, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v10, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v9, v10, v6}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v4

    .line 956
    .local v4, "movementFlags":I
    const v9, 0xff00

    and-int/2addr v9, v4

    shr-int/lit8 v5, v9, 0x8

    .line 959
    .local v5, "swipeFlags":I
    if-nez v5, :cond_4

    .line 960
    const/4 v9, 0x0

    return v9

    .line 965
    :cond_4
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 966
    .local v7, "x":F
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 969
    .local v8, "y":F
    iget v9, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float v2, v7, v9

    .line 970
    .local v2, "dx":F
    iget v9, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float v3, v8, v9

    .line 973
    .local v3, "dy":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 974
    .local v0, "absDx":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 976
    .local v1, "absDy":F
    iget v9, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v9, v9

    cmpg-float v9, v0, v9

    if-gez v9, :cond_5

    iget v9, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v9, v9

    cmpg-float v9, v1, v9

    if-gez v9, :cond_5

    .line 977
    const/4 v9, 0x0

    return v9

    .line 979
    :cond_5
    cmpl-float v9, v0, v1

    if-lez v9, :cond_7

    .line 980
    const/4 v9, 0x0

    cmpg-float v9, v2, v9

    if-gez v9, :cond_6

    and-int/lit8 v9, v5, 0x4

    if-nez v9, :cond_6

    .line 981
    const/4 v9, 0x0

    return v9

    .line 983
    :cond_6
    const/4 v9, 0x0

    cmpl-float v9, v2, v9

    if-lez v9, :cond_9

    and-int/lit8 v9, v5, 0x8

    if-nez v9, :cond_9

    .line 984
    const/4 v9, 0x0

    return v9

    .line 987
    :cond_7
    const/4 v9, 0x0

    cmpg-float v9, v3, v9

    if-gez v9, :cond_8

    and-int/lit8 v9, v5, 0x1

    if-nez v9, :cond_8

    .line 988
    const/4 v9, 0x0

    return v9

    .line 990
    :cond_8
    const/4 v9, 0x0

    cmpl-float v9, v3, v9

    if-lez v9, :cond_9

    and-int/lit8 v9, v5, 0x2

    if-nez v9, :cond_9

    .line 991
    const/4 v9, 0x0

    return v9

    .line 994
    :cond_9
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 995
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 996
    const/4 v9, 0x1

    invoke-virtual {p0, v6, v9}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 997
    const/4 v9, 0x1

    return v9
.end method

.method endRecoverAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)I
    .locals 5
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "override"    # Z

    .prologue
    const/4 v4, 0x0

    .line 878
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 879
    .local v2, "recoverAnimSize":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 880
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 881
    .local v0, "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v3, v0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-ne v3, p1, :cond_1

    .line 882
    iget-boolean v3, v0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    or-int/2addr v3, p2

    iput-boolean v3, v0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 883
    iget-boolean v3, v0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v3, :cond_0

    .line 884
    invoke-virtual {v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->cancel()V

    .line 886
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 887
    iget v3, v0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mAnimationType:I

    return v3

    .line 879
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 890
    .end local v0    # "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    :cond_2
    return v4
.end method

.method findAnimation(Landroid/view/MotionEvent;)Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 1117
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1118
    return-object v4

    .line 1120
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v2

    .line 1121
    .local v2, "target":Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1122
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1123
    .local v0, "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v3, v0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v3, v2, :cond_1

    .line 1124
    return-object v0

    .line 1121
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1127
    .end local v0    # "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    :cond_2
    return-object v4
.end method

.method findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1002
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1003
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1004
    .local v5, "y":F
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v6, :cond_0

    .line 1005
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v2, v6, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1006
    .local v2, "selectedView":Landroid/view/View;
    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v8, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v7, v8

    invoke-static {v2, v4, v5, v6, v7}, Lcom/android/internal/widget/helper/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1007
    return-object v2

    .line 1010
    .end local v2    # "selectedView":Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1011
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1012
    .local v0, "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v3, v6, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1013
    .local v3, "view":Landroid/view/View;
    iget v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v7, v0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/internal/widget/helper/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1014
    return-object v3

    .line 1010
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1017
    .end local v0    # "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v6, v4, v5}, Lcom/android/internal/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v6

    return-object v6
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p4, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .prologue
    .line 896
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 897
    return-void
.end method

.method hasRunningRecoverAnim()Z
    .locals 3

    .prologue
    .line 690
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 691
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 692
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-boolean v2, v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v2, :cond_0

    .line 693
    const/4 v2, 0x1

    return v2

    .line 691
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 696
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method moveIfNecessary(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 10
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    return-void

    .line 821
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 822
    return-void

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getMoveThreshold(Lcom/android/internal/widget/RecyclerView$ViewHolder;)F

    move-result v9

    .line 826
    .local v9, "threshold":F
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v0, v1

    float-to-int v6, v0

    .line 827
    .local v6, "x":I
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v0, v1

    float-to-int v7, v0

    .line 828
    .local v7, "y":I
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, v7, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 829
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    .line 830
    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    .line 829
    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 831
    return-void

    .line 833
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->findSwapTargets(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Ljava/util/List;

    move-result-object v8

    .line 834
    .local v8, "swapTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 835
    return-void

    .line 838
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v0, p1, v8, v6, v7}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->chooseDropTarget(Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 839
    .local v4, "target":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-nez v4, :cond_4

    .line 840
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 841
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 842
    return-void

    .line 844
    :cond_4
    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    .line 845
    .local v5, "toPosition":I
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    .line 846
    .local v3, "fromPosition":I
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v1, p1, v4}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onMove(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 848
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onMoved(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILcom/android/internal/widget/RecyclerView$ViewHolder;III)V

    .line 851
    :cond_5
    return-void
.end method

.method obtainVelocityTracker()V
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 903
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 904
    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 855
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 859
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 860
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 861
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-nez v0, :cond_0

    .line 862
    return-void

    .line 864
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-ne v0, v1, :cond_2

    .line 865
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 872
    :cond_1
    :goto_0
    return-void

    .line 867
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/widget/helper/ItemTouchHelper;->endRecoverAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)I

    .line 868
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 869
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->clearView(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p3, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .prologue
    .line 528
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 529
    const/4 v6, 0x0

    .local v6, "dx":F
    const/4 v7, 0x0

    .line 530
    .local v7, "dy":F
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 532
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x0

    aget v6, v0, v1

    .line 533
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x1

    aget v7, v0, v1

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 536
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    move-object v1, p1

    move-object v2, p2

    .line 535
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 537
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p3, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .prologue
    .line 515
    const/4 v6, 0x0

    .local v6, "dx":F
    const/4 v7, 0x0

    .line 516
    .local v7, "dy":F
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 518
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x0

    aget v6, v0, v1

    .line 519
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x1

    aget v7, v0, v1

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 522
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    move-object v1, p1

    move-object v2, p2

    .line 521
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 523
    return-void
.end method

.method postDispatchSwipe(Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;I)V
    .locals 2
    .param p1, "anim"    # Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    .param p2, "swipeDir"    # I

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    new-instance v1, Lcom/android/internal/widget/helper/ItemTouchHelper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper$4;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 687
    return-void
.end method

.method removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1277
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1278
    iput-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 1280
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v0, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setChildDrawingOrderCallback(Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;)V

    .line 1284
    :cond_0
    return-void
.end method

.method scrollIfNecessary()Z
    .locals 27

    .prologue
    .line 703
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-nez v5, :cond_0

    .line 704
    const-wide/high16 v6, -0x8000000000000000L

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 705
    const/4 v5, 0x0

    return v5

    .line 707
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 708
    .local v24, "now":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 709
    const-wide/high16 v14, -0x8000000000000000L

    .line 708
    cmp-long v5, v6, v14

    if-nez v5, :cond_8

    .line 709
    const-wide/16 v10, 0x0

    .line 710
    .local v10, "scrollDuration":J
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v22

    .line 711
    .local v22, "lm":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    if-nez v5, :cond_1

    .line 712
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 714
    :cond_1
    const/4 v8, 0x0

    .line 715
    .local v8, "scrollX":I
    const/16 v16, 0x0

    .line 716
    .local v16, "scrollY":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 717
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 718
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v5, v6

    float-to-int v12, v5

    .line 719
    .local v12, "curX":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v5, v12, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v6

    sub-int v21, v5, v6

    .line 720
    .local v21, "leftDiff":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_9

    if-gez v21, :cond_9

    .line 721
    move/from16 v8, v21

    .line 731
    .end local v12    # "curX":I
    .end local v21    # "leftDiff":I
    :cond_2
    :goto_1
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 732
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v20, v0

    .line 733
    .local v20, "curY":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v5, v20, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v6

    sub-int v26, v5, v6

    .line 734
    .local v26, "topDiff":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a

    if-gez v26, :cond_a

    .line 735
    move/from16 v16, v26

    .line 744
    .end local v20    # "curY":I
    .end local v26    # "topDiff":I
    :cond_3
    :goto_2
    if-eqz v8, :cond_4

    .line 745
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 746
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v7, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 747
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v9}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v9

    .line 745
    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Lcom/android/internal/widget/RecyclerView;IIIJ)I

    move-result v8

    .line 749
    :cond_4
    if-eqz v16, :cond_5

    .line 750
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 751
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v15

    .line 752
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v17

    move-wide/from16 v18, v10

    .line 750
    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Lcom/android/internal/widget/RecyclerView;IIIJ)I

    move-result v16

    .line 754
    :cond_5
    if-nez v8, :cond_6

    if-eqz v16, :cond_b

    .line 755
    :cond_6
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v5, v6, v14

    if-nez v5, :cond_7

    .line 756
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 758
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    move/from16 v0, v16

    invoke-virtual {v5, v8, v0}, Lcom/android/internal/widget/RecyclerView;->scrollBy(II)V

    .line 759
    const/4 v5, 0x1

    return v5

    .line 709
    .end local v8    # "scrollX":I
    .end local v10    # "scrollDuration":J
    .end local v16    # "scrollY":I
    .end local v22    # "lm":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    :cond_8
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    sub-long v10, v24, v6

    .restart local v10    # "scrollDuration":J
    goto/16 :goto_0

    .line 722
    .restart local v8    # "scrollX":I
    .restart local v12    # "curX":I
    .restart local v16    # "scrollY":I
    .restart local v21    # "leftDiff":I
    .restart local v22    # "lm":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    :cond_9
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 724
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    .line 725
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 724
    sub-int v23, v5, v6

    .line 726
    .local v23, "rightDiff":I
    if-lez v23, :cond_2

    .line 727
    move/from16 v8, v23

    goto/16 :goto_1

    .line 736
    .end local v12    # "curX":I
    .end local v21    # "leftDiff":I
    .end local v23    # "rightDiff":I
    .restart local v20    # "curY":I
    .restart local v26    # "topDiff":I
    :cond_a
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 737
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int v5, v5, v20

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    .line 738
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    .line 737
    sub-int v4, v5, v6

    .line 739
    .local v4, "bottomDiff":I
    if-lez v4, :cond_3

    .line 740
    move/from16 v16, v4

    goto/16 :goto_2

    .line 761
    .end local v4    # "bottomDiff":I
    .end local v20    # "curY":I
    .end local v26    # "topDiff":I
    :cond_b
    const-wide/high16 v6, -0x8000000000000000L

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 762
    const/4 v5, 0x0

    return v5
.end method

.method select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .locals 24
    .param p1, "selected"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .prologue
    .line 547
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    move/from16 v0, p2

    if-ne v0, v5, :cond_0

    .line 548
    return-void

    .line 550
    :cond_0
    const-wide/high16 v22, -0x8000000000000000L

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 551
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    .line 553
    .local v9, "prevActionState":I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/widget/helper/ItemTouchHelper;->endRecoverAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)I

    .line 554
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    .line 555
    const/4 v5, 0x2

    move/from16 v0, p2

    if-ne v0, v5, :cond_1

    .line 559
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 560
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->addChildDrawingOrderCallback()V

    .line 562
    :cond_1
    mul-int/lit8 v5, p2, 0x8

    add-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    shl-int v5, v6, v5

    add-int/lit8 v16, v5, -0x1

    .line 564
    .local v16, "actionStateMask":I
    const/16 v17, 0x0

    .line 566
    .local v17, "preventLayout":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v5, :cond_2

    .line 567
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 568
    .local v7, "prevSelected":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v5, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 569
    const/4 v5, 0x2

    if-ne v9, v5, :cond_6

    const/4 v14, 0x0

    .line 571
    .local v14, "swipeDir":I
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->releaseVelocityTracker()V

    .line 575
    sparse-switch v14, :sswitch_data_0

    .line 589
    const/4 v12, 0x0

    .line 590
    .local v12, "targetTranslateX":F
    const/4 v13, 0x0

    .line 592
    .local v13, "targetTranslateY":F
    :goto_1
    const/4 v5, 0x2

    if-ne v9, v5, :cond_7

    .line 593
    const/16 v8, 0x8

    .line 599
    .local v8, "animationType":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 600
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v6, 0x0

    aget v10, v5, v6

    .line 601
    .local v10, "currentTranslateX":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v6, 0x1

    aget v11, v5, v6

    .line 602
    .local v11, "currentTranslateY":F
    new-instance v4, Lcom/android/internal/widget/helper/ItemTouchHelper$3;

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object v15, v7

    invoke-direct/range {v4 .. v15}, Lcom/android/internal/widget/helper/ItemTouchHelper$3;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;Lcom/android/internal/widget/helper/ItemTouchHelper;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIFFFFILcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 631
    .local v4, "rv":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 632
    sub-float v15, v12, v10

    sub-float v21, v13, v11

    .line 631
    move/from16 v0, v21

    invoke-virtual {v5, v6, v8, v15, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getAnimationDuration(Lcom/android/internal/widget/RecyclerView;IFF)J

    move-result-wide v18

    .line 633
    .local v18, "duration":J
    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->setDuration(J)V

    .line 634
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    invoke-virtual {v4}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->start()V

    .line 636
    const/16 v17, 0x1

    .line 641
    .end local v4    # "rv":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    .end local v8    # "animationType":I
    .end local v10    # "currentTranslateX":F
    .end local v11    # "currentTranslateY":F
    .end local v12    # "targetTranslateX":F
    .end local v13    # "targetTranslateY":F
    .end local v14    # "swipeDir":I
    .end local v18    # "duration":J
    :goto_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 643
    .end local v7    # "prevSelected":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_2
    if-eqz p1, :cond_3

    .line 645
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v0, p1

    invoke-virtual {v5, v6, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v5

    and-int v5, v5, v16

    .line 646
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    mul-int/lit8 v6, v6, 0x8

    .line 645
    shr-int/2addr v5, v6

    .line 644
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    .line 647
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    .line 648
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    .line 649
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 651
    const/4 v5, 0x2

    move/from16 v0, p2

    if-ne v0, v5, :cond_3

    .line 652
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 655
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    .line 656
    .local v20, "rvParent":Landroid/view/ViewParent;
    if-eqz v20, :cond_4

    .line 657
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 659
    :cond_4
    if-nez v17, :cond_5

    .line 660
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 662
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    invoke-virtual {v5, v6, v15}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 663
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    .line 664
    return-void

    .line 570
    .end local v20    # "rvParent":Landroid/view/ViewParent;
    .restart local v7    # "prevSelected":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/widget/helper/ItemTouchHelper;->swipeIfNecessary(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v14

    .restart local v14    # "swipeDir":I
    goto/16 :goto_0

    .line 580
    :sswitch_0
    const/4 v13, 0x0

    .line 581
    .restart local v13    # "targetTranslateY":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v12, v5, v6

    .line 582
    .restart local v12    # "targetTranslateX":F
    goto/16 :goto_1

    .line 585
    .end local v12    # "targetTranslateX":F
    .end local v13    # "targetTranslateY":F
    :sswitch_1
    const/4 v12, 0x0

    .line 586
    .restart local v12    # "targetTranslateX":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v13, v5, v6

    .line 587
    .restart local v13    # "targetTranslateY":F
    goto/16 :goto_1

    .line 594
    :cond_7
    if-lez v14, :cond_8

    .line 595
    const/4 v8, 0x2

    .restart local v8    # "animationType":I
    goto/16 :goto_2

    .line 597
    .end local v8    # "animationType":I
    :cond_8
    const/4 v8, 0x4

    .restart local v8    # "animationType":I
    goto/16 :goto_2

    .line 638
    .end local v8    # "animationType":I
    .end local v12    # "targetTranslateX":F
    .end local v13    # "targetTranslateY":F
    .end local v14    # "swipeDir":I
    :cond_9
    iget-object v5, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->clearView(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    goto/16 :goto_3

    .line 657
    .end local v7    # "prevSelected":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .restart local v20    # "rvParent":Landroid/view/ViewParent;
    :cond_a
    const/4 v5, 0x0

    goto :goto_4

    .line 575
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public startDrag(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x0

    .line 1055
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->hasDragFlag(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1056
    const-string/jumbo v0, "ItemTouchHelper"

    const-string/jumbo v1, "Start drag has been called but dragging is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    return-void

    .line 1059
    :cond_0
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eq v0, v1, :cond_1

    .line 1060
    const-string/jumbo v0, "ItemTouchHelper"

    const-string/jumbo v1, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    return-void

    .line 1064
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1065
    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 1066
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 1067
    return-void
.end method

.method public startSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x0

    .line 1102
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->hasSwipeFlag(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1103
    const-string/jumbo v0, "ItemTouchHelper"

    const-string/jumbo v1, "Start swipe has been called but swiping is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    return-void

    .line 1106
    :cond_0
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eq v0, v1, :cond_1

    .line 1107
    const-string/jumbo v0, "ItemTouchHelper"

    const-string/jumbo v1, "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    return-void

    .line 1111
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1112
    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 1113
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 1114
    return-void
.end method

.method updateDxDy(Landroid/view/MotionEvent;II)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "directionFlags"    # I
    .param p3, "pointerIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 1131
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1132
    .local v0, "x":F
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1135
    .local v1, "y":F
    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float v2, v0, v2

    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 1136
    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float v2, v1, v2

    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    .line 1137
    and-int/lit8 v2, p2, 0x4

    if-nez v2, :cond_0

    .line 1138
    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 1140
    :cond_0
    and-int/lit8 v2, p2, 0x8

    if-nez v2, :cond_1

    .line 1141
    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 1143
    :cond_1
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_2

    .line 1144
    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    .line 1146
    :cond_2
    and-int/lit8 v2, p2, 0x2

    if-nez v2, :cond_3

    .line 1147
    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    .line 1149
    :cond_3
    return-void
.end method
