.class public final Landroid/animation/AnimatorSet;
.super Landroid/animation/Animator;
.source "AnimatorSet.java"

# interfaces
.implements Landroid/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorSet$1;,
        Landroid/animation/AnimatorSet$AnimationEvent;,
        Landroid/animation/AnimatorSet$Builder;,
        Landroid/animation/AnimatorSet$Node;,
        Landroid/animation/AnimatorSet$SeekState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimatorSet"


# instance fields
.field private mChildrenInitialized:Z

.field private mDelayAnim:Landroid/animation/ValueAnimator;

.field private mDependencyDirty:Z

.field private mDummyListener:Landroid/animation/AnimatorListenerAdapter;

.field private mDuration:J

.field private final mEndCanBeCalled:Z

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstFrame:J

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mLastEventId:I

.field private mLastFrameTime:J

.field private mNodeMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mPauseTime:J

.field private mPlayingSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mReversing:Z

.field private mRootNode:Landroid/animation/AnimatorSet$Node;

.field private mSeekState:Landroid/animation/AnimatorSet$SeekState;

.field private mSelfPulse:Z

.field private final mShouldIgnoreEndWithoutStart:Z

.field private final mShouldResetValuesAtStart:Z

.field private mStartDelay:J

.field private mStarted:Z

.field private mTotalDuration:J


# direct methods
.method static synthetic -get0(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "-this"    # Landroid/animation/AnimatorSet;

    .prologue
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get1(Landroid/animation/AnimatorSet;)Z
    .locals 1
    .param p0, "-this"    # Landroid/animation/AnimatorSet;

    .prologue
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    return v0
.end method

.method static synthetic -get2(Landroid/animation/AnimatorSet;)J
    .locals 2
    .param p0, "-this"    # Landroid/animation/AnimatorSet;

    .prologue
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    return-wide v0
.end method

.method static synthetic -set0(Landroid/animation/AnimatorSet;Z)Z
    .locals 0
    .param p0, "-this"    # Landroid/animation/AnimatorSet;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;
    .locals 1
    .param p0, "-this"    # Landroid/animation/AnimatorSet;
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    invoke-direct {p0, p1}, Landroid/animation/AnimatorSet;->getNodeForAnimation(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 198
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 82
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 100
    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    .line 106
    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 109
    iput-wide v10, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 112
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    .line 118
    new-instance v2, Landroid/animation/AnimatorSet$Node;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-direct {v2, v3}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 123
    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mDuration:J

    .line 127
    iput-object v4, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 130
    iput-wide v10, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    .line 153
    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    .line 158
    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 162
    const/4 v2, -0x1

    iput v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 165
    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 169
    iput-boolean v8, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    .line 172
    new-instance v2, Landroid/animation/AnimatorSet$SeekState;

    invoke-direct {v2, p0, v4}, Landroid/animation/AnimatorSet$SeekState;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet$SeekState;)V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    .line 175
    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    .line 182
    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 186
    new-instance v2, Landroid/animation/AnimatorSet$1;

    invoke-direct {v2, p0}, Landroid/animation/AnimatorSet$1;-><init>(Landroid/animation/AnimatorSet;)V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mDummyListener:Landroid/animation/AnimatorListenerAdapter;

    .line 199
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 204
    .local v0, "app":Landroid/app/Application;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 205
    :cond_0
    iput-boolean v8, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    .line 206
    const/4 v1, 0x1

    .line 216
    .local v1, "isPreO":Z
    :goto_0
    xor-int/lit8 v2, v1, 0x1

    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mShouldResetValuesAtStart:Z

    .line 217
    xor-int/lit8 v2, v1, 0x1

    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mEndCanBeCalled:Z

    .line 218
    return-void

    .line 208
    .end local v1    # "isPreO":Z
    :cond_1
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_2

    .line 209
    iput-boolean v8, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    .line 214
    :goto_1
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_3

    const/4 v1, 0x1

    .restart local v1    # "isPreO":Z
    goto :goto_0

    .line 211
    .end local v1    # "isPreO":Z
    :cond_2
    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    goto :goto_1

    .line 214
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "isPreO":Z
    goto :goto_0

    .line 112
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addAnimationCallback(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 1311
    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    if-nez v1, :cond_0

    .line 1312
    return-void

    .line 1314
    :cond_0
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    .line 1315
    .local v0, "handler":Landroid/animation/AnimationHandler;
    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/AnimationHandler;->addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    .line 1316
    return-void
.end method

.method private addDummyListener()V
    .locals 3

    .prologue
    .line 1240
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1241
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mDummyListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1243
    :cond_0
    return-void
.end method

.method private createDependencyGraph()V
    .locals 14

    .prologue
    .line 1463
    iget-boolean v9, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    if-nez v9, :cond_2

    .line 1465
    const/4 v1, 0x0

    .line 1466
    .local v1, "durationChanged":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 1467
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    iget-object v0, v9, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 1468
    .local v0, "anim":Landroid/animation/Animator;
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    iget-wide v10, v9, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    invoke-virtual {v0}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-eqz v9, :cond_1

    .line 1469
    const/4 v1, 0x1

    .line 1473
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_0
    if-nez v1, :cond_2

    .line 1474
    return-void

    .line 1466
    .restart local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1478
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "durationChanged":Z
    .end local v2    # "i":I
    :cond_2
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    .line 1480
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1481
    .local v7, "size":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v7, :cond_3

    .line 1482
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    .line 1481
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1484
    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v7, :cond_7

    .line 1485
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$Node;

    .line 1486
    .local v4, "node":Landroid/animation/AnimatorSet$Node;
    iget-boolean v9, v4, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    if-eqz v9, :cond_5

    .line 1484
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1490
    :cond_5
    const/4 v9, 0x1

    iput-boolean v9, v4, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    .line 1491
    iget-object v9, v4, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-eqz v9, :cond_4

    .line 1496
    iget-object v9, v4, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v9}, Landroid/animation/AnimatorSet;->findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    .line 1497
    iget-object v9, v4, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1500
    iget-object v9, v4, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1501
    .local v6, "siblingSize":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    if-ge v3, v6, :cond_6

    .line 1502
    iget-object v9, v4, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    iget-object v9, v9, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Landroid/animation/AnimatorSet$Node;->addParents(Ljava/util/ArrayList;)V

    .line 1501
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1506
    :cond_6
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v6, :cond_4

    .line 1507
    iget-object v9, v4, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    .line 1508
    .local v5, "sibling":Landroid/animation/AnimatorSet$Node;
    iget-object v9, v4, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet$Node;->addParents(Ljava/util/ArrayList;)V

    .line 1509
    const/4 v9, 0x1

    iput-boolean v9, v5, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    .line 1506
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1513
    .end local v3    # "j":I
    .end local v4    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v5    # "sibling":Landroid/animation/AnimatorSet$Node;
    .end local v6    # "siblingSize":I
    :cond_7
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v7, :cond_9

    .line 1514
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$Node;

    .line 1515
    .restart local v4    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v4, v9, :cond_8

    iget-object v9, v4, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-nez v9, :cond_8

    .line 1516
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v4, v9}, Landroid/animation/AnimatorSet$Node;->addParent(Landroid/animation/AnimatorSet$Node;)V

    .line 1513
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1521
    .end local v4    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_9
    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1523
    .local v8, "visited":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    const-wide/16 v10, 0x0

    iput-wide v10, v9, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1524
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v10, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v10

    iput-wide v10, v9, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 1525
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-direct {p0, v9, v8}, Landroid/animation/AnimatorSet;->updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    .line 1527
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->sortAnimationEvents()V

    .line 1528
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    iget-object v10, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    .line 1529
    return-void
