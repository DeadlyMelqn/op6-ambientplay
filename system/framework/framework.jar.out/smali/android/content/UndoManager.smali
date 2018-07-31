.class public Landroid/content/UndoManager;
.super Ljava/lang/Object;
.source "UndoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/UndoManager$UndoState;
    }
.end annotation


# static fields
.field public static final MERGE_MODE_ANY:I = 0x2

.field public static final MERGE_MODE_NONE:I = 0x0

.field public static final MERGE_MODE_UNIQUE:I = 0x1


# instance fields
.field private mCommitId:I

.field private mHistorySize:I

.field private mInUndo:Z

.field private mMerged:Z

.field private mNextSavedIdx:I

.field private final mOwners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/UndoOwner;",
            ">;"
        }
    .end annotation
.end field

.field private final mRedos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UndoManager$UndoState;",
            ">;"
        }
    .end annotation
.end field

.field private mStateOwners:[Landroid/content/UndoOwner;

.field private mStateSeq:I

.field private final mUndos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UndoManager$UndoState;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateCount:I

.field private mWorking:Landroid/content/UndoManager$UndoState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 58
    iput-object v0, p0, Landroid/content/UndoManager;->mOwners:Landroid/util/ArrayMap;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    .line 63
    const/16 v0, 0x14

    iput v0, p0, Landroid/content/UndoManager;->mHistorySize:I

    .line 65
    iput v1, p0, Landroid/content/UndoManager;->mCommitId:I

    .line 56
    return-void
.end method

.method private createWorkingState()V
    .locals 3

    .prologue
    .line 422
    new-instance v0, Landroid/content/UndoManager$UndoState;

    iget v1, p0, Landroid/content/UndoManager;->mCommitId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/content/UndoManager;->mCommitId:I

    invoke-direct {v0, p0, v1}, Landroid/content/UndoManager$UndoState;-><init>(Landroid/content/UndoManager;I)V

    iput-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    .line 423
    iget v0, p0, Landroid/content/UndoManager;->mCommitId:I

    if-gez v0, :cond_0

    .line 424
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/UndoManager;->mCommitId:I

    .line 426
    :cond_0
    return-void
.end method

.method private pushWorkingState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 580
    iget-object v1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 582
    .local v0, "N":I
    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->hasData()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 583
    iget-object v1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    const/4 v1, -0x1

    invoke-virtual {p0, v3, v1}, Landroid/content/UndoManager;->forgetRedos([Landroid/content/UndoOwner;I)I

    .line 585
    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->commit()V

    .line 586
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 590
    iget-object v1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->makeExecuted()V

    .line 595
    :cond_0
    :goto_0
    iput-object v3, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    .line 597
    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    if-ltz v1, :cond_1

    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    if-le v0, v1, :cond_1

    .line 598
    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v3, v1}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    .line 600
    :cond_1
    return-void

    .line 593
    :cond_2
    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->destroy()V

    goto :goto_0
.end method


# virtual methods
.method public addOperation(Landroid/content/UndoOperation;I)V
    .locals 4
    .param p2, "mergeMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/UndoOperation",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .local p1, "op":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<*>;"
    const/4 v3, 0x0

    .line 543
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-nez v2, :cond_0

    .line 544
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Must be called during an update"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 546
    :cond_0
    invoke-virtual {p1}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    move-result-object v0

    .line 547
    .local v0, "owner":Landroid/content/UndoOwner;
    iget-object v2, v0, Landroid/content/UndoOwner;->mManager:Landroid/content/UndoManager;

    if-eq v2, p0, :cond_1

    .line 548
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 549
    const-string/jumbo v3, "Given operation\'s owner is not in this undo manager."

    .line 548
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 551
    :cond_1
    if-eqz p2, :cond_3

    iget-boolean v2, p0, Landroid/content/UndoManager;->mMerged:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->hasData()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 552
    invoke-virtual {p0, v3}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v1

    .line 553
    .local v1, "state":Landroid/content/UndoManager$UndoState;
    if-eqz v1, :cond_3

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->hasMultipleOwners()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 554
    :cond_2
    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->canMerge()Z

    move-result v2

    .line 553
    if-eqz v2, :cond_3

    .line 554
    invoke-virtual {p1}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    move-result v2

    .line 553
    if-eqz v2, :cond_3

    .line 555
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->destroy()V

    .line 556
    iput-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    .line 557
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 558
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/content/UndoManager;->mMerged:Z

    .line 561
    .end local v1    # "state":Landroid/content/UndoManager$UndoState;
    :cond_3
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2, p1}, Landroid/content/UndoManager$UndoState;->addOperation(Landroid/content/UndoOperation;)V

    .line 562
    return-void
