.class Lcom/android/server/wm/WindowContainer;
.super Ljava/lang/Object;
.source "WindowContainer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/server/wm/WindowContainer;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/wm/WindowContainer;",
        ">;"
    }
.end annotation


# static fields
.field static final POSITION_BOTTOM:I = -0x80000000

.field static final POSITION_TOP:I = 0x7fffffff


# instance fields
.field protected final mChildren:Lcom/android/server/wm/WindowList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/WindowList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Lcom/android/server/wm/WindowContainer",
            "<TE;>.ForAllWindowsConsumerWrapper;>;"
        }
    .end annotation
.end field

.field private mController:Lcom/android/server/wm/WindowContainerController;

.field private mFullConfiguration:Landroid/content/res/Configuration;

.field private mMergedOverrideConfiguration:Landroid/content/res/Configuration;

.field protected mOrientation:I

.field private mOverrideConfiguration:Landroid/content/res/Configuration;

.field private mParent:Lcom/android/server/wm/WindowContainer;

.field private final mTmpChain1:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpChain2:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/WindowContainer;)Landroid/util/Pools$SynchronizedPool;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/wm/WindowContainer;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;

    return-object v0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 43
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 57
    new-instance v0, Lcom/android/server/wm/WindowList;

    invoke-direct {v0}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 60
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 66
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 73
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 80
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    .line 84
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    .line 83
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;

    .line 116
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    .line 117
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    .line 43
    return-void
.end method

.method private getParents(Ljava/util/LinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 761
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "parents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 762
    move-object v0, p0

    .line 764
    .local v0, "current":Lcom/android/server/wm/WindowContainer;
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 765
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 766
    if-nez v0, :cond_0

    .line 767
    return-void
.end method

.method private obtainConsumerWrapper(Ljava/util/function/Consumer;)Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)",
            "Lcom/android/server/wm/WindowContainer",
            "<TE;>.ForAllWindowsConsumerWrapper;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/WindowState;>;"
    const/4 v2, 0x0

    .line 805
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;

    .line 806
    .local v0, "wrapper":Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;, "Lcom/android/server/wm/WindowContainer<TE;>.ForAllWindowsConsumerWrapper;"
    if-nez v0, :cond_0

    .line 807
    new-instance v0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;

    .end local v0    # "wrapper":Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;, "Lcom/android/server/wm/WindowContainer<TE;>.ForAllWindowsConsumerWrapper;"
    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;)V

    .line 809
    .restart local v0    # "wrapper":Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;, "Lcom/android/server/wm/WindowContainer<TE;>.ForAllWindowsConsumerWrapper;"
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->setConsumer(Ljava/util/function/Consumer;)V

    .line 810
    return-object v0
.end method

.method private onMergedOverrideConfigurationChanged()V
    .locals 4

    .prologue
    .line 359
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v2, :cond_0

    .line 360
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 361
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 365
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 366
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 367
    .local v0, "child":Lcom/android/server/wm/WindowContainer;
    invoke-direct {v0}, Lcom/android/server/wm/WindowContainer;->onMergedOverrideConfigurationChanged()V

    .line 365
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 363
    .end local v0    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 369
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/WindowContainer;I)V
    .locals 3
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addChild: container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 159
    const-string/jumbo v2, " is already a child of container="

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 159
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 160
    const-string/jumbo v2, " can\'t add to container="

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 160
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 164
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->setParent(Lcom/android/server/wm/WindowContainer;)V

    .line 165
    return-void
.end method

