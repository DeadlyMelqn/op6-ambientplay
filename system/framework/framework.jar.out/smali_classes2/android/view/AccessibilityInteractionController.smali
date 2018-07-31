.class final Landroid/view/AccessibilityInteractionController;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;,
        Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;,
        Landroid/view/AccessibilityInteractionController$MessageHolder;,
        Landroid/view/AccessibilityInteractionController$PrivateHandler;
    }
.end annotation


# static fields
.field private static final CONSIDER_REQUEST_PREPARERS:Z = false

.field private static final ENFORCE_NODE_TREE_CONSISTENT:Z = false

.field private static final IGNORE_REQUEST_PREPARERS:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityInteractionController"

.field private static final REQUEST_PREPARER_TIMEOUT_MS:J = 0x1f4L


# instance fields
.field private final mA11yManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveRequestPreparerId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mMessagesWaitingForRequestPreparer:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/AccessibilityInteractionController$MessageHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mMyLooperThreadId:J

.field private final mMyProcessId:I

.field private mNumActiveRequestPreparers:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

.field private final mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method static synthetic -get0(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;
    .locals 1
    .param p0, "-this"    # Landroid/view/AccessibilityInteractionController;

    .prologue
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z
    .locals 1
    .param p0, "-this"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "-this"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "-this"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "-this"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap4(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "-this"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findFocusUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap5(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "-this"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->focusSearchUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "-this"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->performAccessibilityActionUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "-this"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->prepareForExtraDataRequestUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "-this"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->requestPreparerDoneUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/view/AccessibilityInteractionController;)V
    .locals 0
    .param p0, "-this"    # Landroid/view/AccessibilityInteractionController;

    .prologue
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->requestPreparerTimeoutUiThread()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 4
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 85
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    .line 101
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    .line 102
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 103
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    .line 104
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRect2:Landroid/graphics/Rect;

    .line 116
    iget-object v1, p1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 117
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    .line 118
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    .line 119
    new-instance v1, Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-direct {v1, p0, v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    .line 120
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 121
    new-instance v1, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    .line 122
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 123
    return-void
.end method

.method private adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "interactiveRegion"    # Landroid/graphics/Region;

    .prologue
    .line 766
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 767
    :cond_0
    return-void

    .line 769
    :cond_1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 770
    .local v0, "boundsInScreen":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 771
    invoke-virtual {p2, v0}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 772
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 774
    :cond_2
    return-void
.end method

.method private adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V
    .locals 3
    .param p2, "interactiveRegion"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    .prologue
    .line 754
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 755
    :cond_0
    return-void

    .line 757
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 758
    .local v2, "infoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 759
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 760
    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v1, p2}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    .line 758
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 762
    .end local v1    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    return-void
.end method

.method private applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V
    .locals 19
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 778
    if-nez p1, :cond_0

    .line 779
    return-void

    .line 782
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v15, v15, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v15, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 783
    .local v2, "applicationScale":F
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Landroid/view/AccessibilityInteractionController;->shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 784
    return-void

    .line 787
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 788
    .local v4, "boundsInParent":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    .line 790
    .local v5, "boundsInScreen":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 791
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 792
    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v15, v2, v15

    if-eqz v15, :cond_2

    .line 793
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->scale(F)V

    .line 794
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->scale(F)V

    .line 796
    :cond_2
    if-eqz p2, :cond_3

    .line 797
    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v4, v15}, Landroid/graphics/Rect;->scale(F)V

    .line 799
    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v5, v15}, Landroid/graphics/Rect;->scale(F)V

    .line 800
    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v15, v15

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 802
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 803
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 806
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->hasExtras()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 807
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 809
    .local v8, "extras":Landroid/os/Bundle;
    const-string/jumbo v15, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    invoke-virtual {v8, v15}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v12

    .line 810
    .local v12, "textLocations":[Landroid/os/Parcelable;
    if-eqz v12, :cond_5

    .line 811
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v15, v12

    if-ge v9, v15, :cond_5

    .line 814
    aget-object v11, v12, v9

    check-cast v11, Landroid/graphics/RectF;

    .line 815
    .local v11, "textLocation":Landroid/graphics/RectF;
    invoke-virtual {v11, v2}, Landroid/graphics/RectF;->scale(F)V

    .line 816
    if-eqz p2, :cond_4

    .line 817
    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v11, v15}, Landroid/graphics/RectF;->scale(F)V

    .line 818
    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 811
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 824
    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v9    # "i":I
    .end local v11    # "textLocation":Landroid/graphics/RectF;
    .end local v12    # "textLocations":[Landroid/os/Parcelable;
    :cond_5
    if-eqz p2, :cond_8

    .line 825
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v3, v15, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 826
    .local v3, "attachInfo":Landroid/view/View$AttachInfo;
    iget-object v15, v3, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    if-nez v15, :cond_6

    .line 827
    return-void

    .line 830
    :cond_6
    iget v15, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v16, v0

    mul-float v10, v15, v16

    .line 832
    .local v10, "scale":F
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    .line 833
    .local v14, "visibleWinFrame":Landroid/graphics/Rect;
    iget v15, v3, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v15, v15

    mul-float/2addr v15, v10

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v16, v0

    add-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v14, Landroid/graphics/Rect;->left:I

    .line 834
    iget v15, v3, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v15, v15

    mul-float/2addr v15, v10

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v16, v0

    add-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v14, Landroid/graphics/Rect;->top:I

    .line 835
    iget v15, v14, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v10

    add-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v14, Landroid/graphics/Rect;->right:I

    .line 836
    iget v15, v14, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v10

    add-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v14, Landroid/graphics/Rect;->bottom:I

    .line 838
    iget-object v15, v3, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 839
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    iget v7, v15, Landroid/graphics/Point;->x:I

    .line 840
    .local v7, "displayWidth":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    iget v6, v15, Landroid/graphics/Point;->y:I

    .line 842
    .local v6, "displayHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mTempRect2:Landroid/graphics/Rect;

    .line 843
    .local v13, "visibleDisplayFrame":Landroid/graphics/Rect;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0, v7, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 845
    invoke-virtual {v14, v13}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 847
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 850
    :cond_7
    iget v15, v5, Landroid/graphics/Rect;->left:I

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 851
    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    .line 850
    invoke-virtual/range {v14 .. v18}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v15

    if-nez v15, :cond_8

    .line 852
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 855
    .end local v3    # "attachInfo":Landroid/view/View$AttachInfo;
    .end local v6    # "displayHeight":I
    .end local v7    # "displayWidth":I
    .end local v10    # "scale":F
    .end local v13    # "visibleDisplayFrame":Landroid/graphics/Rect;
    .end local v14    # "visibleWinFrame":Landroid/graphics/Rect;
    :cond_8
    return-void