.end method

.method public beginUpdate(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 408
    iget-boolean v0, p0, Landroid/content/UndoManager;->mInUndo:Z

    if-eqz v0, :cond_0

    .line 409
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t being update while performing undo/redo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_0
    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    if-gtz v0, :cond_1

    .line 412
    invoke-direct {p0}, Landroid/content/UndoManager;->createWorkingState()V

    .line 413
    iput-boolean v1, p0, Landroid/content/UndoManager;->mMerged:Z

    .line 414
    iput v1, p0, Landroid/content/UndoManager;->mUpdateCount:I

    .line 417
    :cond_1
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v0, p1}, Landroid/content/UndoManager$UndoState;->updateLabel(Ljava/lang/CharSequence;)V

    .line 418
    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    .line 419
    return-void
.end method

.method public commitState(Landroid/content/UndoOwner;)I
    .locals 5
    .param p1, "owner"    # Landroid/content/UndoOwner;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 617
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->hasData()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 618
    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2, p1}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 619
    :cond_0
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2, v4}, Landroid/content/UndoManager$UndoState;->setCanMerge(Z)Z

    .line 620
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->getCommitId()I

    move-result v0

    .line 621
    .local v0, "commitId":I
    invoke-direct {p0}, Landroid/content/UndoManager;->pushWorkingState()V

    .line 622
    invoke-direct {p0}, Landroid/content/UndoManager;->createWorkingState()V

    .line 623
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/content/UndoManager;->mMerged:Z

    .line 624
    return v0

    .line 627
    .end local v0    # "commitId":I
    :cond_1
    invoke-virtual {p0, v3}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v1

    .line 628
    .local v1, "state":Landroid/content/UndoManager$UndoState;
    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {v1, p1}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 629
    :cond_2
    invoke-virtual {v1, v4}, Landroid/content/UndoManager$UndoState;->setCanMerge(Z)Z

    .line 630
    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->getCommitId()I

    move-result v2

    return v2

    .line 633
    .end local v1    # "state":Landroid/content/UndoManager$UndoState;
    :cond_3
    const/4 v2, -0x1

    return v2
.end method

.method public countRedos([Landroid/content/UndoOwner;)I
    .locals 3
    .param p1, "owners"    # [Landroid/content/UndoOwner;

    .prologue
    .line 369
    if-nez p1, :cond_0

    .line 370
    iget-object v2, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    return v2

    .line 373
    :cond_0
    const/4 v0, 0x0

    .line 374
    .local v0, "count":I
    const/4 v1, 0x0

    .line 375
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, v1}, Landroid/content/UndoManager;->findNextState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 376
    add-int/lit8 v0, v0, 0x1

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    :cond_1
    return v0
.end method

.method public countUndos([Landroid/content/UndoOwner;)I
    .locals 3
    .param p1, "owners"    # [Landroid/content/UndoOwner;

    .prologue
    .line 350
    if-nez p1, :cond_0

    .line 351
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    return v2

    .line 354
    :cond_0
    const/4 v0, 0x0

    .line 355
    .local v0, "count":I
    const/4 v1, 0x0

    .line 356
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, v1}, Landroid/content/UndoManager;->findNextState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 357
    add-int/lit8 v0, v0, 0x1

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    :cond_1
    return v0
.end method

.method public endUpdate()V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-nez v0, :cond_0

    .line 570
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called during an update"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_0
    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    .line 574
    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    if-nez v0, :cond_1

    .line 575
    invoke-direct {p0}, Landroid/content/UndoManager;->pushWorkingState()V

    .line 577
    :cond_1
    return-void
.end method

