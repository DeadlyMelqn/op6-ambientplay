.class public Lcom/android/systemui/recents/RecentsImpl;
.super Ljava/lang/Object;
.source "RecentsImpl.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsImpl$1;,
        Lcom/android/systemui/recents/RecentsImpl$2;,
        Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;
    }
.end annotation


# static fields
.field private static final EMPTY_SET:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation
.end field

.field private static mToggleFollowingTransitionStart:Z

.field private static mWaitingForTransitionStart:Z

.field protected static sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

.field protected static sLastPipTime:J


# instance fields
.field private mBackgroundLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

.field protected mContext:Landroid/content/Context;

.field mDraggingInRecents:Z

.field private mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

.field protected mHandler:Landroid/os/Handler;

.field mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

.field final mHeaderBarLock:Ljava/lang/Object;

.field protected mLastToggleTime:J

.field mLaunchedWhileDocking:Z

.field private mResetToggleFlagListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

.field mTaskBarHeight:I

.field mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

.field mTmpBounds:Landroid/graphics/Rect;

.field mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field protected mTriggeredFromAltTab:Z


# direct methods
.method static synthetic -get0()Landroid/util/ArraySet;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/RecentsImpl;->EMPTY_SET:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/RecentsImpl;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/RecentsImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mBackgroundLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/RecentsImpl;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/RecentsImpl;
    .param p1, "windowRectOverride"    # Landroid/graphics/Rect;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsImpl;->getWindowRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/recents/RecentsImpl;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/recents/RecentsImpl;
    .param p1, "stackLayout"    # Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .param p2, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p3, "windowRect"    # Landroid/graphics/Rect;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/recents/RecentsImpl;->updateDummyStackViewLayout(Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/RecentsImpl;->EMPTY_SET:Landroid/util/ArraySet;

    .line 216
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/systemui/recents/RecentsImpl;->sLastPipTime:J

    .line 219
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/RecentsImpl;->mWaitingForTransitionStart:Z

    .line 222
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/recents/RecentsImpl;->mToggleFollowingTransitionStart:Z

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v1, Lcom/android/systemui/recents/RecentsImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsImpl$1;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    .line 224
    iput-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mResetToggleFlagListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 239
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpBounds:Landroid/graphics/Rect;

    .line 240
    new-instance v1, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v1}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 245
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    .line 252
    new-instance v1, Lcom/android/systemui/recents/misc/DozeTrigger;

    new-instance v2, Lcom/android/systemui/recents/RecentsImpl$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/RecentsImpl$2;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    const/16 v3, 0xe1

    invoke-direct {v1, v3, v2}, Lcom/android/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    .line 264
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 265
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    .line 266
    new-instance v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mBackgroundLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 269
    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->get()Lcom/android/systemui/recents/misc/ForegroundThread;

    .line 272
    new-instance v1, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    .line 273
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 274
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V

    .line 277
    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 278
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->reloadResources()V

    .line 279
    return-void
.end method

.method private calculateWindowStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "inOutInsets"    # Landroid/graphics/Rect;
    .param p2, "windowRect"    # Landroid/graphics/Rect;
    .param p3, "displayRect"    # Landroid/graphics/Rect;

    .prologue
    .line 839
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 840
    .local v0, "appRect":Landroid/graphics/Rect;
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 843
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 844
    .local v1, "windowRectWithInsets":Landroid/graphics/Rect;
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 845
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 846
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 847
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 848
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 849
    return-void
.end method

.method public static clearLastPipTime()V
    .locals 2

    .prologue
    .line 723
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/systemui/recents/RecentsImpl;->sLastPipTime:J

    .line 724
    return-void
.end method

.method public static consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .locals 2

    .prologue
    .line 707
    sget-object v0, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 708
    .local v0, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 709
    return-object v0
.end method