.end method

.method private endAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    .line 1277
    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 1278
    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    .line 1279
    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 1280
    const/4 v3, -0x1

    iput v3, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 1281
    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    .line 1282
    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 1283
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet$SeekState;->reset()V

    .line 1284
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1287
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->removeAnimationCallback()V

    .line 1289
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1291
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1292
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1293
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1294
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    iget-boolean v4, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-interface {v3, p0, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;Z)V

    .line 1293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1297
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_0
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->removeDummyListener()V

    .line 1298
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    .line 1299
    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 1300
    return-void
.end method

.method private findLatestEventIdForTime(J)I
    .locals 11
    .param p1, "currentPlayTime"    # J

    .prologue
    .line 1252
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1253
    .local v4, "size":I
    iget v3, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 1255
    .local v3, "latestId":I
    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v5, :cond_2

    .line 1256
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v6

    sub-long p1, v6, p1

    .line 1257
    iget v5, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .end local v4    # "size":I
    :goto_0
    iput v4, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 1258
    iget v5, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    add-int/lit8 v2, v5, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_4

    .line 1259
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 1260
    .local v0, "event":Landroid/animation/AnimatorSet$AnimationEvent;
    invoke-virtual {v0}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v6

    cmp-long v5, v6, p1

    if-ltz v5, :cond_0

    .line 1261
    move v3, v2

    .line 1258
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1257
    .end local v0    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    .end local v2    # "j":I
    .restart local v4    # "size":I
    :cond_1
    iget v4, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    goto :goto_0

    .line 1265
    :cond_2
    iget v5, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    add-int/lit8 v1, v5, 0x1

    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_4

    .line 1266
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 1268
    .restart local v0    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    invoke-virtual {v0}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v6

    cmp-long v5, v6, p1

    if-gtz v5, :cond_3

    .line 1269
    move v3, v1

    .line 1265
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1273
    .end local v0    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    .end local v1    # "i":I
    .end local v4    # "size":I
    :cond_4
    return v3
.end method

.method private findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "node"    # Landroid/animation/AnimatorSet$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet$Node;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1710
    .local p2, "siblings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1711
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1712
    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1713
    return-void

    .line 1715
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1716
    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    invoke-direct {p0, v1, p2}, Landroid/animation/AnimatorSet;->findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    .line 1715
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1719
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private forceToEnd()V
    .locals 6

    .prologue
    .line 435
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mEndCanBeCalled:Z

    if-eqz v2, :cond_0

    .line 436
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    .line 437
    return-void

    .line 443
    :cond_0
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v2, :cond_1

    .line 444
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v4

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    .line 453
    :goto_0
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 454
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    .line 455
    return-void

    .line 446
    :cond_1
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    .line 447
    .local v0, "zeroScalePlayTime":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 449
    const-wide/32 v0, 0x7fffffff

    .line 451
    :cond_2
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    goto :goto_0
.end method

.method private getNodeForAnimation(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 1743
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Node;

    .line 1744
    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    if-nez v0, :cond_0

    .line 1745
    new-instance v0, Landroid/animation/AnimatorSet$Node;

    .end local v0    # "node":Landroid/animation/AnimatorSet$Node;
    invoke-direct {v0, p1}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    .line 1746
    .restart local v0    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1749
    :cond_0
    return-object v0
.end method

.method private getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;)J
    .locals 3
    .param p1, "overallPlayTime"    # J
    .param p3, "node"    # Landroid/animation/AnimatorSet$Node;

    .prologue
    .line 1169
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/animation/AnimatorSet;->getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;Z)J
    .locals 3
    .param p1, "overallPlayTime"    # J
    .param p3, "node"    # Landroid/animation/AnimatorSet$Node;
    .param p4, "inReverse"    # Z

    .prologue
    .line 1173
    if-eqz p4, :cond_0

    .line 1174
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    sub-long p1, v0, p1

    .line 1175
    iget-wide v0, p3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    sub-long/2addr v0, p1

    return-wide v0

    .line 1177
    :cond_0
    iget-wide v0, p3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    sub-long v0, p1, v0

    return-wide v0
.end method

.method private handleAnimationEvents(IIJ)V
    .locals 7
    .param p1, "startId"    # I
    .param p2, "latestId"    # I
    .param p3, "playTime"    # J

    .prologue
    .line 1106
    iget-boolean v3, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v3, :cond_4

    .line 1107
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1108
    :cond_0
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_0
    if-lt v1, p2, :cond_8

    .line 1109
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 1110
    .local v0, "event":Landroid/animation/AnimatorSet$AnimationEvent;
    iget-object v2, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 1111
    .local v2, "node":Landroid/animation/AnimatorSet$Node;
    iget v3, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1112
    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1117
    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 1119
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 1120
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    iget-object v4, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->startWithoutPulsing(Z)V

    .line 1122
    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v4, v5}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    .line 1108
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1123
    :cond_3
    iget v3, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 1125
    invoke-direct {p0, p3, p4, v2}, Landroid/animation/AnimatorSet;->getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;)J

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    goto :goto_1

    .line 1129
    .end local v0    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    .end local v1    # "i":I
    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_4
    add-int/lit8 v1, p1, 0x1

    .restart local v1    # "i":I
    :goto_2
    if-gt v1, p2, :cond_8

    .line 1130
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 1131
    .restart local v0    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    iget-object v2, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 1132
    .restart local v2    # "node":Landroid/animation/AnimatorSet$Node;
    iget v3, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v3, :cond_7

    .line 1133
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    iget-object v4, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1139
    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 1141
    :cond_5
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 1142
    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->startWithoutPulsing(Z)V

    .line 1143
    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v4, v5}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    .line 1129
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1144
    :cond_7
    iget v3, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    iget-boolean v3, v2, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6

    .line 1146
    invoke-direct {p0, p3, p4, v2}, Landroid/animation/AnimatorSet;->getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;)J

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    goto :goto_3

    .line 1150
    .end local v0    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_8
    return-void