.method findNextState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I
    .locals 4
    .param p2, "owners"    # [Landroid/content/UndoOwner;
    .param p3, "from"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UndoManager$UndoState;",
            ">;[",
            "Landroid/content/UndoOwner;",
            "I)I"
        }
    .end annotation

    .prologue
    .local p1, "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UndoManager$UndoState;>;"
    const/4 v3, -0x1

    .line 714
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 716
    .local v0, "N":I
    if-gez p3, :cond_0

    .line 717
    const/4 p3, 0x0

    .line 719
    :cond_0
    if-lt p3, v0, :cond_1

    .line 720
    return v3

    .line 722
    :cond_1
    if-nez p2, :cond_3

    .line 723
    return p3

    .line 731
    .local v1, "state":Landroid/content/UndoManager$UndoState;
    :cond_2
    add-int/lit8 p3, p3, 0x1

    .line 726
    .end local v1    # "state":Landroid/content/UndoManager$UndoState;
    :cond_3
    if-ge p3, v0, :cond_4

    .line 727
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoManager$UndoState;

    .line 728
    .restart local v1    # "state":Landroid/content/UndoManager$UndoState;
    invoke-virtual {p0, v1, p2}, Landroid/content/UndoManager;->matchOwners(Landroid/content/UndoManager$UndoState;[Landroid/content/UndoOwner;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 729
    return p3

    .line 734
    .end local v1    # "state":Landroid/content/UndoManager$UndoState;
    :cond_4
    return v3
.end method

.method findPrevState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I
    .locals 4
    .param p2, "owners"    # [Landroid/content/UndoOwner;
    .param p3, "from"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UndoManager$UndoState;",
            ">;[",
            "Landroid/content/UndoOwner;",
            "I)I"
        }
    .end annotation

    .prologue
    .local p1, "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UndoManager$UndoState;>;"
    const/4 v3, -0x1

    .line 690
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 692
    .local v0, "N":I
    if-ne p3, v3, :cond_0

    .line 693
    add-int/lit8 p3, v0, -0x1

    .line 695
    :cond_0
    if-lt p3, v0, :cond_1

    .line 696
    return v3

    .line 698
    :cond_1
    if-nez p2, :cond_3

    .line 699
    return p3

    .line 707
    .local v1, "state":Landroid/content/UndoManager$UndoState;
    :cond_2
    add-int/lit8 p3, p3, -0x1

    .line 702
    .end local v1    # "state":Landroid/content/UndoManager$UndoState;
    :cond_3
    if-ltz p3, :cond_4

    .line 703
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoManager$UndoState;

    .line 704
    .restart local v1    # "state":Landroid/content/UndoManager$UndoState;
    invoke-virtual {p0, v1, p2}, Landroid/content/UndoManager;->matchOwners(Landroid/content/UndoManager$UndoState;[Landroid/content/UndoOwner;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 705
    return p3

    .line 710
    .end local v1    # "state":Landroid/content/UndoManager$UndoState;
    :cond_4
    return v3
.end method

.method public forgetRedos([Landroid/content/UndoOwner;I)I
    .locals 4
    .param p1, "owners"    # [Landroid/content/UndoOwner;
    .param p2, "count"    # I

    .prologue
    .line 324
    if-gez p2, :cond_0

    .line 325
    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 328
    :cond_0
    const/4 v1, 0x0

    .line 329
    .local v1, "removed":I
    const/4 v0, 0x0

    .line 330
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    if-ge v1, p2, :cond_2

    .line 331
    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoManager$UndoState;

    .line 332
    .local v2, "state":Landroid/content/UndoManager$UndoState;
    if-lez p2, :cond_1

    invoke-virtual {p0, v2, p1}, Landroid/content/UndoManager;->matchOwners(Landroid/content/UndoManager$UndoState;[Landroid/content/UndoOwner;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 333
    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->destroy()V

    .line 334
    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    .end local v2    # "state":Landroid/content/UndoManager$UndoState;
    :cond_2
    return v1
.end method

.method public forgetUndos([Landroid/content/UndoOwner;I)I
    .locals 4
    .param p1, "owners"    # [Landroid/content/UndoOwner;
    .param p2, "count"    # I

    .prologue
    .line 303
    if-gez p2, :cond_0

    .line 304
    iget-object v3, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 307
    :cond_0
    const/4 v1, 0x0

    .line 308
    .local v1, "removed":I
    const/4 v0, 0x0

    .line 309
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    if-ge v1, p2, :cond_2

    .line 310
    iget-object v3, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoManager$UndoState;

    .line 311
    .local v2, "state":Landroid/content/UndoManager$UndoState;
    if-lez p2, :cond_1

    invoke-virtual {p0, v2, p1}, Landroid/content/UndoManager;->matchOwners(Landroid/content/UndoManager$UndoState;[Landroid/content/UndoOwner;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 312
    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->destroy()V

    .line 313
    iget-object v3, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    .end local v2    # "state":Landroid/content/UndoManager$UndoState;
    :cond_2
    return v1
.end method

.method public getHistorySize()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Landroid/content/UndoManager;->mHistorySize:I

    return v0
.end method

.method public getLastOperation(I)Landroid/content/UndoOperation;
    .locals 1
    .param p1, "mergeMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/UndoOperation",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 485
    invoke-virtual {p0, v0, v0, p1}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    move-result-object v0

    return-object v0
.end method

.method public getLastOperation(Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;
    .locals 1
    .param p1, "owner"    # Landroid/content/UndoOwner;
    .param p2, "mergeMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/UndoOwner;",
            "I)",
            "Landroid/content/UndoOperation",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 498
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    move-result-object v0

    return-object v0
.end method

.method public getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;
    .locals 4
    .param p2, "owner"    # Landroid/content/UndoOwner;
    .param p3, "mergeMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/UndoOperation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/UndoOwner;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 515
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-nez v2, :cond_0

    .line 516
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Must be called during an update"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 518
    :cond_0
    if-eqz p3, :cond_2

    iget-boolean v2, p0, Landroid/content/UndoManager;->mMerged:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->hasData()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 519
    invoke-virtual {p0, v3}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v1

    .line 521
    .local v1, "state":Landroid/content/UndoManager$UndoState;
    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-eq p3, v2, :cond_1

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->hasMultipleOwners()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 522
    :cond_1
    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->canMerge()Z

    move-result v2

    .line 521
    if-eqz v2, :cond_2

    .line 522
    invoke-virtual {v1, p1, p2}, Landroid/content/UndoManager$UndoState;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;)Landroid/content/UndoOperation;

    move-result-object v0

    .local v0, "last":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<*>;"
    if-eqz v0, :cond_2

    .line 523
    invoke-virtual {v0}, Landroid/content/UndoOperation;->allowMerge()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 524
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->destroy()V

    .line 525
    iput-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    .line 526
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 527
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/content/UndoManager;->mMerged:Z

    .line 528
    return-object v0

    .line 533
    .end local v0    # "last":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<*>;"
    .end local v1    # "state":Landroid/content/UndoManager$UndoState;
    :cond_2
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2, p1, p2}, Landroid/content/UndoManager$UndoState;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;)Landroid/content/UndoOperation;

    move-result-object v2

    return-object v2
.end method

.method public getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "tag can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_0
    if-nez p2, :cond_1

    .line 94
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "data can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_1
    iget-object v1, p0, Landroid/content/UndoManager;->mOwners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/UndoOwner;

    .line 97
    .local v0, "owner":Landroid/content/UndoOwner;
    if-eqz v0, :cond_4

    .line 98
    iget-object v1, v0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    if-eq v1, p2, :cond_3

    .line 99
    iget-object v1, v0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 100
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Owner "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " already exists with data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 101
    iget-object v3, v0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 101
    const-string/jumbo v3, " but giving different data "

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_2
    iput-object p2, v0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    .line 105
    :cond_3
    return-object v0

    .line 108
    :cond_4
    new-instance v0, Landroid/content/UndoOwner;

    .end local v0    # "owner":Landroid/content/UndoOwner;
    invoke-direct {v0, p1, p0}, Landroid/content/UndoOwner;-><init>(Ljava/lang/String;Landroid/content/UndoManager;)V

    .line 109
    .restart local v0    # "owner":Landroid/content/UndoOwner;
    iput-object p2, v0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    .line 110
    iget-object v1, p0, Landroid/content/UndoManager;->mOwners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-object v0
.end method

.method public getRedoLabel([Landroid/content/UndoOwner;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "owners"    # [Landroid/content/UndoOwner;

    .prologue
    const/4 v1, 0x0

    .line 398
    invoke-virtual {p0, p1}, Landroid/content/UndoManager;->getTopRedo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v0

    .line 399
    .local v0, "state":Landroid/content/UndoManager$UndoState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/UndoManager$UndoState;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method getTopRedo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;
    .locals 4
    .param p1, "owners"    # [Landroid/content/UndoOwner;

    .prologue
    const/4 v1, 0x0

    .line 670
    iget-object v2, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 671
    return-object v1

    .line 673
    :cond_0
    iget-object v2, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    const/4 v3, -0x1

    invoke-virtual {p0, v2, p1, v3}, Landroid/content/UndoManager;->findPrevState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    move-result v0

    .line 674
    .local v0, "i":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoManager$UndoState;

    :cond_1
    return-object v1
.end method

.method getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;
    .locals 4
    .param p1, "owners"    # [Landroid/content/UndoOwner;

    .prologue
    const/4 v1, 0x0

    .line 662
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 663
    return-object v1

    .line 665
    :cond_0
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    const/4 v3, -0x1

    invoke-virtual {p0, v2, p1, v3}, Landroid/content/UndoManager;->findPrevState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    move-result v0

    .line 666
    .local v0, "i":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoManager$UndoState;

    :cond_1
    return-object v1
.end method

.method public getUndoLabel([Landroid/content/UndoOwner;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "owners"    # [Landroid/content/UndoOwner;

    .prologue
    const/4 v1, 0x0

    .line 388
    invoke-virtual {p0, p1}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v0

    .line 389
    .local v0, "state":Landroid/content/UndoManager$UndoState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/UndoManager$UndoState;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getUpdateNestingLevel()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    return v0
.end method

.method public hasOperation(Landroid/content/UndoOwner;)Z
    .locals 2
    .param p1, "owner"    # Landroid/content/UndoOwner;

    .prologue
    .line 474
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-nez v0, :cond_0

    .line 475
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called during an update"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_0
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v0, p1}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    move-result v0

    return v0
.end method

.method public isInUndo()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Landroid/content/UndoManager;->mInUndo:Z

    return v0
.end method

.method public isInUpdate()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 432
    iget v1, p0, Landroid/content/UndoManager;->mUpdateCount:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method matchOwners(Landroid/content/UndoManager$UndoState;[Landroid/content/UndoOwner;)Z
    .locals 3
    .param p1, "state"    # Landroid/content/UndoManager$UndoState;
    .param p2, "owners"    # [Landroid/content/UndoOwner;

    .prologue
    const/4 v2, 0x1

    .line 678
    if-nez p2, :cond_0

    .line 679
    return v2

    .line 681
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 682
    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Landroid/content/UndoManager$UndoState;->matchOwner(Landroid/content/UndoOwner;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 683
    return v2

    .line 681
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 686
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public redo([Landroid/content/UndoOwner;I)I
    .locals 5
    .param p1, "owners"    # [Landroid/content/UndoOwner;
    .param p2, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 271
    iget-object v3, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-eqz v3, :cond_0

    .line 272
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Can\'t be called during an update"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 275
    :cond_0
    const/4 v1, 0x0

    .line 276
    .local v1, "num":I
    const/4 v0, -0x1

    .line 278
    .local v0, "i":I
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/content/UndoManager;->mInUndo:Z

    .line 280
    :goto_0
    if-lez p2, :cond_1

    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, p1, v0}, Landroid/content/UndoManager;->findPrevState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 281
    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoManager$UndoState;

    .line 282
    .local v2, "state":Landroid/content/UndoManager$UndoState;
    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->redo()V

    .line 283
    iget-object v3, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    add-int/lit8 p2, p2, -0x1

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    .end local v2    # "state":Landroid/content/UndoManager$UndoState;
    :cond_1
    iput-boolean v4, p0, Landroid/content/UndoManager;->mInUndo:Z

    .line 290
    return v1
.end method

.method removeOwner(Landroid/content/UndoOwner;)V
    .locals 0
    .param p1, "owner"    # Landroid/content/UndoOwner;

    .prologue
    .line 119
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 174
    iget v2, p0, Landroid/content/UndoManager;->mUpdateCount:I

    if-lez v2, :cond_0

    .line 175
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Can\'t save state while updating"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_0
    invoke-virtual {p0, v5, v4}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    .line 178
    invoke-virtual {p0, v5, v4}, Landroid/content/UndoManager;->forgetRedos([Landroid/content/UndoOwner;I)I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/UndoManager;->mHistorySize:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-array v2, v2, [Landroid/content/UndoOwner;

    iput-object v2, p0, Landroid/content/UndoManager;->mStateOwners:[Landroid/content/UndoOwner;

    .line 183
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "stype":I
    if-eqz v0, :cond_2

    .line 184
    new-instance v1, Landroid/content/UndoManager$UndoState;

    invoke-direct {v1, p0, p1, p2}, Landroid/content/UndoManager$UndoState;-><init>(Landroid/content/UndoManager;Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 185
    .local v1, "ustate":Landroid/content/UndoManager$UndoState;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 186
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v2, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 191
    .end local v1    # "ustate":Landroid/content/UndoManager$UndoState;
    :cond_2
    return-void
.end method

.method restoreOwner(Landroid/os/Parcel;)Landroid/content/UndoOwner;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 195
    .local v0, "idx":I
    iget-object v4, p0, Landroid/content/UndoManager;->mStateOwners:[Landroid/content/UndoOwner;

    aget-object v2, v4, v0

    .line 196
    .local v2, "owner":Landroid/content/UndoOwner;
    if-nez v2, :cond_0

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 199
    .local v1, "opCount":I
    new-instance v2, Landroid/content/UndoOwner;

    .end local v2    # "owner":Landroid/content/UndoOwner;
    invoke-direct {v2, v3, p0}, Landroid/content/UndoOwner;-><init>(Ljava/lang/String;Landroid/content/UndoManager;)V

    .line 200
    .restart local v2    # "owner":Landroid/content/UndoOwner;
    iput v1, v2, Landroid/content/UndoOwner;->mOpCount:I

    .line 201
    iget-object v4, p0, Landroid/content/UndoManager;->mStateOwners:[Landroid/content/UndoOwner;

    aput-object v2, v4, v0

    .line 202
    iget-object v4, p0, Landroid/content/UndoManager;->mOwners:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .end local v1    # "opCount":I
    .end local v3    # "tag":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public saveInstanceState(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 126
    iget v1, p0, Landroid/content/UndoManager;->mUpdateCount:I

    if-lez v1, :cond_0

    .line 127
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can\'t save state while updating"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_0
    iget v1, p0, Landroid/content/UndoManager;->mStateSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/content/UndoManager;->mStateSeq:I

    .line 130
    iget v1, p0, Landroid/content/UndoManager;->mStateSeq:I

    if-gtz v1, :cond_1

    .line 131
    iput v2, p0, Landroid/content/UndoManager;->mStateSeq:I

    .line 133
    :cond_1
    iput v2, p0, Landroid/content/UndoManager;->mNextSavedIdx:I

    .line 134
    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object v1, p0, Landroid/content/UndoManager;->mOwners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 139
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_2

    .line 140
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    add-int/lit8 v0, v0, -0x1

    .line 142
    iget-object v1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1, p1}, Landroid/content/UndoManager$UndoState;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v1, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 145
    :goto_1
    if-lez v0, :cond_3

    .line 146
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    add-int/lit8 v0, v0, -0x1

    .line 148
    iget-object v1, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1, p1}, Landroid/content/UndoManager$UndoState;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_1

    .line 150
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    return-void
.end method

.method saveOwner(Landroid/content/UndoOwner;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "owner"    # Landroid/content/UndoOwner;
    .param p2, "out"    # Landroid/os/Parcel;

    .prologue
    .line 154
    iget v0, p1, Landroid/content/UndoOwner;->mStateSeq:I

    iget v1, p0, Landroid/content/UndoManager;->mStateSeq:I

    if-ne v0, v1, :cond_0

    .line 155
    iget v0, p1, Landroid/content/UndoOwner;->mSavedIdx:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    :goto_0
    return-void

    .line 157
    :cond_0
    iget v0, p0, Landroid/content/UndoManager;->mStateSeq:I

    iput v0, p1, Landroid/content/UndoOwner;->mStateSeq:I

    .line 158
    iget v0, p0, Landroid/content/UndoManager;->mNextSavedIdx:I

    iput v0, p1, Landroid/content/UndoOwner;->mSavedIdx:I

    .line 159
    iget v0, p1, Landroid/content/UndoOwner;->mSavedIdx:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object v0, p1, Landroid/content/UndoOwner;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget v0, p1, Landroid/content/UndoOwner;->mOpCount:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Landroid/content/UndoManager;->mNextSavedIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/UndoManager;->mNextSavedIdx:I

    goto :goto_0
.end method

.method public setHistorySize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 211
    iput p1, p0, Landroid/content/UndoManager;->mHistorySize:I

    .line 212
    iget v0, p0, Landroid/content/UndoManager;->mHistorySize:I

    if-ltz v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/content/UndoManager;->countUndos([Landroid/content/UndoOwner;)I

    move-result v0

    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    if-le v0, v1, :cond_0

    .line 213
    invoke-virtual {p0, v2}, Landroid/content/UndoManager;->countUndos([Landroid/content/UndoOwner;)I

    move-result v0

    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    .line 215
    :cond_0
    return-void
.end method

.method public setUndoLabel(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 440
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called during an update"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_0
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v0, p1}, Landroid/content/UndoManager$UndoState;->setLabel(Ljava/lang/CharSequence;)V

    .line 444
    return-void
.end method

.method public suggestUndoLabel(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 451
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-nez v0, :cond_0

    .line 452
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called during an update"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_0
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v0, p1}, Landroid/content/UndoManager$UndoState;->updateLabel(Ljava/lang/CharSequence;)V

    .line 455
    return-void
.end method

.method public uncommitState(ILandroid/content/UndoOwner;)Z
    .locals 4
    .param p1, "commitId"    # I
    .param p2, "owner"    # Landroid/content/UndoOwner;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 646
    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->getCommitId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 647
    if-eqz p2, :cond_0

    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1, p2}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 648
    :cond_0
    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1, v3}, Landroid/content/UndoManager$UndoState;->setCanMerge(Z)Z

    move-result v1

    return v1

    .line 651
    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v0

    .line 652
    .local v0, "state":Landroid/content/UndoManager$UndoState;
    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 653
    :cond_2
    invoke-virtual {v0}, Landroid/content/UndoManager$UndoState;->getCommitId()I

    move-result v1

    if-ne v1, p1, :cond_3

    .line 654
    invoke-virtual {v0, v3}, Landroid/content/UndoManager$UndoState;->setCanMerge(Z)Z

    move-result v1

    return v1

    .line 658
    .end local v0    # "state":Landroid/content/UndoManager$UndoState;
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public undo([Landroid/content/UndoOwner;I)I
    .locals 7
    .param p1, "owners"    # [Landroid/content/UndoOwner;
    .param p2, "count"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 234
    iget-object v4, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-eqz v4, :cond_0

    .line 235
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Can\'t be called during an update"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 238
    :cond_0
    const/4 v1, 0x0

    .line 239
    .local v1, "num":I
    const/4 v0, -0x1

    .line 241
    .local v0, "i":I
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/content/UndoManager;->mInUndo:Z

    .line 243
    invoke-virtual {p0, v6}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v3

    .line 244
    .local v3, "us":Landroid/content/UndoManager$UndoState;
    if-eqz v3, :cond_1

    .line 245
    invoke-virtual {v3}, Landroid/content/UndoManager$UndoState;->makeExecuted()V

    .line 248
    :cond_1
    :goto_0
    if-lez p2, :cond_2

    iget-object v4, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, p1, v0}, Landroid/content/UndoManager;->findPrevState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 249
    iget-object v4, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoManager$UndoState;

    .line 250
    .local v2, "state":Landroid/content/UndoManager$UndoState;
    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->undo()V

    .line 251
    iget-object v4, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 p2, p2, -0x1

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v2    # "state":Landroid/content/UndoManager$UndoState;
    :cond_2
    iput-boolean v5, p0, Landroid/content/UndoManager;->mInUndo:Z

    .line 258
    return v1
.end method
