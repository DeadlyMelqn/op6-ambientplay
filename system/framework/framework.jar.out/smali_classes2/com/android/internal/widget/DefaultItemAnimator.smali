.class public Lcom/android/internal/widget/DefaultItemAnimator;
.super Lcom/android/internal/widget/SimpleItemAnimator;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;,
        Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static sDefaultInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/internal/widget/SimpleItemAnimator;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 39
    return-void
.end method

.method private animateRemoveImpl(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .prologue
    .line 200
    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 201
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 202
    .local v0, "animation":Landroid/view/ViewPropertyAnimator;
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 204
    new-instance v3, Lcom/android/internal/widget/DefaultItemAnimator$4;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/internal/widget/DefaultItemAnimator$4;-><init>(Lcom/android/internal/widget/DefaultItemAnimator;Lcom/android/internal/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 203
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 219
    return-void
.end method

.method private endChangeAnimation(Ljava/util/List;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p2, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;",
            ">;",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 401
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 402
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

    .line 403
    .local v0, "changeInfo":Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;
    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    iget-object v2, v0, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    .line 405
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 401
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 409
    .end local v0    # "changeInfo":Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;
    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;)V
    .locals 1
    .param p1, "changeInfo"    # Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

    .prologue
    .line 412
    iget-object v0, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    .line 415
    :cond_0
    iget-object v0, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    .line 418
    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 4
    .param p1, "changeInfo"    # Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;
    .param p2, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, "oldItem":Z
    iget-object v1, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-ne v1, p2, :cond_0

    .line 422
    iput-object v2, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 429
    :goto_0
    iget-object v1, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 430
    iget-object v1, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 431
    iget-object v1, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 432
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchChangeFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    .line 433
    const/4 v1, 0x1

    return v1

    .line 423
    :cond_0
    iget-object v1, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-ne v1, p2, :cond_1

    .line 424
    iput-object v2, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 425
    const/4 v0, 0x1

    goto :goto_0

    .line 427
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private resetAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .prologue
    .line 523
    sget-object v0, Lcom/android/internal/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_0

    .line 524
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 526
    :cond_0
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 527
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->endAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 528
    return-void
.end method


# virtual methods
.method public animateAdd(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->resetAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 224
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 225
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method animateAddImpl(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 6
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .prologue
    .line 230
    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 231
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 232
    .local v0, "animation":Landroid/view/ViewPropertyAnimator;
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getAddDuration()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 234
    new-instance v3, Lcom/android/internal/widget/DefaultItemAnimator$5;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/android/internal/widget/DefaultItemAnimator$5;-><init>(Lcom/android/internal/widget/DefaultItemAnimator;Lcom/android/internal/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 233
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 253
    return-void
.end method

.method public animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 13
    .param p1, "oldHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p3, "fromX"    # I
    .param p4, "fromY"    # I
    .param p5, "toX"    # I
    .param p6, "toY"    # I

    .prologue
    .line 322
    if-ne p1, p2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    .line 325
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/DefaultItemAnimator;->animateMove(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0

    .line 327
    :cond_0
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v10

    .line 328
    .local v10, "prevTranslationX":F
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v11

    .line 329
    .local v11, "prevTranslationY":F
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v9

    .line 330
    .local v9, "prevAlpha":F
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->resetAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 331
    sub-int v0, p5, p3

    int-to-float v0, v0

    sub-float/2addr v0, v10

    float-to-int v7, v0

    .line 332
    .local v7, "deltaX":I
    sub-int v0, p6, p4

    int-to-float v0, v0

    sub-float/2addr v0, v11

    float-to-int v8, v0

    .line 334
    .local v8, "deltaY":I
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 335
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 336
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    .line 337
    if-eqz p2, :cond_1

    .line 339
    invoke-direct {p0, p2}, Lcom/android/internal/widget/DefaultItemAnimator;->resetAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 340
    iget-object v0, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v1, v7

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 341
    iget-object v0, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v1, v8

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 342
    iget-object v0, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 344
    :cond_1
    iget-object v12, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;-><init>(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method animateChangeImpl(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;)V
    .locals 11
    .param p1, "changeInfo"    # Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

    .prologue
    const/4 v10, 0x0

    .line 349
    iget-object v0, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 350
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-nez v0, :cond_2

    const/4 v5, 0x0

    .line 351
    :goto_0
    iget-object v1, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 352
    .local v1, "newHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 353
    :goto_1
    if-eqz v5, :cond_0

    .line 354
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 355
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    .line 354
    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 356
    .local v4, "oldViewAnim":Landroid/view/ViewPropertyAnimator;
    iget-object v6, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    iget v6, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->toX:I

    iget v7, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 358
    iget v6, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->toY:I

    iget v7, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 359
    invoke-virtual {v4, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/android/internal/widget/DefaultItemAnimator$7;

    invoke-direct {v7, p0, p1, v4, v5}, Lcom/android/internal/widget/DefaultItemAnimator$7;-><init>(Lcom/android/internal/widget/DefaultItemAnimator;Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 377
    .end local v4    # "oldViewAnim":Landroid/view/ViewPropertyAnimator;
    :cond_0
    if-eqz v2, :cond_1

    .line 378
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 379
    .local v3, "newViewAnimation":Landroid/view/ViewPropertyAnimator;
    iget-object v6, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-virtual {v3, v10}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 381
    const/high16 v7, 0x3f800000    # 1.0f

    .line 380
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 381
    new-instance v7, Lcom/android/internal/widget/DefaultItemAnimator$8;

    invoke-direct {v7, p0, p1, v3, v2}, Lcom/android/internal/widget/DefaultItemAnimator$8;-><init>(Lcom/android/internal/widget/DefaultItemAnimator;Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 380
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 398
    .end local v3    # "newViewAnimation":Landroid/view/ViewPropertyAnimator;
    :cond_1
    return-void

    .line 350
    .end local v1    # "newHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_2
    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .local v5, "view":Landroid/view/View;
    goto :goto_0

    .line 352
    .end local v5    # "view":Landroid/view/View;
    .restart local v1    # "newHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_3
    const/4 v2, 0x0

    .local v2, "newView":Landroid/view/View;
    goto :goto_1
.end method

.method public animateMove(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 10
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    const/4 v2, 0x0

    .line 258
    iget-object v8, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 259
    .local v8, "view":Landroid/view/View;
    int-to-float v0, p2

    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 260
    int-to-float v0, p3

    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int p3, v0

    .line 261
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->resetAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 262
    sub-int v6, p4, p2

    .line 263
    .local v6, "deltaX":I
    sub-int v7, p5, p3

    .line 264
    .local v7, "deltaY":I
    if-nez v6, :cond_0

    if-nez v7, :cond_0

    .line 265
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 266
    return v2

    .line 268
    :cond_0
    if-eqz v6, :cond_1

    .line 269
    neg-int v0, v6

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 271
    :cond_1
    if-eqz v7, :cond_2

    .line 272
    neg-int v0, v7

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 274
    :cond_2
    iget-object v9, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;-><init>(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method animateMoveImpl(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)V
    .locals 8
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    const/4 v1, 0x0

    .line 279
    iget-object v4, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 280
    .local v4, "view":Landroid/view/View;
    sub-int v3, p4, p2

    .line 281
    .local v3, "deltaX":I
    sub-int v5, p5, p3

    .line 282
    .local v5, "deltaY":I
    if-eqz v3, :cond_0

    .line 283
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 285
    :cond_0
    if-eqz v5, :cond_1

    .line 286
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 291
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 292
    .local v6, "animation":Landroid/view/ViewPropertyAnimator;
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v0, Lcom/android/internal/widget/DefaultItemAnimator$6;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/DefaultItemAnimator$6;-><init>(Lcom/android/internal/widget/DefaultItemAnimator;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v7, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 317
    return-void
.end method

.method public animateRemove(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->resetAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 195
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method public canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 1
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 666
    .local p2, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/SimpleItemAnimator;->canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method cancelAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 642
    .local p1, "viewHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 643
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 642
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 645
    :cond_0
    return-void
.end method

.method dispatchFinishedWhenDone()V
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 554
    :cond_0
    return-void
.end method

.method public endAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 10
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 438
    iget-object v6, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 440
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 442
    iget-object v7, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 443
    iget-object v7, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;

    .line 444
    .local v4, "moveInfo":Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;
    iget-object v7, v4, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-ne v7, p1, :cond_0

    .line 445
    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 446
    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 447
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 448
    iget-object v7, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 442
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 451
    .end local v4    # "moveInfo":Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;
    :cond_1
    iget-object v7, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v7, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 452
    iget-object v7, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 453
    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    .line 454
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchRemoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 456
    :cond_2
    iget-object v7, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 457
    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    .line 458
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 461
    :cond_3
    iget-object v7, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_1
    if-ltz v2, :cond_5

    .line 462
    iget-object v7, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 463
    .local v1, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;>;"
    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 464
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 465
    iget-object v7, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 461
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 468
    .end local v1    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;>;"
    :cond_5
    iget-object v7, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_2
    if-ltz v2, :cond_8

    .line 469
    iget-object v7, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 470
    .local v5, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "j":I
    :goto_3
    if-ltz v3, :cond_6

    .line 471
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;

    .line 472
    .restart local v4    # "moveInfo":Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;
    iget-object v7, v4, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-ne v7, p1, :cond_7

    .line 473
    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 474
    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 475
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 476
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 477
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 478
    iget-object v7, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 468
    .end local v4    # "moveInfo":Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 470
    .restart local v4    # "moveInfo":Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 484
    .end local v3    # "j":I
    .end local v4    # "moveInfo":Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;
    .end local v5    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;>;"
    :cond_8
    iget-object v7, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_4
    if-ltz v2, :cond_a

    .line 485
    iget-object v7, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 486
    .local v0, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 487
    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    .line 488
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 489
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 490
    iget-object v7, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 484
    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 497
    .end local v0    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    :cond_a
    iget-object v7, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    .line 503
    iget-object v7, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    .line 509
    iget-object v7, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    .line 515
    iget-object v7, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    .line 519
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 520
    return-void
.end method

.method public endAnimations()V
    .locals 14

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    .line 558
    iget-object v11, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 559
    .local v2, "count":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 560
    iget-object v11, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;

    .line 561
    .local v4, "item":Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;
    iget-object v11, v4, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v10, v11, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 562
    .local v10, "view":Landroid/view/View;
    invoke-virtual {v10, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 563
    invoke-virtual {v10, v12}, Landroid/view/View;->setTranslationX(F)V

    .line 564
    iget-object v11, v4, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v11}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 565
    iget-object v11, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 559
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 567
    .end local v4    # "item":Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;
    .end local v10    # "view":Landroid/view/View;
    :cond_0
    iget-object v11, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 568
    add-int/lit8 v3, v2, -0x1

    :goto_1
    if-ltz v3, :cond_1

    .line 569
    iget-object v11, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 570
    .local v5, "item":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchRemoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 571
    iget-object v11, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 568
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 573
    .end local v5    # "item":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_1
    iget-object v11, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 574
    add-int/lit8 v3, v2, -0x1

    :goto_2
    if-ltz v3, :cond_2

    .line 575
    iget-object v11, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 576
    .restart local v5    # "item":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v11, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v13}, Landroid/view/View;->setAlpha(F)V

    .line 577
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 578
    iget-object v11, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 574
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 580
    .end local v5    # "item":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_2
    iget-object v11, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 581
    add-int/lit8 v3, v2, -0x1

    :goto_3
    if-ltz v3, :cond_3

    .line 582
    iget-object v11, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v11}, Lcom/android/internal/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 581
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 584
    :cond_3
    iget-object v11, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 585
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->isRunning()Z

    move-result v11

    if-nez v11, :cond_4

    .line 586
    return-void

    .line 589
    :cond_4
    iget-object v11, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 590
    .local v7, "listCount":I
    add-int/lit8 v3, v7, -0x1

    :goto_4
    if-ltz v3, :cond_7

    .line 591
    iget-object v11, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 592
    .local v9, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 593
    add-int/lit8 v6, v2, -0x1

    .local v6, "j":I
    :goto_5
    if-ltz v6, :cond_6

    .line 594
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;

    .line 595
    .local v8, "moveInfo":Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;
    iget-object v5, v8, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 596
    .restart local v5    # "item":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v10, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 597
    .restart local v10    # "view":Landroid/view/View;
    invoke-virtual {v10, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 598
    invoke-virtual {v10, v12}, Landroid/view/View;->setTranslationX(F)V

    .line 599
    iget-object v11, v8, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v11}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 600
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 601
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 602
    iget-object v11, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 593
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 590
    .end local v5    # "item":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v8    # "moveInfo":Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;
    .end local v10    # "view":Landroid/view/View;
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 606
    .end local v6    # "j":I
    .end local v9    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;>;"
    :cond_7
    iget-object v11, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 607
    add-int/lit8 v3, v7, -0x1

    :goto_6
    if-ltz v3, :cond_a

    .line 608
    iget-object v11, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 609
    .local v0, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 610
    add-int/lit8 v6, v2, -0x1

    .restart local v6    # "j":I
    :goto_7
    if-ltz v6, :cond_9

    .line 611
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 612
    .restart local v5    # "item":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v10, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 613
    .restart local v10    # "view":Landroid/view/View;
    invoke-virtual {v10, v13}, Landroid/view/View;->setAlpha(F)V

    .line 614
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 615
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 616
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 617
    iget-object v11, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 610
    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    .line 607
    .end local v5    # "item":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v10    # "view":Landroid/view/View;
    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 621
    .end local v0    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    .end local v6    # "j":I
    :cond_a
    iget-object v11, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 622
    add-int/lit8 v3, v7, -0x1

    :goto_8
    if-ltz v3, :cond_d

    .line 623
    iget-object v11, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 624
    .local v1, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 625
    add-int/lit8 v6, v2, -0x1

    .restart local v6    # "j":I
    :goto_9
    if-ltz v6, :cond_c

    .line 626
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v11}, Lcom/android/internal/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 627
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 628
    iget-object v11, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 625
    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    .line 622
    :cond_c
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 633
    .end local v1    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;>;"
    .end local v6    # "j":I
    :cond_d
    iget-object v11, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Lcom/android/internal/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 634
    iget-object v11, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Lcom/android/internal/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 635
    iget-object v11, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Lcom/android/internal/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 636
    iget-object v11, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Lcom/android/internal/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 638
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 639
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 532
    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 532
    if-nez v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 532
    if-nez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 532
    if-nez v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 532
    if-nez v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 532
    if-nez v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 532
    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 532
    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 532
    if-nez v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 532
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public runPendingAnimations()V
    .locals 28

    .prologue
    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    xor-int/lit8 v19, v25, 0x1

    .line 104
    .local v19, "removalsPending":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    xor-int/lit8 v18, v25, 0x1

    .line 105
    .local v18, "movesPending":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    xor-int/lit8 v11, v25, 0x1

    .line 106
    .local v11, "changesPending":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    xor-int/lit8 v6, v25, 0x1

    .line 107
    .local v6, "additionsPending":Z
    if-nez v19, :cond_0

    xor-int/lit8 v25, v18, 0x1

    if-eqz v25, :cond_0

    xor-int/lit8 v25, v6, 0x1

    if-eqz v25, :cond_0

    xor-int/lit8 v25, v11, 0x1

    if-eqz v25, :cond_0

    .line 109
    return-void

    .line 112
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "holder$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 113
    .local v12, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/widget/DefaultItemAnimator;->animateRemoveImpl(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 115
    .end local v12    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 117
    if-eqz v18, :cond_2

    .line 118
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v17, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 122
    new-instance v16, Lcom/android/internal/widget/DefaultItemAnimator$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/DefaultItemAnimator$1;-><init>(Lcom/android/internal/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 133
    .local v16, "mover":Ljava/lang/Runnable;
    if-eqz v19, :cond_6

    .line 134
    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v24, v0

    .line 135
    .local v24, "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 141
    .end local v16    # "mover":Ljava/lang/Runnable;
    .end local v17    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;>;"
    .end local v24    # "view":Landroid/view/View;
    :cond_2
    :goto_1
    if-eqz v11, :cond_3

    .line 142
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v10, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 146
    new-instance v7, Lcom/android/internal/widget/DefaultItemAnimator$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v10}, Lcom/android/internal/widget/DefaultItemAnimator$2;-><init>(Lcom/android/internal/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 156
    .local v7, "changer":Ljava/lang/Runnable;
    if-eqz v19, :cond_7

    .line 157
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

    move-object/from16 v0, v25

    iget-object v12, v0, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 158
    .restart local v12    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v0, v12, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v26

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-virtual {v0, v7, v1, v2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 164
    .end local v7    # "changer":Ljava/lang/Runnable;
    .end local v10    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;>;"
    .end local v12    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_3
    :goto_2
    if-eqz v6, :cond_5

    .line 165
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v5, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 169
    new-instance v4, Lcom/android/internal/widget/DefaultItemAnimator$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/internal/widget/DefaultItemAnimator$3;-><init>(Lcom/android/internal/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 179
    .local v4, "adder":Ljava/lang/Runnable;
    if-nez v19, :cond_4

    if-nez v18, :cond_4

    if-eqz v11, :cond_b

    .line 180
    :cond_4
    if-eqz v19, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v20

    .line 181
    .local v20, "removeDuration":J
    :goto_3
    if-eqz v18, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v14

    .line 182
    .local v14, "moveDuration":J
    :goto_4
    if-eqz v11, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    .line 183
    .local v8, "changeDuration":J
    :goto_5
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v26

    add-long v22, v20, v26

    .line 184
    .local v22, "totalDelay":J
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v24, v0

    .line 185
    .restart local v24    # "view":Landroid/view/View;
    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    invoke-virtual {v0, v4, v1, v2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 190
    .end local v4    # "adder":Ljava/lang/Runnable;
    .end local v5    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    .end local v8    # "changeDuration":J
    .end local v14    # "moveDuration":J
    .end local v20    # "removeDuration":J
    .end local v22    # "totalDelay":J
    .end local v24    # "view":Landroid/view/View;
    :cond_5
    :goto_6
    return-void

    .line 137
    .restart local v16    # "mover":Ljava/lang/Runnable;
    .restart local v17    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;>;"
    :cond_6
    invoke-interface/range {v16 .. v16}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_1

    .line 160
    .end local v16    # "mover":Ljava/lang/Runnable;
    .end local v17    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;>;"
    .restart local v7    # "changer":Ljava/lang/Runnable;
    .restart local v10    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;>;"
    :cond_7
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 180
    .end local v7    # "changer":Ljava/lang/Runnable;
    .end local v10    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;>;"
    .restart local v4    # "adder":Ljava/lang/Runnable;
    .restart local v5    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    :cond_8
    const-wide/16 v20, 0x0

    .restart local v20    # "removeDuration":J
    goto :goto_3

    .line 181
    :cond_9
    const-wide/16 v14, 0x0

    .restart local v14    # "moveDuration":J
    goto :goto_4

    .line 182
    :cond_a
    const-wide/16 v8, 0x0

    .restart local v8    # "changeDuration":J
    goto :goto_5

    .line 187
    .end local v8    # "changeDuration":J
    .end local v14    # "moveDuration":J
    .end local v20    # "removeDuration":J
    :cond_b
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_6
.end method