.method protected addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/util/Comparator",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 129
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "addChild: container="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 130
    const-string/jumbo v5, " is already a child of container="

    .line 129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 130
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 131
    const-string/jumbo v5, " can\'t add to container="

    .line 129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 131
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 134
    :cond_0
    const/4 v2, -0x1

    .line 135
    .local v2, "positionToAdd":I
    if-eqz p2, :cond_1

    .line 136
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 137
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 138
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-interface {p2, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2

    .line 139
    move v2, v1

    .line 145
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 146
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    .line 151
    :goto_1
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->setParent(Lcom/android/server/wm/WindowContainer;)V

    .line 152
    return-void

    .line 137
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method checkAppWindowsReadyToShow()V
    .locals 3

    .prologue
    .line 517
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 518
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 519
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->checkAppWindowsReadyToShow()V

    .line 517
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 521
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_0
    return-void
.end method

.method checkCompleteDeferredRemoval()Z
    .locals 6

    .prologue
    .line 496
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v1, 0x0

    .line 498
    .local v1, "stillDeferringRemoval":Z
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .end local v1    # "stillDeferringRemoval":Z
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 499
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 502
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    if-nez v2, :cond_0

    .line 503
    const-string/jumbo v3, "WindowContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkCompleteDeferredRemoval, null child size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 504
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    .line 503
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 504
    const-string/jumbo v5, " i="

    .line 503
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 505
    const-string/jumbo v5, " caller:"

    .line 503
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 505
    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    .line 503
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 509
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->checkCompleteDeferredRemoval()Z

    move-result v3

    or-int/2addr v1, v3

    .local v1, "stillDeferringRemoval":Z
    goto :goto_1

    .line 512
    .end local v1    # "stillDeferringRemoval":Z
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_1
    return v1
.end method

.method public compareTo(Lcom/android/server/wm/WindowContainer;)I
    .locals 10
    .param p1, "other"    # Lcom/android/server/wm/WindowContainer;

    .prologue
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v6, 0x1

    const/4 v7, -0x1

    .line 709
    if-ne p0, p1, :cond_0

    .line 710
    const/4 v6, 0x0

    return v6

    .line 713
    :cond_0
    iget-object v8, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    iget-object v9, p1, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-ne v8, v9, :cond_2

    .line 714
    iget-object v8, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    iget-object v1, v8, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 715
    .local v1, "list":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-le v8, v9, :cond_1

    :goto_0
    return v6

    :cond_1
    move v6, v7

    goto :goto_0

    .line 718
    .end local v1    # "list":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<Lcom/android/server/wm/WindowContainer;>;"
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    .line 719
    .local v4, "thisParentChain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    .line 721
    .local v2, "otherParentChain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowContainer;->getParents(Ljava/util/LinkedList;)V

    .line 722
    invoke-direct {p1, v2}, Lcom/android/server/wm/WindowContainer;->getParents(Ljava/util/LinkedList;)V

    .line 725
    const/4 v0, 0x0

    .line 726
    .local v0, "commonAncestor":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v4}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 727
    .local v5, "thisTop":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 728
    .end local v0    # "commonAncestor":Lcom/android/server/wm/WindowContainer;
    .local v3, "otherTop":Lcom/android/server/wm/WindowContainer;
    :goto_1
    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    if-ne v5, v3, :cond_3

    .line 729
    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 730
    .local v0, "commonAncestor":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 731
    invoke-virtual {v4}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "thisTop":Lcom/android/server/wm/WindowContainer;
    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 732
    .restart local v5    # "thisTop":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "otherTop":Lcom/android/server/wm/WindowContainer;
    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .restart local v3    # "otherTop":Lcom/android/server/wm/WindowContainer;
    goto :goto_1

    .line 736
    .end local v0    # "commonAncestor":Lcom/android/server/wm/WindowContainer;
    :cond_3
    if-nez v0, :cond_4

    .line 737
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No in the same hierarchy this="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 738
    const-string/jumbo v8, " other="

    .line 737
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    .end local v3    # "otherTop":Lcom/android/server/wm/WindowContainer;
    .end local v5    # "thisTop":Lcom/android/server/wm/WindowContainer;
    :catchall_0
    move-exception v6

    .line 755
    iget-object v7, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->clear()V

    .line 756
    iget-object v7, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->clear()V

    .line 754
    throw v6

    .line 743
    .restart local v3    # "otherTop":Lcom/android/server/wm/WindowContainer;
    .restart local v5    # "thisTop":Lcom/android/server/wm/WindowContainer;
    :cond_4
    if-ne v0, p0, :cond_5

    .line 755
    iget-object v6, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->clear()V

    .line 756
    iget-object v6, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->clear()V

    .line 744
    return v7

    .line 745
    :cond_5
    if-ne v0, p1, :cond_6

    .line 755
    iget-object v7, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->clear()V

    .line 756
    iget-object v7, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->clear()V

    .line 746
    return v6

    .line 751
    :cond_6
    :try_start_1
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 752
    .restart local v1    # "list":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {v4}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-le v8, v9, :cond_7

    .line 755
    :goto_2
    iget-object v7, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->clear()V

    .line 756
    iget-object v7, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->clear()V

    .line 752
    return v6

    :cond_7
    move v6, v7

    .line 753
    goto :goto_2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 703
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    check-cast p1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v0

    return v0