.method private drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/GraphicBuffer;
    .locals 10
    .param p1, "toTask"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    const/4 v6, 0x0

    .line 989
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 990
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v5, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v4, v5

    .line 991
    .local v4, "width":I
    iget-object v5, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v1, v5

    .line 992
    .local v1, "height":I
    if-eqz p2, :cond_2

    iget-object v5, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v5, :cond_2

    if-lez v4, :cond_2

    if-lez v1, :cond_2

    .line 993
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v6

    .line 994
    :try_start_0
    iget-boolean v5, p1, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInSafeMode()Z

    move-result v0

    .line 995
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v5, v4, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewSizeChanged(II)V

    .line 1002
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->getIconView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1003
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 1004
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1006
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v7, 0x0

    invoke-virtual {v5, p1, v7, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->bindToTask(Lcom/android/systemui/recents/model/Task;ZZ)V

    .line 1008
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    .line 1009
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v7, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-virtual {v5, v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->setDimAlpha(F)V

    .line 1010
    iget v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    .line 1011
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 1010
    invoke-static {v4, v5, v7, v8, v9}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->drawViewIntoGraphicBuffer(IILandroid/view/View;FI)Landroid/graphics/GraphicBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    monitor-exit v6

    return-object v5

    .line 994
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    .local v0, "disabledInSafeMode":Z
    goto :goto_0

    .line 993
    .end local v0    # "disabledInSafeMode":Z
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1015
    :cond_2
    return-object v6
.end method

.method public static getLastPipTime()J
    .locals 2

    .prologue
    .line 716
    sget-wide v0, Lcom/android/systemui/recents/RecentsImpl;->sLastPipTime:J

    return-wide v0
.end method

.method private getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;)Landroid/util/Pair;
    .locals 24
    .param p1, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "windowOverrideRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            "Landroid/graphics/Rect;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/app/ActivityOptions;",
            "Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 889
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v6

    iget-boolean v12, v6, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    .line 890
    .local v12, "isLowRamDevice":Z
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 891
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 892
    .local v13, "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/AppTransitionAnimationSpec;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v16

    .line 893
    .local v16, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v4

    .line 894
    .local v4, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v15

    .line 896
    .local v15, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 897
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    .line 899
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v11, v6, -0x1

    .local v11, "i":I
    :goto_0
    if-ltz v11, :cond_1

    .line 900
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/model/Task;

    .line 901
    .local v5, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 903
    invoke-virtual {v15}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v8, 0x0

    move-object/from16 v9, p2

    .line 902
    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 905
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/systemui/recents/RecentsImpl;->drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/GraphicBuffer;

    move-result-object v17

    .line 906
    .local v17, "thumbnail":Landroid/graphics/GraphicBuffer;
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 907
    .local v19, "toTaskRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 908
    new-instance v6, Landroid/view/AppTransitionAnimationSpec;

    iget-object v7, v5, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v6, v7, v0, v1}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    .end local v17    # "thumbnail":Landroid/graphics/GraphicBuffer;
    .end local v19    # "toTaskRect":Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 911
    .end local v5    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v14, v6, [Landroid/view/AppTransitionAnimationSpec;

    .line 912
    .local v14, "specsArray":[Landroid/view/AppTransitionAnimationSpec;
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 916
    new-instance v7, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 917
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v12, :cond_2

    const/4 v6, 0x0

    .line 916
    :goto_1
    move-object/from16 v0, p0

    invoke-static {v8, v14, v9, v6, v0}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;[Landroid/view/AppTransitionAnimationSpec;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 918
    const/4 v8, 0x0

    .line 916
    invoke-direct {v7, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7

    .line 917
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mResetToggleFlagListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    goto :goto_1

    .line 921
    .end local v4    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .end local v11    # "i":I
    .end local v13    # "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/AppTransitionAnimationSpec;>;"
    .end local v14    # "specsArray":[Landroid/view/AppTransitionAnimationSpec;
    .end local v15    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .end local v16    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_3
    new-instance v18, Lcom/android/systemui/recents/model/Task;

    invoke-direct/range {v18 .. v18}, Lcom/android/systemui/recents/model/Task;-><init>()V

    .line 922
    .local v18, "toTask":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v6, v1, v2}, Lcom/android/systemui/recents/RecentsImpl;->getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v21

    .line 926
    .local v21, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    if-nez v21, :cond_4

    .line 928
    new-instance v6, Landroid/util/Pair;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 932
    :cond_4
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    .line 934
    .local v20, "toTaskRect":Landroid/graphics/RectF;
    new-instance v6, Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;-><init>(Landroid/content/Context;)V

    .line 935
    new-instance v7, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 934
    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->getAppTransitionFuture(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;

    move-result-object v10

    .line 946
    .local v10, "future":Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;
    new-instance v7, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 947
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;->getFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v22

    if-eqz v12, :cond_5

    const/4 v6, 0x0

    .line 948
    :goto_2
    const/16 v23, 0x0

    .line 946
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v8, v9, v0, v6, v1}, Landroid/app/ActivityOptions;->makeMultiThumbFutureAspectScaleAnimation(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v6

    invoke-direct {v7, v6, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7

    .line 947
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mResetToggleFlagListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    goto :goto_2
.end method

.method private getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 7
    .param p1, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p2, "runningTaskOut"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "windowOverrideRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 958
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    .line 959
    .local v6, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 960
    .local v1, "launchTask":Lcom/android/systemui/recents/model/Task;
    if-eqz v1, :cond_0

    .line 961
    invoke-virtual {p2, v1}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    .line 977
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 978
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    .line 979
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    .line 980
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object v5, p3

    .line 979
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 981
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v0

    .line 964
    :cond_0
    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 967
    if-nez v1, :cond_1

    .line 968
    const-string/jumbo v0, "RecentsImpl"

    const-string/jumbo v2, "launchTask is still null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    return-object v4

    .line 973
    :cond_1
    invoke-virtual {p2, v1}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_0
.end method

.method private getWindowRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "windowRectOverride"    # Landroid/graphics/Rect;

    .prologue
    .line 776
    if-eqz p1, :cond_0

    .line 777
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 776
    :goto_0
    return-object v0

    .line 778
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method private getWindowRectOverride(I)Landroid/graphics/Rect;
    .locals 7
    .param p1, "growTarget"    # I

    .prologue
    .line 1129
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 1132
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1133
    .local v2, "result":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 1135
    .local v6, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 1136
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDockedDividerSize(Landroid/content/Context;)I

    move-result v5

    .line 1134
    const/4 v1, 0x4

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 1137
    return-object v2
.end method

.method static synthetic lambda$-com_android_systemui_recents_RecentsImpl_53177(Landroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;)V
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "opts"    # Landroid/app/ActivityOptions;
    .param p2, "future"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;

    .prologue
    const/4 v4, 0x0

    .line 1153
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    sget-boolean v0, Lcom/android/systemui/recents/RecentsConfiguration;->LAUNCH_FROM_GESTURE:Z

    .line 1155
    .local v0, "fromGesture":Z
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "RecentsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handle start Activity, gesture:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :cond_0
    if-eqz v0, :cond_2

    .line 1159
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1, p0, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityAsUserAsync(Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    .line 1160
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_1
    :goto_0
    return-void

    .line 1162
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityAsUserAsync(Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    .line 1163
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1164
    if-eqz p2, :cond_1

    .line 1165
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;->precacheSpecs()V

    goto :goto_0
.end method

.method private preloadIcon(I)V
    .locals 4
    .param p1, "runningTaskId"    # I

    .prologue
    .line 856
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 857
    .local v0, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    iput p1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 858
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 859
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 860
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 861
    return-void
.end method

.method private reloadResources()V
    .locals 10

    .prologue
    const v4, 0x7f0703dc

    const v1, 0x7f0703db

    .line 730
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 732
    .local v9, "res":Landroid/content/res/Resources;
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 739
    const v7, 0x7f0703bc

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v4

    .line 732
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    .line 741
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 742
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f0d0122

    .line 743
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 742
    invoke-virtual {v8, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 744
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLayoutDirection(I)V

    .line 745
    return-void
.end method

.method private startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;)V
    .locals 4
    .param p1, "opts"    # Landroid/app/ActivityOptions;
    .param p2, "future"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;

    .prologue
    .line 1145
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1146
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1147
    const v2, 0x10804000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1150
    new-instance v0, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    invoke-direct {v0}, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;-><init>()V

    .line 1151
    .local v0, "hideMenuEvent":Lcom/android/systemui/recents/events/component/HidePipMenuEvent;
    new-instance v2, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds$1;

    invoke-direct {v2, v1, p1, p2}, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 1170
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1171
    return-void
.end method

.method private updateDummyStackViewLayout(Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "stackLayout"    # Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .param p2, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p3, "windowRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 749
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    .line 750
    .local v7, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 751
    .local v1, "displayRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 752
    .local v8, "systemInsets":Landroid/graphics/Rect;
    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    .line 757
    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 759
    iput v3, v8, Landroid/graphics/Rect;->bottom:I

    .line 761
    :cond_0
    invoke-direct {p0, v8, p3, v1}, Lcom/android/systemui/recents/RecentsImpl;->calculateWindowStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 762
    invoke-virtual {p3, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 765
    invoke-virtual {p1, v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    .line 766
    if-eqz p2, :cond_1

    .line 767
    iget v3, v8, Landroid/graphics/Rect;->top:I

    .line 768
    iget v4, v8, Landroid/graphics/Rect;->left:I

    iget v5, v8, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpBounds:Landroid/graphics/Rect;

    move-object v0, p1

    move-object v2, p3

    .line 767
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/graphics/Rect;)V

    .line 769
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reset()V

    .line 770
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpBounds:Landroid/graphics/Rect;

    .line 771
    invoke-static {p2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v2

    .line 770
    invoke-virtual {p1, v1, p3, v0, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    .line 773
    :cond_1
    return-void
.end method

.method private updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "windowRectOverride"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x0

    .line 791
    invoke-direct {p0, p2}, Lcom/android/systemui/recents/RecentsImpl;->getWindowRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 792
    .local v5, "windowRect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 793
    .local v3, "taskViewWidth":I
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v4

    .line 794
    .local v4, "useGridLayout":Z
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v6

    invoke-direct {p0, v6, p1, v5}, Lcom/android/systemui/recents/RecentsImpl;->updateDummyStackViewLayout(Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    .line 795
    if-eqz p1, :cond_0

    .line 796
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v1

    .line 797
    .local v1, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/systemui/recents/model/TaskStack;->removeAllTasks(Z)V

    .line 798
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6, p1, v8}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 800
    if-eqz v4, :cond_5

    .line 801
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getGridAlgorithm()Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    move-result-object v0

    .line 802
    .local v0, "gridLayout":Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;
    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->initialize(Landroid/graphics/Rect;)V

    .line 804
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    new-instance v7, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v7}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    .line 803
    invoke-virtual {v0, v8, v6, v7, v1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->getTransform(IILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v6

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v3, v6

    .line 814
    .end local v0    # "gridLayout":Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;
    .end local v1    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    if-lez v3, :cond_4

    .line 815
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v7

    .line 816
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v6

    if-ne v6, v3, :cond_1

    .line 817
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v6

    iget v8, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    if-eq v6, v8, :cond_3

    .line 818
    :cond_1
    if-eqz v4, :cond_2

    .line 819
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/android/systemui/recents/views/TaskViewHeader;->setShouldDarkenBackgroundColor(Z)V

    .line 820
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->setNoUserInteractionState()V

    .line 822
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->forceLayout()V

    .line 823
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 824
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 825
    iget v9, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 823
    invoke-virtual {v6, v8, v9}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    .line 827
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v8, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10, v3, v8}, Lcom/android/systemui/recents/views/TaskViewHeader;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 830
    :cond_4
    return-void

    .line 807
    .restart local v1    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    :cond_5
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getUntransformedTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 808
    .local v2, "taskViewBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 809
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    goto :goto_0

    .line 815
    .end local v1    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .end local v2    # "taskViewBounds":Landroid/graphics/Rect;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method


# virtual methods
.method public cancelPreloadingRecents()V
    .locals 0

    .prologue
    .line 519
    return-void
.end method

.method public dockTopTask(IIILandroid/graphics/Rect;)V
    .locals 8
    .param p1, "topTaskId"    # I
    .param p2, "dragMode"    # I
    .param p3, "stackCreateMode"    # I
    .param p4, "initialBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 675
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    .line 679
    .local v7, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v7, p1, p3, p4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->moveTaskToDockedStack(IILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    invoke-direct {v2, p2, p4}, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 683
    if-nez p2, :cond_1

    move v2, v4

    .line 687
    :goto_0
    const/4 v6, -0x1

    move-object v0, p0

    move v3, v1

    move v5, v1

    .line 681
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/RecentsImpl;->showRecents(ZZZZZI)V

    .line 689
    :cond_0
    return-void

    :cond_1
    move v2, v1

    .line 683
    goto :goto_0
.end method

.method protected getHomeTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 5

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 880
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    .line 878
    const v2, 0x7f0100af

    .line 879
    const v3, 0x7f0100b0

    .line 880
    const/4 v4, 0x0

    .line 877
    invoke-static {v0, v2, v3, v1, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 5

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 870
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    .line 868
    const v2, 0x7f0100b1

    .line 869
    const v3, 0x7f0100b2

    .line 870
    const/4 v4, 0x0

    .line 867
    invoke-static {v0, v2, v3, v1, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public hideRecents(ZZ)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 366
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->showNextTask()V

    .line 372
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 373
    return-void

    .line 378
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 380
    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_RecentsImpl_22696(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 8
    .param p1, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    const/4 v7, 0x0

    .line 491
    new-instance v0, Landroid/util/MutableBoolean;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 492
    .local v0, "isHomeStackVisible":Landroid/util/MutableBoolean;
    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 493
    invoke-virtual {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    .line 494
    .local v2, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v2, :cond_0

    .line 495
    return-void

    .line 498
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 499
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 500
    sget-object v4, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iget-boolean v6, v0, Landroid/util/MutableBoolean;->value:Z

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 501
    sget-object v4, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    .line 502
    .local v3, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 505
    iget v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/systemui/recents/RecentsImpl;->preloadIcon(I)V

    .line 511
    invoke-direct {p0, v3, v7}, Lcom/android/systemui/recents/RecentsImpl;->updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    .end local v1    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .end local v2    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_1
    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_RecentsImpl_32041()V
    .locals 1

    .prologue
    .line 698
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsImpl;->toggleRecents(I)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_RecentsImpl_42912(Landroid/graphics/RectF;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Ljava/util/List;
    .locals 5
    .param p1, "toTaskRect"    # Landroid/graphics/RectF;
    .param p2, "toTask"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    .line 936
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 937
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 938
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/recents/RecentsImpl;->drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/GraphicBuffer;

    move-result-object v1

    .line 940
    .local v1, "thumbnail":Landroid/graphics/GraphicBuffer;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/AppTransitionAnimationSpec;

    new-instance v3, Landroid/view/AppTransitionAnimationSpec;

    .line 941
    iget-object v4, p2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    .line 940
    invoke-direct {v3, v4, v1, v0}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method public onAnimationFinished()V
    .locals 2

    .prologue
    .line 1177
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1178
    return-void
.end method

.method public onBootCompleted()V
    .locals 5

    .prologue
    .line 284
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 285
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v2

    .line 286
    .local v2, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 287
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 288
    .local v0, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getIconCacheSize()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 289
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 290
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 291
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 292
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 3

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->reloadResources()V

    .line 296
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->reloadOnConfigurationChange()V

    .line 297
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mBackgroundLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    monitor-enter v1

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mBackgroundLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 300
    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDraggingInRecents(F)V
    .locals 2
    .param p1, "distanceFromTop"    # F

    .prologue
    .line 522
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 523
    return-void
.end method

.method public onDraggingInRecentsEnded(F)V
    .locals 2
    .param p1, "velocity"    # F

    .prologue
    .line 526
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 527
    return-void
.end method

.method public onShowCurrentUserToast(II)V
    .locals 1
    .param p1, "msgResId"    # I
    .param p2, "msgLength"    # I

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 531
    return-void
.end method

.method public onStartScreenPinning(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskId"    # I

    .prologue
    move-object v0, p1

    .line 317
    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    .line 318
    .local v0, "app":Lcom/android/systemui/SystemUIApplication;
    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 319
    .local v1, "statusBar":Lcom/android/systemui/statusbar/phone/StatusBar;
    if-eqz v1, :cond_0

    .line 320
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->showScreenPinningRequest(IZ)V

    .line 322
    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "visible"    # Z

    .prologue
    .line 308
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->setRecentsVisibility(Z)V

    .line 309
    return-void
.end method

.method public preloadRecents()V
    .locals 3

    .prologue
    .line 482
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 483
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isScreenPinningActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    return-void

    .line 490
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 515
    return-void
.end method

.method public setWaitingForTransitionStart(Z)V
    .locals 3
    .param p1, "waitingForTransitionStart"    # Z

    .prologue
    .line 692
    sget-boolean v0, Lcom/android/systemui/recents/RecentsImpl;->mWaitingForTransitionStart:Z

    if-ne v0, p1, :cond_0

    .line 693
    return-void

    .line 696
    :cond_0
    sput-boolean p1, Lcom/android/systemui/recents/RecentsImpl;->mWaitingForTransitionStart:Z

    .line 697
    if-nez p1, :cond_1

    sget-boolean v0, Lcom/android/systemui/recents/RecentsImpl;->mToggleFollowingTransitionStart:Z

    if-eqz v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/-$Lambda$1-q0w1UUkVikUpJp0cXkOlx4SYg;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/recents/-$Lambda$1-q0w1UUkVikUpJp0cXkOlx4SYg;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 700
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/RecentsImpl;->mToggleFollowingTransitionStart:Z

    .line 701
    return-void
.end method

.method public showNextAffiliatedTask()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 663
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "overview_affiliated_task_next"

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 664
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsImpl;->showRelativeAffiliatedTask(Z)V

    .line 665
    return-void
.end method

.method public showNextTask()V
    .locals 18

    .prologue
    .line 537
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 538
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v11

    .line 539
    .local v11, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v12

    .line 540
    .local v12, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v11, v12, v2, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 541
    invoke-virtual {v12}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v8

    .line 544
    .local v8, "focusedStack":Lcom/android/systemui/recents/model/TaskStack;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    .line 547
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v13

    .line 548
    .local v13, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v13, :cond_2

    return-void

    .line 551
    :cond_2
    iget v2, v13, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isHomeStack(I)Z

    move-result v10

    .line 552
    .local v10, "isRunningTaskInHomeStack":Z
    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v16

    .line 553
    .local v16, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/16 v17, 0x0

    .line 554
    .local v17, "toTask":Lcom/android/systemui/recents/model/Task;
    const/4 v5, 0x0

    .line 555
    .local v5, "launchOpts":Landroid/app/ActivityOptions;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 556
    .local v15, "taskCount":I
    add-int/lit8 v9, v15, -0x1

    .local v9, "i":I
    :goto_0
    const/4 v2, 0x1

    if-lt v9, v2, :cond_3

    .line 557
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/recents/model/Task;

    .line 558
    .local v14, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v10, :cond_4

    .line 559
    add-int/lit8 v2, v9, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "toTask":Lcom/android/systemui/recents/model/Task;
    check-cast v17, Lcom/android/systemui/recents/model/Task;

    .line 560
    .local v17, "toTask":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 561
    const v3, 0x7f0100b5

    .line 562
    const v4, 0x7f0100ae

    .line 560
    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v5

    .line 574
    .end local v5    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v14    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v17    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_3
    :goto_1
    if-nez v17, :cond_6

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 577
    const v3, 0x7f0100b6

    .line 576
    invoke-static {v2, v3}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 575
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 578
    return-void

    .line 564
    .restart local v5    # "launchOpts":Landroid/app/ActivityOptions;
    .restart local v14    # "task":Lcom/android/systemui/recents/model/Task;
    .local v17, "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_4
    iget-object v2, v14, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v3, v13, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v2, v3, :cond_5

    .line 565
    add-int/lit8 v2, v9, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "toTask":Lcom/android/systemui/recents/model/Task;
    check-cast v17, Lcom/android/systemui/recents/model/Task;

    .line 566
    .local v17, "toTask":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 567
    const v3, 0x7f0100b8

    .line 568
    const v4, 0x7f0100b7

    .line 566
    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v5

    .local v5, "launchOpts":Landroid/app/ActivityOptions;
    goto :goto_1

    .line 556
    .local v5, "launchOpts":Landroid/app/ActivityOptions;
    .local v17, "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 583
    .end local v5    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v14    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v17    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    const/4 v6, -0x1

    .line 584
    const/4 v7, 0x0

    .line 582
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;ILcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;)V

    .line 585
    return-void
.end method

.method public showPrevAffiliatedTask()V
    .locals 3

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "overview_affiliated_task_prev"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 670
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsImpl;->showRelativeAffiliatedTask(Z)V

    .line 671
    return-void
.end method

.method public showRecents(ZZZZZI)V
    .locals 7
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "draggingInRecents"    # Z
    .param p3, "animate"    # Z
    .param p4, "launchedWhileDockingTask"    # Z
    .param p5, "fromHome"    # Z
    .param p6, "growTarget"    # I

    .prologue
    .line 327
    iput-boolean p1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    .line 328
    iput-boolean p2, p0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    .line 329
    iput-boolean p4, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    .line 330
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/DozeTrigger;->isAsleep()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 332
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 352
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    .line 353
    .local v4, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-nez p4, :cond_6

    move v1, p2

    .line 354
    :goto_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v1}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 355
    .local v2, "isHomeStackVisible":Landroid/util/MutableBoolean;
    if-nez v1, :cond_1

    invoke-virtual {v4, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 356
    :cond_1
    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    .line 357
    .local v3, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-boolean v5, v2, Landroid/util/MutableBoolean;->value:Z

    if-nez v5, :cond_7

    .end local p5    # "fromHome":Z
    :goto_2
    invoke-virtual {p0, v3, p5, p3, p6}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .end local v2    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .end local v3    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_2
    :goto_3
    return-void

    .line 333
    .restart local p5    # "fromHome":Z
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 339
    if-nez p1, :cond_4

    .line 340
    return-void

    .line 342
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    goto :goto_0

    .line 343
    :cond_5
    if-eqz p1, :cond_0

    .line 346
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/DozeTrigger;->startDozing()V

    .line 347
    return-void

    .line 353
    .restart local v4    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_6
    const/4 v1, 0x1

    .local v1, "forceVisible":Z
    goto :goto_1

    .line 357
    .end local v1    # "forceVisible":Z
    .restart local v2    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .restart local v3    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_7
    const/4 p5, 0x1

    goto :goto_2

    .line 360
    .end local v2    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .end local v3    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .end local p5    # "fromHome":Z
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v5, "RecentsImpl"

    const-string/jumbo v6, "Failed to launch RecentsActivity"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public showRelativeAffiliatedTask(Z)V
    .locals 20
    .param p1, "showNextTask"    # Z

    .prologue
    .line 591
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 592
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v11

    .line 593
    .local v11, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v13

    .line 594
    .local v13, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v11, v13, v2, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 595
    invoke-virtual {v13}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v8

    .line 598
    .local v8, "focusedStack":Lcom/android/systemui/recents/model/TaskStack;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    .line 601
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v14

    .line 602
    .local v14, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v14, :cond_2

    return-void

    .line 604
    :cond_2
    iget v2, v14, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->isHomeOrRecentsStack(I)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 607
    :cond_3
    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v17

    .line 608
    .local v17, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/16 v18, 0x0

    .line 609
    .local v18, "toTask":Lcom/android/systemui/recents/model/Task;
    const/4 v5, 0x0

    .line 610
    .local v5, "launchOpts":Landroid/app/ActivityOptions;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 611
    .local v16, "taskCount":I
    const/4 v12, 0x0

    .line 612
    .local v12, "numAffiliatedTasks":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v10, v0, :cond_5

    .line 613
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recents/model/Task;

    .line 614
    .local v15, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v2, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v3, v14, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v2, v3, :cond_8

    .line 615
    iget-object v9, v15, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    .line 617
    .local v9, "group":Lcom/android/systemui/recents/model/TaskGrouping;
    if-eqz p1, :cond_7

    .line 618
    invoke-virtual {v9, v15}, Lcom/android/systemui/recents/model/TaskGrouping;->getNextTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v19

    .line 619
    .local v19, "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 620
    const v3, 0x7f0100b5

    .line 621
    const v4, 0x7f0100b4

    .line 619
    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v5

    .line 628
    .local v5, "launchOpts":Landroid/app/ActivityOptions;
    :goto_1
    if-eqz v19, :cond_4

    .line 629
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v8, v2}, Lcom/android/systemui/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/recents/model/Task;

    move-result-object v18

    .line 631
    .end local v18    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_4
    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v12

    .line 637
    .end local v5    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v9    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v15    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v19    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_5
    if-nez v18, :cond_a

    .line 638
    const/4 v2, 0x1

    if-le v12, v2, :cond_6

    .line 639
    if-eqz p1, :cond_9

    .line 641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 642
    const v3, 0x7f0100b3

    .line 641
    invoke-static {v2, v3}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 640
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 649
    :cond_6
    :goto_2
    return-void

    .line 623
    .local v5, "launchOpts":Landroid/app/ActivityOptions;
    .restart local v9    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .restart local v15    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v18    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_7
    invoke-virtual {v9, v15}, Lcom/android/systemui/recents/model/TaskGrouping;->getPrevTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v19

    .line 624
    .restart local v19    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 625
    const v3, 0x7f0100b8

    .line 626
    const v4, 0x7f0100b7

    .line 624
    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v5

    .local v5, "launchOpts":Landroid/app/ActivityOptions;
    goto :goto_1

    .line 612
    .end local v9    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v19    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .local v5, "launchOpts":Landroid/app/ActivityOptions;
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 645
    .end local v5    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v15    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v18    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 646
    const v3, 0x7f0100b6

    .line 645
    invoke-static {v2, v3}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 644
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    goto :goto_2

    .line 653
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "overview_affiliated_task_launch"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    const/4 v6, -0x1

    .line 658
    const/4 v7, 0x0

    .line 656
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;ILcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;)V

    .line 659
    return-void
.end method

.method protected startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V
    .locals 17
    .param p1, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isHomeStackVisible"    # Z
    .param p3, "animate"    # Z
    .param p4, "growTarget"    # I

    .prologue
    .line 1023
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v6

    .line 1024
    .local v6, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v5

    .line 1026
    .local v5, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    .line 1029
    .local v2, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v9

    .line 1030
    .local v9, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-eqz p1, :cond_4

    .line 1031
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isBlackListedActivity(Ljava/lang/String;)Z

    move-result v4

    .line 1034
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v14, :cond_5

    xor-int/lit8 v14, v4, 0x1

    if-eqz v14, :cond_5

    if-eqz p1, :cond_5

    .line 1035
    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 1041
    .local v8, "runningTaskId":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v14, :cond_0

    sget-object v14, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v14, :cond_1

    .line 1043
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v14}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v14

    sput-object v14, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 1047
    :cond_1
    const-string/jumbo v14, "RecentsImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "startRecentsActivity, animate:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", docking:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", alt:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1048
    const-string/jumbo v16, ", black:"

    .line 1047
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1048
    const-string/jumbo v16, ", hasTask:"

    .line 1047
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1048
    sget-object v16, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v16

    .line 1047
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1048
    const-string/jumbo v16, ", gesture:"

    .line 1047
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1048
    sget-boolean v16, Lcom/android/systemui/recents/RecentsConfiguration;->LAUNCH_FROM_GESTURE:Z

    .line 1047
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    invoke-virtual {v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->initWidgetPkgList()V

    .line 1054
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v14, :cond_2

    sget-object v14, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v14}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_3

    .line 1055
    :cond_2
    sget-object v14, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    xor-int/lit8 v15, p2, 0x1

    invoke-virtual {v6, v14, v8, v15}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 1058
    :cond_3
    sget-object v14, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v14}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v10

    .line 1059
    .local v10, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v10}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v14

    if-lez v14, :cond_6

    const/4 v3, 0x1

    .line 1060
    .local v3, "hasRecentTasks":Z
    :goto_2
    if-eqz p1, :cond_7

    xor-int/lit8 v14, p2, 0x1

    if-eqz v14, :cond_7

    .line 1061
    move v12, v3

    .line 1064
    :goto_3
    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    xor-int/lit8 v14, v14, 0x1

    :goto_4
    iput-boolean v14, v5, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    .line 1065
    if-nez v12, :cond_9

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    :goto_5
    iput-boolean v14, v5, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    .line 1066
    iget-boolean v14, v5, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v14, :cond_a

    move v14, v4

    :goto_6
    iput-boolean v14, v5, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromBlacklistedApp:Z

    .line 1067
    const/4 v14, 0x0

    iput-boolean v14, v5, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    .line 1069
    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->getLastPipTime()J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Lcom/android/systemui/recents/model/TaskStack;->isNextLaunchTargetPip(J)Z

    move-result v14

    .line 1068
    iput-boolean v14, v5, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithNextPipApp:Z

    .line 1070
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    iput-boolean v14, v5, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    .line 1071
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    iput-boolean v14, v5, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    .line 1072
    iput v8, v5, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    .line 1073
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    iput-boolean v14, v5, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    .line 1077
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/recents/RecentsImpl;->setWaitingForTransitionStart(Z)V

    .line 1081
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/recents/RecentsImpl;->preloadIcon(I)V

    .line 1084
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/RecentsImpl;->getWindowRectOverride(I)Landroid/graphics/Rect;

    move-result-object v13

    .line 1085
    .local v13, "windowOverrideRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/android/systemui/recents/RecentsImpl;->updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v14}, Lcom/android/systemui/recents/views/TaskStackView;->computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-result-object v11

    .line 1092
    .local v11, "stackVr":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    iget v14, v11, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    iput v14, v5, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    .line 1093
    iget v14, v11, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    iput v14, v5, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    .line 1095
    if-nez p3, :cond_b

    .line 1096
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-static/range {v14 .. v16}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v14

    .line 1097
    const/4 v15, 0x0

    .line 1096
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;)V

    .line 1098
    return-void

    .line 1032
    .end local v3    # "hasRecentTasks":Z
    .end local v8    # "runningTaskId":I
    .end local v10    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v11    # "stackVr":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .end local v13    # "windowOverrideRect":Landroid/graphics/Rect;
    :cond_4
    const/4 v4, 0x0

    .local v4, "isBlacklisted":Z
    goto/16 :goto_0

    .line 1036
    .end local v4    # "isBlacklisted":Z
    :cond_5
    const/4 v8, -0x1

    .restart local v8    # "runningTaskId":I
    goto/16 :goto_1

    .line 1059
    .restart local v10    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "hasRecentTasks":Z
    goto/16 :goto_2

    .line 1060
    :cond_7
    const/4 v12, 0x0

    .local v12, "useThumbnailTransition":Z
    goto :goto_3

    .line 1064
    .end local v12    # "useThumbnailTransition":Z
    :cond_8
    const/4 v14, 0x0

    goto :goto_4

    .line 1065
    :cond_9
    const/4 v14, 0x1

    goto :goto_5

    .line 1066
    :cond_a
    const/4 v14, 0x0

    goto :goto_6

    .line 1102
    .restart local v11    # "stackVr":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .restart local v13    # "windowOverrideRect":Landroid/graphics/Rect;
    :cond_b
    if-eqz v4, :cond_d

    .line 1103
    new-instance v7, Landroid/util/Pair;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v7, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1124
    .local v7, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;>;"
    :cond_c
    :goto_7
    iget-object v14, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Landroid/app/ActivityOptions;

    iget-object v15, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;)V

    .line 1125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    .line 1126
    return-void

    .line 1104
    .end local v7    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;>;"
    :cond_d
    if-eqz v12, :cond_e

    .line 1106
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/android/systemui/recents/RecentsImpl;->getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;)Landroid/util/Pair;

    move-result-object v7

    .line 1108
    .restart local v7    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;>;"
    sget-boolean v14, Lcom/android/systemui/recents/RecentsConfiguration;->LAUNCH_FROM_GESTURE:Z

    if-eqz v14, :cond_c

    .line 1109
    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/systemui/recents/RecentsConfiguration;->LAUNCH_FROM_GESTURE_APP:Z

    goto :goto_7

    .line 1115
    .end local v7    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;>;"
    :cond_e
    new-instance v7, Landroid/util/Pair;

    if-eqz v3, :cond_f

    .line 1116
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getHomeTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v14

    .line 1117
    :goto_8
    const/4 v15, 0x0

    .line 1115
    invoke-direct {v7, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1119
    .restart local v7    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;>;"
    sget-boolean v14, Lcom/android/systemui/recents/RecentsConfiguration;->LAUNCH_FROM_GESTURE:Z

    if-eqz v14, :cond_c

    .line 1120
    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/systemui/recents/RecentsConfiguration;->LAUNCH_FROM_GESTURE_HOME:Z

    goto :goto_7

    .line 1117
    .end local v7    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;>;"
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v14

    goto :goto_8
.end method

.method public toggleRecents(I)V
    .locals 14
    .param p1, "growTarget"    # I

    .prologue
    .line 384
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v9

    .line 385
    .local v9, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isScreenPinningActive()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 386
    return-void

    .line 390
    :cond_0
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v10}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 391
    return-void

    .line 394
    :cond_1
    sget-boolean v10, Lcom/android/systemui/recents/RecentsImpl;->mWaitingForTransitionStart:Z

    if-eqz v10, :cond_2

    .line 395
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/systemui/recents/RecentsImpl;->mToggleFollowingTransitionStart:Z

    .line 396
    return-void

    .line 400
    :cond_2
    const-string/jumbo v10, "sys.debug.recent.event"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_3

    .line 401
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/systemui/recents/events/EventBus;->DEBUG_TRACE_ALL:Z

    .line 407
    :goto_0
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    .line 408
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    .line 409
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    .line 412
    :try_start_0
    new-instance v3, Landroid/util/MutableBoolean;

    const/4 v10, 0x1

    invoke-direct {v3, v10}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 413
    .local v3, "isHomeStackVisible":Landroid/util/MutableBoolean;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    sub-long v4, v10, v12

    .line 415
    .local v4, "elapsedTime":J
    invoke-virtual {v9, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 417
    invoke-virtual {v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isDeepCleaning()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 418
    const-string/jumbo v10, "RecentsImpl"

    const-string/jumbo v11, "not handle toggle when cleaning"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    return-void

    .line 403
    .end local v3    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .end local v4    # "elapsedTime":J
    :cond_3
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/systemui/recents/events/EventBus;->DEBUG_TRACE_ALL:Z

    goto :goto_0

    .line 423
    .restart local v3    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .restart local v4    # "elapsedTime":J
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v1

    .line 424
    .local v1, "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 425
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v7

    .line 426
    .local v7, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v10, v7, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-nez v10, :cond_a

    .line 428
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_5

    const/4 v6, 0x1

    .line 429
    .local v6, "isQuickTap":Z
    :goto_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v10

    iget-boolean v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v10, :cond_7

    .line 430
    if-eqz v6, :cond_6

    .line 431
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v11}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 456
    .end local v6    # "isQuickTap":Z
    :goto_2
    return-void

    .line 428
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "isQuickTap":Z
    goto :goto_1

    .line 433
    :cond_6
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/recents/events/activity/LaunchMostRecentTaskRequestEvent;

    invoke-direct {v11}, Lcom/android/systemui/recents/events/activity/LaunchMostRecentTaskRequestEvent;-><init>()V

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 475
    .end local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v1    # "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    .end local v3    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .end local v4    # "elapsedTime":J
    .end local v6    # "isQuickTap":Z
    .end local v7    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :catch_0
    move-exception v2

    .line 476
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v10, "RecentsImpl"

    const-string/jumbo v11, "Failed to launch RecentsActivity"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :goto_3
    return-void

    .line 436
    .restart local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .restart local v1    # "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    .restart local v3    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .restart local v4    # "elapsedTime":J
    .restart local v6    # "isQuickTap":Z
    .restart local v7    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_7
    :try_start_2
    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsDebugFlags;->isPagingEnabled()Z

    move-result v10

    if-eqz v10, :cond_8

    if-eqz v6, :cond_9

    .line 438
    :cond_8
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v11}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_2

    .line 441
    :cond_9
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;

    invoke-direct {v11}, Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;-><init>()V

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_2

    .line 449
    .end local v6    # "isQuickTap":Z
    :cond_a
    const-wide/16 v10, 0x15e

    cmp-long v10, v4, v10

    if-gez v10, :cond_b

    .line 450
    return-void

    .line 453
    :cond_b
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    invoke-direct {v11}, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;-><init>()V

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 454
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    goto :goto_2

    .line 462
    .end local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v1    # "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    .end local v7    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_c
    const-wide/16 v10, 0x15e

    cmp-long v10, v4, v10

    if-gez v10, :cond_d

    .line 463
    return-void

    .line 467
    :cond_d
    invoke-virtual {v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    .line 468
    .local v8, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-boolean v10, v3, Landroid/util/MutableBoolean;->value:Z

    const/4 v11, 0x1

    invoke-virtual {p0, v8, v10, v11, p1}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V

    .line 472
    const-string/jumbo v10, "recentapps"

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 473
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method