.end method

.method private applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V
    .locals 5
    .param p2, "spec"    # Landroid/view/MagnificationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/MagnificationSpec;",
            ")V"
        }
    .end annotation

    .prologue
    .line 739
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez p1, :cond_0

    .line 740
    return-void

    .line 742
    :cond_0
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v4, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 743
    .local v0, "applicationScale":F
    invoke-direct {p0, v0, p2}, Landroid/view/AccessibilityInteractionController;->shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 744
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 745
    .local v3, "infoCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 746
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 747
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v2, p2}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    .line 745
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 750
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v3    # "infoCount":I
    :cond_1
    return-void
.end method

.method private findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 308
    iget v9, p1, Landroid/os/Message;->arg1:I

    .line 310
    .local v9, "flags":I
    iget-object v13, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/os/SomeArgs;

    .line 311
    .local v13, "args":Lcom/android/internal/os/SomeArgs;
    iget v12, v13, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 312
    .local v12, "accessibilityViewId":I
    iget v8, v13, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 313
    .local v8, "virtualDescendantId":I
    iget v3, v13, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 315
    .local v3, "interactionId":I
    iget-object v2, v13, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 316
    .local v2, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v4, v13, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/view/MagnificationSpec;

    .line 317
    .local v4, "spec":Landroid/view/MagnificationSpec;
    iget-object v5, v13, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Region;

    .line 318
    .local v5, "interactiveRegion":Landroid/graphics/Region;
    iget-object v11, v13, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    .line 320
    .local v11, "arguments":Landroid/os/Bundle;
    invoke-virtual {v13}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 322
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 323
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 325
    :try_start_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 340
    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 326
    return-void

    .line 328
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v9, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 329
    const/4 v7, 0x0

    .line 330
    .local v7, "root":Landroid/view/View;
    const v0, 0x7ffffffe

    if-ne v12, v0, :cond_3

    .line 331
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v7, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 335
    .local v7, "root":Landroid/view/View;
    :goto_0
    if-eqz v7, :cond_2

    invoke-direct {p0, v7}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    iget-object v6, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    move-object v10, v1

    invoke-virtual/range {v6 .. v11}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchAccessibilityNodeInfos(Landroid/view/View;IILjava/util/List;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move-object v0, p0

    .line 340
    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 343
    return-void

    .line 333
    .local v7, "root":Landroid/view/View;
    :cond_3
    :try_start_2
    invoke-direct {p0, v12}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .local v7, "root":Landroid/view/View;
    goto :goto_0

    .line 339
    .end local v7    # "root":Landroid/view/View;
    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object v0, p0

    .line 340
    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 339
    throw v6
.end method

.method private findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V
    .locals 21
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 432
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 434
    .local v10, "flags":I
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    .line 435
    .local v9, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    .line 437
    .local v17, "text":Ljava/lang/String;
    iget-object v4, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 438
    .local v4, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v6, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Landroid/view/MagnificationSpec;

    .line 439
    .local v6, "spec":Landroid/view/MagnificationSpec;
    iget v8, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 440
    .local v8, "accessibilityViewId":I
    iget v0, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    move/from16 v19, v0

    .line 441
    .local v19, "virtualDescendantId":I
    iget v5, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 442
    .local v5, "interactionId":I
    iget-object v7, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Region;

    .line 443
    .local v7, "interactiveRegion":Landroid/graphics/Region;
    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 445
    const/4 v3, 0x0

    .line 447
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    move-object/from16 v2, p0

    .line 492
    invoke-direct/range {v2 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 448
    return-void

    .line 450
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v10, v2, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 451
    const/16 v16, 0x0

    .line 452
    .local v16, "root":Landroid/view/View;
    const v2, 0x7ffffffe

    if-eq v8, v2, :cond_3

    .line 453
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v16

    .line 457
    .local v16, "root":Landroid/view/View;
    :goto_0
    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 458
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v15

    .line 459
    .local v15, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v15, :cond_4

    .line 460
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .end local v3    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v15    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_2
    move-object/from16 v2, p0

    .line 492
    invoke-direct/range {v2 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 495
    return-void

    .line 455
    .restart local v3    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v16, "root":Landroid/view/View;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    .local v16, "root":Landroid/view/View;
    goto :goto_0

    .line 462
    .restart local v15    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_4
    const/4 v2, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_2

    .line 463
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    .line 464
    .local v12, "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 465
    const/4 v2, 0x7

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1, v2}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 468
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 469
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 470
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 471
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 472
    .local v18, "viewCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v13, v0, :cond_2

    .line 473
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 474
    .local v11, "foundView":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 475
    invoke-virtual {v11}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v15

    .line 476
    if-eqz v15, :cond_6

    .line 479
    const/4 v2, -0x1

    .line 478
    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v14

    .line 480
    .local v14, "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v14, :cond_5

    .line 481
    invoke-interface {v3, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 472
    .end local v14    # "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_5
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 484
    :cond_6
    invoke-virtual {v11}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 491
    .end local v3    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v11    # "foundView":Landroid/view/View;
    .end local v12    # "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v13    # "i":I
    .end local v15    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v16    # "root":Landroid/view/View;
    .end local v18    # "viewCount":I
    :catchall_0
    move-exception v2

    move-object/from16 v20, v2

    move-object/from16 v2, p0

    .line 492
    invoke-direct/range {v2 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 491
    throw v20
.end method

.method private findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 366
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 367
    .local v8, "flags":I
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 369
    .local v6, "accessibilityViewId":I
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 370
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    iget v3, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 372
    .local v3, "interactionId":I
    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 373
    .local v2, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v4, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/view/MagnificationSpec;

    .line 374
    .local v4, "spec":Landroid/view/MagnificationSpec;
    iget-object v11, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 375
    .local v11, "viewId":Ljava/lang/String;
    iget-object v5, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Region;

    .line 376
    .local v5, "interactiveRegion":Landroid/graphics/Region;
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 378
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 379
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 381
    :try_start_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 405
    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 382
    return-void

    .line 384
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v8, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 385
    const/4 v10, 0x0

    .line 386
    .local v10, "root":Landroid/view/View;
    const v0, 0x7ffffffe

    if-eq v6, v0, :cond_2

    .line 387
    invoke-direct {p0, v6}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v10

    .line 391
    .local v10, "root":Landroid/view/View;
    :goto_0
    if-eqz v10, :cond_5

    .line 392
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 393
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 392
    invoke-virtual {v0, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    .line 394
    .local v9, "resolvedViewId":I
    if-gtz v9, :cond_3

    move-object v0, p0

    .line 405
    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 395
    return-void

    .line 389
    .end local v9    # "resolvedViewId":I
    .local v10, "root":Landroid/view/View;
    :cond_2
    :try_start_2
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .local v10, "root":Landroid/view/View;
    goto :goto_0

    .line 397
    .restart local v9    # "resolvedViewId":I
    :cond_3
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    if-nez v0, :cond_4

    .line 398
    new-instance v0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    const/4 v12, 0x0

    invoke-direct {v0, p0, v12}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;)V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    .line 400
    :cond_4
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v0, v9, v1}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->init(ILjava/util/List;)V

    .line 401
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    .line 402
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v9    # "resolvedViewId":I
    :cond_5
    move-object v0, p0

    .line 405
    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 408
    return-void

    .line 404
    .end local v10    # "root":Landroid/view/View;
    :catchall_0
    move-exception v0

    move-object v12, v0

    move-object v0, p0

    .line 405
    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 404
    throw v12
.end method

.method private findFocusUiThread(Landroid/os/Message;)V
    .locals 18
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 520
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    .line 521
    .local v9, "flags":I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    .line 523
    .local v10, "focusType":I
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 524
    .local v8, "args":Lcom/android/internal/os/SomeArgs;
    iget v4, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 525
    .local v4, "interactionId":I
    iget v7, v8, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 526
    .local v7, "accessibilityViewId":I
    iget v15, v8, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 528
    .local v15, "virtualDescendantId":I
    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 529
    .local v3, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v5, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Landroid/view/MagnificationSpec;

    .line 530
    .local v5, "spec":Landroid/view/MagnificationSpec;
    iget-object v6, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Region;

    .line 531
    .local v6, "interactiveRegion":Landroid/graphics/Region;
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 533
    const/4 v2, 0x0

    .line 535
    .local v2, "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    move-object/from16 v1, p0

    .line 588
    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 536
    return-void

    .line 538
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v9, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 539
    const/4 v13, 0x0

    .line 540
    .local v13, "root":Landroid/view/View;
    const v1, 0x7ffffffe

    if-eq v7, v1, :cond_2

    .line 541
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v13

    .line 545
    .local v13, "root":Landroid/view/View;
    :goto_0
    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 546
    packed-switch v10, :pswitch_data_0

    .line 584
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unknown focus type: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    .end local v2    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v13    # "root":Landroid/view/View;
    :catchall_0
    move-exception v1

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    .line 588
    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 587
    throw v16

    .line 543
    .restart local v2    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v13, "root":Landroid/view/View;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v13, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .local v13, "root":Landroid/view/View;
    goto :goto_0

    .line 548
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 551
    .local v11, "host":Landroid/view/View;
    if-eqz v11, :cond_3

    invoke-static {v11, v13}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .end local v2    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v11    # "host":Landroid/view/View;
    :cond_3
    :goto_1
    move-object/from16 v1, p0

    .line 588
    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 591
    return-void

    .line 555
    .restart local v2    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v11    # "host":Landroid/view/View;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 560
    invoke-virtual {v11}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v12

    .line 561
    .local v12, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v12, :cond_5

    .line 562
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v1, :cond_3

    .line 564
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 563
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .local v2, "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1

    .line 566
    .local v2, "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_5
    const/4 v1, -0x1

    if-ne v15, v1, :cond_3

    .line 567
    invoke-virtual {v11}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .local v2, "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1

    .line 571
    .end local v11    # "host":Landroid/view/View;
    .end local v12    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .local v2, "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    :pswitch_1
    invoke-virtual {v13}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v14

    .line 572
    .local v14, "target":Landroid/view/View;
    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3

    .line 575
    invoke-virtual {v14}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v12

    .line 576
    .restart local v12    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v12, :cond_6

    .line 577
    invoke-virtual {v12, v10}, Landroid/view/accessibility/AccessibilityNodeProvider;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 579
    .end local v2    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_6
    if-nez v2, :cond_3

    .line 580
    invoke-virtual {v14}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .local v2, "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1

    .line 546
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findViewByAccessibilityId(I)Landroid/view/View;
    .locals 4
    .param p1, "accessibilityId"    # I

    .prologue
    const/4 v3, 0x0

    .line 726
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 727
    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_0

    .line 728
    return-object v3

    .line 730
    :cond_0
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 731
    .local v0, "foundView":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 732
    return-object v3

    .line 734
    :cond_1
    return-object v0
.end method

.method private focusSearchUiThread(Landroid/os/Message;)V
    .locals 13
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 615
    iget v9, p1, Landroid/os/Message;->arg1:I

    .line 616
    .local v9, "flags":I
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 618
    .local v6, "accessibilityViewId":I
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 619
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    iget v8, v7, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 620
    .local v8, "direction":I
    iget v3, v7, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 622
    .local v3, "interactionId":I
    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 623
    .local v2, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v4, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/view/MagnificationSpec;

    .line 624
    .local v4, "spec":Landroid/view/MagnificationSpec;
    iget-object v5, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Region;

    .line 626
    .local v5, "interactiveRegion":Landroid/graphics/Region;
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 628
    const/4 v1, 0x0

    .line 630
    .local v1, "next":Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_start_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 647
    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 631
    return-void

    .line 633
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v9, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 634
    const/4 v11, 0x0

    .line 635
    .local v11, "root":Landroid/view/View;
    const v0, 0x7ffffffe

    if-eq v6, v0, :cond_3

    .line 636
    invoke-direct {p0, v6}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v11

    .line 640
    .local v11, "root":Landroid/view/View;
    :goto_0
    if-eqz v11, :cond_2

    invoke-direct {p0, v11}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 641
    invoke-virtual {v11, v8}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v10

    .line 642
    .local v10, "nextView":Landroid/view/View;
    if-eqz v10, :cond_2

    .line 643
    invoke-virtual {v10}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .end local v1    # "next":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v10    # "nextView":Landroid/view/View;
    :cond_2
    move-object v0, p0

    .line 647
    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 650
    return-void

    .line 638
    .restart local v1    # "next":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v11, "root":Landroid/view/View;
    :cond_3
    :try_start_2
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v11, "root":Landroid/view/View;
    goto :goto_0

    .line 646
    .end local v11    # "root":Landroid/view/View;
    :catchall_0
    move-exception v0

    move-object v12, v0

    move-object v0, p0

    .line 647
    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 646
    throw v12
.end method

.method private handleClickableSpanActionUiThread(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 913
    const-string/jumbo v4, "android.view.accessibility.action.ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 914
    .local v3, "span":Landroid/os/Parcelable;
    instance-of v4, v3, Landroid/text/style/AccessibilityClickableSpan;

    if-nez v4, :cond_0

    .line 915
    return v5

    .line 919
    :cond_0
    const/4 v1, 0x0

    .line 920
    .local v1, "infoWithSpan":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    .line 921
    .local v2, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v2, :cond_2

    .line 922
    invoke-virtual {v2, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 926
    .end local v1    # "infoWithSpan":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 927
    return v5

    .line 923
    .restart local v1    # "infoWithSpan":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    .line 924
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .local v1, "infoWithSpan":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_0

    .line 931
    .end local v1    # "infoWithSpan":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    check-cast v3, Landroid/text/style/AccessibilityClickableSpan;

    .line 932
    .end local v3    # "span":Landroid/os/Parcelable;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 931
    invoke-virtual {v3, v4}, Landroid/text/style/AccessibilityClickableSpan;->findClickableSpan(Ljava/lang/CharSequence;)Landroid/text/style/ClickableSpan;

    move-result-object v0

    .line 933
    .local v0, "clickableSpan":Landroid/text/style/ClickableSpan;
    if-eqz v0, :cond_4

    .line 934
    invoke-virtual {v0, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 935
    const/4 v4, 0x1

    return v4

    .line 937
    :cond_4
    return v5
.end method

.method private holdOffMessageIfNeeded(Landroid/os/Message;IJ)Z
    .locals 17
    .param p1, "originalMessage"    # Landroid/os/Message;
    .param p2, "callingPid"    # I
    .param p3, "callingTid"    # J

    .prologue
    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 188
    :try_start_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    if-eqz v3, :cond_0

    .line 189
    invoke-direct/range {p0 .. p4}, Landroid/view/AccessibilityInteractionController;->queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    const/4 v3, 0x1

    monitor-exit v16

    return v3

    .line 194
    :cond_0
    :try_start_1
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    const/4 v5, 0x2

    .line 194
    if-eq v3, v5, :cond_1

    .line 196
    const/4 v3, 0x0

    monitor-exit v16

    return v3

    .line 198
    :cond_1
    :try_start_2
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    .line 199
    .local v11, "originalMessageArgs":Lcom/android/internal/os/SomeArgs;
    iget-object v14, v11, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v14, Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    .local v14, "requestArguments":Landroid/os/Bundle;
    if-nez v14, :cond_2

    .line 201
    const/4 v3, 0x0

    monitor-exit v16

    return v3

    .line 205
    :cond_2
    :try_start_3
    iget v2, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 207
    .local v2, "accessibilityViewId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityManager;->getRequestPreparersForAccessibilityId(I)Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v13

    .line 208
    .local v13, "preparers":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityRequestPreparer;>;"
    if-nez v13, :cond_3

    .line 209
    const/4 v3, 0x0

    monitor-exit v16

    return v3

    .line 213
    :cond_3
    :try_start_4
    const-string/jumbo v3, "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested"

    invoke-virtual {v14, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v9

    .line 214
    .local v9, "extraDataKey":Ljava/lang/String;
    if-nez v9, :cond_4

    .line 215
    const/4 v3, 0x0

    monitor-exit v16

    return v3

    .line 219
    :cond_4
    :try_start_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    .line 220
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-ge v10, v3, :cond_6

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    .line 222
    const/4 v5, 0x7

    .line 221
    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 223
    .local v4, "requestPreparerMessage":Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v15

    .line 226
    .local v15, "requestPreparerArgs":Lcom/android/internal/os/SomeArgs;
    iget v3, v11, Lcom/android/internal/os/SomeArgs;->argi2:I

    const v5, 0x7fffffff

    if-ne v3, v5, :cond_5

    .line 227
    const/4 v3, -0x1

    .line 225
    :goto_1
    iput v3, v15, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 228
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v15, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 229
    iput-object v9, v15, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 230
    iput-object v14, v15, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 231
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    .line 232
    const/16 v5, 0x8

    .line 231
    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 233
    .local v12, "preparationFinishedMessage":Landroid/os/Message;
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    iput v3, v12, Landroid/os/Message;->arg1:I

    .line 234
    iput-object v12, v15, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 236
    iput-object v15, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 238
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v5, p2

    move-wide/from16 v6, p3

    .line 237
    invoke-direct/range {v3 .. v8}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 240
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    .line 241
    const-wide/16 v6, 0x1f4

    .line 240
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 220
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 227
    .end local v12    # "preparationFinishedMessage":Landroid/os/Message;
    :cond_5
    iget v3, v11, Lcom/android/internal/os/SomeArgs;->argi2:I

    goto :goto_1

    .line 245
    .end local v4    # "requestPreparerMessage":Landroid/os/Message;
    .end local v15    # "requestPreparerArgs":Lcom/android/internal/os/SomeArgs;
    :cond_6
    invoke-direct/range {p0 .. p4}, Landroid/view/AccessibilityInteractionController;->queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 246
    const/4 v3, 0x1

    monitor-exit v16

    return v3

    .line 186
    .end local v2    # "accessibilityViewId":I
    .end local v9    # "extraDataKey":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "originalMessageArgs":Lcom/android/internal/os/SomeArgs;
    .end local v13    # "preparers":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityRequestPreparer;>;"
    .end local v14    # "requestArguments":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    monitor-exit v16

    throw v3
.end method

.method private isShown(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 147
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-nez v1, :cond_0

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    .line 147
    :cond_0
    return v0
.end method

.method private performAccessibilityActionUiThread(Landroid/os/Message;)V
    .locals 16
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 674
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 675
    .local v6, "flags":I
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg2:I

    .line 677
    .local v1, "accessibilityViewId":I
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    .line 678
    .local v3, "args":Lcom/android/internal/os/SomeArgs;
    iget v12, v3, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 679
    .local v12, "virtualDescendantId":I
    iget v2, v3, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 680
    .local v2, "action":I
    iget v7, v3, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 682
    .local v7, "interactionId":I
    iget-object v5, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 683
    .local v5, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    .line 685
    .local v4, "arguments":Landroid/os/Bundle;
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 687
    const/4 v10, 0x0

    .line 689
    .local v10, "succeeded":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v13, v13, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v13, :cond_1

    .line 717
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v14, 0x0

    iput v14, v13, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 718
    invoke-interface {v5, v10, v7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 691
    :goto_0
    return-void

    .line 690
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v13, v13, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 689
    if-nez v13, :cond_0

    .line 690
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v13, v13, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    .line 689
    if-nez v13, :cond_0

    .line 693
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v6, v13, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 694
    const/4 v11, 0x0

    .line 695
    .local v11, "target":Landroid/view/View;
    const v13, 0x7ffffffe

    if-eq v1, v13, :cond_3

    .line 696
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v11

    .line 700
    .local v11, "target":Landroid/view/View;
    :goto_1
    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 701
    const v13, 0x1020168

    if-ne v2, v13, :cond_4

    .line 703
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v4}, Landroid/view/AccessibilityInteractionController;->handleClickableSpanActionUiThread(Landroid/view/View;ILandroid/os/Bundle;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    .line 717
    .end local v10    # "succeeded":Z
    :cond_2
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v14, 0x0

    iput v14, v13, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 718
    invoke-interface {v5, v10, v7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 723
    :goto_3
    return-void

    .line 698
    .restart local v10    # "succeeded":Z
    .local v11, "target":Landroid/view/View;
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v13, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .local v11, "target":Landroid/view/View;
    goto :goto_1

    .line 706
    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v8

    .line 707
    .local v8, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v8, :cond_5

    .line 708
    invoke-virtual {v8, v12, v2, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v10

    .local v10, "succeeded":Z
    goto :goto_2

    .line 710
    .local v10, "succeeded":Z
    :cond_5
    const/4 v13, -0x1

    if-ne v12, v13, :cond_2

    .line 711
    invoke-virtual {v11, v2, v4}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v10

    .local v10, "succeeded":Z
    goto :goto_2

    .line 715
    .end local v8    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v11    # "target":Landroid/view/View;
    .local v10, "succeeded":Z
    :catchall_0
    move-exception v13

    .line 717
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v14, v14, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v15, 0x0

    iput v15, v14, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 718
    invoke-interface {v5, v10, v7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 715
    :goto_4
    throw v13

    .line 719
    :catch_0
    move-exception v9

    .local v9, "re":Landroid/os/RemoteException;
    goto :goto_4

    .end local v9    # "re":Landroid/os/RemoteException;
    .end local v10    # "succeeded":Z
    .restart local v11    # "target":Landroid/view/View;
    :catch_1
    move-exception v9

    .restart local v9    # "re":Landroid/os/RemoteException;
    goto :goto_3

    .end local v9    # "re":Landroid/os/RemoteException;
    .end local v11    # "target":Landroid/view/View;
    .restart local v10    # "succeeded":Z
    :catch_2
    move-exception v9

    .restart local v9    # "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private prepareForExtraDataRequestUiThread(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 251
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 252
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 253
    .local v5, "virtualDescendantId":I
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/view/accessibility/AccessibilityRequestPreparer;

    .line 254
    .local v3, "preparer":Landroid/view/accessibility/AccessibilityRequestPreparer;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 255
    .local v1, "extraDataKey":Ljava/lang/String;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    .line 256
    .local v4, "requestArguments":Landroid/os/Bundle;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 258
    .local v2, "preparationFinishedMessage":Landroid/os/Message;
    invoke-virtual {v3, v5, v1, v4, v2}, Landroid/view/accessibility/AccessibilityRequestPreparer;->onPrepareExtraData(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Message;)V

    .line 260
    return-void
.end method

.method private queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "interrogatingPid"    # I
    .param p3, "interrogatingTid"    # J

    .prologue
    .line 264
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    if-nez v1, :cond_0

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    .line 268
    :cond_0
    new-instance v0, Landroid/view/AccessibilityInteractionController$MessageHolder;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/AccessibilityInteractionController$MessageHolder;-><init>(Landroid/os/Message;IJ)V

    .line 269
    .local v0, "messageHolder":Landroid/view/AccessibilityInteractionController$MessageHolder;
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    return-void
.end method

.method private recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V
    .locals 2
    .param p1, "spec"    # Landroid/view/MagnificationSpec;
    .param p2, "region"    # Landroid/graphics/Region;

    .prologue
    .line 896
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 899
    if-eqz p1, :cond_0

    .line 900
    invoke-virtual {p1}, Landroid/view/MagnificationSpec;->recycle()V

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 905
    :cond_1
    if-eqz p2, :cond_0

    .line 906
    invoke-virtual {p2}, Landroid/graphics/Region;->recycle()V

    goto :goto_0
.end method

.method private requestPreparerDoneUiThread(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 273
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    :try_start_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v2, p0, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    if-eq v0, v2, :cond_0

    .line 275
    const-string/jumbo v0, "AccessibilityInteractionController"

    const-string/jumbo v2, "Surprising AccessibilityRequestPreparer callback (likely late)"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 276
    return-void

    .line 278
    :cond_0
    :try_start_1
    iget v0, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    .line 279
    iget v0, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    if-gtz v0, :cond_1

    .line 280
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 281
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->scheduleAllMessagesWaitingForRequestPreparerLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v1

    .line 284
    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private requestPreparerTimeoutUiThread()V
    .locals 3

    .prologue
    .line 287
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 288
    :try_start_0
    const-string/jumbo v0, "AccessibilityInteractionController"

    const-string/jumbo v2, "AccessibilityRequestPreparer timed out"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->scheduleAllMessagesWaitingForRequestPreparerLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 291
    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private scheduleAllMessagesWaitingForRequestPreparerLocked()V
    .locals 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 295
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 296
    .local v7, "numMessages":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_1

    .line 297
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/AccessibilityInteractionController$MessageHolder;

    .line 298
    .local v8, "request":Landroid/view/AccessibilityInteractionController$MessageHolder;
    iget-object v2, v8, Landroid/view/AccessibilityInteractionController$MessageHolder;->mMessage:Landroid/os/Message;

    iget v3, v8, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingPid:I

    .line 299
    iget-wide v4, v8, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingTid:J

    .line 300
    if-nez v0, :cond_0

    const/4 v6, 0x1

    :goto_1
    move-object v1, p0

    .line 298
    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v6, v9

    .line 300
    goto :goto_1

    .line 302
    .end local v8    # "request":Landroid/view/AccessibilityInteractionController$MessageHolder;
    :cond_1
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 303
    iput v9, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    .line 304
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    .line 305
    return-void
.end method

.method private scheduleMessage(Landroid/os/Message;IJZ)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "interrogatingPid"    # I
    .param p3, "interrogatingTid"    # J
    .param p5, "ignoreRequestPreparers"    # Z

    .prologue
    .line 127
    if-nez p5, :cond_0

    .line 128
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/AccessibilityInteractionController;->holdOffMessageIfNeeded(Landroid/os/Message;IJ)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 127
    if-eqz v0, :cond_1

    .line 133
    :cond_0
    iget v0, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p2, v0, :cond_2

    iget-wide v0, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v0, p3, v0

    if-nez v0, :cond_2

    .line 134
    invoke-static {p3, p4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 137
    :cond_2
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z
    .locals 1
    .param p1, "appScale"    # F
    .param p2, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 859
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p3, "interactionId"    # I
    .param p4, "spec"    # Landroid/view/MagnificationSpec;
    .param p5, "interactiveRegion"    # Landroid/graphics/Region;

    .prologue
    .line 884
    :try_start_0
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 885
    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    .line 886
    invoke-direct {p0, p1, p5}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    .line 887
    invoke-interface {p2, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 891
    invoke-direct {p0, p4, p5}, Landroid/view/AccessibilityInteractionController;->recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 893
    :goto_0
    return-void

    .line 888
    :catch_0
    move-exception v0

    .line 891
    .local v0, "re":Landroid/os/RemoteException;
    invoke-direct {p0, p4, p5}, Landroid/view/AccessibilityInteractionController;->recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    goto :goto_0

    .line 890
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 891
    invoke-direct {p0, p4, p5}, Landroid/view/AccessibilityInteractionController;->recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 890
    throw v1
.end method

.method private updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V
    .locals 3
    .param p2, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p3, "interactionId"    # I
    .param p4, "spec"    # Landroid/view/MagnificationSpec;
    .param p5, "interactiveRegion"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;",
            "I",
            "Landroid/view/MagnificationSpec;",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    .prologue
    .line 866
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :try_start_0
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 867
    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    .line 868
    invoke-direct {p0, p1, p5}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    .line 869
    invoke-interface {p2, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    .line 870
    if-eqz p1, :cond_0

    .line 871
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    :cond_0
    invoke-direct {p0, p4, p5}, Landroid/view/AccessibilityInteractionController;->recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 878
    :goto_0
    return-void

    .line 873
    :catch_0
    move-exception v0

    .line 876
    .local v0, "re":Landroid/os/RemoteException;
    invoke-direct {p0, p4, p5}, Landroid/view/AccessibilityInteractionController;->recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    goto :goto_0

    .line 875
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 876
    invoke-direct {p0, p4, p5}, Landroid/view/AccessibilityInteractionController;->recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 875
    throw v1
.end method


# virtual methods
.method public findAccessibilityNodeInfoByAccessibilityIdClientThread(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "accessibilityNodeId"    # J
    .param p3, "interactiveRegion"    # Landroid/graphics/Region;
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingPid"    # I
    .param p8, "interrogatingTid"    # J
    .param p10, "spec"    # Landroid/view/MagnificationSpec;
    .param p11, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 156
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 157
    .local v4, "message":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v4, Landroid/os/Message;->what:I

    .line 158
    iput p6, v4, Landroid/os/Message;->arg1:I

    .line 160
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 161
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    iput v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 162
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    iput v3, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 163
    iput p4, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 164
    iput-object p5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 165
    move-object/from16 v0, p10

    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 166
    iput-object p3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 167
    move-object/from16 v0, p11

    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 168
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 170
    const/4 v8, 0x0

    move-object v3, p0

    move/from16 v5, p7

    move-wide/from16 v6, p8

    invoke-direct/range {v3 .. v8}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 171
    return-void
.end method

.method public findAccessibilityNodeInfosByTextClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 9
    .param p1, "accessibilityNodeId"    # J
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 414
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 415
    .local v4, "message":Landroid/os/Message;
    const/4 v3, 0x4

    iput v3, v4, Landroid/os/Message;->what:I

    .line 416
    move/from16 v0, p7

    iput v0, v4, Landroid/os/Message;->arg1:I

    .line 418
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 419
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 420
    iput-object p6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 421
    move-object/from16 v0, p11

    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 422
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    iput v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 423
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    iput v3, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 424
    iput p5, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 425
    iput-object p4, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 426
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 428
    const/4 v8, 0x0

    move-object v3, p0

    move/from16 v5, p8

    move-wide/from16 v6, p9

    invoke-direct/range {v3 .. v8}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 429
    return-void
.end method

.method public findAccessibilityNodeInfosByViewIdClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 9
    .param p1, "accessibilityNodeId"    # J
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 349
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 350
    .local v4, "message":Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v4, Landroid/os/Message;->what:I

    .line 351
    move/from16 v0, p7

    iput v0, v4, Landroid/os/Message;->arg1:I

    .line 352
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    iput v3, v4, Landroid/os/Message;->arg2:I

    .line 354
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 355
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput p5, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 356
    iput-object p6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 357
    move-object/from16 v0, p11

    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 358
    iput-object p3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 359
    iput-object p4, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 360
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 362
    const/4 v8, 0x0

    move-object v3, p0

    move/from16 v5, p8

    move-wide/from16 v6, p9

    invoke-direct/range {v3 .. v8}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 363
    return-void
.end method

.method public findFocusClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 9
    .param p1, "accessibilityNodeId"    # J
    .param p3, "focusType"    # I
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 501
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 502
    .local v4, "message":Landroid/os/Message;
    const/4 v3, 0x5

    iput v3, v4, Landroid/os/Message;->what:I

    .line 503
    move/from16 v0, p7

    iput v0, v4, Landroid/os/Message;->arg1:I

    .line 504
    iput p3, v4, Landroid/os/Message;->arg2:I

    .line 506
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 507
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput p5, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 508
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    iput v3, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 509
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    iput v3, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 510
    iput-object p6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 511
    move-object/from16 v0, p11

    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 512
    iput-object p4, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 514
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 516
    const/4 v8, 0x0

    move-object v3, p0

    move/from16 v5, p8

    move-wide/from16 v6, p9

    invoke-direct/range {v3 .. v8}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 517
    return-void
.end method

.method public focusSearchClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 9
    .param p1, "accessibilityNodeId"    # J
    .param p3, "direction"    # I
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 597
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 598
    .local v4, "message":Landroid/os/Message;
    const/4 v3, 0x6

    iput v3, v4, Landroid/os/Message;->what:I

    .line 599
    move/from16 v0, p7

    iput v0, v4, Landroid/os/Message;->arg1:I

    .line 600
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    iput v3, v4, Landroid/os/Message;->arg2:I

    .line 602
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 603
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput p3, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 604
    iput p5, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 605
    iput-object p6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 606
    move-object/from16 v0, p11

    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 607
    iput-object p4, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 609
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 611
    const/4 v8, 0x0

    move-object v3, p0

    move/from16 v5, p8

    move-wide/from16 v6, p9

    invoke-direct/range {v3 .. v8}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 612
    return-void
.end method

.method public performAccessibilityActionClientThread(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 7
    .param p1, "accessibilityNodeId"    # J
    .param p3, "action"    # I
    .param p4, "arguments"    # Landroid/os/Bundle;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J

    .prologue
    .line 656
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 657
    .local v2, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v2, Landroid/os/Message;->what:I

    .line 658
    iput p7, v2, Landroid/os/Message;->arg1:I

    .line 659
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v1

    iput v1, v2, Landroid/os/Message;->arg2:I

    .line 661
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 662
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v1

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 663
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 664
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 665
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 666
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 668
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 670
    const/4 v6, 0x0

    move-object v1, p0

    move v3, p8

    move-wide/from16 v4, p9

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 671
    return-void
.end method