.end method

.method private initAnimation()V
    .locals 4

    .prologue
    .line 693
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_0

    .line 694
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 695
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 696
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 694
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 699
    .end local v0    # "i":I
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_0
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    .line 700
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    .line 701
    return-void
.end method

.method private initChildren()V
    .locals 1

    .prologue
    .line 975
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 976
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    .line 980
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    .line 982
    :cond_0
    return-void
.end method

.method private static isEmptySet(Landroid/animation/AnimatorSet;)Z
    .locals 7
    .param p0, "set"    # Landroid/animation/AnimatorSet;

    .prologue
    const/4 v6, 0x0

    .line 749
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getStartDelay()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 750
    return v6

    .line 752
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 753
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 754
    .local v0, "anim":Landroid/animation/Animator;
    instance-of v2, v0, Landroid/animation/AnimatorSet;

    if-nez v2, :cond_1

    .line 756
    return v6

    .line 758
    :cond_1
    check-cast v0, Landroid/animation/AnimatorSet;

    .end local v0    # "anim":Landroid/animation/Animator;
    invoke-static {v0}, Landroid/animation/AnimatorSet;->isEmptySet(Landroid/animation/AnimatorSet;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 759
    return v6

    .line 752
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 763
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method private printChildCount()V
    .locals 10

    .prologue
    .line 1436
    new-instance v4, Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1437
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1438
    const-string/jumbo v8, "AnimatorSet"

    const-string/jumbo v9, "Current tree: "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    const/4 v3, 0x0

    .line 1440
    .local v3, "index":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 1441
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1442
    .local v5, "listSize":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1443
    .local v0, "builder":Ljava/lang/StringBuilder;
    :goto_1
    if-ge v3, v5, :cond_2

    .line 1444
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    .line 1445
    .local v6, "node":Landroid/animation/AnimatorSet$Node;
    const/4 v7, 0x0

    .line 1446
    .local v7, "num":I
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-eqz v8, :cond_1

    .line 1447
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 1448
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 1449
    .local v1, "child":Landroid/animation/AnimatorSet$Node;
    iget-object v8, v1, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    if-ne v8, v6, :cond_0

    .line 1450
    add-int/lit8 v7, v7, 0x1

    .line 1451
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1447
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1455
    .end local v1    # "child":Landroid/animation/AnimatorSet$Node;
    .end local v2    # "i":I
    :cond_1
    const-string/jumbo v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1443
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1458
    .end local v6    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v7    # "num":I
    :cond_2
    const-string/jumbo v8, "AnimatorSet"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1460
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "listSize":I
    :cond_3
    return-void
.end method

.method private pulseFrame(Landroid/animation/AnimatorSet$Node;J)V
    .locals 4
    .param p1, "node"    # Landroid/animation/AnimatorSet$Node;
    .param p2, "animPlayTime"    # J

    .prologue
    .line 1160
    iget-boolean v1, p1, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v1, :cond_1

    .line 1161
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    .line 1162
    .local v0, "durationScale":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1163
    :cond_0
    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 1164
    long-to-float v2, p2

    mul-float/2addr v2, v0

    float-to-long v2, v2

    .line 1163
    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->pulseAnimationFrame(J)Z

    move-result v1

    iput-boolean v1, p1, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 1166
    .end local v0    # "durationScale":F
    :cond_1
    return-void
.end method

.method private removeAnimationCallback()V
    .locals 2

    .prologue
    .line 1303
    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    if-nez v1, :cond_0

    .line 1304
    return-void

    .line 1306
    :cond_0
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    .line 1307
    .local v0, "handler":Landroid/animation/AnimationHandler;
    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 1308
    return-void
.end method

.method private removeDummyListener()V
    .locals 3

    .prologue
    .line 1246
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1247
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mDummyListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1249
    :cond_0
    return-void
.end method

.method private skipToStartValue(Z)V
    .locals 1
    .param p1, "inReverse"    # Z

    .prologue
    .line 895
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    .line 896
    return-void
.end method

.method private sortAnimationEvents()V
    .locals 18

    .prologue
    .line 1534
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 1535
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_0

    .line 1536
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/AnimatorSet$Node;

    .line 1537
    .local v7, "node":Landroid/animation/AnimatorSet$Node;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v13, Landroid/animation/AnimatorSet$AnimationEvent;

    const/4 v14, 0x0

    invoke-direct {v13, v7, v14}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1538
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v13, Landroid/animation/AnimatorSet$AnimationEvent;

    const/4 v14, 0x1

    invoke-direct {v13, v7, v14}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1539
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v13, Landroid/animation/AnimatorSet$AnimationEvent;

    const/4 v14, 0x2

    invoke-direct {v13, v7, v14}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1535
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1541
    .end local v7    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v13, Landroid/animation/AnimatorSet$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/animation/AnimatorSet$3;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 1568
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1570
    .local v3, "eventSize":I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_b

    .line 1571
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 1572
    .local v2, "event":Landroid/animation/AnimatorSet$AnimationEvent;
    iget v12, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_a

    .line 1574
    iget-object v12, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v12, v12, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-object v14, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v14, v14, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v12, v12, v14

    if-nez v12, :cond_2

    .line 1575
    const/4 v6, 0x1

    .line 1585
    .local v6, "needToSwapStart":Z
    :goto_2
    move v11, v3

    .line 1586
    .local v11, "startEventId":I
    move v9, v3

    .line 1587
    .local v9, "startDelayEndId":I
    add-int/lit8 v5, v4, 0x1

    .local v5, "j":I
    :goto_3
    if-ge v5, v3, :cond_1

    .line 1588
    if-ge v11, v3, :cond_4

    if-ge v9, v3, :cond_4

    .line 1601
    :cond_1
    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v11, v12, :cond_7

    .line 1602
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v13, "Something went wrong, no start isfound after stop for an animation that has the same start and endtime."

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1576
    .end local v5    # "j":I
    .end local v6    # "needToSwapStart":Z
    .end local v9    # "startDelayEndId":I
    .end local v11    # "startEventId":I
    :cond_2
    iget-object v12, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v12, v12, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iget-object v14, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v14, v14, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1577
    iget-object v0, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v16

    .line 1576
    add-long v14, v14, v16

    cmp-long v12, v12, v14

    if-nez v12, :cond_3

    .line 1579
    const/4 v6, 0x0

    .restart local v6    # "needToSwapStart":Z
    goto :goto_2

    .line 1581
    .end local v6    # "needToSwapStart":Z
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 1582
    goto :goto_1

    .line 1591
    .restart local v5    # "j":I
    .restart local v6    # "needToSwapStart":Z
    .restart local v9    # "startDelayEndId":I
    .restart local v11    # "startEventId":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v12, v12, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v13, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    if-ne v12, v13, :cond_5

    .line 1592
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v12, v12, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v12, :cond_6

    .line 1594
    move v11, v5

    .line 1587
    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1595
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v12, v12, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 1596
    move v9, v5

    goto :goto_4

    .line 1607
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v9, v12, :cond_8

    .line 1608
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v13, "Something went wrong, no startdelay end is found after stop for an animation"

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1616
    :cond_8
    if-eqz v6, :cond_9

    .line 1617
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 1618
    .local v10, "startEvent":Landroid/animation/AnimatorSet$AnimationEvent;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v4, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1619
    add-int/lit8 v4, v4, 0x1

    .line 1622
    .end local v10    # "startEvent":Landroid/animation/AnimatorSet$AnimationEvent;
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 1623
    .local v8, "startDelayEndEvent":Landroid/animation/AnimatorSet$AnimationEvent;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v4, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1624
    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_1

    .line 1626
    .end local v5    # "j":I
    .end local v6    # "needToSwapStart":Z
    .end local v8    # "startDelayEndEvent":Landroid/animation/AnimatorSet$AnimationEvent;
    .end local v9    # "startDelayEndId":I
    .end local v11    # "startEventId":I
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1630
    .end local v2    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v12, v12, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-eqz v12, :cond_c

    .line 1631
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    .line 1632
    const-string/jumbo v13, "Sorting went bad, the start event should always be at index 0"

    .line 1631
    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1636
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v13, Landroid/animation/AnimatorSet$AnimationEvent;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1637
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v13, Landroid/animation/AnimatorSet$AnimationEvent;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    const/4 v15, 0x1

    invoke-direct {v13, v14, v15}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    const/4 v14, 0x1

    invoke-virtual {v12, v14, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1638
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v13, Landroid/animation/AnimatorSet$AnimationEvent;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    const/4 v15, 0x2

    invoke-direct {v13, v14, v15}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    const/4 v14, 0x2

    invoke-virtual {v12, v14, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1640
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v12, v12, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-eqz v12, :cond_d

    .line 1641
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v12, v12, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    .line 1642
    :cond_d
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    .line 1643
    const-string/jumbo v13, "Something went wrong, the last event is not an end event"

    .line 1642
    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1645
    :cond_e
    return-void
.end method

.method private start(ZZ)V
    .locals 9
    .param p1, "inReverse"    # Z
    .param p2, "selfPulse"    # Z

    .prologue
    const/4 v8, 0x0

    .line 704
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-nez v6, :cond_0

    .line 705
    new-instance v6, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v7, "Animators may only be run on Looper threads"

    invoke-direct {v6, v7}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 707
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 708
    iput-boolean p2, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    .line 709
    iput-boolean v8, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    .line 710
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 712
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 713
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 714
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 715
    .local v2, "node":Landroid/animation/AnimatorSet$Node;
    iput-boolean v8, v2, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 716
    iget-object v6, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v6, v8}, Landroid/animation/Animator;->setAllowRunningAsynchronously(Z)V

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 719
    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initAnimation()V

    .line 720
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->canReverse()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 721
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v7, "Cannot reverse infinite AnimatorSet"

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 724
    :cond_2
    iput-boolean p1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 727
    invoke-static {p0}, Landroid/animation/AnimatorSet;->isEmptySet(Landroid/animation/AnimatorSet;)Z

    move-result v1

    .line 728
    .local v1, "isEmptySet":Z
    if-nez v1, :cond_3

    .line 729
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->startAnimation()V

    .line 732
    :cond_3
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 734
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 735
    .local v5, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 736
    .local v3, "numListeners":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_4

    .line 737
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v6, p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    .line 736
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 740
    .end local v3    # "numListeners":I
    .end local v5    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_4
    if-eqz v1, :cond_5

    .line 743
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    .line 745
    :cond_5
    return-void
.end method

.method private startAnimation()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    .line 1182
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->addDummyListener()V

    .line 1185
    invoke-direct {p0, v8, v9}, Landroid/animation/AnimatorSet;->addAnimationCallback(J)V

    .line 1187
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet$SeekState;->getPlayTimeNormalized()J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v5, :cond_0

    .line 1190
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet$SeekState;->reset()V

    .line 1193
    :cond_0
    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mShouldResetValuesAtStart:Z

    if-eqz v5, :cond_1

    .line 1194
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1195
    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    .line 1216
    :cond_1
    :goto_0
    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-nez v5, :cond_2

    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_7

    .line 1220
    :cond_2
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1221
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iget-boolean v6, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet$SeekState;->updateSeekDirection(Z)V

    .line 1222
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v2

    .line 1226
    .local v2, "playTime":J
    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/animation/AnimatorSet;->findLatestEventIdForTime(J)I

    move-result v4

    .line 1227
    .local v4, "toId":I
    const/4 v5, -0x1

    invoke-direct {p0, v5, v4, v2, v3}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    .line 1228
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_9

    .line 1229
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    iget-boolean v5, v5, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-eqz v5, :cond_3

    .line 1230
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1228
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1196
    .end local v1    # "i":I
    .end local v2    # "playTime":J
    .end local v4    # "toId":I
    :cond_4
    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v5, :cond_5

    .line 1198
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initChildren()V

    .line 1199
    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    goto :goto_0

    .line 1202
    :cond_5
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_1

    .line 1203
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v5, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v5, v10, :cond_6

    .line 1204
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v5, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v0, v5, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 1208
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1209
    invoke-virtual {v0, v10}, Landroid/animation/Animator;->skipToEndValue(Z)V

    .line 1202
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1216
    .end local v1    # "i":I
    :cond_7
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1235
    :goto_4
    return-void

    .line 1224
    :cond_8
    const-wide/16 v2, 0x0

    .restart local v2    # "playTime":J
    goto :goto_1

    .line 1233
    .restart local v1    # "i":I
    .restart local v4    # "toId":I
    :cond_9
    iput v4, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    goto :goto_4
.end method

.method private updateAnimatorsDuration()V
    .locals 8

    .prologue
    .line 767
    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mDuration:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 769
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 770
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 771
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 774
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mDuration:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 770
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 777
    .end local v0    # "i":I
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v2    # "size":I
    :cond_0
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 778
    return-void
.end method

.method private updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V
    .locals 13
    .param p1, "parent"    # Landroid/animation/AnimatorSet$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet$Node;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "visited":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    const/4 v12, 0x0

    const-wide/16 v8, -0x1

    .line 1653
    iget-object v6, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-nez v6, :cond_2

    .line 1654
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-ne p1, v6, :cond_1

    .line 1656
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 1657
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    .line 1658
    .local v5, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v5, v6, :cond_0

    .line 1659
    iput-wide v8, v5, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1660
    iput-wide v8, v5, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 1656
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1664
    .end local v2    # "i":I
    .end local v5    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1
    return-void

    .line 1667
    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1668
    iget-object v6, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1669
    .local v1, "childrenSize":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_9

    .line 1670
    iget-object v6, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Node;

    .line 1671
    .local v0, "child":Landroid/animation/AnimatorSet$Node;
    iget-object v6, v0, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v6}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    .line 1673
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1674
    .local v3, "index":I
    if-ltz v3, :cond_4

    .line 1676
    move v4, v3

    .local v4, "j":I
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 1677
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    iput-object v12, v6, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 1678
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    iput-wide v8, v6, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1679
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    iput-wide v8, v6, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 1676
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1681
    :cond_3
    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1682
    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 1683
    iput-object v12, v0, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 1684
    const-string/jumbo v6, "AnimatorSet"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Cycle found in AnimatorSet: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    .end local v4    # "j":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1688
    :cond_4
    iget-wide v6, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    .line 1689
    iget-wide v6, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 1690
    iput-object p1, v0, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 1691
    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1692
    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 1703
    :cond_5
    :goto_4
    invoke-direct {p0, v0, p2}, Landroid/animation/AnimatorSet;->updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 1694
    :cond_6
    iget-wide v6, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iget-wide v10, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    cmp-long v6, v6, v10

    if-ltz v6, :cond_7

    .line 1695
    iput-object p1, v0, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 1696
    iget-wide v6, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iput-wide v6, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1699
    :cond_7
    iget-wide v6, v0, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_8

    move-wide v6, v8

    :goto_5
    iput-wide v6, v0, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    goto :goto_4

    .line 1700
    :cond_8
    iget-wide v6, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-wide v10, v0, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    add-long/2addr v6, v10

    goto :goto_5

    .line 1705
    .end local v0    # "child":Landroid/animation/AnimatorSet$Node;
    .end local v3    # "index":I
    :cond_9
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1706
    return-void
.end method


# virtual methods
.method animateBasedOnPlayTime(JJZ)V
    .locals 19
    .param p1, "currentPlayTime"    # J
    .param p3, "lastPlayTime"    # J
    .param p5, "inReverse"    # Z

    .prologue
    .line 819
    const-wide/16 v8, 0x0

    cmp-long v5, p1, v8

    if-ltz v5, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v5, p3, v8

    if-gez v5, :cond_1

    .line 820
    :cond_0
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v8, "Error: Play time should never be negative."

    invoke-direct {v5, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 828
    :cond_1
    if-eqz p5, :cond_3

    .line 829
    invoke-virtual/range {p0 .. p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v8

    const-wide/16 v16, -0x1

    cmp-long v5, v8, v16

    if-nez v5, :cond_2

    .line 830
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v8, "Cannot reverse AnimatorSet with infinite duration"

    invoke-direct {v5, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 833
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mStartDelay:J

    move-wide/from16 v16, v0

    sub-long v12, v8, v16

    .line 834
    .local v12, "duration":J
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 835
    sub-long p1, v12, p1

    .line 836
    sub-long p3, v12, p3

    .line 837
    const/16 p5, 0x0

    .line 840
    .end local v12    # "duration":J
    .end local p5    # "inReverse":Z
    :cond_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/animation/AnimatorSet;->skipToStartValue(Z)V

    .line 842
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 844
    .local v15, "unfinishedNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v11, v5, :cond_4

    .line 845
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 846
    .local v4, "event":Landroid/animation/AnimatorSet$AnimationEvent;
    invoke-virtual {v4}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v8

    cmp-long v5, v8, p1

    if-gtz v5, :cond_4

    invoke-virtual {v4}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v8

    const-wide/16 v16, -0x1

    cmp-long v5, v8, v16

    if-nez v5, :cond_6

    .line 867
    .end local v4    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    :cond_4
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v11, v5, :cond_a

    .line 868
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/animation/AnimatorSet$Node;

    .line 869
    .local v14, "node":Landroid/animation/AnimatorSet$Node;
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v14, v3}, Landroid/animation/AnimatorSet;->getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;Z)J

    move-result-wide v6

    .line 870
    .local v6, "playTime":J
    if-nez p5, :cond_5

    .line 871
    iget-object v5, v14, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 873
    :cond_5
    iget-object v5, v14, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    move-wide/from16 v8, p3

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Landroid/animation/Animator;->animateBasedOnPlayTime(JJZ)V

    .line 867
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 852
    .end local v6    # "playTime":J
    .end local v14    # "node":Landroid/animation/AnimatorSet$Node;
    .restart local v4    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    :cond_6
    iget v5, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_8

    .line 853
    iget-object v5, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v8, v5, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    const-wide/16 v16, -0x1

    cmp-long v5, v8, v16

    if-eqz v5, :cond_7

    .line 854
    iget-object v5, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v8, v5, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v5, v8, p1

    if-lez v5, :cond_8

    .line 855
    :cond_7
    iget-object v5, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    :cond_8
    iget v5, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_9

    .line 862
    iget-object v5, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v5, v5, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/animation/Animator;->skipToEndValue(Z)V

    .line 844
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 875
    .end local v4    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    :cond_a
    return-void
.end method

.method public canReverse()Z
    .locals 4

    .prologue
    .line 1406
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancel()V
    .locals 7

    .prologue
    .line 411
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    if-nez v5, :cond_0

    .line 412
    new-instance v5, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v6, "Animators may only be run on Looper threads"

    invoke-direct {v5, v6}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 414
    :cond_0
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 415
    const/4 v4, 0x0

    .line 416
    .local v4, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 417
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 418
    .local v4, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 419
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 420
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    .end local v0    # "i":I
    .end local v3    # "size":I
    .end local v4    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 424
    .local v1, "playingSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 425
    .local v2, "setSize":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 426
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    iget-object v5, v5, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 428
    :cond_2
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 429
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    .line 431
    .end local v0    # "i":I
    .end local v1    # "playingSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    .end local v2    # "setSize":I
    :cond_3
    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 1318
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/animation/AnimatorSet;
    .locals 15

    .prologue
    const/4 v14, 0x1

    const-wide/16 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1320
    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 1329
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1330
    .local v7, "nodeCount":I
    iput-boolean v11, v0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 1331
    iput-wide v12, v0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    .line 1332
    iput-wide v12, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 1333
    const/4 v9, -0x1

    iput v9, v0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 1334
    iput-boolean v11, v0, Landroid/animation/AnimatorSet;->mPaused:Z

    .line 1335
    iput-wide v12, v0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 1336
    new-instance v9, Landroid/animation/AnimatorSet$SeekState;

    invoke-direct {v9, p0, v10}, Landroid/animation/AnimatorSet$SeekState;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet$SeekState;)V

    iput-object v9, v0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    .line 1337
    iput-boolean v14, v0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    .line 1338
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 1339
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    iput-object v9, v0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    .line 1340
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 1341
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 1342
    new-instance v9, Landroid/animation/AnimatorSet$2;

    invoke-direct {v9, p0, v0}, Landroid/animation/AnimatorSet$2;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V

    iput-object v9, v0, Landroid/animation/AnimatorSet;->mDummyListener:Landroid/animation/AnimatorListenerAdapter;

    .line 1353
    iput-boolean v11, v0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 1354
    iput-boolean v14, v0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    .line 1360
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 1361
    .local v1, "clonesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/animation/AnimatorSet$Node;Landroid/animation/AnimatorSet$Node;>;"
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    if-ge v4, v7, :cond_0

    .line 1362
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    .line 1363
    .local v5, "node":Landroid/animation/AnimatorSet$Node;
    invoke-virtual {v5}, Landroid/animation/AnimatorSet$Node;->clone()Landroid/animation/AnimatorSet$Node;

    move-result-object v6

    .line 1365
    .local v6, "nodeClone":Landroid/animation/AnimatorSet$Node;
    iget-object v9, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v11, p0, Landroid/animation/AnimatorSet;->mDummyListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v9, v11}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1366
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    iget-object v9, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1368
    iget-object v9, v0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    iget-object v11, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v9, v11, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1371
    .end local v5    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v6    # "nodeClone":Landroid/animation/AnimatorSet$Node;
    :cond_0
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    iput-object v9, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 1372
    iget-object v9, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v9, v9, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    check-cast v9, Landroid/animation/ValueAnimator;

    iput-object v9, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    .line 1376
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v7, :cond_8

    .line 1377
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    .line 1379
    .restart local v5    # "node":Landroid/animation/AnimatorSet$Node;
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    .line 1380
    .restart local v6    # "nodeClone":Landroid/animation/AnimatorSet$Node;
    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    if-nez v9, :cond_1

    move-object v9, v10

    :goto_2
    iput-object v9, v6, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 1382
    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-nez v9, :cond_2

    const/4 v8, 0x0

    .line 1383
    .local v8, "size":I
    :goto_3
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_4
    if-ge v3, v8, :cond_3

    .line 1384
    iget-object v11, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v11, v3, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1383
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1381
    .end local v3    # "j":I
    .end local v8    # "size":I
    :cond_1
    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    goto :goto_2

    .line 1382
    :cond_2
    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .restart local v8    # "size":I
    goto :goto_3

    .line 1386
    .restart local v3    # "j":I
    :cond_3
    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v9, :cond_4

    const/4 v8, 0x0

    .line 1387
    :goto_5
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v8, :cond_5

    .line 1388
    iget-object v11, v6, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v11, v3, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1387
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1386
    :cond_4
    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    goto :goto_5

    .line 1390
    :cond_5
    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-nez v9, :cond_6

    const/4 v8, 0x0

    .line 1391
    :goto_7
    const/4 v3, 0x0

    :goto_8
    if-ge v3, v8, :cond_7

    .line 1392
    iget-object v11, v6, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v11, v3, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1391
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1390
    :cond_6
    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    goto :goto_7

    .line 1376
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1395
    .end local v3    # "j":I
    .end local v5    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v6    # "nodeClone":Landroid/animation/AnimatorSet$Node;
    .end local v8    # "size":I
    :cond_8
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1318
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public commitAnimationFrame(J)V
    .locals 0
    .param p1, "frameTime"    # J

    .prologue
    .line 1091
    return-void