.end method

.method dumpChildrenNames(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 5
    .param p1, "out"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 791
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, "childPrefix":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 794
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 795
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/WindowContainer;->dumpChildrenNames(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 793
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 798
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_0
    return-void
.end method

.method fillsParent()Z
    .locals 1

    .prologue
    .line 610
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method forAllTasks(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 687
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 688
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 687
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 690
    :cond_0
    return-void
.end method

.method forAllWindows(Ljava/util/function/Consumer;Z)V
    .locals 1
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 676
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/WindowState;>;"
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;->obtainConsumerWrapper(Ljava/util/function/Consumer;)Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;

    move-result-object v0

    .line 677
    .local v0, "wrapper":Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;, "Lcom/android/server/wm/WindowContainer<TE;>.ForAllWindowsConsumerWrapper;"
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 678
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->release()V

    .line 679
    return-void
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 9
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 630
    if-eqz p2, :cond_2

    .line 631
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 638
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 639
    .local v0, "child":Lcom/android/server/wm/WindowContainer;
    if-nez v0, :cond_1

    .line 640
    const-string/jumbo v3, "WindowContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "forAllWindows from top, null child size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 641
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    .line 640
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 641
    const-string/jumbo v5, " i="

    .line 640
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 642
    const-string/jumbo v5, " caller:"

    .line 640
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 642
    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    .line 640
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 645
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 647
    return v7

    .line 651
    .end local v0    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v2    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 652
    .local v1, "count":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_5

    .line 659
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 660
    .restart local v0    # "child":Lcom/android/server/wm/WindowContainer;
    if-nez v0, :cond_4

    .line 661
    const-string/jumbo v3, "WindowContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "forAllWindows from bottom, null child size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 662
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    .line 661
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 662
    const-string/jumbo v5, " count="

    .line 661
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 663
    const-string/jumbo v5, " caller:"

    .line 661
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 663
    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    .line 661
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 666
    :cond_4
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 668
    return v7

    .line 672
    .end local v0    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v1    # "count":I
    :cond_5
    return v6
.end method

.method forceWindowsScaleableInTransaction(Z)V
    .locals 3
    .param p1, "force"    # Z

    .prologue
    .line 411
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 412
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 413
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->forceWindowsScaleableInTransaction(Z)V

    .line 411
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 415
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_0
    return-void
.end method

.method getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 297
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getController()Lcom/android/server/wm/WindowContainerController;
    .locals 1

    .prologue
    .line 770
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    return-object v0
.end method

.method getMergedOverrideConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 349
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 801
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOrientation()I
    .locals 1

    .prologue
    .line 543
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result v0

    return v0
.end method

.method getOrientation(I)I
    .locals 7
    .param p1, "candidate"    # I

    .prologue
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v6, -0x1

    const/4 v4, 0x3

    const/4 v5, -0x2

    .line 558
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 560
    return v5

    .line 567
    :cond_0
    iget v3, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    if-eq v3, v5, :cond_1

    .line 568
    iget v3, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    if-eq v3, v6, :cond_1

    .line 569
    iget v3, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    return v3

    .line 572
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 573
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 577
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    if-ne p1, v4, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result v1

    .line 579
    .local v1, "orientation":I
    if-ne v1, v4, :cond_4

    .line 583
    move p1, v1

    .line 572
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "orientation":I
    :cond_3
    move v3, v5

    .line 578
    goto :goto_1

    .line 587
    .restart local v1    # "orientation":I
    :cond_4
    if-eq v1, v5, :cond_2

    .line 591
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v3

    if-nez v3, :cond_5

    if-eq v1, v6, :cond_2

    .line 594
    :cond_5
    return v1

    .line 598
    .end local v1    # "orientation":I
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_6
    return p1
.end method

.method getOverrideConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 315
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method protected final getParent()Lcom/android/server/wm/WindowContainer;
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    return-object v0
.end method

.method getTopChild()Lcom/android/server/wm/WindowContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 491
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    return-object v0
.end method

.method getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)",
            "Lcom/android/server/wm/WindowState;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/WindowState;>;"
    const/4 v3, 0x0

    .line 693
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 694
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 695
    .local v1, "w":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_0

    .line 696
    return-object v1

    .line 693
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 700
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_1
    return-object v3
.end method

.method hasChild(Lcom/android/server/wm/WindowContainer;)Z
    .locals 4
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .prologue
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v3, 0x0

    .line 224
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 225
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 226
    .local v0, "current":Lcom/android/server/wm/WindowContainer;
    if-eq v0, p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 224
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 230
    .end local v0    # "current":Lcom/android/server/wm/WindowContainer;
    :cond_2
    return v3
.end method

.method hasContentToDisplay()Z
    .locals 4

    .prologue
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v3, 0x0

    .line 450
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 451
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 452
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->hasContentToDisplay()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    const/4 v2, 0x1

    return v2

    .line 450
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 456
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_1
    return v3
.end method

.method isAnimating()Z
    .locals 4

    .prologue
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v3, 0x0

    .line 418
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_1

    .line 419
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 420
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    const/4 v2, 0x1

    return v2

    .line 418
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 424
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_1
    return v3
.end method

.method isOnTop()Z
    .locals 1

    .prologue
    .line 486
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVisible()Z
    .locals 4

    .prologue
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v3, 0x0

    .line 473
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 474
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 475
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    const/4 v2, 0x1

    return v2

    .line 473
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 479
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_1
    return v3
.end method

.method onAppTransitionDone()V
    .locals 3

    .prologue
    .line 532
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 533
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 534
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onAppTransitionDone()V

    .line 532
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 536
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_0
    return-void
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 305
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 306
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 307
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 308
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 309
    .local v0, "child":Lcom/android/server/wm/WindowContainer;
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 307
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 311
    .end local v0    # "child":Lcom/android/server/wm/WindowContainer;
    :cond_0
    return-void
.end method

.method onDescendantOverrideConfigurationChanged()V
    .locals 1

    .prologue
    .line 339
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->onDescendantOverrideConfigurationChanged()V

    .line 342
    :cond_0
    return-void
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 3
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 376
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 377
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 378
    .local v0, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 376
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 380
    .end local v0    # "child":Lcom/android/server/wm/WindowContainer;
    :cond_0
    return-void
.end method

.method onMovedByResize()V
    .locals 3

    .prologue
    .line 397
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 398
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 399
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    .line 397
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 401
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_0
    return-void
.end method

.method onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 324
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 326
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 328
    invoke-direct {p0}, Lcom/android/server/wm/WindowContainer;->onMergedOverrideConfigurationChanged()V

    .line 330
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->onDescendantOverrideConfigurationChanged()V

    .line 333
    :cond_0
    return-void

    .line 326
    :cond_1
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    goto :goto_0
.end method

.method onParentSet()V
    .locals 0

    .prologue
    .line 113
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    return-void
.end method

.method onResize()V
    .locals 3

    .prologue
    .line 390
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 391
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 392
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onResize()V

    .line 390
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 394
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_0
    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 4
    .param p1, "position"    # I
    .param p3, "includingParents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p2, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    const v3, 0x7fffffff

    const/4 v2, 0x1

    const/high16 v1, -0x80000000

    .line 246
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeChild: container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 248
    const-string/jumbo v2, " is not a child of container="

    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 248
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 249
    const-string/jumbo v2, " current parent="

    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 249
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    if-gez p1, :cond_2

    if-eq p1, v1, :cond_2

    .line 254
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "positionAt: invalid position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 255
    const-string/jumbo v2, ", children number="

    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 255
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-le p1, v0, :cond_3

    if-ne p1, v3, :cond_1

    .line 258
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_6

    .line 259
    const p1, 0x7fffffff

    .line 264
    :cond_4
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 286
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 289
    :cond_5
    :goto_1
    return-void

    .line 260
    :cond_6
    if-nez p1, :cond_4

    .line 261
    const/high16 p1, -0x80000000

    goto :goto_0

    .line 266
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_7

    .line 267
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 268
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_7
    if-eqz p3, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 271
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0, v3, p0, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    goto :goto_1

    .line 276
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_8

    .line 277
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowList;->addFirst(Ljava/lang/Object;)V

    .line 280
    :cond_8
    if-eqz p3, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 281
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    goto :goto_1

    .line 264
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x7fffffff -> :sswitch_0
    .end sparse-switch
.end method

.method removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->setParent(Lcom/android/server/wm/WindowContainer;)V

    .line 180
    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeChild: container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 178
    const-string/jumbo v2, " is not a child of container="

    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 178
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeIfPossible()V
    .locals 3

    .prologue
    .line 216
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 217
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 218
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->removeIfPossible()V

    .line 216
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 220
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_0
    return-void
.end method

.method removeImmediately()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v2, 0x0

    .line 190
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 192
    .local v0, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 196
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    .end local v0    # "child":Lcom/android/server/wm/WindowContainer;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    if-eqz v1, :cond_2

    .line 204
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->setController(Lcom/android/server/wm/WindowContainerController;)V

    .line 206
    :cond_2
    return-void
.end method

.method resetDragResizingChangeReported()V
    .locals 3

    .prologue
    .line 404
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 405
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 406
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->resetDragResizingChangeReported()V

    .line 404
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 408
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_0
    return-void
.end method

.method sendAppVisibilityToClients()V
    .locals 3

    .prologue
    .line 428
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 429
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 430
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->sendAppVisibilityToClients()V

    .line 428
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 432
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_0
    return-void
.end method

.method setController(Lcom/android/server/wm/WindowContainerController;)V
    .locals 3
    .param p1, "controller"    # Lcom/android/server/wm/WindowContainerController;

    .prologue
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v1, 0x0

    .line 774
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 775
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t set controller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 776
    const-string/jumbo v2, " for container="

    .line 775
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 776
    const-string/jumbo v2, " Already set to="

    .line 775
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 776
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    .line 775
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_0
    if-eqz p1, :cond_2

    .line 779
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainerController;->setContainer(Lcom/android/server/wm/WindowContainer;)V

    .line 783
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    .line 784
    return-void

    .line 780
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    if-eqz v0, :cond_1

    .line 781
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainerController;->setContainer(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_0
.end method

.method setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 539
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iput p1, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    .line 540
    return-void
.end method

.method protected final setParent(Lcom/android/server/wm/WindowContainer;)V
    .locals 1
    .param p1, "parent"    # Lcom/android/server/wm/WindowContainer;

    .prologue
    .line 94
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 101
    invoke-direct {p0}, Lcom/android/server/wm/WindowContainer;->onMergedOverrideConfigurationChanged()V

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onParentSet()V

    .line 105
    return-void
.end method

.method setVisibleBeforeClientHidden()V
    .locals 3

    .prologue
    .line 435
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 436
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 437
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->setVisibleBeforeClientHidden()V

    .line 435
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 439
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_0
    return-void
.end method

.method setWaitingForDrawnIfResizingChanged()V
    .locals 3

    .prologue
    .line 383
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 384
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 385
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->setWaitingForDrawnIfResizingChanged()V

    .line 383
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 387
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_0
    return-void
.end method

.method stepAppWindowsAnimation(J)V
    .locals 3
    .param p1, "currentTime"    # J

    .prologue
    .line 525
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 526
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 527
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->stepAppWindowsAnimation(J)V

    .line 525
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 529
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_0
    return-void
.end method

.method switchUser()V
    .locals 2

    .prologue
    .line 615
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 616
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->switchUser()V

    .line 615
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 618
    :cond_0
    return-void
.end method