.end method

.method public doAnimationFrame(J)Z
    .locals 19
    .param p1, "frameTime"    # J

    .prologue
    .line 992
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v4

    .line 993
    .local v4, "durationScale":F
    const/4 v12, 0x0

    cmpl-float v12, v4, v12

    if-nez v12, :cond_0

    .line 995
    invoke-direct/range {p0 .. p0}, Landroid/animation/AnimatorSet;->forceToEnd()V

    .line 996
    const/4 v12, 0x1

    return v12

    .line 1001
    :cond_0
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gez v12, :cond_1

    .line 1002
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 1006
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/animation/AnimatorSet;->mPaused:Z

    if-eqz v12, :cond_2

    .line 1010
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 1011
    invoke-direct/range {p0 .. p0}, Landroid/animation/AnimatorSet;->removeAnimationCallback()V

    .line 1012
    const/4 v12, 0x0

    return v12

    .line 1013
    :cond_2
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/animation/AnimatorSet;->mPauseTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_3

    .line 1015
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/animation/AnimatorSet;->mPauseTime:J

    sub-long v14, p1, v14

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 1016
    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 1020
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1021
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet$SeekState;->updateSeekDirection(Z)V

    .line 1022
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v12, :cond_5

    .line 1023
    move-wide/from16 v0, p1

    long-to-float v12, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v14

    long-to-float v13, v14

    mul-float/2addr v13, v4

    sub-float/2addr v12, v13

    float-to-long v12, v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 1028
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet$SeekState;->reset()V

    .line 1031
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-nez v12, :cond_6

    move-wide/from16 v0, p1

    long-to-float v12, v0

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    long-to-float v13, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/animation/AnimatorSet;->mStartDelay:J

    long-to-float v14, v14

    mul-float/2addr v14, v4

    add-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_6

    .line 1033
    const/4 v12, 0x0

    return v12

    .line 1025
    :cond_5
    move-wide/from16 v0, p1

    long-to-float v12, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mStartDelay:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    long-to-float v13, v14

    mul-float/2addr v13, v4

    sub-float/2addr v12, v13

    float-to-long v12, v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    goto :goto_0

    .line 1038
    :cond_6
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    sub-long v12, p1, v12

    long-to-float v12, v12

    div-float/2addr v12, v4

    float-to-long v10, v12

    .line 1039
    .local v10, "unscaledPlayTime":J
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    .line 1043
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/animation/AnimatorSet;->findLatestEventIdForTime(J)I

    move-result v7

    .line 1044
    .local v7, "latestId":I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 1046
    .local v9, "startId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v10, v11}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    .line 1048
    move-object/from16 v0, p0

    iput v7, v0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 1051
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_8

    .line 1052
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    .line 1053
    .local v8, "node":Landroid/animation/AnimatorSet$Node;
    iget-boolean v12, v8, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v12, :cond_7

    .line 1054
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v8}, Landroid/animation/AnimatorSet;->getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;)J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12, v13}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    .line 1051
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1059
    .end local v8    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    :goto_2
    if-ltz v6, :cond_a

    .line 1060
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/AnimatorSet$Node;

    iget-boolean v12, v12, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-eqz v12, :cond_9

    .line 1061
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1059
    :cond_9
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 1065
    :cond_a
    const/4 v5, 0x0

    .line 1066
    .local v5, "finished":Z
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v12, :cond_d

    .line 1067
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-ne v12, v13, :cond_c

    .line 1069
    const/4 v5, 0x1

    .line 1078
    :cond_b
    :goto_3
    if-eqz v5, :cond_f

    .line 1079
    invoke-direct/range {p0 .. p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    .line 1080
    const/4 v12, 0x1

    return v12

    .line 1070
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget v12, v0, Landroid/animation/AnimatorSet;->mLastEventId:I

    const/4 v13, 0x3

    if-ge v12, v13, :cond_b

    .line 1072
    const/4 v5, 0x1

    goto :goto_3

    .line 1075
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget v12, v0, Landroid/animation/AnimatorSet;->mLastEventId:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v12, v13, :cond_e

    const/4 v5, 0x1

    goto :goto_3

    :cond_e
    const/4 v5, 0x0

    goto :goto_3

    .line 1082
    :cond_f
    const/4 v12, 0x0

    return v12
.end method

.method public end()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 465
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_0

    .line 466
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v3, "Animators may only be run on Looper threads"

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 468
    :cond_0
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 469
    return-void

    .line 471
    :cond_1
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 473
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v2, :cond_5

    .line 475
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    iput v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 476
    :cond_2
    :goto_1
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    if-lez v2, :cond_7

    .line 477
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 478
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    iget v3, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 479
    .local v1, "event":Landroid/animation/AnimatorSet$AnimationEvent;
    iget-object v2, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v0, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 480
    .local v0, "anim":Landroid/animation/Animator;
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    iget-boolean v2, v2, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v2, :cond_2

    .line 483
    iget v2, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v2, v4, :cond_4

    .line 484
    invoke-virtual {v0}, Landroid/animation/Animator;->reverse()V

    goto :goto_1

    .line 475
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    :cond_3
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    goto :goto_0

    .line 485
    .restart local v0    # "anim":Landroid/animation/Animator;
    .restart local v1    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    :cond_4
    iget v2, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 486
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v2

    .line 485
    if-eqz v2, :cond_2

    .line 490
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_1

    .line 494
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    :cond_5
    :goto_2
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_7

    .line 497
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 498
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    iget v3, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 499
    .restart local v1    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    iget-object v2, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v0, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 500
    .restart local v0    # "anim":Landroid/animation/Animator;
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    iget-boolean v2, v2, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v2, :cond_5

    .line 503
    iget v2, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v2, :cond_6

    .line 504
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_2

    .line 505
    :cond_6
    iget v2, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v2, v4, :cond_5

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 509
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_2

    .line 513
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    :cond_7
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 515
    :cond_8
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    .line 516
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 4

    .prologue
    .line 340
    invoke-super {p0}, Landroid/animation/Animator;->getChangingConfigurations()I

    move-result v0

    .line 341
    .local v0, "conf":I
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 342
    .local v2, "nodeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 343
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v0, v3

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    :cond_0
    return v0
.end method

.method public getChildAnimations()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v0, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 305
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 306
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 307
    .local v2, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v2, v4, :cond_0

    .line 308
    iget-object v4, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1
    return-object v0
.end method

.method public getCurrentPlayTime()J
    .locals 6

    .prologue
    .line 958
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 959
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v2

    return-wide v2

    .line 961
    :cond_0
    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 963
    const-wide/16 v2, 0x0

    return-wide v2

    .line 965
    :cond_1
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    .line 966
    .local v0, "durationScale":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 967
    :cond_2
    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v1, :cond_3

    .line 968
    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v1, v0

    float-to-long v2, v1

    return-wide v2

    .line 970
    :cond_3
    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v1, v0

    float-to-long v2, v1

    return-wide v2
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 600
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 547
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    return-wide v0
.end method

.method public getTotalDuration()J
    .locals 2

    .prologue
    .line 1737
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    .line 1738
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    .line 1739
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    return-wide v0
.end method

.method isInitialized()Z
    .locals 3

    .prologue
    .line 879
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    if-eqz v2, :cond_0

    .line 880
    const/4 v2, 0x1

    return v2

    .line 883
    :cond_0
    const/4 v0, 0x1

    .line 884
    .local v0, "allInitialized":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 885
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    iget-object v2, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    .line 886
    const/4 v0, 0x0

    .line 890
    :cond_1
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    .line 891
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    return v2

    .line 884
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 528
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 529
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    return v0

    .line 531
    :cond_0
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    return v0
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 646
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 647
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v2, "Animators may only be run on Looper threads"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 649
    :cond_0
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    .line 650
    .local v0, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    .line 651
    if-nez v0, :cond_1

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    if-eqz v1, :cond_1

    .line 652
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 654
    :cond_1
    return-void
.end method

.method public play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    const/4 v0, 0x0

    .line 396
    if-eqz p1, :cond_0

    .line 397
    new-instance v0, Landroid/animation/AnimatorSet$Builder;

    invoke-direct {v0, p0, p1}, Landroid/animation/AnimatorSet$Builder;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    return-object v0

    .line 399
    :cond_0
    return-object v0
.end method

.method public playSequentially(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v3, 0x0

    .line 283
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 284
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 285
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 292
    :cond_0
    return-void

    .line 287
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 288
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public varargs playSequentially([Landroid/animation/Animator;)V
    .locals 3
    .param p1, "items"    # [Landroid/animation/Animator;

    .prologue
    .line 265
    if-eqz p1, :cond_0

    .line 266
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 267
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 274
    :cond_0
    return-void

    .line 269
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 270
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public playTogether(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/animation/Animator;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 247
    const/4 v2, 0x0

    .line 248
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "builder":Landroid/animation/AnimatorSet$Builder;
    .local v1, "anim$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 249
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_0

    .line 250
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    goto :goto_0

    .line 252
    .end local v2    # "builder":Landroid/animation/AnimatorSet$Builder;
    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 256
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "anim$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public varargs playTogether([Landroid/animation/Animator;)V
    .locals 3
    .param p1, "items"    # [Landroid/animation/Animator;

    .prologue
    .line 232
    if-eqz p1, :cond_0

    .line 233
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 234
    .local v0, "builder":Landroid/animation/AnimatorSet$Builder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 235
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method pulseAnimationFrame(J)Z
    .locals 1
    .param p1, "frameTime"    # J

    .prologue
    .line 1095
    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->doAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method public resume()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 658
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 659
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v2, "Animators may only be run on Looper threads"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 661
    :cond_0
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    .line 662
    .local v0, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    .line 663
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 664
    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 665
    invoke-direct {p0, v4, v5}, Landroid/animation/AnimatorSet;->addAnimationCallback(J)V

    .line 668
    :cond_1
    return-void
.end method

.method public reverse()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1420
    invoke-direct {p0, v0, v0}, Landroid/animation/AnimatorSet;->start(ZZ)V

    .line 1421
    return-void
.end method

.method public setCurrentPlayTime(J)V
    .locals 7
    .param p1, "playTime"    # J

    .prologue
    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    .line 912
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 914
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Error: Cannot seek in reverse in an infinite AnimatorSet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 918
    :cond_0
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    sub-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 920
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Error: Play time should always be in between0 and duration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 919
    :cond_2
    cmp-long v0, p1, v4

    if-ltz v0, :cond_1

    .line 924
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initAnimation()V

    .line 926
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 927
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v0, :cond_3

    .line 928
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Error: Something went wrong. mReversing should not be set when AnimatorSet is not started."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 931
    :cond_3
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 932
    invoke-direct {p0, v4, v5}, Landroid/animation/AnimatorSet;->findLatestEventIdForTime(J)I

    .line 934
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initChildren()V

    .line 935
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-direct {p0, v0}, Landroid/animation/AnimatorSet;->skipToStartValue(Z)V

    .line 936
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v0, v4, v5, v1}, Landroid/animation/AnimatorSet$SeekState;->setPlayTime(JZ)V

    .line 938
    :cond_4
    iget-boolean v6, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/animation/AnimatorSet;->animateBasedOnPlayTime(JJZ)V

    .line 939
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v0, p1, p2, v1}, Landroid/animation/AnimatorSet$SeekState;->setPlayTime(JZ)V

    .line 945
    :goto_0
    return-void

    .line 943
    :cond_5
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v0, p1, p2, v1}, Landroid/animation/AnimatorSet$SeekState;->setPlayTime(JZ)V

    goto :goto_0
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/AnimatorSet;
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 613
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 614
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "duration must be a value of zero or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    .line 618
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mDuration:J

    .line 619
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 359
    iput-object p1, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 360
    return-void
.end method

.method public setStartDelay(J)V
    .locals 13
    .param p1, "startDelay"    # J

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    .line 560
    cmp-long v5, p1, v10

    if-gez v5, :cond_0

    .line 561
    const-string/jumbo v5, "AnimatorSet"

    const-string/jumbo v6, "Start delay should always be non-negative"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const-wide/16 p1, 0x0

    .line 564
    :cond_0
    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    sub-long v0, p1, v6

    .line 565
    .local v0, "delta":J
    cmp-long v5, v0, v10

    if-nez v5, :cond_1

    .line 566
    return-void

    .line 568
    :cond_1
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 569
    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    if-nez v5, :cond_6

    .line 571
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 572
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_5

    .line 573
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 574
    .local v3, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-ne v3, v5, :cond_2

    .line 575
    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    iput-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 572
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 577
    :cond_2
    iget-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    move-wide v6, v8

    :goto_2
    iput-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 579
    iget-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    move-wide v6, v8

    :goto_3
    iput-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    goto :goto_1

    .line 578
    :cond_3
    iget-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    add-long/2addr v6, v0

    goto :goto_2

    .line 580
    :cond_4
    iget-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    add-long/2addr v6, v0

    goto :goto_3

    .line 584
    .end local v3    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_5
    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_6

    .line 585
    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    .line 588
    .end local v2    # "i":I
    .end local v4    # "size":I
    :cond_6
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 323
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 324
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 325
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 326
    .local v2, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v0, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 327
    .local v0, "animation":Landroid/animation/Animator;
    instance-of v4, v0, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_1

    .line 328
    check-cast v0, Landroid/animation/AnimatorSet;

    .end local v0    # "animation":Landroid/animation/Animator;
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 324
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    .restart local v0    # "animation":Landroid/animation/Animator;
    :cond_1
    instance-of v4, v0, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_0

    .line 330
    check-cast v0, Landroid/animation/ObjectAnimator;

    .end local v0    # "animation":Landroid/animation/Animator;
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    goto :goto_1

    .line 333
    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_2
    return-void
.end method

.method public setupEndValues()V
    .locals 4

    .prologue
    .line 635
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 636
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 637
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 638
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v1, v3, :cond_0

    .line 639
    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->setupEndValues()V

    .line 636
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 642
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1
    return-void
.end method

.method public setupStartValues()V
    .locals 4

    .prologue
    .line 624
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 625
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 626
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 627
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v1, v3, :cond_0

    .line 628
    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->setupStartValues()V

    .line 625
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 631
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1
    return-void
.end method

.method public shouldPlayTogether()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1729
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    .line 1730
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    .line 1732
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method skipToEndValue(Z)V
    .locals 4
    .param p1, "inReverse"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 782
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 783
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Children must be initialized."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 787
    :cond_0
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initAnimation()V

    .line 792
    if-eqz p1, :cond_2

    .line 793
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 794
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v1, v2, :cond_1

    .line 795
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->skipToEndValue(Z)V

    .line 793
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 799
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 800
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 801
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->skipToEndValue(Z)V

    .line 799
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 805
    :cond_4
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 684
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/animation/AnimatorSet;->start(ZZ)V

    .line 685
    return-void
.end method

.method startWithoutPulsing(Z)V
    .locals 1
    .param p1, "inReverse"    # Z

    .prologue
    .line 689
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/AnimatorSet;->start(ZZ)V

    .line 690
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1425
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AnimatorSet@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1426
    .local v2, "returnVal":Ljava/lang/String;
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1427
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1428
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 1429
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1431
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
