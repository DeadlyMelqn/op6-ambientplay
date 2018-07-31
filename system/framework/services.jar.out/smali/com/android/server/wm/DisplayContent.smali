.class Lcom/android/server/wm/DisplayContent;
.super Lcom/android/server/wm/WindowContainer;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;,
        Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;,
        Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;,
        Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;,
        Lcom/android/server/wm/DisplayContent$Screenshoter;,
        Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;,
        Lcom/android/server/wm/DisplayContent$TaskStackContainers;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer",
        "<",
        "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field isDefaultDisplay:Z

.field private final mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

.field private mAltOrientation:Z

.field private final mApplyPostLayoutPolicy:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mBaseDisplayDensity:I

.field mBaseDisplayHeight:I

.field private mBaseDisplayRect:Landroid/graphics/Rect;

.field mBaseDisplayWidth:I

.field private final mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

.field private final mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

.field mCompatibleScreenScale:F

.field private final mComputeImeTargetPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mContentRect:Landroid/graphics/Rect;

.field private mDeferredRemoval:Z

.field mDimLayerController:Lcom/android/server/wm/DimLayerController;

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayId:I

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDisplayReady:Z

.field mDisplayScalingDisabled:Z

.field final mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private final mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/ToBooleanFunction",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mHaveApp:Z

.field private mHaveBootMsg:Z

.field private mHaveKeyguard:Z

.field private mHaveWallpaper:Z

.field private mHomeStack:Lcom/android/server/wm/TaskStack;

.field private final mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

.field mInitialDisplayDensity:I

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field mInputMethodAnimLayerAdjustment:I

.field private mLastKeyguardForcedOrientation:I

.field private mLastOrientation:I

.field private mLastWallpaperVisible:Z

.field private mLastWindowForcedOrientation:I

.field private final mLayersController:Lcom/android/server/wm/WindowLayersController;

.field private mLayoutNeeded:Z

.field private mMaxUiWidth:I

.field private final mPerformLayout:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mPerformLayoutAttached:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

.field private final mPrepareWindowSurfaces:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mRealDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mRemovingDisplay:Z

.field private mRotation:I

.field private final mScheduleToastTimeout:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

.field mService:Lcom/android/server/wm/WindowManagerService;

.field mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

.field final mTapExcludedWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

.field private final mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

.field private final mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mTmpInitial:Z

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private mTmpRecoveringMemory:Z

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpRectF:Landroid/graphics/RectF;

.field private final mTmpRegion:Landroid/graphics/Region;

.field private final mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

.field private final mTmpUpdateAllDrawn:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpWindow:Lcom/android/server/wm/WindowState;

.field private mTmpWindow2:Lcom/android/server/wm/WindowState;

.field private mTmpWindowAnimator:Lcom/android/server/wm/WindowAnimator;

.field private final mTokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchExcludeRegion:Landroid/graphics/Region;

.field private mUpdateImeTarget:Z

.field private final mUpdateWallpaperForAnimator:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateWindowsForAnimator:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mWallpaperController:Lcom/android/server/wm/WallpaperController;

.field pendingLayoutChanges:I


# direct methods
.method static synthetic -com_android_server_wm_DisplayContent-mthref-0(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2956
    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -com_android_server_wm_DisplayContent-mthref-1(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/GraphicBuffer;
    .locals 1

    .prologue
    .line 2997
    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->screenshotToBuffer(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/wm/DisplayContent;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/TaskStack;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/DisplayContent;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastKeyguardForcedOrientation:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/DisplayContent;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TaskStack;)Lcom/android/server/wm/TaskStack;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/wm/DisplayContent;
    .param p1, "-value"    # Lcom/android/server/wm/TaskStack;

    .prologue
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/wm/DisplayContent;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/wm/DisplayContent;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastKeyguardForcedOrientation:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wm/DisplayContent;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/wm/DisplayContent;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    return p1
.end method

.method constructor <init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowLayersController;Lcom/android/server/wm/WallpaperController;)V
    .locals 6
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "layersController"    # Lcom/android/server/wm/WindowLayersController;
    .param p4, "wallpaperController"    # Lcom/android/server/wm/WallpaperController;

    .prologue
    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 767
    invoke-direct {p0}, Lcom/android/server/wm/WindowContainer;-><init>()V

    .line 162
    new-instance v2, Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent$TaskStackContainers;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    .line 166
    new-instance v2, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    const-string/jumbo v3, "mAboveAppWindowsContainers"

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    .line 165
    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    .line 170
    new-instance v2, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    const-string/jumbo v3, "mBelowAppWindowsContainers"

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    .line 169
    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    .line 175
    new-instance v2, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    const-string/jumbo v3, "mImeWindowsContainers"

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    .line 174
    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    .line 186
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    .line 189
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 190
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 191
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 198
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 199
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 205
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 207
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 209
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 214
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 216
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 222
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 233
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    .line 241
    iput v5, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    .line 249
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mAltOrientation:Z

    .line 257
    iput v5, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    .line 265
    iput v5, p0, Lcom/android/server/wm/DisplayContent;->mLastKeyguardForcedOrientation:I

    .line 270
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    .line 272
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    .line 273
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mContentRect:Landroid/graphics/Rect;

    .line 282
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    .line 286
    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    .line 292
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 295
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 296
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    .line 297
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    .line 298
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 299
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    .line 311
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    .line 313
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    .line 314
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    .line 315
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    .line 316
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    .line 318
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    .line 321
    new-instance v2, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-direct {v2}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;-><init>()V

    .line 320
    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    .line 323
    new-instance v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    invoke-direct {v2, v4}, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;-><init>(Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;)V

    .line 322
    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 325
    new-instance v2, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    invoke-direct {v2, v4}, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;-><init>(Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;)V

    .line 324
    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    .line 329
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    .line 332
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 338
    new-instance v2, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0}, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;-><init>(BLjava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWindowsForAnimator:Ljava/util/function/Consumer;

    .line 387
    new-instance v2, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p0}, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;-><init>(BLjava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWallpaperForAnimator:Ljava/util/function/Consumer;

    .line 434
    new-instance v2, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;

    const/4 v3, 0x5

    invoke-direct {v2, v3, p0}, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;-><init>(BLjava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mScheduleToastTimeout:Ljava/util/function/Consumer;

    .line 445
    new-instance v2, Lcom/android/server/wm/-$Lambda$lpBUCbECLvWBIi8CcvaEY5AB7jM;

    invoke-direct {v2, v0, p0}, Lcom/android/server/wm/-$Lambda$lpBUCbECLvWBIi8CcvaEY5AB7jM;-><init>(BLjava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;

    sget-object v2, Lcom/android/server/wm/-$Lambda$hCYoJeHmvymNpgtwuNPQ6z-HGjQ;->$INST$0:Lcom/android/server/wm/-$Lambda$hCYoJeHmvymNpgtwuNPQ6z-HGjQ;

    .line 524
    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPrepareWindowSurfaces:Ljava/util/function/Consumer;

    .line 527
    new-instance v2, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;

    const/4 v3, 0x6

    invoke-direct {v2, v3, p0}, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;-><init>(BLjava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayout:Ljava/util/function/Consumer;

    .line 592
    new-instance v2, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;

    const/4 v3, 0x7

    invoke-direct {v2, v3, p0}, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;-><init>(BLjava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayoutAttached:Ljava/util/function/Consumer;

    .line 624
    new-instance v2, Lcom/android/server/wm/-$Lambda$lpBUCbECLvWBIi8CcvaEY5AB7jM$1;

    invoke-direct {v2, v0, p0}, Lcom/android/server/wm/-$Lambda$lpBUCbECLvWBIi8CcvaEY5AB7jM$1;-><init>(BLjava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mComputeImeTargetPredicate:Ljava/util/function/Predicate;

    .line 631
    new-instance v2, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;

    const/16 v3, 0x8

    invoke-direct {v2, v3, p0}, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;-><init>(BLjava/lang/Object;)V

    .line 630
    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mApplyPostLayoutPolicy:Ljava/util/function/Consumer;

    .line 634
    new-instance v2, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;

    const/16 v3, 0x9

    invoke-direct {v2, v3, p0}, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;-><init>(BLjava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;

    .line 769
    iget-object v2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 770
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Display with ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 771
    const-string/jumbo v2, " already exists="

    .line 770
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 771
    iget-object v2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 770
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 772
    const-string/jumbo v2, " new="

    .line 770
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 775
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 776
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 777
    iput-object p3, p0, Lcom/android/server/wm/DisplayContent;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    .line 778
    iput-object p4, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 779
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 780
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 781
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 782
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 783
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->initializeDisplayBaseInfo()V

    .line 784
    new-instance v0, Lcom/android/server/wm/DockedStackDividerController;

    invoke-direct {v0, p2, p0}, Lcom/android/server/wm/DockedStackDividerController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 785
    new-instance v0, Lcom/android/server/wm/PinnedStackController;

    invoke-direct {v0, p2, p0}, Lcom/android/server/wm/PinnedStackController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    .line 786
    new-instance v0, Lcom/android/server/wm/DimLayerController;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DimLayerController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    .line 789
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-super {p0, v0, v4}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 790
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-super {p0, v0, v4}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 791
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-super {p0, v0, v4}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 792
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-super {p0, v0, v4}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 795
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p0, v4}, Lcom/android/server/wm/RootWindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 799
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 800
    return-void
.end method

.method private addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "token"    # Lcom/android/server/wm/WindowToken;

    .prologue
    .line 824
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getWindowTokenDisplay(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 825
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 830
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t map token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 831
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v3

    .line 830
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 831
    const-string/jumbo v3, " already mapped to display="

    .line 830
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 831
    const-string/jumbo v3, " tokens="

    .line 830
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 831
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    .line 830
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 833
    :cond_0
    if-nez p1, :cond_1

    .line 834
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t map token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 835
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v3

    .line 834
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 835
    const-string/jumbo v3, " binder is null"

    .line 834
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 837
    :cond_1
    if-nez p2, :cond_2

    .line 838
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t map null token to display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 839
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v3

    .line 838
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 839
    const-string/jumbo v3, " binder="

    .line 838
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 842
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_3

    .line 847
    iget v1, p2, Lcom/android/server/wm/WindowToken;->windowType:I

    packed-switch v1, :pswitch_data_0

    .line 856
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->addChild(Lcom/android/server/wm/WindowToken;)V

    .line 860
    :cond_3
    :goto_0
    return-void

    .line 849
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->addChild(Lcom/android/server/wm/WindowToken;)V

    goto :goto_0

    .line 853
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->addChild(Lcom/android/server/wm/WindowToken;)V

    goto :goto_0

    .line 847
    :pswitch_data_0
    .packed-switch 0x7db
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIII)V
    .locals 8
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p2, "displayId"    # I
    .param p3, "rotation"    # I
    .param p4, "uiMode"    # I
    .param p5, "dw"    # I
    .param p6, "dh"    # I

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move v1, p5

    move v2, p6

    move v3, p3

    move v4, p4

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(IIIII)I

    move-result v7

    .line 1436
    .local v7, "width":I
    iget v0, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    if-ge v7, v0, :cond_0

    .line 1437
    iput v7, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 1439
    :cond_0
    iget v0, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    if-le v7, v0, :cond_1

    .line 1440
    iput v7, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 1442
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move v1, p5

    move v2, p6

    move v3, p3

    move v4, p4

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/view/WindowManagerPolicy;->getConfigDisplayHeight(IIIII)I

    move-result v6

    .line 1444
    .local v6, "height":I
    iget v0, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    if-ge v6, v0, :cond_2

    .line 1445
    iput v6, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 1447
    :cond_2
    iget v0, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    if-le v6, v0, :cond_3

    .line 1448
    iput v6, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 1450
    :cond_3
    return-void
.end method

.method private clearLayoutNeeded()V
    .locals 3

    .prologue
    .line 2557
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clearLayoutNeeded: callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    .line 2559
    return-void
.end method

.method private computeCompatSmallestWidth(ZIIII)I
    .locals 15
    .param p1, "rotated"    # Z
    .param p2, "uiMode"    # I
    .param p3, "dw"    # I
    .param p4, "dh"    # I
    .param p5, "displayId"    # I

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 1339
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 1341
    .local v4, "tmpDm":Landroid/util/DisplayMetrics;
    if-eqz p1, :cond_0

    .line 1342
    move/from16 v5, p4

    .line 1343
    .local v5, "unrotDw":I
    move/from16 v6, p3

    .line 1348
    .local v6, "unrotDh":I
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move/from16 v3, p2

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;III)I

    move-result v8

    .line 1350
    .local v8, "sw":I
    const/4 v9, 0x1

    move-object v7, p0

    move/from16 v10, p2

    move-object v11, v4

    move v12, v6

    move v13, v5

    move/from16 v14, p5

    invoke-direct/range {v7 .. v14}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;III)I

    move-result v8

    .line 1352
    const/4 v2, 0x2

    move-object v0, p0

    move v1, v8

    move/from16 v3, p2

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;III)I

    move-result v8

    .line 1354
    const/4 v9, 0x3

    move-object v7, p0

    move/from16 v10, p2

    move-object v11, v4

    move v12, v6

    move v13, v5

    move/from16 v14, p5

    invoke-direct/range {v7 .. v14}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;III)I

    move-result v8

    .line 1356
    return v8

    .line 1345
    .end local v5    # "unrotDw":I
    .end local v6    # "unrotDh":I
    .end local v8    # "sw":I
    :cond_0
    move/from16 v5, p3

    .line 1346
    .restart local v5    # "unrotDw":I
    move/from16 v6, p4

    .restart local v6    # "unrotDh":I
    goto :goto_0
.end method

.method private computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;IZIIIFLandroid/content/res/Configuration;)V
    .locals 16
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p2, "displayId"    # I
    .param p3, "rotated"    # Z
    .param p4, "uiMode"    # I
    .param p5, "dw"    # I
    .param p6, "dh"    # I
    .param p7, "density"    # F
    .param p8, "outConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1381
    if-eqz p3, :cond_0

    .line 1382
    move/from16 v6, p6

    .line 1383
    .local v6, "unrotDw":I
    move/from16 v7, p5

    .line 1388
    .local v7, "unrotDh":I
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    move-object/from16 v0, p1

    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 1389
    const/high16 v1, 0x40000000    # 2.0f

    move-object/from16 v0, p1

    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 1390
    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 1391
    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 1392
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIII)V

    .line 1394
    const/4 v11, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v12, p4

    move v13, v7

    move v14, v6

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIII)V

    .line 1396
    const/4 v4, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIII)V

    .line 1398
    const/4 v11, 0x3

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v12, p4

    move v13, v7

    move v14, v6

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIII)V

    .line 1400
    move-object/from16 v0, p8

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v3

    .line 1401
    .local v3, "sl":I
    const/4 v4, 0x0

    move-object/from16 v2, p0

    move/from16 v5, p7

    move/from16 v8, p4

    move/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIIII)I

    move-result v3

    .line 1403
    const/4 v10, 0x1

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v11, p7

    move v12, v7

    move v13, v6

    move/from16 v14, p4

    move/from16 v15, p2

    invoke-direct/range {v8 .. v15}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIIII)I

    move-result v3

    .line 1405
    const/4 v4, 0x2

    move-object/from16 v2, p0

    move/from16 v5, p7

    move/from16 v8, p4

    move/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIIII)I

    move-result v3

    .line 1407
    const/4 v10, 0x3

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v11, p7

    move v12, v7

    move v13, v6

    move/from16 v14, p4

    move/from16 v15, p2

    invoke-direct/range {v8 .. v15}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIIII)I

    move-result v3

    .line 1409
    move-object/from16 v0, p1

    iget v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    int-to-float v1, v1

    div-float v1, v1, p7

    float-to-int v1, v1

    move-object/from16 v0, p8

    iput v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1410
    move-object/from16 v0, p8

    iput v3, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1411
    return-void

    .line 1385
    .end local v3    # "sl":I
    .end local v6    # "unrotDw":I
    .end local v7    # "unrotDh":I
    :cond_0
    move/from16 v6, p5

    .line 1386
    .restart local v6    # "unrotDw":I
    move/from16 v7, p6

    .restart local v7    # "unrotDh":I
    goto/16 :goto_0
.end method

.method private static convertCropForSurfaceFlinger(Landroid/graphics/Rect;III)V
    .locals 2
    .param p0, "crop"    # Landroid/graphics/Rect;
    .param p1, "rot"    # I
    .param p2, "dw"    # I
    .param p3, "dh"    # I

    .prologue
    .line 3236
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 3237
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 3238
    .local v0, "tmp":I
    iget v1, p0, Landroid/graphics/Rect;->right:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 3239
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 3240
    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 3241
    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 3256
    .end local v0    # "tmp":I
    :cond_0
    :goto_0
    return-void

    .line 3242
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 3243
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 3244
    .restart local v0    # "tmp":I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v1

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 3245
    sub-int v1, p3, v0

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 3246
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 3247
    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 3248
    sub-int v1, p2, v0

    iput v1, p0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 3249
    .end local v0    # "tmp":I
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 3250
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 3251
    .restart local v0    # "tmp":I
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 3252
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v1

    iput v1, p0, Landroid/graphics/Rect;->left:I

    .line 3253
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 3254
    sub-int v1, p3, v0

    iput v1, p0, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method static createRotationMatrix(IFFFFLandroid/graphics/Matrix;)V
    .locals 2
    .param p0, "rotation"    # I
    .param p1, "rectLeft"    # F
    .param p2, "rectTop"    # F
    .param p3, "displayWidth"    # F
    .param p4, "displayHeight"    # F
    .param p5, "outMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v1, 0x0

    .line 2128
    packed-switch p0, :pswitch_data_0

    .line 2146
    :goto_0
    return-void

    .line 2130
    :pswitch_0
    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    .line 2133
    :pswitch_1
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p5, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 2134
    invoke-virtual {p5, v1, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2135
    invoke-virtual {p5, p2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 2138
    :pswitch_2
    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    .line 2141
    :pswitch_3
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p5, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 2142
    invoke-virtual {p5, p3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2143
    neg-float v0, p2

    invoke-virtual {p5, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 2128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static createRotationMatrix(IFFLandroid/graphics/Matrix;)V
    .locals 6
    .param p0, "rotation"    # I
    .param p1, "displayWidth"    # F
    .param p2, "displayHeight"    # F
    .param p3, "outMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v1, 0x0

    move v0, p0

    move v2, v1

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 2122
    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFFFLandroid/graphics/Matrix;)V

    .line 2124
    return-void
.end method

.method static deltaRotation(II)I
    .locals 1
    .param p0, "oldRotation"    # I
    .param p1, "newRotation"    # I

    .prologue
    .line 2114
    sub-int v0, p1, p0

    .line 2115
    .local v0, "delta":I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 2116
    :cond_0
    return v0
.end method

.method private getLogicalDisplayRect(Landroid/graphics/Rect;I)V
    .locals 5
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "orientation"    # I

    .prologue
    .line 1667
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 1670
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 1671
    .local v0, "currentRotation":I
    invoke-static {v0, p2}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v1

    .line 1672
    .local v1, "rotationDelta":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1673
    :cond_0
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFLandroid/graphics/Matrix;)V

    .line 1674
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1675
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1676
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 1678
    :cond_1
    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent_102338(ILcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2280
    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent_102517(ILcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p0, "uid"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2285
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, p0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2286
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    xor-int/lit8 v0, v0, 0x1

    .line 2285
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent_115644(Ljava/io/PrintWriter;Ljava/lang/String;[ILcom/android/server/wm/WindowState;)V
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "subPrefix"    # Ljava/lang/String;
    .param p2, "index"    # [I
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v3, 0x0

    .line 2587
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 2588
    .local v0, "wAnim":Lcom/android/server/wm/WindowStateAnimator;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Window #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2589
    aget v1, p2, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v3

    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent_115947(Ljava/io/FileDescriptor;Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2595
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowStateAnimator;->enableSurfaceTrace(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent_116111(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2601
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->disableSurfaceTrace()V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent_116497(Landroid/view/WindowManagerPolicy;ZZLcom/android/server/wm/WindowState;)V
    .locals 2
    .param p0, "policy"    # Landroid/view/WindowManagerPolicy;
    .param p1, "onWallpaper"    # Z
    .param p2, "goingToShade"    # Z
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2611
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_0

    invoke-interface {p0, p3}, Landroid/view/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2612
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v0

    .line 2611
    if-eqz v0, :cond_0

    .line 2612
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2611
    if-eqz v0, :cond_0

    .line 2613
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 2614
    invoke-interface {p0, p1, p2}, Landroid/view/WindowManagerPolicy;->createHiddenByKeyguardExit(ZZ)Landroid/view/animation/Animation;

    move-result-object v1

    .line 2613
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent_121247(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v0, 0x0

    .line 2732
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent_121433(IILcom/android/server/wm/WindowState;)V
    .locals 6
    .param p0, "visibility"    # I
    .param p1, "globalDiff"    # I
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2739
    :try_start_0
    iget v0, p2, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 2740
    .local v0, "curValue":I
    xor-int v4, v0, p0

    and-int v1, v4, p1

    .line 2741
    .local v1, "diff":I
    not-int v4, v1

    and-int/2addr v4, v0

    and-int v5, p0, v1

    or-int v3, v4, v5

    .line 2742
    .local v3, "newValue":I
    if-eq v3, v0, :cond_0

    .line 2743
    iget v4, p2, Lcom/android/server/wm/WindowState;->mSeq:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p2, Lcom/android/server/wm/WindowState;->mSeq:I

    .line 2744
    iput v3, p2, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 2746
    :cond_0
    if-ne v3, v0, :cond_1

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v4, v4, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v4, :cond_2

    .line 2747
    :cond_1
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v5, p2, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-interface {v4, v5, p0, v3, v1}, Landroid/view/IWindow;->dispatchSystemUiVisibilityChanged(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "curValue":I
    .end local v1    # "diff":I
    .end local v3    # "newValue":I
    :cond_2
    :goto_0
    return-void

    .line 2750
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent_142777(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 3203
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 3204
    .local v0, "controller":Lcom/android/server/wm/WindowSurfaceController;
    const-string/jumbo v2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3205
    const-string/jumbo v3, " animLayer="

    .line 3204
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3205
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 3204
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3206
    const-string/jumbo v3, " surfaceLayer="

    .line 3204
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3206
    if-nez v0, :cond_0

    .line 3207
    const-string/jumbo v1, "null"

    .line 3204
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3207
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->getLayer()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent_24799(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent_46041(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 989
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    return v0
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent_51205(IILcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "oldRotation"    # I
    .param p1, "rotation"    # I
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 1101
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowStateAnimator;->seamlesslyRotateWindow(II)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent_94593(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2085
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;III)I
    .locals 8
    .param p1, "curSize"    # I
    .param p2, "rotation"    # I
    .param p3, "uiMode"    # I
    .param p4, "dm"    # Landroid/util/DisplayMetrics;
    .param p5, "dw"    # I
    .param p6, "dh"    # I
    .param p7, "displayId"    # I

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move v1, p5

    move v2, p6

    move v3, p2

    move v4, p3

    move v5, p7

    invoke-interface/range {v0 .. v5}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(IIIII)I

    move-result v0

    iput v0, p4, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 1363
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move v1, p5

    move v2, p6

    move v3, p2

    move v4, p3

    move v5, p7

    invoke-interface/range {v0 .. v5}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(IIIII)I

    move-result v0

    iput v0, p4, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 1365
    const/4 v0, 0x0

    invoke-static {p4, v0}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v6

    .line 1366
    .local v6, "scale":F
    iget v0, p4, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    int-to-float v0, v0

    div-float/2addr v0, v6

    iget v1, p4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v7, v0

    .line 1367
    .local v7, "size":I
    if-eqz p1, :cond_0

    if-ge v7, p1, :cond_1

    .line 1368
    :cond_0
    move p1, v7

    .line 1370
    :cond_1
    return p1
.end method

.method private reduceConfigLayout(IIFIIII)I
    .locals 11
    .param p1, "curLayout"    # I
    .param p2, "rotation"    # I
    .param p3, "density"    # F
    .param p4, "dw"    # I
    .param p5, "dh"    # I
    .param p6, "uiMode"    # I
    .param p7, "displayId"    # I

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move v1, p4

    move/from16 v2, p5

    move v3, p2

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-interface/range {v0 .. v5}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(IIIII)I

    move-result v10

    .line 1417
    .local v10, "w":I
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move v1, p4

    move/from16 v2, p5

    move v3, p2

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-interface/range {v0 .. v5}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(IIIII)I

    move-result v6

    .line 1420
    .local v6, "h":I
    move v7, v10

    .line 1421
    .local v7, "longSize":I
    move v8, v6

    .line 1422
    .local v8, "shortSize":I
    if-ge v10, v6, :cond_0

    .line 1423
    move v9, v10

    .line 1424
    .local v9, "tmp":I
    move v7, v6

    .line 1425
    move v8, v10

    .line 1427
    .end local v9    # "tmp":I
    :cond_0
    int-to-float v0, v7

    div-float/2addr v0, p3

    float-to-int v7, v0

    .line 1428
    int-to-float v0, v8

    div-float/2addr v0, p3

    float-to-int v8, v0

    .line 1429
    invoke-static {p1, v7, v8}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v0

    return v0
.end method

.method private resetAnimationBackgroundAnimator()V
    .locals 2

    .prologue
    .line 1911
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1912
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resetAnimationBackgroundAnimator()V

    .line 1911
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1914
    :cond_0
    return-void
.end method

.method private resetDimming()V
    .locals 1

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayerController;->resetDimming()V

    .line 1922
    return-void
.end method

.method private screenshotApplications(Landroid/os/IBinder;IIZFZZLcom/android/server/wm/DisplayContent$Screenshoter;)Ljava/lang/Object;
    .locals 29
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "includeFullDisplay"    # Z
    .param p5, "frameScale"    # F
    .param p6, "wallpaperOnly"    # Z
    .param p7, "includeDecor"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/IBinder;",
            "IIZFZZ",
            "Lcom/android/server/wm/DisplayContent$Screenshoter",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 3003
    .local p8, "screenshoter":Lcom/android/server/wm/DisplayContent$Screenshoter;, "Lcom/android/server/wm/DisplayContent$Screenshoter<TE;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v25, v0

    .line 3004
    .local v25, "dw":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v24, v0

    .line 3005
    .local v24, "dh":I
    if-eqz v25, :cond_0

    if-nez v24, :cond_2

    .line 3006
    :cond_0
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Screenshot of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3007
    const-string/jumbo v5, ": returning null. logical widthxheight="

    .line 3006
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3007
    const-string/jumbo v5, "x"

    .line 3006
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    :cond_1
    const/4 v3, 0x0

    return-object v3

    .line 3013
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    if-nez p1, :cond_4

    xor-int/lit8 v3, p6, 0x1

    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->reset(Z)V

    .line 3014
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 3015
    .local v10, "frame":Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 3017
    .local v11, "stackBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/lit16 v3, v3, 0x2710

    add-int/lit16 v6, v3, 0x3e8

    .line 3019
    .local v6, "aboveAppLayer":I
    new-instance v9, Landroid/util/MutableBoolean;

    move/from16 v0, p4

    invoke-direct {v9, v0}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 3020
    .local v9, "mutableIncludeFullDisplay":Landroid/util/MutableBoolean;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v28, v0

    monitor-enter v28

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3021
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3022
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "WindowManager"

    const-string/jumbo v4, "Attempted to take screenshot while display was off."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3024
    :cond_3
    const/4 v3, 0x0

    monitor-exit v28

    .line 3020
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3024
    return-object v3

    .line 3013
    .end local v6    # "aboveAppLayer":I
    .end local v9    # "mutableIncludeFullDisplay":Landroid/util/MutableBoolean;
    .end local v10    # "frame":Landroid/graphics/Rect;
    .end local v11    # "stackBounds":Landroid/graphics/Rect;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 3027
    .restart local v6    # "aboveAppLayer":I
    .restart local v9    # "mutableIncludeFullDisplay":Landroid/util/MutableBoolean;
    .restart local v10    # "frame":Landroid/graphics/Rect;
    .restart local v11    # "stackBounds":Landroid/graphics/Rect;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->appWin:Lcom/android/server/wm/WindowState;

    .line 3028
    new-instance v3, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$7;

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {v3 .. v11}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$7;-><init>(ZZILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3125
    const/4 v4, 0x1

    .line 3028
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 3127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    iget-object v0, v3, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->appWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v20, v0

    .line 3128
    .local v20, "appWin":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    iget-boolean v0, v3, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->screenshotReady:Z

    move/from16 v27, v0

    .line 3129
    .local v27, "screenshotReady":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    iget v0, v3, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->maxLayer:I

    move/from16 v17, v0

    .line 3130
    .local v17, "maxLayer":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    iget v0, v3, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->minLayer:I

    move/from16 v16, v0

    .line 3132
    .local v16, "minLayer":I
    if-eqz p1, :cond_7

    if-nez v20, :cond_7

    .line 3134
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v3, :cond_6

    const-string/jumbo v3, "WindowManager"

    .line 3135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Screenshot: Couldn\'t find a surface matching "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3134
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3136
    :cond_6
    const/4 v3, 0x0

    monitor-exit v28

    .line 3020
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3136
    return-object v3

    .line 3139
    :cond_7
    if-nez v27, :cond_9

    .line 3140
    :try_start_2
    const-string/jumbo v4, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to capture screenshot of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3141
    const-string/jumbo v5, " appWin="

    .line 3140
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3141
    if-nez v20, :cond_8

    const-string/jumbo v3, "null"

    .line 3140
    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3143
    const/4 v3, 0x0

    monitor-exit v28

    .line 3020
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3143
    return-object v3

    .line 3141
    :cond_8
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " drawState="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3142
    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 3141
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 3151
    :cond_9
    if-nez v17, :cond_b

    .line 3152
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v3, :cond_a

    const-string/jumbo v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Screenshot of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3153
    const-string/jumbo v5, ": returning null maxLayer="

    .line 3152
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3154
    :cond_a
    const/4 v3, 0x0

    monitor-exit v28

    .line 3020
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3154
    return-object v3

    .line 3157
    :cond_b
    :try_start_4
    iget-boolean v3, v9, Landroid/util/MutableBoolean;->value:Z

    if-nez v3, :cond_d

    .line 3159
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v10, v3, v4, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v3

    if-nez v3, :cond_c

    .line 3160
    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    .line 3166
    :cond_c
    :goto_2
    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    if-eqz v3, :cond_e

    .line 3167
    const/4 v3, 0x0

    monitor-exit v28

    .line 3020
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3167
    return-object v3

    .line 3164
    :cond_d
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_5
    move/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v10, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 3020
    .end local v16    # "minLayer":I
    .end local v17    # "maxLayer":I
    .end local v20    # "appWin":Lcom/android/server/wm/WindowState;
    .end local v27    # "screenshotReady":Z
    :catchall_0
    move-exception v3

    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 3170
    .restart local v16    # "minLayer":I
    .restart local v17    # "maxLayer":I
    .restart local v20    # "appWin":Lcom/android/server/wm/WindowState;
    .restart local v27    # "screenshotReady":Z
    :cond_e
    if-gez p2, :cond_f

    .line 3171
    :try_start_6
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p5

    float-to-int v0, v3

    move/from16 p2, v0

    .line 3173
    :cond_f
    if-gez p3, :cond_10

    .line 3174
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p5

    float-to-int v0, v3

    move/from16 p3, v0

    .line 3179
    :cond_10
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3180
    .local v13, "crop":Landroid/graphics/Rect;
    move/from16 v0, p2

    int-to-float v3, v0

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    move/from16 v0, p3

    int-to-float v4, v0

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_15

    .line 3181
    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    div-float/2addr v3, v4

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v23, v0

    .line 3182
    .local v23, "cropWidth":I
    iget v3, v13, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v23

    iput v3, v13, Landroid/graphics/Rect;->right:I

    .line 3189
    .end local v23    # "cropWidth":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v19

    .line 3191
    .local v19, "rot":I
    const/4 v3, 0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_11

    const/4 v3, 0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_12

    .line 3192
    :cond_11
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_16

    const/16 v19, 0x3

    .line 3197
    :cond_12
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-static {v13, v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->convertCropForSurfaceFlinger(Landroid/graphics/Rect;III)V

    .line 3199
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v3, :cond_13

    .line 3200
    const-string/jumbo v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Screenshot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3201
    const-string/jumbo v5, " appToken="

    .line 3200
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/wm/-$Lambda$hCYoJeHmvymNpgtwuNPQ6z-HGjQ;->$INST$2:Lcom/android/server/wm/-$Lambda$hCYoJeHmvymNpgtwuNPQ6z-HGjQ;

    .line 3208
    const/4 v4, 0x0

    .line 3202
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3212
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v26

    .line 3213
    .local v26, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v26, :cond_17

    .line 3214
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v18

    .line 3215
    :goto_5
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v3, :cond_14

    if-eqz v18, :cond_14

    const-string/jumbo v3, "WindowManager"

    .line 3216
    const-string/jumbo v4, "Taking screenshot while rotating"

    .line 3215
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    :cond_14
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 3221
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransactionSync()V

    move-object/from16 v12, p8

    move/from16 v14, p2

    move/from16 v15, p3

    .line 3223
    invoke-interface/range {v12 .. v19}, Lcom/android/server/wm/DisplayContent$Screenshoter;->screenshot(Landroid/graphics/Rect;IIIIZI)Ljava/lang/Object;

    move-result-object v21

    .line 3225
    .local v21, "bitmap":Ljava/lang/Object;, "TE;"
    if-nez v21, :cond_18

    .line 3226
    const-string/jumbo v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Screenshot failure taking screenshot for ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3227
    const-string/jumbo v5, ") to layer "

    .line 3226
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3228
    const/4 v3, 0x0

    monitor-exit v28

    .line 3020
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3228
    return-object v3

    .line 3184
    .end local v19    # "rot":I
    .end local v21    # "bitmap":Ljava/lang/Object;, "TE;"
    .end local v26    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_15
    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, p2

    int-to-float v4, v0

    div-float/2addr v3, v4

    :try_start_7
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v22, v0

    .line 3185
    .local v22, "cropHeight":I
    iget v3, v13, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v22

    iput v3, v13, Landroid/graphics/Rect;->bottom:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 3192
    .end local v22    # "cropHeight":I
    .restart local v19    # "rot":I
    :cond_16
    const/16 v19, 0x1

    goto/16 :goto_4

    .line 3213
    .restart local v26    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_17
    const/16 v18, 0x0

    .local v18, "inRotation":Z
    goto :goto_5

    .end local v18    # "inRotation":Z
    .restart local v21    # "bitmap":Ljava/lang/Object;, "TE;"
    :cond_18
    monitor-exit v28

    .line 3020
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3231
    return-object v21
.end method

.method private setInputMethodTarget(Lcom/android/server/wm/WindowState;ZI)V
    .locals 3
    .param p1, "target"    # Lcom/android/server/wm/WindowState;
    .param p2, "targetWaitingAnim"    # Z
    .param p3, "layerAdj"    # I

    .prologue
    .line 2500
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_0

    .line 2501
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    if-ne v0, p2, :cond_0

    .line 2502
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodAnimLayerAdjustment:I

    if-ne v0, p3, :cond_0

    .line 2503
    return-void

    .line 2508
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    .line 2509
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInputMethodTarget to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p1, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 2514
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean p2, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    .line 2515
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayContent;->setInputMethodAnimLayerAdjustment(I)V

    .line 2516
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 2517
    return-void
.end method

.method private stopDimmingIfNeeded()V
    .locals 1

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayerController;->stopDimmingIfNeeded()V

    .line 1930
    return-void
.end method

.method private updateBaseDisplayMetricsIfNeeded()V
    .locals 11

    .prologue
    .line 1686
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v9, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v8, v9, v10}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 1687
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v8, Landroid/view/DisplayInfo;->rotation:I

    .line 1688
    .local v6, "orientation":I
    const/4 v8, 0x1

    if-eq v6, v8, :cond_0

    const/4 v8, 0x3

    if-ne v6, v8, :cond_3

    :cond_0
    const/4 v7, 0x1

    .line 1689
    .local v7, "rotated":Z
    :goto_0
    if-eqz v7, :cond_4

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1690
    .local v5, "newWidth":I
    :goto_1
    if-eqz v7, :cond_5

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1691
    .local v4, "newHeight":I
    :goto_2
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v8, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 1693
    .local v3, "newDensity":I
    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    if-ne v8, v5, :cond_1

    .line 1694
    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-eq v8, v4, :cond_6

    .line 1693
    :cond_1
    const/4 v0, 0x1

    .line 1697
    .local v0, "displayMetricsChanged":Z
    :goto_3
    if-eqz v0, :cond_2

    .line 1699
    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v9, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    if-ne v8, v9, :cond_8

    .line 1700
    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v9, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-eq v8, v9, :cond_9

    const/4 v2, 0x1

    .line 1701
    .local v2, "isDisplaySizeForced":Z
    :goto_4
    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iget v9, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    if-eq v8, v9, :cond_a

    const/4 v1, 0x1

    .line 1704
    .local v1, "isDisplayDensityForced":Z
    :goto_5
    if-eqz v2, :cond_b

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move v10, v8

    .line 1705
    :goto_6
    if-eqz v2, :cond_c

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move v9, v8

    .line 1706
    :goto_7
    if-eqz v1, :cond_d

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 1704
    :goto_8
    invoke-virtual {p0, v10, v9, v8}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 1709
    iput v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 1710
    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 1711
    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 1712
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, p0}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 1714
    .end local v1    # "isDisplayDensityForced":Z
    .end local v2    # "isDisplaySizeForced":Z
    :cond_2
    return-void

    .line 1688
    .end local v0    # "displayMetricsChanged":Z
    .end local v3    # "newDensity":I
    .end local v4    # "newHeight":I
    .end local v5    # "newWidth":I
    .end local v7    # "rotated":Z
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "rotated":Z
    goto :goto_0

    .line 1689
    :cond_4
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    .restart local v5    # "newWidth":I
    goto :goto_1

    .line 1690
    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    .restart local v4    # "newHeight":I
    goto :goto_2

    .line 1695
    .restart local v3    # "newDensity":I
    :cond_6
    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v9, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    if-eq v8, v9, :cond_7

    const/4 v0, 0x1

    .restart local v0    # "displayMetricsChanged":Z
    goto :goto_3

    .end local v0    # "displayMetricsChanged":Z
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "displayMetricsChanged":Z
    goto :goto_3

    .line 1699
    :cond_8
    const/4 v2, 0x1

    .restart local v2    # "isDisplaySizeForced":Z
    goto :goto_4

    .line 1700
    .end local v2    # "isDisplaySizeForced":Z
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "isDisplaySizeForced":Z
    goto :goto_4

    .line 1701
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "isDisplayDensityForced":Z
    goto :goto_5

    :cond_b
    move v10, v5

    .line 1704
    goto :goto_6

    :cond_c
    move v9, v4

    .line 1705
    goto :goto_7

    :cond_d
    move v8, v3

    .line 1706
    goto :goto_8
.end method

.method private updateDisplayAndOrientation(I)Landroid/view/DisplayInfo;
    .locals 14
    .param p1, "uiMode"    # I

    .prologue
    const/4 v13, 0x0

    const v4, 0x3fa66666    # 1.3f

    .line 1165
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    :cond_0
    const/4 v12, 0x1

    .line 1166
    .local v12, "rotated":Z
    :goto_0
    if-eqz v12, :cond_5

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 1167
    .local v11, "realdw":I
    :goto_1
    if-eqz v12, :cond_6

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 1168
    .local v10, "realdh":I
    :goto_2
    move v1, v11

    .line 1169
    .local v1, "dw":I
    move v2, v10

    .line 1171
    .local v2, "dh":I
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mAltOrientation:Z

    if-eqz v0, :cond_1

    .line 1172
    if-le v11, v10, :cond_7

    .line 1174
    int-to-float v0, v10

    div-float/2addr v0, v4

    float-to-int v9, v0

    .line 1175
    .local v9, "maxw":I
    if-ge v9, v11, :cond_1

    .line 1176
    move v1, v9

    .line 1188
    .end local v9    # "maxw":I
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    .line 1189
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    move v4, p1

    .line 1188
    invoke-interface/range {v0 .. v5}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(IIIII)I

    move-result v7

    .line 1190
    .local v7, "appWidth":I
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    .line 1191
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    move v4, p1

    .line 1190
    invoke-interface/range {v0 .. v5}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(IIIII)I

    move-result v6

    .line 1192
    .local v6, "appHeight":I
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    iput v3, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 1193
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1194
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1195
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iput v3, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 1196
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v7, v0, Landroid/view/DisplayInfo;->appWidth:I

    .line 1197
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v6, v0, Landroid/view/DisplayInfo;->appHeight:I

    .line 1198
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_2

    .line 1199
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 1200
    sget-object v4, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    const/4 v5, 0x0

    .line 1199
    invoke-virtual {v0, v3, v4, v5}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 1202
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v3}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;)V

    .line 1203
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v0, :cond_8

    .line 1204
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Landroid/view/DisplayInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/DisplayInfo;->flags:I

    .line 1209
    :goto_4
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1210
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 1209
    invoke-virtual {v0, v3, v4}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    .line 1212
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v13, v13, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1214
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_3

    .line 1215
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 1216
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 1215
    invoke-static {v0, v3}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    .line 1218
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0

    .line 1165
    .end local v1    # "dw":I
    .end local v2    # "dh":I
    .end local v6    # "appHeight":I
    .end local v7    # "appWidth":I
    .end local v10    # "realdh":I
    .end local v11    # "realdw":I
    .end local v12    # "rotated":Z
    :cond_4
    const/4 v12, 0x0

    .restart local v12    # "rotated":Z
    goto/16 :goto_0

    .line 1166
    :cond_5
    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .restart local v11    # "realdw":I
    goto/16 :goto_1

    .line 1167
    :cond_6
    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .restart local v10    # "realdh":I
    goto/16 :goto_2

    .line 1180
    .restart local v1    # "dw":I
    .restart local v2    # "dh":I
    :cond_7
    int-to-float v0, v11

    div-float/2addr v0, v4

    float-to-int v8, v0

    .line 1181
    .local v8, "maxh":I
    if-ge v8, v10, :cond_1

    .line 1182
    move v2, v8

    goto/16 :goto_3

    .line 1206
    .end local v8    # "maxh":I
    .restart local v6    # "appHeight":I
    .restart local v7    # "appWidth":I
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Landroid/view/DisplayInfo;->flags:I

    const v4, -0x40000001    # -1.9999999f

    and-int/2addr v3, v4

    iput v3, v0, Landroid/view/DisplayInfo;->flags:I

    goto :goto_4
.end method


# virtual methods
.method protected addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;I)V
    .locals 2
    .param p1, "child"    # Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    .param p2, "index"    # I

    .prologue
    .line 1800
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "See DisplayChildWindowContainer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Ljava/util/Comparator;)V
    .locals 2
    .param p1, "child"    # Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1795
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "See DisplayChildWindowContainer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic addChild(Lcom/android/server/wm/WindowContainer;I)V
    .locals 0

    .prologue
    .line 1798
    check-cast p1, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;I)V

    return-void
.end method

.method protected bridge synthetic addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V
    .locals 0

    .prologue
    .line 1792
    check-cast p1, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Ljava/util/Comparator;)V

    return-void
.end method

.method addStackToDisplay(IZ)Lcom/android/server/wm/TaskStack;
    .locals 5
    .param p1, "stackId"    # I
    .param p2, "onTop"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1754
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Create new stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " on displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1755
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1754
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 1758
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_3

    .line 1761
    iput-boolean v4, v0, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    .line 1764
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    if-eqz p2, :cond_2

    const v1, 0x7fffffff

    :goto_0
    invoke-virtual {v2, v1, v0, v4}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->positionChildAt(ILcom/android/server/wm/TaskStack;Z)V

    .line 1771
    :goto_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1772
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    .line 1774
    :cond_1
    return-object v0

    .line 1764
    :cond_2
    const/high16 v1, -0x80000000

    goto :goto_0

    .line 1767
    :cond_3
    new-instance v0, Lcom/android/server/wm/TaskStack;

    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    .line 1768
    .restart local v0    # "stack":Lcom/android/server/wm/TaskStack;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V

    goto :goto_1
.end method

.method adjustForImeIfNeeded()V
    .locals 22

    .prologue
    .line 2028
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 2029
    .local v5, "imeWin":Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2030
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v1}, Lcom/android/server/wm/DockedStackDividerController;->isImeHideRequested()Z

    move-result v1

    xor-int/lit8 v19, v1, 0x1

    .line 2031
    :goto_0
    const/4 v1, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v10

    .line 2032
    .local v10, "dockVisible":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getImeFocusStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v18

    .line 2033
    .local v18, "imeTargetStack":Lcom/android/server/wm/TaskStack;
    if-eqz v10, :cond_3

    if-eqz v18, :cond_3

    .line 2034
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v15

    .line 2035
    .local v15, "imeDockSide":I
    :goto_1
    const/4 v1, 0x2

    if-ne v15, v1, :cond_4

    const/16 v17, 0x1

    .line 2036
    .local v17, "imeOnTop":Z
    :goto_2
    const/4 v1, 0x4

    if-ne v15, v1, :cond_5

    const/4 v2, 0x1

    .line 2037
    .local v2, "imeOnBottom":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v1}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v13

    .line 2038
    .local v13, "dockMinimized":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->getInputMethodWindowVisibleHeightLw()I

    move-result v6

    .line 2039
    .local v6, "imeHeight":I
    if-eqz v19, :cond_7

    .line 2040
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v1}, Lcom/android/server/wm/DockedStackDividerController;->getImeHeightAdjustedFor()I

    move-result v1

    if-eq v6, v1, :cond_6

    const/16 v16, 0x1

    .line 2048
    .local v16, "imeHeightChanged":Z
    :goto_4
    if-eqz v19, :cond_c

    if-eqz v10, :cond_c

    if-nez v17, :cond_0

    if-eqz v2, :cond_c

    :cond_0
    xor-int/lit8 v1, v13, 0x1

    if-eqz v1, :cond_c

    .line 2049
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v1

    add-int/lit8 v14, v1, -0x1

    .local v14, "i":I
    :goto_5
    if-ltz v14, :cond_b

    .line 2050
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v14}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/TaskStack;

    .line 2051
    .local v21, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_8

    const/16 v20, 0x1

    .line 2052
    .local v20, "isDockedOnBottom":Z
    :goto_6
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_a

    if-nez v2, :cond_1

    if-eqz v20, :cond_a

    .line 2053
    :cond_1
    move-object/from16 v0, v21

    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->isStackAffectedByDragResizing(I)Z

    move-result v1

    .line 2052
    if-eqz v1, :cond_a

    .line 2054
    if-eqz v2, :cond_9

    move/from16 v1, v16

    :goto_7
    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v1}, Lcom/android/server/wm/TaskStack;->setAdjustedForIme(Lcom/android/server/wm/WindowState;Z)V

    .line 2049
    :goto_8
    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    .line 2029
    .end local v2    # "imeOnBottom":Z
    .end local v6    # "imeHeight":I
    .end local v10    # "dockVisible":Z
    .end local v13    # "dockMinimized":Z
    .end local v14    # "i":I
    .end local v15    # "imeDockSide":I
    .end local v16    # "imeHeightChanged":Z
    .end local v17    # "imeOnTop":Z
    .end local v18    # "imeTargetStack":Lcom/android/server/wm/TaskStack;
    .end local v20    # "isDockedOnBottom":Z
    .end local v21    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_2
    const/16 v19, 0x0

    .local v19, "imeVisible":Z
    goto/16 :goto_0

    .line 2034
    .end local v19    # "imeVisible":Z
    .restart local v10    # "dockVisible":Z
    .restart local v18    # "imeTargetStack":Lcom/android/server/wm/TaskStack;
    :cond_3
    const/4 v15, -0x1

    .restart local v15    # "imeDockSide":I
    goto :goto_1

    .line 2035
    :cond_4
    const/16 v17, 0x0

    .restart local v17    # "imeOnTop":Z
    goto :goto_2

    .line 2036
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "imeOnBottom":Z
    goto :goto_3

    .line 2040
    .restart local v6    # "imeHeight":I
    .restart local v13    # "dockMinimized":Z
    :cond_6
    const/16 v16, 0x0

    .restart local v16    # "imeHeightChanged":Z
    goto :goto_4

    .line 2039
    .end local v16    # "imeHeightChanged":Z
    :cond_7
    const/16 v16, 0x0

    .restart local v16    # "imeHeightChanged":Z
    goto :goto_4

    .line 2051
    .restart local v14    # "i":I
    .restart local v21    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_8
    const/16 v20, 0x0

    .restart local v20    # "isDockedOnBottom":Z
    goto :goto_6

    .line 2054
    :cond_9
    const/4 v1, 0x0

    goto :goto_7

    .line 2056
    :cond_a
    const/4 v1, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    goto :goto_8

    .line 2059
    .end local v20    # "isDockedOnBottom":Z
    .end local v21    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 2060
    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 2059
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DockedStackDividerController;->setAdjustedForIme(ZZZLcom/android/server/wm/WindowState;I)V

    .line 2069
    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    move/from16 v0, v19

    invoke-virtual {v1, v0, v6}, Lcom/android/server/wm/PinnedStackController;->setAdjustedForIme(ZI)V

    .line 2070
    return-void

    .line 2062
    .end local v14    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v1

    add-int/lit8 v14, v1, -0x1

    .restart local v14    # "i":I
    :goto_a
    if-ltz v14, :cond_d

    .line 2063
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v14}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/TaskStack;

    .line 2064
    .restart local v21    # "stack":Lcom/android/server/wm/TaskStack;
    xor-int/lit8 v1, v10, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    .line 2062
    add-int/lit8 v14, v14, -0x1

    goto :goto_a

    .line 2066
    .end local v21    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 2067
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v11, v5

    move v12, v6

    .line 2066
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/DockedStackDividerController;->setAdjustedForIme(ZZZLcom/android/server/wm/WindowState;I)V

    goto :goto_9
.end method

.method animateDimLayers()Z
    .locals 1

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayerController;->animateDimLayers()Z

    move-result v0

    return v0
.end method

.method animateForIme(FFF)Z
    .locals 8
    .param p1, "interpolatedValue"    # F
    .param p2, "animationTarget"    # F
    .param p3, "dividerAnimationTarget"    # F

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 1977
    const/4 v2, 0x0

    .line 1979
    .local v2, "updated":Z
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .end local v2    # "updated":Z
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 1980
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 1981
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 1979
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1985
    :cond_1
    cmpl-float v3, p1, v6

    if-ltz v3, :cond_2

    cmpl-float v3, p2, v5

    if-nez v3, :cond_2

    cmpl-float v3, p3, v5

    if-nez v3, :cond_2

    .line 1986
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    .line 1987
    const/4 v2, 0x1

    .line 1998
    :goto_2
    cmpl-float v3, p1, v6

    if-ltz v3, :cond_0

    .line 1999
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->endImeAdjustAnimation()V

    goto :goto_1

    .line 1989
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 1990
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedAnimationValue(F)F

    move-result v4

    .line 1989
    iput v4, v3, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    .line 1991
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 1992
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedDividerValue(F)F

    move-result v4

    .line 1991
    iput v4, v3, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    .line 1994
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget v3, v3, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    .line 1995
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget v4, v4, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    .line 1993
    invoke-virtual {v1, v3, v4, v7}, Lcom/android/server/wm/TaskStack;->updateAdjustForIme(FFZ)Z

    move-result v3

    or-int/2addr v2, v3

    .local v2, "updated":Z
    goto :goto_2

    .line 2003
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "updated":Z
    :cond_3
    return v2
.end method

.method applySurfaceChangesTransaction(Z)Z
    .locals 12
    .param p1, "recoveringMemory"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 2792
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 2793
    .local v8, "dw":I
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 2794
    .local v7, "dh":I
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 2796
    .local v10, "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 2798
    const/4 v9, 0x0

    .line 2800
    .local v9, "repeats":I
    :goto_0
    add-int/lit8 v9, v9, 0x1

    .line 2801
    const/4 v0, 0x6

    if-le v9, v0, :cond_3

    .line 2802
    sget-object v0, Lcom/android/server/wm/DisplayContent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Animation repeat aborted after too many iterations"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->clearLayoutNeeded()V

    .line 2849
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->reset()V

    .line 2850
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->resetDimming()V

    .line 2852
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRecoveringMemory:Z

    .line 2853
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;

    invoke-virtual {p0, v0, v5}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2855
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2856
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    .line 2857
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v3, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    .line 2858
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v4, v4, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    .line 2855
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayProperties(IZFIZ)V

    .line 2861
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->stopDimmingIfNeeded()V

    .line 2863
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v11

    .line 2864
    .local v11, "wallpaperVisible":Z
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    if-eq v11, v0, :cond_2

    .line 2866
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/DisplayContent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyWallpaperVisibilityChanged, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    :cond_1
    iput-boolean v11, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    .line 2869
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WallpaperVisibilityListeners;->notifyWallpaperVisibilityChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 2872
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2873
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 2876
    .local v6, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->updateAllDrawn()V

    goto :goto_1

    .line 2807
    .end local v6    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v11    # "wallpaperVisible":Z
    :cond_3
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "On entry to LockedInner"

    .line 2808
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 2807
    invoke-virtual {v10, v0, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 2814
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 2815
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows(Lcom/android/server/wm/DisplayContent;)V

    .line 2818
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 2819
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/server/wm/DisplayContent;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Computing new config from layout"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v5, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(ZI)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2821
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 2822
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2826
    :cond_7
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    .line 2827
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 2831
    :cond_8
    const/4 v0, 0x4

    if-ge v9, v0, :cond_b

    .line 2832
    if-ne v9, v5, :cond_a

    move v0, v5

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    .line 2838
    :goto_3
    iput v1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 2840
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_9

    .line 2841
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, v8, v7}, Landroid/view/WindowManagerPolicy;->beginPostLayoutPolicyLw(II)V

    .line 2842
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mApplyPostLayoutPolicy:Ljava/util/function/Consumer;

    invoke-virtual {p0, v0, v5}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2843
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->finishPostLayoutPolicyLw()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 2844
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v0, :cond_9

    .line 2845
    const-string/jumbo v0, "after finishPostLayoutPolicyLw"

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 2844
    invoke-virtual {v10, v0, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 2847
    :cond_9
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 2832
    goto :goto_2

    .line 2834
    :cond_b
    sget-object v0, Lcom/android/server/wm/DisplayContent;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Layout repeat skipped after too many iterations"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2879
    .restart local v11    # "wallpaperVisible":Z
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->focusDisplayed:Z

    return v0
.end method

.method assignWindowLayers(Z)V
    .locals 1
    .param p1, "setLayoutNeeded"    # Z

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowLayersController;->assignWindowLayers(Lcom/android/server/wm/DisplayContent;)V

    .line 2335
    if-eqz p1, :cond_0

    .line 2336
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 2338
    :cond_0
    return-void
.end method

.method beginImeAdjustAnimation()V
    .locals 3

    .prologue
    .line 2019
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2020
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 2021
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2022
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->beginImeAdjustAnimation()V

    .line 2019
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2025
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    return-void
.end method

.method canAddToastWindowForUid(I)Z
    .locals 5
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2272
    new-array v4, v2, [I

    aput v3, v4, v3

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2273
    return v2

    .line 2279
    :cond_0
    new-instance v4, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;

    invoke-direct {v4, v3, p1}, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;-><init>(BI)V

    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2281
    .local v0, "focusedWindowForUid":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_1

    .line 2282
    return v2

    .line 2284
    :cond_1
    new-instance v4, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;

    invoke-direct {v4, v2, p1}, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;-><init>(BI)V

    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 2287
    .local v1, "win":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_2

    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method checkCompleteDeferredRemoval()Z
    .locals 3

    .prologue
    .line 1960
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->checkCompleteDeferredRemoval()Z

    move-result v0

    .line 1962
    .local v0, "stillDeferringRemoval":Z
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    if-eqz v1, :cond_0

    .line 1963
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImmediately()V

    .line 1964
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->onDisplayRemoved(I)V

    .line 1965
    const/4 v1, 0x0

    return v1

    .line 1967
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method checkWaitingForWindows()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2621
    iput-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    .line 2622
    iput-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    .line 2623
    iput-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    .line 2624
    iput-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    .line 2626
    new-instance v2, Lcom/android/server/wm/-$Lambda$lpBUCbECLvWBIi8CcvaEY5AB7jM$1;

    invoke-direct {v2, v5, p0}, Lcom/android/server/wm/-$Lambda$lpBUCbECLvWBIi8CcvaEY5AB7jM$1;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2645
    .local v0, "visibleWindow":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    .line 2647
    return v5

    .line 2652
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2653
    const v3, 0x1120069

    .line 2652
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2654
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mOnlyCore:Z

    xor-int/lit8 v1, v2, 0x1

    .line 2656
    :goto_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREEN_ON:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    if-eqz v2, :cond_2

    :cond_1
    const-string/jumbo v2, "WindowManager"

    .line 2657
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "******** booted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2658
    const-string/jumbo v4, " msg="

    .line 2657
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2658
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    .line 2657
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2659
    const-string/jumbo v4, " haveBoot="

    .line 2657
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2659
    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    .line 2657
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2659
    const-string/jumbo v4, " haveApp="

    .line 2657
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2659
    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    .line 2657
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2660
    const-string/jumbo v4, " haveWall="

    .line 2657
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2660
    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    .line 2657
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2660
    const-string/jumbo v4, " wallEnabled="

    .line 2657
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2661
    const-string/jumbo v4, " haveKeyguard="

    .line 2657
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2661
    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    .line 2657
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2656
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 2666
    return v5

    .line 2652
    :cond_3
    const/4 v1, 0x0

    .local v1, "wallpaperEnabled":Z
    goto/16 :goto_0

    .line 2671
    .end local v1    # "wallpaperEnabled":Z
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v2, :cond_7

    .line 2672
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_6

    :cond_5
    if-eqz v1, :cond_7

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    xor-int/lit8 v2, v2, 0x1

    .line 2671
    if-eqz v2, :cond_7

    .line 2673
    :cond_6
    return v5

    .line 2676
    :cond_7
    return v6
.end method

.method clearImeAdjustAnimation()Z
    .locals 4

    .prologue
    .line 2007
    const/4 v0, 0x0

    .line 2008
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2009
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    .line 2010
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2011
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    .line 2012
    const/4 v0, 0x1

    .line 2008
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2015
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    return v0
.end method

.method computeImeTarget(Z)Lcom/android/server/wm/WindowState;
    .locals 13
    .param p1, "updateImeTarget"    # Z

    .prologue
    const/4 v12, 0x4

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 2395
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_2

    .line 2397
    if-eqz p1, :cond_1

    .line 2398
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Moving IM target from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2399
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 2398
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2399
    const-string/jumbo v9, " to null since mInputMethodWindow is null"

    .line 2398
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    invoke-direct {p0, v11, v6, v7}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;ZI)V

    .line 2402
    :cond_1
    return-object v11

    .line 2408
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeTarget:Z

    .line 2409
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mComputeImeTargetPredicate:Ljava/util/function/Predicate;

    invoke-virtual {p0, v6}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 2415
    .local v4, "target":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_3

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x3

    if-ne v6, v8, :cond_3

    .line 2416
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2417
    .local v5, "token":Lcom/android/server/wm/AppWindowToken;
    if-eqz v5, :cond_3

    .line 2418
    invoke-virtual {v5, v4}, Lcom/android/server/wm/AppWindowToken;->getImeTargetBelowWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 2419
    .local v1, "betterTarget":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_3

    .line 2420
    move-object v4, v1

    .line 2425
    .end local v1    # "betterTarget":Lcom/android/server/wm/WindowState;
    .end local v5    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_3
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v6, :cond_4

    if-eqz p1, :cond_4

    const-string/jumbo v6, "WindowManager"

    .line 2426
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Proposed new IME target: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2425
    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    :cond_4
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 2434
    .local v2, "curTarget":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isClosing()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2435
    if-eqz v4, :cond_5

    .line 2436
    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-le v6, v8, :cond_7

    .line 2437
    :cond_5
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v6, :cond_6

    const-string/jumbo v6, "WindowManager"

    const-string/jumbo v7, "Current target higher, not changing"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    :cond_6
    return-object v2

    .line 2441
    :cond_7
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v6, :cond_8

    const-string/jumbo v6, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Desired input method target="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2442
    const-string/jumbo v9, " updateImeTarget="

    .line 2441
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    :cond_8
    if-nez v4, :cond_c

    .line 2445
    if-eqz p1, :cond_a

    .line 2446
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v6, :cond_9

    const-string/jumbo v8, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Moving IM target from "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2447
    const-string/jumbo v9, " to null."

    .line 2446
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2447
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_STACK_CRAWLS:Z

    if-eqz v6, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " Callers="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2448
    invoke-static {v12}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v10

    .line 2447
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2446
    :goto_0
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    :cond_9
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    invoke-direct {p0, v11, v6, v7}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;ZI)V

    .line 2452
    :cond_a
    return-object v11

    .line 2448
    :cond_b
    const-string/jumbo v6, ""

    goto :goto_0

    .line 2455
    :cond_c
    if-eqz p1, :cond_14

    .line 2456
    if-nez v2, :cond_10

    const/4 v5, 0x0

    .line 2457
    :goto_1
    if-eqz v5, :cond_12

    .line 2462
    const/4 v3, 0x0

    .line 2463
    .local v3, "highestTarget":Lcom/android/server/wm/WindowState;
    iget-object v6, v5, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v6, v6, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v6, :cond_d

    iget-object v6, v5, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_e

    .line 2464
    :cond_d
    invoke-virtual {v5, v2}, Lcom/android/server/wm/AppWindowToken;->getHighestAnimLayerWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 2467
    .end local v3    # "highestTarget":Lcom/android/server/wm/WindowState;
    :cond_e
    if-eqz v3, :cond_12

    .line 2468
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 2469
    .local v0, "appTransition":Lcom/android/server/wm/AppTransition;
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v6, :cond_f

    const-string/jumbo v6, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2470
    const-string/jumbo v9, " animating="

    .line 2469
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2470
    iget-object v9, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v9

    .line 2469
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2471
    const-string/jumbo v9, " layer="

    .line 2469
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2471
    iget-object v9, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 2469
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2472
    const-string/jumbo v9, " new layer="

    .line 2469
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2472
    iget-object v9, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 2469
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    :cond_f
    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2477
    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodAnimLayerAdjustment:I

    invoke-direct {p0, v3, v10, v6}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;ZI)V

    .line 2478
    return-object v3

    .line 2456
    .end local v0    # "appTransition":Lcom/android/server/wm/AppTransition;
    :cond_10
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .restart local v5    # "token":Lcom/android/server/wm/AppWindowToken;
    goto :goto_1

    .line 2479
    .end local v5    # "token":Lcom/android/server/wm/AppWindowToken;
    .restart local v0    # "appTransition":Lcom/android/server/wm/AppTransition;
    :cond_11
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 2480
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-le v6, v8, :cond_12

    .line 2484
    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodAnimLayerAdjustment:I

    invoke-direct {p0, v3, v10, v6}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;ZI)V

    .line 2485
    return-object v3

    .line 2490
    .end local v0    # "appTransition":Lcom/android/server/wm/AppTransition;
    :cond_12
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v6, :cond_13

    const-string/jumbo v8, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Moving IM target from "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " to "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2491
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_STACK_CRAWLS:Z

    if-eqz v6, :cond_15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " Callers="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v12}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2490
    :goto_2
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    :cond_13
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_16

    .line 2493
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->getAnimLayerAdjustment()I

    move-result v6

    .line 2492
    :goto_3
    invoke-direct {p0, v4, v7, v6}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;ZI)V

    .line 2496
    :cond_14
    return-object v4

    .line 2491
    :cond_15
    const-string/jumbo v6, ""

    goto :goto_2

    :cond_16
    move v6, v7

    .line 2493
    goto :goto_3
.end method

.method computeScreenConfiguration(Landroid/content/res/Configuration;)V
    .locals 27
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1226
    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/res/Configuration;->uiMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wm/DisplayContent;->updateDisplayAndOrientation(I)Landroid/view/DisplayInfo;

    move-result-object v17

    .line 1228
    .local v17, "displayInfo":Landroid/view/DisplayInfo;
    move-object/from16 v0, v17

    iget v4, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1229
    .local v4, "dw":I
    move-object/from16 v0, v17

    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1230
    .local v5, "dh":I
    if-gt v4, v5, :cond_3

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v17

    iget v6, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 1235
    move-object/from16 v0, p1

    iget v7, v0, Landroid/content/res/Configuration;->uiMode:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1234
    invoke-interface/range {v3 .. v8}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(IIIII)I

    move-result v3

    int-to-float v3, v3

    .line 1235
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 1234
    div-float/2addr v3, v6

    float-to-int v3, v3

    .line 1233
    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v17

    iget v6, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 1238
    move-object/from16 v0, p1

    iget v7, v0, Landroid/content/res/Configuration;->uiMode:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1237
    invoke-interface/range {v3 .. v8}, Landroid/view/WindowManagerPolicy;->getConfigDisplayHeight(IIIII)I

    move-result v3

    int-to-float v3, v3

    .line 1238
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 1237
    div-float/2addr v3, v6

    float-to-int v3, v3

    .line 1236
    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v17

    iget v6, v0, Landroid/view/DisplayInfo;->rotation:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {v3, v6, v4, v5, v7}, Landroid/view/WindowManagerPolicy;->getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    .line 1242
    .local v21, "leftInset":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    .line 1244
    .local v26, "topInset":I
    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    add-int v3, v3, v21

    .line 1245
    move-object/from16 v0, v17

    iget v6, v0, Landroid/view/DisplayInfo;->appHeight:I

    add-int v6, v6, v26

    .line 1244
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/content/res/Configuration;->setAppBounds(IIII)V

    .line 1246
    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v6, 0x1

    if-eq v3, v6, :cond_4

    .line 1247
    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_5

    const/4 v9, 0x1

    .line 1249
    .local v9, "rotated":Z
    :goto_1
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 1250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v13, v3, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move v11, v4

    move v12, v5

    move-object/from16 v14, p1

    .line 1249
    invoke-direct/range {v6 .. v14}, Lcom/android/server/wm/DisplayContent;->computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;IZIIIFLandroid/content/res/Configuration;)V

    .line 1252
    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v6, v3, -0x301

    .line 1253
    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    .line 1254
    const/16 v3, 0x200

    .line 1252
    :goto_2
    or-int/2addr v3, v6

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1257
    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    div-float/2addr v3, v6

    float-to-int v3, v3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 1258
    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    div-float/2addr v3, v6

    float-to-int v3, v3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 1259
    move-object/from16 v0, p1

    iget v10, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 1260
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    move-object/from16 v8, p0

    move v11, v4

    move v12, v5

    .line 1259
    invoke-direct/range {v8 .. v13}, Lcom/android/server/wm/DisplayContent;->computeCompatSmallestWidth(ZIIII)I

    move-result v3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 1261
    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1264
    invoke-virtual/range {v17 .. v17}, Landroid/view/DisplayInfo;->isHdr()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1265
    const/16 v3, 0x8

    .line 1267
    :goto_3
    invoke-virtual/range {v17 .. v17}, Landroid/view/DisplayInfo;->isWideColorGamut()Z

    move-result v6

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->hasWideColorGamutSupport()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1268
    const/4 v6, 0x2

    .line 1264
    :goto_4
    or-int/2addr v3, v6

    .line 1263
    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->colorMode:I

    .line 1273
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1274
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 1275
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->navigation:I

    .line 1277
    const/16 v20, 0x0

    .line 1278
    .local v20, "keyboardPresence":I
    const/16 v23, 0x0

    .line 1279
    .local v23, "navigationPresence":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService;->getInputDevices()[Landroid/view/InputDevice;

    move-result-object v16

    .line 1280
    .local v16, "devices":[Landroid/view/InputDevice;
    if-eqz v16, :cond_9

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    .line 1281
    .local v22, "len":I
    :goto_5
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_6
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_d

    .line 1282
    aget-object v15, v16, v19

    .line 1283
    .local v15, "device":Landroid/view/InputDevice;
    invoke-virtual {v15}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1284
    invoke-virtual {v15}, Landroid/view/InputDevice;->getSources()I

    move-result v25

    .line 1285
    .local v25, "sources":I
    invoke-virtual {v15}, Landroid/view/InputDevice;->isExternal()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1286
    const/16 v24, 0x2

    .line 1290
    .local v24, "presenceFlag":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mIsTouchDevice:Z

    if-eqz v3, :cond_b

    .line 1291
    move/from16 v0, v25

    and-int/lit16 v3, v0, 0x1002

    .line 1292
    const/16 v6, 0x1002

    .line 1291
    if-ne v3, v6, :cond_0

    .line 1293
    const/4 v3, 0x3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1299
    :cond_0
    :goto_8
    const v3, 0x10004

    and-int v3, v3, v25

    const v6, 0x10004

    if-ne v3, v6, :cond_c

    .line 1300
    const/4 v3, 0x3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->navigation:I

    .line 1301
    or-int v23, v23, v24

    .line 1308
    :cond_1
    :goto_9
    invoke-virtual {v15}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 1309
    const/4 v3, 0x2

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 1310
    or-int v20, v20, v24

    .line 1281
    .end local v24    # "presenceFlag":I
    .end local v25    # "sources":I
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 1231
    .end local v9    # "rotated":Z
    .end local v15    # "device":Landroid/view/InputDevice;
    .end local v16    # "devices":[Landroid/view/InputDevice;
    .end local v19    # "i":I
    .end local v20    # "keyboardPresence":I
    .end local v21    # "leftInset":I
    .end local v22    # "len":I
    .end local v23    # "navigationPresence":I
    .end local v26    # "topInset":I
    :cond_3
    const/4 v3, 0x2

    goto/16 :goto_0

    .line 1246
    .restart local v21    # "leftInset":I
    .restart local v26    # "topInset":I
    :cond_4
    const/4 v9, 0x1

    .restart local v9    # "rotated":Z
    goto/16 :goto_1

    .line 1247
    .end local v9    # "rotated":Z
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "rotated":Z
    goto/16 :goto_1

    .line 1255
    :cond_6
    const/16 v3, 0x100

    goto/16 :goto_2

    .line 1266
    :cond_7
    const/4 v3, 0x4

    goto/16 :goto_3

    .line 1269
    :cond_8
    const/4 v6, 0x1

    goto/16 :goto_4

    .line 1280
    .restart local v16    # "devices":[Landroid/view/InputDevice;
    .restart local v20    # "keyboardPresence":I
    .restart local v23    # "navigationPresence":I
    :cond_9
    const/16 v22, 0x0

    .restart local v22    # "len":I
    goto :goto_5

    .line 1287
    .restart local v15    # "device":Landroid/view/InputDevice;
    .restart local v19    # "i":I
    .restart local v25    # "sources":I
    :cond_a
    const/16 v24, 0x1

    .restart local v24    # "presenceFlag":I
    goto :goto_7

    .line 1296
    :cond_b
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->touchscreen:I

    goto :goto_8

    .line 1302
    :cond_c
    move/from16 v0, v25

    and-int/lit16 v3, v0, 0x201

    const/16 v6, 0x201

    if-ne v3, v6, :cond_1

    .line 1303
    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    .line 1304
    const/4 v3, 0x2

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->navigation:I

    .line 1305
    or-int v23, v23, v24

    goto :goto_9

    .line 1315
    .end local v15    # "device":Landroid/view/InputDevice;
    .end local v24    # "presenceFlag":I
    .end local v25    # "sources":I
    :cond_d
    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mHasPermanentDpad:Z

    if-eqz v3, :cond_e

    .line 1316
    const/4 v3, 0x2

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->navigation:I

    .line 1317
    or-int/lit8 v23, v23, 0x1

    .line 1322
    :cond_e
    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v6, 0x1

    if-eq v3, v6, :cond_10

    const/16 v18, 0x1

    .line 1323
    .local v18, "hardKeyboardAvailable":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    move/from16 v0, v18

    if-eq v0, v3, :cond_f

    .line 1324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v18

    iput-boolean v0, v3, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    .line 1325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x16

    invoke-virtual {v3, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 1326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x16

    invoke-virtual {v3, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 1330
    :cond_f
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1331
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1332
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v23

    invoke-interface {v3, v0, v1, v2}, Landroid/view/WindowManagerPolicy;->adjustConfigurationLw(Landroid/content/res/Configuration;II)V

    .line 1334
    return-void

    .line 1322
    .end local v18    # "hardKeyboardAvailable":Z
    :cond_10
    const/16 v18, 0x0

    .restart local v18    # "hardKeyboardAvailable":Z
    goto :goto_a
.end method

.method destroyLeakedSurfaces()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2360
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 2361
    new-instance v1, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2386
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method disableSurfaceTrace()V
    .locals 2

    .prologue
    sget-object v0, Lcom/android/server/wm/-$Lambda$hCYoJeHmvymNpgtwuNPQ6z-HGjQ;->$INST$1:Lcom/android/server/wm/-$Lambda$hCYoJeHmvymNpgtwuNPQ6z-HGjQ;

    .line 2602
    const/4 v1, 0x1

    .line 2600
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2603
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2149
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "Display: mDisplayId="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 2150
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2151
    .local v3, "subPrefix":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "init="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, "x"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2152
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, " "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2153
    const-string/jumbo v5, "dpi"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2154
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v5, v6, :cond_0

    .line 2155
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v5, v6, :cond_3

    .line 2157
    :cond_0
    :goto_0
    const-string/jumbo v5, " base="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2158
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, "x"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2159
    const-string/jumbo v5, " "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, "dpi"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2161
    :cond_1
    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v5, :cond_2

    .line 2162
    const-string/jumbo v5, " noscale"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2164
    :cond_2
    const-string/jumbo v5, " cur="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2165
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2166
    const-string/jumbo v5, "x"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2167
    const-string/jumbo v5, " app="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2168
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2169
    const-string/jumbo v5, "x"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2170
    const-string/jumbo v5, " rng="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2171
    const-string/jumbo v5, "x"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2172
    const-string/jumbo v5, "-"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2173
    const-string/jumbo v5, "x"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 2174
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "deferred="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2175
    const-string/jumbo v6, " mLayoutNeeded="

    .line 2174
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2175
    iget-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    .line 2174
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " mTouchExcludeRegion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2178
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Application tokens in top down Z order:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2180
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_4

    .line 2181
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 2182
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, p2}, Lcom/android/server/wm/TaskStack;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2180
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2156
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "stackNdx":I
    :cond_3
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v5, v6, :cond_1

    goto/16 :goto_0

    .line 2185
    .restart local v2    # "stackNdx":I
    :cond_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2186
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2187
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2188
    const-string/jumbo v5, "  Exiting tokens:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2189
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_5

    .line 2190
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    .line 2191
    .local v4, "token":Lcom/android/server/wm/WindowToken;
    const-string/jumbo v5, "  Exiting #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2192
    const/16 v5, 0x20

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2193
    const/16 v5, 0x3a

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(C)V

    .line 2194
    const-string/jumbo v5, "    "

    invoke-virtual {v4, p2, v5}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2189
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 2197
    .end local v0    # "i":I
    .end local v4    # "token":Lcom/android/server/wm/WindowToken;
    :cond_5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2198
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/DimLayerController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2199
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2200
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/DockedStackDividerController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2201
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2202
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/PinnedStackController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2204
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodAnimLayerAdjustment:I

    if-eqz v5, :cond_6

    .line 2205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2206
    const-string/jumbo v6, "mInputMethodAnimLayerAdjustment="

    .line 2205
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2206
    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodAnimLayerAdjustment:I

    .line 2205
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2208
    :cond_6
    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Z)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    .prologue
    .line 2566
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2567
    return-void

    .line 2569
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Display #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2570
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2571
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wm/WindowToken;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2572
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 2573
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    const-string/jumbo v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2574
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2575
    if-eqz p2, :cond_1

    .line 2576
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 2577
    const-string/jumbo v2, "    "

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 2579
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    .line 2582
    .end local v1    # "token":Lcom/android/server/wm/WindowToken;
    :cond_2
    return-void
.end method

.method dumpWindowAnimators(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "subPrefix"    # Ljava/lang/String;

    .prologue
    .line 2585
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 2586
    .local v0, "index":[I
    new-instance v1, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$2;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2590
    const/4 v2, 0x0

    .line 2586
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2591
    return-void
.end method

.method enableSurfaceTrace(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 2594
    new-instance v0, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;-><init>(BLjava/lang/Object;)V

    .line 2596
    const/4 v1, 0x1

    .line 2594
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2597
    return-void
.end method

.method fillsParent()Z
    .locals 1

    .prologue
    .line 1539
    const/4 v0, 0x1

    return v0
.end method

.method findFocusedWindow()Lcom/android/server/wm/WindowState;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2302
    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 2304
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 2308
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->isSupportFrozenApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2309
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFontSmallWindowUids:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mLastFontSmallWindowUids:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2310
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastFontSmallWindowUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 2311
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastFontSmallWindowUids:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFontSmallWindowUids:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2312
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastFontSmallWindowUids:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->updateTouchWindowUidChange(Ljava/util/HashSet;)V

    .line 2314
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFontSmallWindowUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 2321
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpWms:Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->findFocusedWindow()V

    .line 2322
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-object v0, Lcom/android/server/wm/WindowManagerService;->mOpTwj:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    invoke-virtual {v0}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->onFindFocusedWindow()V

    .line 2325
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_3

    .line 2326
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "findFocusedWindow: No focusable windows."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    :cond_2
    return-object v2

    .line 2329
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method findTaskForResizePoint(II)Lcom/android/server/wm/Task;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x0

    .line 1837
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v4, 0x1e

    invoke-static {v4, v3}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 1838
    .local v0, "delta":I
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->reset()V

    .line 1839
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1840
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 1841
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    iget v3, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v3}, Landroid/app/ActivityManager$StackId;->isTaskResizeAllowed(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1842
    return-object v5

    .line 1845
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-virtual {v1, p1, p2, v0, v3}, Lcom/android/server/wm/TaskStack;->findTaskForResizePoint(IIILcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;)V

    .line 1846
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    iget-boolean v3, v3, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    if-eqz v3, :cond_1

    .line 1847
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->taskForResize:Lcom/android/server/wm/Task;

    return-object v3

    .line 1839
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1850
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_2
    return-object v5
.end method

.method forAllImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 1
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
    .line 1587
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 6
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
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1557
    if-eqz p2, :cond_2

    .line 1558
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 1559
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    .line 1560
    .local v0, "child":Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_1

    .line 1558
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1565
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1566
    return v5

    .line 1570
    .end local v0    # "child":Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    .end local v2    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 1571
    .local v1, "count":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_5

    .line 1572
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    .line 1573
    .restart local v0    # "child":Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    if-ne v0, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_4

    .line 1571
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1578
    :cond_4
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1579
    return v5

    .line 1583
    .end local v0    # "child":Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    .end local v1    # "count":I
    :cond_5
    return v4
.end method

.method getAltOrientation()Z
    .locals 1

    .prologue
    .line 932
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mAltOrientation:Z

    return v0
.end method

.method getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 816
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v0

    .line 817
    .local v0, "token":Lcom/android/server/wm/WindowToken;
    if-nez v0, :cond_0

    .line 818
    return-object v1

    .line 820
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    return-object v1
.end method

.method getContentRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1751
    return-void
.end method

.method getDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method getDisplayId()I
    .locals 1

    .prologue
    .line 808
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return v0
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;
    .locals 1

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    return-object v0
.end method

.method getDockedStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;
    .locals 1

    .prologue
    .line 2238
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getDockedStackLocked()Lcom/android/server/wm/TaskStack;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2229
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 2230
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :goto_0
    return-object v0

    .restart local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method getHomeStack()Lcom/android/server/wm/TaskStack;
    .locals 3

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_0

    .line 1473
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getHomeStack: Returning null from this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getLastOrientation()I
    .locals 1

    .prologue
    .line 924
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    return v0
.end method

.method getLastWindowForcedOrientation()I
    .locals 1

    .prologue
    .line 940
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    return v0
.end method

.method getLayerForAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;)I
    .locals 3
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 2084
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    sget-object v2, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;->$INST$1:Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2087
    .local v0, "visibleWallpaper":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    .line 2088
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    return v1

    .line 2090
    :cond_0
    iget v1, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    return v1
.end method

.method getLogicalDisplayRect(Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 1655
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v8, Landroid/view/DisplayInfo;->rotation:I

    .line 1656
    .local v2, "orientation":I
    const/4 v8, 0x1

    if-eq v2, v8, :cond_0

    const/4 v8, 0x3

    if-ne v2, v8, :cond_1

    :cond_0
    const/4 v5, 0x1

    .line 1657
    .local v5, "rotated":Z
    :goto_0
    if-eqz v5, :cond_2

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 1658
    .local v4, "physWidth":I
    :goto_1
    if-eqz v5, :cond_3

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 1659
    .local v3, "physHeight":I
    :goto_2
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1660
    .local v7, "width":I
    sub-int v8, v4, v7

    div-int/lit8 v1, v8, 0x2

    .line 1661
    .local v1, "left":I
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1662
    .local v0, "height":I
    sub-int v8, v3, v0

    div-int/lit8 v6, v8, 0x2

    .line 1663
    .local v6, "top":I
    add-int v8, v1, v7

    add-int v9, v6, v0

    invoke-virtual {p1, v1, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1664
    return-void

    .line 1656
    .end local v0    # "height":I
    .end local v1    # "left":I
    .end local v3    # "physHeight":I
    .end local v4    # "physWidth":I
    .end local v5    # "rotated":Z
    .end local v6    # "top":I
    .end local v7    # "width":I
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "rotated":Z
    goto :goto_0

    .line 1657
    :cond_2
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .restart local v4    # "physWidth":I
    goto :goto_1

    .line 1658
    :cond_3
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .restart local v3    # "physHeight":I
    goto :goto_2
.end method

.method getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNeedsMenu(Lcom/android/server/wm/WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 5
    .param p1, "top"    # Lcom/android/server/wm/WindowState;
    .param p2, "bottom"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2520
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-eqz v3, :cond_1

    .line 2521
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 2525
    :cond_1
    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 2528
    new-instance v3, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2548
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-ne v3, v1, :cond_2

    move v2, v1

    :cond_2
    return v2
.end method

.method getOrientation()I
    .locals 5

    .prologue
    .line 1592
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 1594
    .local v1, "policy":Landroid/view/WindowManagerPolicy;
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v2, :cond_3

    .line 1595
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1596
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WindowManager"

    .line 1597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Display is frozen, return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1596
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :cond_0
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    return v2

    .line 1603
    :cond_1
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1609
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Display is frozen while keyguard locked, return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1610
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    .line 1609
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    :cond_2
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    return v2

    .line 1614
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getOrientation()I

    move-result v0

    .line 1615
    .local v0, "orientation":I
    const/4 v2, -0x2

    if-eq v0, v2, :cond_4

    .line 1616
    return v0

    .line 1621
    .end local v0    # "orientation":I
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getOrientation()I

    move-result v2

    return v2
.end method

.method getPinnedStackController()Lcom/android/server/wm/PinnedStackController;
    .locals 1

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    return-object v0
.end method

.method getRotation()I
    .locals 1

    .prologue
    .line 916
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    return v0
.end method

.method getStackById(I)Lcom/android/server/wm/TaskStack;
    .locals 3
    .param p1, "stackId"    # I

    .prologue
    .line 1479
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1480
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 1481
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    iget v2, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v2, p1, :cond_0

    .line 1482
    return-object v1

    .line 1479
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1485
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method getStackCount()I
    .locals 1

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v0

    return v0
.end method

.method getStaskPosById(I)I
    .locals 3
    .param p1, "stackId"    # I

    .prologue
    .line 1495
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1496
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 1497
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    iget v2, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v2, p1, :cond_0

    .line 1498
    return v0

    .line 1495
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1501
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;
    .locals 4
    .param p1, "xf"    # F
    .param p2, "yf"    # F

    .prologue
    .line 2243
    float-to-int v1, p1

    .line 2244
    .local v1, "x":I
    float-to-int v2, p2

    .line 2245
    .local v2, "y":I
    new-instance v3, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$5;

    invoke-direct {v3, v1, v2, p0}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$5;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2265
    .local v0, "touchedWin":Lcom/android/server/wm/WindowState;
    return-object v0
.end method

.method getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    return-object v0
.end method

.method hasAccess(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->hasAccess(I)Z

    move-result v0

    return v0
.end method

.method hasSecureWindowOnScreen()Z
    .locals 2

    .prologue
    sget-object v1, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;->$INST$2:Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;

    .line 2731
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2733
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method initializeDisplayBaseInfo()V
    .locals 5

    .prologue
    .line 1637
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1638
    .local v0, "displayManagerInternal":Landroid/hardware/display/DisplayManagerInternal;
    if-eqz v0, :cond_0

    .line 1640
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1641
    .local v1, "newDisplayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_0

    .line 1642
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 1646
    .end local v1    # "newDisplayInfo":Landroid/view/DisplayInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1647
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 1646
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 1648
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 1649
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 1650
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 1651
    return-void
.end method

.method inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    .locals 6
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .prologue
    const/4 v2, 0x0

    .line 2706
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2707
    .local v0, "imFocus":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_0

    .line 2708
    return v2

    .line 2711
    :cond_0
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v3, :cond_1

    .line 2712
    const-string/jumbo v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Desired input method target: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    const-string/jumbo v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Current focus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    const-string/jumbo v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Last focus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    :cond_1
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v1, v3, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    .line 2719
    .local v1, "imeClient":Lcom/android/internal/view/IInputMethodClient;
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v3, :cond_2

    .line 2720
    const-string/jumbo v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IM target client: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    if-eqz v1, :cond_2

    .line 2722
    const-string/jumbo v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IM target client binder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    const-string/jumbo v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Requesting client binder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method isDimming()Z
    .locals 1

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayerController;->isDimming()Z

    move-result v0

    return v0
.end method

.method isLayoutNeeded()Z
    .locals 1

    .prologue
    .line 2562
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    return v0
.end method

.method isPrivate()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1468
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isReady()Z
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRemovalDeferred()Z
    .locals 1

    .prologue
    .line 1972
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    return v0
.end method

.method isStackVisible(I)Z
    .locals 2
    .param p1, "stackId"    # I

    .prologue
    .line 2221
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 2222
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 1544
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_101123(IILcom/android/server/wm/WindowState;)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2246
    iget-object v4, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2247
    .local v0, "flags":I
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2248
    return v3

    .line 2250
    :cond_0
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_1

    .line 2251
    return v3

    .line 2254
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v4}, Lcom/android/server/wm/WindowState;->getVisibleBounds(Landroid/graphics/Rect;)V

    .line 2255
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2256
    return v3

    .line 2259
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p3, v4}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 2261
    and-int/lit8 v1, v0, 0x28

    .line 2262
    .local v1, "touchFlags":I
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v1, :cond_4

    :cond_3
    :goto_0
    return v2

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_105550(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2362
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 2363
    .local v0, "wsa":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v1, :cond_0

    .line 2364
    return-void

    .line 2366
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2367
    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LEAKED SURFACE (session doesn\'t exist): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2368
    const-string/jumbo v3, " surface="

    .line 2367
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2368
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 2367
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2369
    const-string/jumbo v3, " token="

    .line 2367
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2369
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 2367
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2370
    const-string/jumbo v3, " pid="

    .line 2367
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2370
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    .line 2367
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2371
    const-string/jumbo v3, " uid="

    .line 2367
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2371
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mUid:I

    .line 2367
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    .line 2373
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2374
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    :cond_1
    :goto_0
    return-void

    .line 2375
    :cond_2
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2376
    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LEAKED SURFACE (app token hidden): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2377
    const-string/jumbo v3, " surface="

    .line 2376
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2377
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 2376
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2378
    const-string/jumbo v3, " token="

    .line 2376
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2378
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2376
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2379
    const-string/jumbo v3, " saved="

    .line 2376
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2379
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasSavedSurface()Z

    move-result v3

    .line 2376
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "LEAK DESTROY"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 2381
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    .line 2382
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_113877(Lcom/android/server/wm/WindowState;Landroid/view/WindowManagerPolicy$WindowState;Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "top"    # Lcom/android/server/wm/WindowState;
    .param p2, "bottom"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2529
    if-ne p3, p1, :cond_0

    .line 2531
    iput-object p3, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 2533
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_1

    .line 2534
    return v1

    .line 2537
    :cond_1
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-eqz v0, :cond_2

    .line 2538
    return v2

    .line 2542
    :cond_2
    if-ne p3, p2, :cond_3

    .line 2543
    return v2

    .line 2545
    :cond_3
    return v1
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_117063(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v2, 0x1

    .line 2627
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2628
    return v2

    .line 2630
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2631
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e5

    if-ne v0, v1, :cond_2

    .line 2632
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    .line 2642
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 2633
    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 2634
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 2635
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    goto :goto_0

    .line 2636
    :cond_4
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-ne v0, v1, :cond_5

    .line 2637
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    goto :goto_0

    .line 2638
    :cond_5
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_1

    .line 2639
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isKeyguardDrawnLw()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_122365(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2761
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2762
    return-void

    .line 2764
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->orientationChangeTimedOut()V

    .line 2765
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2766
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-wide v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    .line 2765
    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 2767
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Force clearing orientation change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_122929(Landroid/view/WindowManagerPolicy;Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "policy"    # Landroid/view/WindowManagerPolicy;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v3, -0x1

    .line 2775
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v1}, Landroid/view/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    .line 2776
    .local v0, "keyguard":Z
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    .line 2777
    :cond_0
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 2779
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2782
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/wm/DisplayContent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Waiting for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " drawn."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_134574(IZLandroid/os/IBinder;Landroid/util/MutableBoolean;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)Z
    .locals 14
    .param p1, "aboveAppLayer"    # I
    .param p2, "wallpaperOnly"    # Z
    .param p3, "appToken"    # Landroid/os/IBinder;
    .param p4, "mutableIncludeFullDisplay"    # Landroid/util/MutableBoolean;
    .param p5, "includeDecor"    # Z
    .param p6, "frame"    # Landroid/graphics/Rect;
    .param p7, "stackBounds"    # Landroid/graphics/Rect;
    .param p8, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 3029
    move-object/from16 v0, p8

    iget-boolean v12, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v12, :cond_0

    .line 3030
    const/4 v12, 0x0

    return v12

    .line 3032
    :cond_0
    move-object/from16 v0, p8

    iget v12, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    if-lt v12, p1, :cond_1

    .line 3033
    const/4 v12, 0x0

    return v12

    .line 3035
    :cond_1
    if-eqz p2, :cond_2

    move-object/from16 v0, p8

    iget-boolean v12, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_2

    .line 3036
    const/4 v12, 0x0

    return v12

    .line 3038
    :cond_2
    move-object/from16 v0, p8

    iget-boolean v12, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v12, :cond_3

    .line 3039
    const/4 v12, 0x0

    return v12

    .line 3040
    :cond_3
    move-object/from16 v0, p8

    iget-boolean v12, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v12, :cond_5

    .line 3043
    if-eqz p2, :cond_4

    .line 3044
    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    move-object/from16 v0, p8

    iput-object v0, v12, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->appWin:Lcom/android/server/wm/WindowState;

    .line 3047
    :cond_4
    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    iget-object v12, v12, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->appWin:Lcom/android/server/wm/WindowState;

    if-nez v12, :cond_8

    .line 3053
    const/4 v12, 0x0

    return v12

    .line 3058
    :cond_5
    if-eqz p3, :cond_8

    .line 3059
    move-object/from16 v0, p8

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v12, :cond_6

    move-object/from16 v0, p8

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v12, v12, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, p3

    if-eq v12, v0, :cond_7

    .line 3062
    :cond_6
    const/4 v12, 0x0

    return v12

    .line 3064
    :cond_7
    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    move-object/from16 v0, p8

    iput-object v0, v12, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->appWin:Lcom/android/server/wm/WindowState;

    .line 3069
    :cond_8
    move-object/from16 v0, p8

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 3070
    .local v11, "winAnim":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v12, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowSurfaceController;->getLayer()I

    move-result v5

    .line 3071
    .local v5, "layer":I
    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    iget v12, v12, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->maxLayer:I

    if-ge v12, v5, :cond_9

    .line 3072
    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    iput v5, v12, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->maxLayer:I

    .line 3074
    :cond_9
    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    iget v12, v12, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->minLayer:I

    if-le v12, v5, :cond_a

    .line 3075
    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    iput v5, v12, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->minLayer:I

    .line 3079
    :cond_a
    move-object/from16 v0, p8

    iget-boolean v12, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v12, :cond_b

    move-object/from16 v0, p4

    iget-boolean v12, v0, Landroid/util/MutableBoolean;->value:Z

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_b

    .line 3080
    if-eqz p5, :cond_f

    .line 3081
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    .line 3082
    .local v8, "task":Lcom/android/server/wm/Task;
    if-eqz v8, :cond_d

    .line 3083
    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 3093
    move-object/from16 v0, p8

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v12, :cond_e

    move-object/from16 v0, p8

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v12, v12, Lcom/android/server/wm/AppWindowToken;->mAppCompat:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_e

    .line 3095
    :goto_0
    move-object/from16 v0, p8

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 3115
    .end local v8    # "task":Lcom/android/server/wm/Task;
    :cond_b
    :goto_1
    move-object/from16 v0, p8

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v12, :cond_10

    move-object/from16 v0, p8

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v12, v12, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, p3

    if-ne v12, v0, :cond_10

    const/4 v4, 0x1

    .line 3117
    :goto_2
    if-eqz v4, :cond_c

    invoke-virtual {v11}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v12

    if-eqz v12, :cond_c

    iget v12, v11, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_c

    .line 3118
    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->screenshotReady:Z

    .line 3121
    :cond_c
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/WindowState;->isObscuringDisplay()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 3122
    const/4 v12, 0x1

    return v12

    .line 3087
    .restart local v8    # "task":Lcom/android/server/wm/Task;
    :cond_d
    const/4 v12, 0x1

    return v12

    .line 3094
    :cond_e
    move-object/from16 v0, p8

    iget-boolean v12, v0, Lcom/android/server/wm/WindowState;->mIsNotchLimited:Z

    .line 3093
    if-eqz v12, :cond_b

    goto :goto_0

    .line 3099
    .end local v8    # "task":Lcom/android/server/wm/Task;
    :cond_f
    move-object/from16 v0, p8

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 3100
    .local v10, "wf":Landroid/graphics/Rect;
    move-object/from16 v0, p8

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    .line 3101
    .local v3, "cr":Landroid/graphics/Rect;
    iget v12, v10, Landroid/graphics/Rect;->left:I

    iget v13, v3, Landroid/graphics/Rect;->left:I

    add-int v6, v12, v13

    .line 3102
    .local v6, "left":I
    iget v12, v10, Landroid/graphics/Rect;->top:I

    iget v13, v3, Landroid/graphics/Rect;->top:I

    add-int v9, v12, v13

    .line 3103
    .local v9, "top":I
    iget v12, v10, Landroid/graphics/Rect;->right:I

    iget v13, v3, Landroid/graphics/Rect;->right:I

    sub-int v7, v12, v13

    .line 3104
    .local v7, "right":I
    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    iget v13, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v12, v13

    .line 3105
    .local v2, "bottom":I
    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v9, v7, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 3106
    move-object/from16 v0, p8

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getVisibleBounds(Landroid/graphics/Rect;)V

    .line 3107
    invoke-static/range {p6 .. p7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 3109
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    .line 3116
    .end local v2    # "bottom":I
    .end local v3    # "cr":Landroid/graphics/Rect;
    .end local v6    # "left":I
    .end local v7    # "right":I
    .end local v9    # "top":I
    .end local v10    # "wf":Landroid/graphics/Rect;
    :cond_10
    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    iget-object v12, v12, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->appWin:Lcom/android/server/wm/WindowState;

    if-eqz v12, :cond_11

    move/from16 v4, p2

    .local v4, "foundTargetWs":Z
    goto :goto_2

    .end local v4    # "foundTargetWs":Z
    :cond_11
    const/4 v4, 0x0

    .local v4, "foundTargetWs":Z
    goto :goto_2

    .line 3124
    .end local v4    # "foundTargetWs":Z
    :cond_12
    const/4 v12, 0x0

    return v12
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_145278(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 3263
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v0, :cond_0

    .line 3264
    return-void

    .line 3266
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3267
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 3268
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    return-void
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_16213(Lcom/android/server/wm/WindowState;)V
    .locals 8
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 339
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 340
    .local v4, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 341
    iget-boolean v3, v4, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    .line 343
    .local v3, "wasAnimating":Z
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-wide v6, v5, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    .line 342
    invoke-virtual {v4, v6, v7}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    move-result v2

    .line 344
    .local v2, "nowAnimating":Z
    iput-boolean v2, v4, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    .line 345
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    .line 347
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/wm/DisplayContent;->TAG:Ljava/lang/String;

    .line 348
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": wasAnimating="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", nowAnimating="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 347
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    if-eqz v3, :cond_1

    iget-boolean v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 351
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v5, p1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    .line 350
    if-eqz v5, :cond_1

    .line 352
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v6, v5, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v5, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 353
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 354
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v5, :cond_1

    .line 355
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 356
    const-string/jumbo v6, "updateWindowsAndWallpaperLocked 2"

    iget v7, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 355
    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 361
    .end local v2    # "nowAnimating":Z
    .end local v3    # "wasAnimating":Z
    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 362
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 363
    if-eqz v1, :cond_2

    iget-boolean v5, v1, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v5, :cond_3

    .line 364
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 365
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 366
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v5, :cond_3

    .line 367
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 368
    const-string/jumbo v6, "updateWindowsAndWallpaperLocked 5"

    iget v7, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 367
    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 373
    :cond_3
    iget-object v0, v4, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 374
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v0, :cond_5

    iget-object v5, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_5

    .line 375
    iget v5, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    .line 376
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    .line 375
    if-eq v5, v6, :cond_4

    .line 378
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    .line 377
    iput v5, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    .line 379
    const/4 v5, 0x0

    iput v5, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 381
    :cond_4
    iget v5, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    iget v6, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v5, v6, :cond_5

    .line 382
    iget v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v5, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    :cond_5
    return-void
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_18526(Lcom/android/server/wm/WindowState;)V
    .locals 8
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/high16 v7, 0x100000

    .line 388
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 389
    .local v4, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 390
    :cond_0
    return-void

    .line 393
    :cond_1
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 397
    .local v2, "flags":I
    iget-boolean v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v5, :cond_4

    .line 398
    iget-object v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_3

    .line 399
    and-int v5, v2, v7

    if-eqz v5, :cond_2

    .line 400
    iget-object v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v5

    .line 399
    if-eqz v5, :cond_2

    .line 401
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 403
    :cond_2
    iget-object v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v1

    .line 404
    .local v1, "color":I
    if-eqz v1, :cond_3

    .line 405
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 406
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v3, :cond_3

    .line 407
    invoke-virtual {v3, v4, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    .line 411
    .end local v1    # "color":I
    .end local v3    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    .line 416
    :cond_4
    iget-object v0, v4, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 417
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v0, :cond_6

    iget-object v5, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_6

    .line 418
    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 417
    if-eqz v5, :cond_6

    .line 419
    and-int v5, v2, v7

    if-eqz v5, :cond_5

    .line 420
    iget-object v5, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v5

    .line 419
    if-eqz v5, :cond_5

    .line 421
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 424
    :cond_5
    iget-object v5, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v1

    .line 425
    .restart local v1    # "color":I
    if-eqz v1, :cond_6

    .line 426
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 427
    .restart local v3    # "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v3, :cond_6

    .line 428
    invoke-virtual {v3, v4, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    .end local v1    # "color":I
    .end local v3    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_6
    return-void
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_20475(Lcom/android/server/wm/WindowState;)V
    .locals 6
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/16 v4, 0x34

    .line 435
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iget v1, v2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 436
    .local v1, "lostFocusUid":I
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 437
    .local v0, "handler":Landroid/os/Handler;
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v2, v1, :cond_0

    .line 438
    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 439
    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 440
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v4, v3, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 439
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_20971(Lcom/android/server/wm/WindowState;)Z
    .locals 10
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/16 v9, 0x28

    const/4 v8, 0x3

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 446
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v3, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 447
    .local v0, "focusedApp":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Looking for focus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 448
    const-string/jumbo v5, ", flags="

    .line 447
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 448
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 447
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 448
    const-string/jumbo v5, ", canReceive="

    .line 447
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 448
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v5

    .line 447
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v3

    if-nez v3, :cond_8

    .line 453
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_6

    .line 454
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    xor-int/lit8 v3, v3, 0x1

    .line 453
    if-eqz v3, :cond_6

    .line 455
    iget v3, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const/16 v4, 0x2710

    if-lt v3, v4, :cond_6

    .line 456
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget v4, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-eq v3, v4, :cond_6

    .line 457
    :cond_1
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v3, v9, :cond_7

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v3, v9, :cond_7

    .line 460
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 461
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 462
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.android.systemui"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 461
    if-nez v3, :cond_2

    .line 462
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    .line 463
    const-string/jumbo v3, "wallpaper"

    .line 462
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 461
    :cond_2
    xor-int/lit8 v2, v2, 0x1

    .line 460
    if-eqz v2, :cond_6

    .line 464
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_3

    .line 465
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    if-nez v2, :cond_6

    .line 469
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 470
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->isSupportFrozenApp()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFontSmallWindowUids:Ljava/util/HashSet;

    iget v3, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 471
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpWms:Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mNetBoostFeature:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFontSmallWindowUids_netCgroupSet:Ljava/util/HashSet;

    iget v3, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-object v2, Lcom/android/server/wm/WindowManagerService;->mOpTwj:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    iget v3, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->addUidtoTouchWindowUids(I)V

    .line 480
    :cond_6
    return v7

    .line 458
    :cond_7
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    if-eqz v3, :cond_6

    .line 459
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v8, :cond_6

    goto/16 :goto_0

    .line 483
    :cond_8
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 486
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_c

    iget-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v3, :cond_9

    iget-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    if-eqz v3, :cond_c

    .line 487
    :cond_9
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS:Z

    if-eqz v2, :cond_a

    const-string/jumbo v3, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Skipping "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " because "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 488
    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v2, :cond_b

    const-string/jumbo v2, "removed"

    .line 487
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_a
    return v7

    .line 488
    :cond_b
    const-string/jumbo v2, "sendingToBottom"

    goto :goto_1

    .line 492
    :cond_c
    if-nez v0, :cond_e

    .line 493
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v3, :cond_d

    const-string/jumbo v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "findFocusedWindow: focusedApp=null using new focus @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_d
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 496
    return v2

    .line 499
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->windowsAreFocusable()Z

    move-result v3

    if-nez v3, :cond_10

    .line 501
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v3, :cond_f

    const-string/jumbo v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "findFocusedWindow: focusedApp windows not focusable using new focus @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_f
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 504
    return v2

    .line 509
    :cond_10
    if-eqz v1, :cond_12

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v8, :cond_12

    .line 510
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppWindowToken;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v3

    if-lez v3, :cond_12

    .line 512
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v3, :cond_11

    const-string/jumbo v3, "WindowManager"

    .line 513
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "findFocusedWindow: Reached focused app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 512
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_11
    iput-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 515
    return v2

    .line 519
    :cond_12
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v3, :cond_13

    const-string/jumbo v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "findFocusedWindow: Found new focus @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_13
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 521
    return v2
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_24905(Lcom/android/server/wm/WindowState;)V
    .locals 9
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 530
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4, p1}, Landroid/view/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 531
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v2

    .line 533
    :goto_0
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 534
    sget-object v4, Lcom/android/server/wm/DisplayContent;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "1ST PASS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": gone="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mHaveFrame="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 535
    const-string/jumbo v7, " mLayoutAttached="

    .line 534
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 535
    iget-boolean v7, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 534
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 536
    const-string/jumbo v7, " screen changed="

    .line 534
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 536
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    move-result v7

    .line 534
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 538
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_b

    sget-object v6, Lcom/android/server/wm/DisplayContent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  GONE: mViewVisibility="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 539
    const-string/jumbo v7, " mRelayoutCalled="

    .line 538
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 539
    iget-boolean v7, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    .line 538
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 539
    const-string/jumbo v7, " hidden="

    .line 538
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 539
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 538
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 540
    const-string/jumbo v7, " hiddenRequested="

    .line 538
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 540
    if-eqz v0, :cond_a

    iget-boolean v4, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 538
    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 541
    const-string/jumbo v7, " parentHidden="

    .line 538
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 541
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v7

    .line 538
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    :goto_2
    if-eqz v2, :cond_3

    iget-boolean v4, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_3

    iget-boolean v4, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-nez v4, :cond_3

    .line 552
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->setReportResizeHints()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 553
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 552
    if-eqz v4, :cond_8

    .line 554
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_3

    .line 555
    iget-boolean v4, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_8

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_8

    .line 556
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->layoutConfigChanges:Z

    .line 551
    if-eqz v4, :cond_8

    .line 557
    :cond_3
    iget-boolean v4, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v4, :cond_8

    .line 558
    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    if-eqz v4, :cond_4

    .line 560
    iput-boolean v5, p1, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 562
    :cond_4
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7e7

    if-ne v4, v6, :cond_5

    .line 565
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 567
    :cond_5
    iput-boolean v5, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 568
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 569
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLaidOut()Z

    move-result v4

    xor-int/lit8 v1, v4, 0x1

    .line 570
    .local v1, "firstLayout":Z
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4, p1, v8}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 571
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    iput v4, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 575
    if-eqz v1, :cond_6

    .line 576
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->updateLastInsetValues()V

    .line 580
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 581
    .local v3, "task":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_7

    .line 582
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/DimLayerController;->updateDimLayer(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    .line 585
    :cond_7
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/server/wm/DisplayContent;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  LAYOUT: mFrame="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 586
    const-string/jumbo v6, " mContainingFrame="

    .line 585
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 586
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    .line 585
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 587
    const-string/jumbo v6, " mDisplayFrame="

    .line 585
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 587
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 585
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "firstLayout":Z
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :cond_8
    return-void

    .line 530
    :cond_9
    const/4 v2, 0x1

    .local v2, "gone":Z
    goto/16 :goto_0

    .end local v2    # "gone":Z
    .restart local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_a
    move v4, v5

    .line 540
    goto/16 :goto_1

    .line 542
    :cond_b
    sget-object v6, Lcom/android/server/wm/DisplayContent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  VIS: mViewVisibility="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 543
    const-string/jumbo v7, " mRelayoutCalled="

    .line 542
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 543
    iget-boolean v7, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    .line 542
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 543
    const-string/jumbo v7, " hidden="

    .line 542
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 543
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 542
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 544
    const-string/jumbo v7, " hiddenRequested="

    .line 542
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 544
    if-eqz v0, :cond_c

    iget-boolean v4, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 542
    :goto_3
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 545
    const-string/jumbo v7, " parentHidden="

    .line 542
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 545
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v7

    .line 542
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_c
    move v4, v5

    .line 544
    goto :goto_3
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_28448(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v3, 0x0

    .line 593
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v0, :cond_6

    .line 594
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/DisplayContent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "2ND PASS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mHaveFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 595
    const-string/jumbo v2, " mViewVisibility="

    .line 594
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 595
    iget v2, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 594
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 596
    const-string/jumbo v2, " mRelayoutCalled="

    .line 594
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 596
    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    .line 594
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    return-void

    .line 603
    :cond_1
    iget v0, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    .line 604
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 603
    if-eqz v0, :cond_5

    .line 605
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    if-eqz v0, :cond_4

    .line 607
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 609
    :cond_4
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 610
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 611
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 612
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    iput v0, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 613
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/wm/DisplayContent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " LAYOUT: mFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 614
    const-string/jumbo v2, " mContainingFrame="

    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 614
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 615
    const-string/jumbo v2, " mDisplayFrame="

    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 615
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void

    .line 617
    :cond_6
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e7

    if-ne v0, v1, :cond_5

    .line 620
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow2:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_30187(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 625
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeTarget:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Checking window @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 626
    const-string/jumbo v2, " fl=0x"

    .line 625
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 626
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 625
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canBeImeTarget()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_30472(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 632
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 631
    invoke-interface {v0, p1, v1, v2, v3}, Landroid/view/WindowManagerPolicy;->applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_30677(Lcom/android/server/wm/WindowState;)V
    .locals 16
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 635
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v12, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 636
    .local v8, "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/wm/WindowState;->mObscured:Z

    .line 637
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v13, v13, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    .line 636
    if-eq v12, v13, :cond_f

    const/4 v4, 0x1

    .line 638
    .local v4, "obscuredChanged":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v12, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 640
    .local v5, "root":Lcom/android/server/wm/RootWindowContainer;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    xor-int/lit8 v6, v12, 0x1

    .line 643
    .local v6, "someoneLosingFocus":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v12, v12, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    move-object/from16 v0, p1

    iput-boolean v12, v0, Lcom/android/server/wm/WindowState;->mObscured:Z

    .line 644
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v12, v12, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    if-nez v12, :cond_4

    .line 645
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v3

    .line 647
    .local v3, "isDisplayed":Z
    if-eqz v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isObscuringDisplay()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 650
    move-object/from16 v0, p1

    iput-object v0, v5, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 651
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    .line 654
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v13, v12, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    .line 656
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v14, v14, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    .line 657
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v15, v15, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    .line 655
    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v14, v15}, Lcom/android/server/wm/RootWindowContainer;->handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Z

    move-result v14

    .line 654
    or-int/2addr v13, v14

    iput-boolean v13, v12, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    .line 659
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v12, :cond_4

    if-eqz v3, :cond_4

    .line 660
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 661
    .local v9, "type":I
    const/16 v12, 0x7d8

    if-eq v9, v12, :cond_1

    const/16 v12, 0x7da

    if-ne v9, v12, :cond_10

    .line 663
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    .line 665
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v12, v12, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_3

    .line 666
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_3

    .line 667
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 668
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 667
    iput v13, v12, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    .line 670
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v12, v12, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    if-nez v12, :cond_4

    .line 671
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eqz v12, :cond_4

    .line 672
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 673
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 672
    iput v13, v12, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    .line 678
    .end local v3    # "isDisplayed":Z
    .end local v9    # "type":I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->applyDimLayerIfNeeded()V

    .line 680
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v12, :cond_5

    if-eqz v4, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 681
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v12

    .line 680
    if-eqz v12, :cond_5

    .line 684
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v12}, Lcom/android/server/wm/WallpaperController;->updateWallpaperVisibility()V

    .line 687
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->handleWindowMovedIfNeeded()V

    .line 689
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 692
    .local v11, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    const/4 v12, 0x0

    move-object/from16 v0, p1

    iput-boolean v12, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 695
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v12, :cond_c

    .line 697
    invoke-virtual {v11}, Lcom/android/server/wm/WindowStateAnimator;->commitFinishDrawingLocked()Z

    move-result v2

    .line 698
    .local v2, "committed":Z
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v12, :cond_8

    if-eqz v2, :cond_8

    .line 699
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7e7

    if-ne v12, v13, :cond_6

    .line 703
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 704
    sget-boolean v12, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v12, :cond_6

    .line 706
    const-string/jumbo v12, "dream and commitFinishDrawingLocked true"

    .line 707
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 705
    invoke-virtual {v8, v12, v13}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 710
    :cond_6
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v13, 0x100000

    and-int/2addr v12, v13

    if-eqz v12, :cond_8

    .line 711
    sget-boolean v12, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v12, :cond_7

    sget-object v12, Lcom/android/server/wm/DisplayContent;->TAG:Ljava/lang/String;

    .line 712
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "First draw done in potential wallpaper target "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 711
    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_7
    const/4 v12, 0x1

    iput-boolean v12, v5, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    .line 714
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 715
    sget-boolean v12, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v12, :cond_8

    .line 717
    const-string/jumbo v12, "wallpaper and commitFinishDrawingLocked true"

    .line 718
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 716
    invoke-virtual {v8, v12, v13}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 722
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    .line 723
    .local v7, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v11}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationStarting()Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual {v11}, Lcom/android/server/wm/WindowStateAnimator;->isWaitingForOpening()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_a

    .line 724
    :cond_9
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->isAnimatingBounds()Z

    move-result v12

    .line 723
    if-eqz v12, :cond_b

    .line 736
    :cond_a
    invoke-virtual {v11}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    .line 738
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpRecoveringMemory:Z

    invoke-virtual {v11, v12}, Lcom/android/server/wm/WindowStateAnimator;->setSurfaceBoundariesLocked(Z)V

    .line 741
    .end local v2    # "committed":Z
    .end local v7    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_c
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 742
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_d

    .line 743
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppWindowToken;->updateDrawnWindowStates(Lcom/android/server/wm/WindowState;)Z

    move-result v10

    .line 744
    .local v10, "updateAllDrawn":Z
    if-eqz v10, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v12, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_d

    .line 745
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v12, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 749
    .end local v10    # "updateAllDrawn":Z
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v12, :cond_e

    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_e

    .line 750
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v12

    .line 749
    if-eqz v12, :cond_e

    .line 751
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->focusDisplayed:Z

    .line 754
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->updateResizingWindowIfNeeded()V

    return-void

    .line 636
    .end local v1    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v4    # "obscuredChanged":Z
    .end local v5    # "root":Lcom/android/server/wm/RootWindowContainer;
    .end local v6    # "someoneLosingFocus":Z
    .end local v11    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_f
    const/4 v4, 0x0

    .restart local v4    # "obscuredChanged":Z
    goto/16 :goto_0

    .line 662
    .restart local v3    # "isDisplayed":Z
    .restart local v5    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v6    # "someoneLosingFocus":Z
    .restart local v9    # "type":I
    :cond_10
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v12, v12, 0x400

    if-eqz v12, :cond_2

    goto/16 :goto_1
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_51756(ZLcom/android/server/wm/WindowState;)V
    .locals 5
    .param p1, "rotateSeamlessly"    # Z
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1117
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->destroySavedSurfaces()V

    .line 1120
    :cond_0
    iget-boolean v0, p2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_2

    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    .line 1121
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set mOrientationChanging of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_1
    invoke-virtual {p2, v4}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1123
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v3, v0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 1124
    iput v3, p2, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 1126
    :cond_2
    iput-boolean v4, p2, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    return-void
.end method

.method layoutAndAssignWindowLayersIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2344
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 2345
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 2347
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2349
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 2352
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 2353
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 2354
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2355
    return-void
.end method

.method moveStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V
    .locals 4
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "onTop"    # Z

    .prologue
    .line 1778
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1779
    .local v0, "prevDc":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    .line 1780
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Trying to move stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1781
    const-string/jumbo v3, " which is not currently attached to any display"

    .line 1780
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1783
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v1, v2, :cond_1

    .line 1784
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Trying to move stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1785
    const-string/jumbo v3, " to its current displayId="

    .line 1784
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1785
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1784
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1788
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeStackFromDisplay(Lcom/android/server/wm/TaskStack;)V

    .line 1789
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V

    .line 1790
    return-void
.end method

.method okToAnimate()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3312
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->okToDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3313
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->okToAnimate()Z

    move-result v0

    .line 3312
    :cond_0
    :goto_0
    return v0

    .line 3313
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method okToDisplay()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3304
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v1, :cond_1

    .line 3305
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v1, :cond_0

    .line 3306
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    .line 3305
    if-eqz v1, :cond_0

    .line 3306
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    .line 3305
    :cond_0
    return v0

    .line 3308
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method onAppTransitionDone()V
    .locals 2

    .prologue
    .line 1549
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onAppTransitionDone()V

    .line 1550
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1551
    return-void
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1506
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1511
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 1513
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->onConfigurationChanged()V

    .line 1514
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/PinnedStackController;->onConfigurationChanged()V

    .line 1515
    return-void
.end method

.method onDescendantOverrideConfigurationChanged()V
    .locals 1

    .prologue
    .line 3299
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3300
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 3301
    return-void
.end method

.method onSeamlessRotationTimeout()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3260
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3262
    new-instance v0, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;-><init>(BLjava/lang/Object;)V

    .line 3269
    const/4 v1, 0x1

    .line 3262
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3271
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 3272
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 3274
    :cond_0
    return-void
.end method

.method onWindowFreezeTimeout()V
    .locals 2

    .prologue
    .line 2757
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Window freeze timeout expired."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 2760
    new-instance v0, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;-><init>(BLjava/lang/Object;)V

    .line 2768
    const/4 v1, 0x1

    .line 2760
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2769
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 2770
    return-void
.end method

.method performLayout(ZZ)V
    .locals 10
    .param p1, "initial"    # Z
    .param p2, "updateInputWindows"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2883
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2884
    return-void

    .line 2886
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->clearLayoutNeeded()V

    .line 2888
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 2889
    .local v2, "dw":I
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 2891
    .local v3, "dh":I
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_1

    .line 2892
    sget-object v0, Lcom/android/server/wm/DisplayContent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "-------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    sget-object v0, Lcom/android/server/wm/DisplayContent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "performLayout: needed="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " dw="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " dh="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    .line 2897
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->uiMode:I

    .line 2896
    invoke-interface/range {v0 .. v5}, Landroid/view/WindowManagerPolicy;->beginLayoutLw(ZIIII)V

    .line 2898
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_2

    .line 2900
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->getSystemDecorLayerLw()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    .line 2901
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v7, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2904
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mContentRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->getContentRectLw(Landroid/graphics/Rect;)V

    .line 2906
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    add-int/lit8 v6, v0, 0x1

    .line 2907
    .local v6, "seq":I
    if-gez v6, :cond_3

    const/4 v6, 0x0

    .line 2908
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iput v6, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    .line 2912
    iput-object v9, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 2913
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    .line 2916
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayout:Ljava/util/function/Consumer;

    invoke-virtual {p0, v0, v8}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2920
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow2:Lcom/android/server/wm/WindowState;

    .line 2921
    iput-object v9, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 2926
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayoutAttached:Ljava/util/function/Consumer;

    invoke-virtual {p0, v0, v8}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2929
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/InputMonitor;->layoutInputConsumers(II)V

    .line 2930
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 2931
    if-eqz p2, :cond_4

    .line 2932
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, v7}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2935
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->finishLayoutLw()V

    .line 2936
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 2937
    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Z)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    .param p3, "includingParents"    # Z

    .prologue
    .line 1818
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1819
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 0

    .prologue
    .line 1814
    check-cast p2, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->positionChildAt(ILcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Z)V

    return-void
.end method

.method prepareFreezingTaskBounds()V
    .locals 3

    .prologue
    .line 2094
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2095
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 2096
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->prepareFreezingTaskBounds()V

    .line 2094
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2098
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_0
    return-void
.end method

.method prepareWindowSurfaces()V
    .locals 2

    .prologue
    .line 2702
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPrepareWindowSurfaces:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2703
    return-void
.end method

.method reParentWindowToken(Lcom/android/server/wm/WindowToken;)V
    .locals 3
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .prologue
    .line 872
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 873
    .local v0, "prevDc":Lcom/android/server/wm/DisplayContent;
    if-ne v0, p0, :cond_0

    .line 874
    return-void

    .line 876
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 877
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_1

    .line 880
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 883
    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/DisplayContent;->addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V

    .line 884
    return-void
.end method

.method removeAppToken(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 887
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v1

    .line 888
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    if-nez v1, :cond_0

    .line 889
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeAppToken: Attempted to remove non-existing token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    return-void

    .line 893
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 895
    .local v0, "appToken":Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_1

    .line 896
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attempted to remove non-App token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    return-void

    .line 900
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->onRemovedFromDisplay()V

    .line 901
    return-void
.end method

.method protected removeChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;)V
    .locals 2
    .param p1, "child"    # Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    .prologue
    .line 1807
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    if-eqz v0, :cond_0

    .line 1808
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1809
    return-void

    .line 1811
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "See DisplayChildWindowContainer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .prologue
    .line 1803
    check-cast p1, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->removeChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;)V

    return-void
.end method

.method removeExistingTokensIfPossible()V
    .locals 3

    .prologue
    .line 3286
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3287
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 3288
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    iget-boolean v2, v1, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    if-nez v2, :cond_0

    .line 3289
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3286
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3294
    .end local v1    # "token":Lcom/android/server/wm/WindowToken;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeExistingAppTokensIfPossible()V

    .line 3295
    return-void
.end method

.method removeIfPossible()V
    .locals 1

    .prologue
    .line 1934
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1935
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    .line 1936
    return-void

    .line 1938
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImmediately()V

    .line 1939
    return-void
.end method

.method removeImmediately()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1943
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    .line 1945
    :try_start_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 1946
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Removing display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayerController;->close()V

    .line 1948
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->canDispatchPointerEvents()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1949
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 1950
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1953
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    .line 1955
    return-void

    .line 1952
    :catchall_0
    move-exception v0

    .line 1953
    iput-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    .line 1952
    throw v0
.end method

.method removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 863
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 864
    .local v0, "token":Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_0

    .line 865
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->setExiting()V

    .line 867
    :cond_0
    return-object v0
.end method

.method rotateBounds(IILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "oldRotation"    # I
    .param p2, "newRotation"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 2101
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, p2}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;I)V

    .line 2105
    invoke-static {p2, p1}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v0

    .line 2106
    .local v0, "deltaRotation":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFLandroid/graphics/Matrix;)V

    .line 2108
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2109
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 2110
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 2111
    return-void
.end method

.method scheduleToastWindowsTimeoutIfNeededLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "oldFocus"    # Lcom/android/server/wm/WindowState;
    .param p2, "newFocus"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2291
    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget v1, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, v1, :cond_1

    .line 2292
    :cond_0
    return-void

    .line 2296
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 2298
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mScheduleToastTimeout:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2299
    return-void
.end method

.method screenshotApplications(Landroid/os/IBinder;IIZFLandroid/graphics/Bitmap$Config;ZZ)Landroid/graphics/Bitmap;
    .locals 17
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "includeFullDisplay"    # Z
    .param p5, "frameScale"    # F
    .param p6, "config"    # Landroid/graphics/Bitmap$Config;
    .param p7, "wallpaperOnly"    # Z
    .param p8, "includeDecor"    # Z

    .prologue
    sget-object v9, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI;->$INST$0:Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    .line 2955
    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/DisplayContent;->screenshotApplications(Landroid/os/IBinder;IIZFZZLcom/android/server/wm/DisplayContent$Screenshoter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 2957
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 2958
    const/4 v3, 0x0

    return-object v3

    .line 2961
    :cond_0
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v3, :cond_2

    .line 2963
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    new-array v2, v3, [I

    .line 2964
    .local v2, "buffer":[I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 2965
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 2964
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 2966
    const/4 v10, 0x1

    .line 2967
    .local v10, "allBlack":Z
    const/4 v3, 0x0

    aget v12, v2, v3

    .line 2968
    .local v12, "firstColor":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    array-length v3, v2

    if-ge v13, v3, :cond_1

    .line 2969
    aget v3, v2, v13

    if-eq v3, v12, :cond_3

    .line 2970
    const/4 v10, 0x0

    .line 2974
    :cond_1
    if-eqz v10, :cond_2

    .line 2975
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    iget-object v11, v3, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->appWin:Lcom/android/server/wm/WindowState;

    .line 2976
    .local v11, "appWin":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    iget v14, v3, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->maxLayer:I

    .line 2977
    .local v14, "maxLayer":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    iget v15, v3, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->minLayer:I

    .line 2978
    .local v15, "minLayer":I
    const-string/jumbo v4, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Screenshot "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " was monochrome("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2979
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 2978
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2979
    const-string/jumbo v5, ")! mSurfaceLayer="

    .line 2978
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2980
    if-eqz v11, :cond_4

    .line 2981
    iget-object v3, v11, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfaceController;->getLayer()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2978
    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2982
    const-string/jumbo v5, " minLayer="

    .line 2978
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2982
    const-string/jumbo v5, " maxLayer="

    .line 2978
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2988
    .end local v2    # "buffer":[I
    .end local v10    # "allBlack":Z
    .end local v11    # "appWin":Lcom/android/server/wm/WindowState;
    .end local v12    # "firstColor":I
    .end local v13    # "i":I
    .end local v14    # "maxLayer":I
    .end local v15    # "minLayer":I
    :cond_2
    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->createAshmemBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 2989
    .local v16, "ret":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2990
    return-object v16

    .line 2968
    .end local v16    # "ret":Landroid/graphics/Bitmap;
    .restart local v2    # "buffer":[I
    .restart local v10    # "allBlack":Z
    .restart local v12    # "firstColor":I
    .restart local v13    # "i":I
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2981
    .restart local v11    # "appWin":Lcom/android/server/wm/WindowState;
    .restart local v14    # "maxLayer":I
    .restart local v15    # "minLayer":I
    :cond_4
    const-string/jumbo v3, "null"

    goto :goto_1
.end method

.method screenshotApplicationsToBuffer(Landroid/os/IBinder;IIZFZZ)Landroid/graphics/GraphicBuffer;
    .locals 9
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "includeFullDisplay"    # Z
    .param p5, "frameScale"    # F
    .param p6, "wallpaperOnly"    # Z
    .param p7, "includeDecor"    # Z

    .prologue
    sget-object v8, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI;->$INST$1:Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 2996
    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/DisplayContent;->screenshotApplications(Landroid/os/IBinder;IIZFZZLcom/android/server/wm/DisplayContent$Screenshoter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/GraphicBuffer;

    return-object v0
.end method

.method setAltOrientation(Z)V
    .locals 0
    .param p1, "altOrientation"    # Z

    .prologue
    .line 936
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mAltOrientation:Z

    .line 937
    return-void
.end method

.method setExitingTokensHasVisible(Z)V
    .locals 2
    .param p1, "hasVisible"    # Z

    .prologue
    .line 3277
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3278
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    iput-boolean p1, v1, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 3277
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3282
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->setExitingTokensHasVisible(Z)V

    .line 3283
    return-void
.end method

.method setInputMethodAnimLayerAdjustment(I)V
    .locals 3
    .param p1, "adj"    # I

    .prologue
    .line 2073
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting im layer adj to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    :cond_0
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodAnimLayerAdjustment:I

    .line 2075
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 2076
    return-void
.end method

.method setLastOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 928
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    .line 929
    return-void
.end method

.method setLayoutNeeded()V
    .locals 3

    .prologue
    .line 2552
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLayoutNeeded: callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    .line 2554
    return-void
.end method

.method setMaxUiWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .prologue
    .line 1718
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v0, :cond_0

    .line 1719
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting max ui width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " on display:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_0
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    .line 1725
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 1726
    return-void
.end method

.method setRotation(I)V
    .locals 0
    .param p1, "newRotation"    # I

    .prologue
    .line 920
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    .line 921
    return-void
.end method

.method setTouchExcludeRegion(Lcom/android/server/wm/Task;)V
    .locals 11
    .param p1, "focusedTask"    # Lcom/android/server/wm/Task;

    .prologue
    const/4 v10, 0x0

    .line 1856
    if-nez p1, :cond_2

    .line 1857
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 1874
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 1875
    .local v7, "inputMethod":Lcom/android/server/wm/WindowState;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1879
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 1880
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v1, v3, :cond_4

    .line 1881
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1888
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    .local v6, "i":I
    :goto_2
    if-ltz v6, :cond_5

    .line 1889
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 1890
    .local v9, "win":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v9, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 1891
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1888
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 1859
    .end local v6    # "i":I
    .end local v7    # "inputMethod":Lcom/android/server/wm/WindowState;
    .end local v9    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 1860
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v3, 0x1e

    invoke-static {v3, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    .line 1861
    .local v2, "delta":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1862
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v1

    add-int/lit8 v8, v1, -0x1

    .local v8, "stackNdx":I
    :goto_3
    if-ltz v8, :cond_3

    .line 1863
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v8}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 1865
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mContentRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    move-object v1, p1

    .line 1864
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskStack;->setTouchExcludeRegion(Lcom/android/server/wm/Task;ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1862
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 1870
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1871
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto/16 :goto_0

    .line 1885
    .end local v2    # "delta":I
    .end local v8    # "stackNdx":I
    .restart local v7    # "inputMethod":Lcom/android/server/wm/WindowState;
    :cond_4
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/server/wm/DisplayContent;->setTouchExcludeRegion(Lcom/android/server/wm/Task;)V

    goto :goto_1

    .line 1894
    .restart local v6    # "i":I
    :cond_5
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1895
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DockedStackDividerController;->getTouchRegion(Landroid/graphics/Rect;)V

    .line 1896
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 1897
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1899
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    if-eqz v1, :cond_7

    .line 1900
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskTapPointerEventListener;->setTouchExcludeRegion(Landroid/graphics/Region;)V

    .line 1902
    :cond_7
    return-void
.end method

.method startKeyguardExitOnNonAppWindows(ZZ)V
    .locals 3
    .param p1, "onWallpaper"    # Z
    .param p2, "goingToShade"    # Z

    .prologue
    .line 2609
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 2610
    .local v0, "policy":Landroid/view/WindowManagerPolicy;
    new-instance v1, Lcom/android/server/wm/-$Lambda$AUkchKtIxrbCkLkg2ILGagAqXvc;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p2, v0}, Lcom/android/server/wm/-$Lambda$AUkchKtIxrbCkLkg2ILGagAqXvc;-><init>(BZZLjava/lang/Object;)V

    .line 2616
    const/4 v2, 0x1

    .line 2610
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2617
    return-void
.end method

.method switchUser()V
    .locals 2

    .prologue
    .line 1906
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->switchUser()V

    .line 1907
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1908
    return-void
.end method

.method taskIdFromPoint(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, -0x1

    .line 1822
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1823
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 1824
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskStack;->taskIdFromPoint(II)I

    move-result v2

    .line 1825
    .local v2, "taskId":I
    if-eq v2, v4, :cond_0

    .line 1826
    return v2

    .line 1822
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1829
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "taskId":I
    :cond_1
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " stacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateBaseDisplayMetrics(III)V
    .locals 4
    .param p1, "baseWidth"    # I
    .param p2, "baseHeight"    # I
    .param p3, "baseDensity"    # I

    .prologue
    const/4 v3, 0x0

    .line 1730
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 1731
    iput p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 1732
    iput p3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 1734
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    if-le v0, v1, :cond_0

    .line 1735
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 1736
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 1737
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 1739
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v0, :cond_0

    .line 1740
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Applying config restraints:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1741
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 1740
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1741
    const-string/jumbo v2, " at density:"

    .line 1740
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1741
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 1740
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1742
    const-string/jumbo v2, " on display:"

    .line 1740
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1742
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    .line 1740
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1747
    return-void
.end method

.method updateDisplayInfo()V
    .locals 3

    .prologue
    .line 1626
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetricsIfNeeded()V

    .line 1628
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1629
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1631
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1632
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskStack;->updateDisplayInfo(Landroid/graphics/Rect;)V

    .line 1631
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1634
    :cond_0
    return-void
.end method

.method updateRotationUnchecked(Z)Z
    .locals 21
    .param p1, "inTransaction"    # Z

    .prologue
    .line 950
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-lez v5, :cond_1

    .line 953
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "Deferring rotation, rotation is paused."

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_0
    const/4 v5, 0x0

    return v5

    .line 958
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v3

    .line 959
    .local v3, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 963
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "Deferring rotation, animation in progress."

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_2
    const/4 v5, 0x0

    return v5

    .line 966
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v5, :cond_5

    .line 970
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v5, :cond_4

    const-string/jumbo v5, "WindowManager"

    .line 971
    const-string/jumbo v6, "Deferring rotation, still finishing previous rotation"

    .line 970
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_4
    const/4 v5, 0x0

    return v5

    .line 975
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v5, :cond_7

    .line 977
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v5, :cond_6

    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "Deferring rotation, display is not enabled."

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_6
    const/4 v5, 0x0

    return v5

    .line 981
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    move/from16 v17, v0

    .line 982
    .local v17, "oldRotation":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    .line 983
    .local v14, "lastOrientation":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->mAltOrientation:Z

    move/from16 v16, v0

    .line 984
    .local v16, "oldAltOrientation":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, v17

    invoke-interface {v5, v14, v0}, Landroid/view/WindowManagerPolicy;->rotationForOrientationLw(II)I

    move-result v4

    .line 985
    .local v4, "rotation":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, v17

    invoke-interface {v5, v0, v4}, Landroid/view/WindowManagerPolicy;->shouldRotateSeamlessly(II)Z

    move-result v15

    .line 988
    .local v15, "mayRotateSeamlessly":Z
    if-eqz v15, :cond_a

    sget-object v5, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;->$INST$3:Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;

    .line 989
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v20

    .line 990
    .local v20, "seamlessRotated":Lcom/android/server/wm/WindowState;
    if-eqz v20, :cond_8

    .line 995
    const/4 v5, 0x0

    return v5

    .line 1000
    :cond_8
    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 1001
    const/4 v15, 0x0

    .line 1003
    .end local v15    # "mayRotateSeamlessly":Z
    :cond_9
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v13, v5, :cond_a

    .line 1004
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v5, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Session;

    invoke-virtual {v5}, Lcom/android/server/wm/Session;->hasAlertWindowSurfaces()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1005
    const/4 v15, 0x0

    .line 1010
    .end local v13    # "i":I
    .end local v20    # "seamlessRotated":Lcom/android/server/wm/WindowState;
    :cond_a
    move/from16 v18, v15

    .line 1017
    .local v18, "rotateSeamlessly":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5, v14, v4}, Landroid/view/WindowManagerPolicy;->rotationHasCompatibleMetricsLw(II)Z

    move-result v5

    xor-int/lit8 v2, v5, 0x1

    .line 1020
    .local v2, "altOrientation":Z
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v5, :cond_b

    const-string/jumbo v6, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Selected orientation "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1021
    const-string/jumbo v7, ", got rotation "

    .line 1020
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1021
    const-string/jumbo v7, " which has "

    .line 1020
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1022
    if-eqz v2, :cond_d

    const-string/jumbo v5, "incompatible"

    .line 1020
    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1022
    const-string/jumbo v7, " metrics"

    .line 1020
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_b
    move/from16 v0, v17

    if-ne v0, v4, :cond_e

    move/from16 v0, v16

    if-ne v0, v2, :cond_e

    .line 1026
    const/4 v5, 0x0

    return v5

    .line 1003
    .end local v2    # "altOrientation":Z
    .end local v18    # "rotateSeamlessly":Z
    .restart local v13    # "i":I
    .restart local v20    # "seamlessRotated":Lcom/android/server/wm/WindowState;
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1022
    .end local v13    # "i":I
    .end local v20    # "seamlessRotated":Lcom/android/server/wm/WindowState;
    .restart local v2    # "altOrientation":Z
    .restart local v18    # "rotateSeamlessly":Z
    :cond_d
    const-string/jumbo v5, "compatible"

    goto :goto_1

    .line 1029
    :cond_e
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v5, :cond_f

    const-string/jumbo v6, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Rotation changed to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1030
    if-eqz v2, :cond_19

    const-string/jumbo v5, " (alt)"

    .line 1029
    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1030
    const-string/jumbo v7, " from "

    .line 1029
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1031
    if-eqz v16, :cond_1a

    const-string/jumbo v5, " (alt)"

    .line 1029
    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1031
    const-string/jumbo v7, ", lastOrientation="

    .line 1029
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_f
    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_10

    .line 1034
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 1037
    :cond_10
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    .line 1038
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->mAltOrientation:Z

    .line 1039
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v5, :cond_11

    .line 1040
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5, v4}, Landroid/view/WindowManagerPolicy;->setRotationLw(I)V

    .line 1043
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x1

    iput v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 1044
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 1046
    const-wide/16 v6, 0x7d0

    .line 1045
    const/16 v8, 0xb

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 1048
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1049
    const/4 v5, 0x2

    new-array v11, v5, [I

    .line 1050
    .local v11, "anim":[I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->isDimming()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1051
    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v5, v11, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v11, v6

    .line 1056
    :goto_4
    if-nez v18, :cond_1c

    .line 1057
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    aget v6, v11, v6

    const/4 v7, 0x1

    aget v7, v11, v7

    move/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v5, v0, v6, v7, v1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(ZIILcom/android/server/wm/DisplayContent;)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 1060
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1059
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v3

    .line 1078
    .end local v3    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->uiMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wm/DisplayContent;->updateDisplayAndOrientation(I)Landroid/view/DisplayInfo;

    .line 1080
    if-nez p1, :cond_13

    .line 1081
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v5, :cond_12

    .line 1082
    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, ">>> OPEN TRANSACTION setRotationUnchecked"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 1089
    :cond_13
    if-eqz v3, :cond_14

    .line 1090
    :try_start_0
    invoke-virtual {v3}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v5

    .line 1089
    if-eqz v5, :cond_14

    .line 1092
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    .line 1093
    const-wide/16 v6, 0x2710

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v8

    .line 1094
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v9, Landroid/view/DisplayInfo;->logicalWidth:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1091
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotationInTransaction(ILandroid/view/SurfaceSession;JFII)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1095
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1099
    :cond_14
    if-eqz v18, :cond_15

    .line 1100
    new-instance v5, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$4;

    const/4 v6, 0x0

    move/from16 v0, v17

    invoke-direct {v5, v6, v0, v4}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$4;-><init>(BII)V

    .line 1102
    const/4 v6, 0x1

    .line 1100
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1105
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManagerInternal;->performTraversalInTransactionFromWindowManager()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    if-nez p1, :cond_16

    .line 1108
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    .line 1109
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v5, :cond_16

    .line 1110
    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "<<< CLOSE TRANSACTION setRotationUnchecked"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_16
    new-instance v5, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$6;

    move/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v5, v0, v1}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$6;-><init>(ZLjava/lang/Object;)V

    .line 1127
    const/4 v6, 0x1

    .line 1115
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1129
    if-eqz v18, :cond_17

    .line 1130
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x36

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 1131
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 1132
    const-wide/16 v6, 0x7d0

    .line 1131
    const/16 v8, 0x36

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 1135
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v13, v5, -0x1

    .restart local v13    # "i":I
    :goto_6
    if-ltz v13, :cond_1e

    .line 1137
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    .line 1138
    .local v19, "rotationWatcher":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mDisplayId:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v5, v6, :cond_18

    .line 1140
    :try_start_1
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v5, v4}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1135
    :cond_18
    :goto_7
    add-int/lit8 v13, v13, -0x1

    goto :goto_6

    .line 1030
    .end local v11    # "anim":[I
    .end local v13    # "i":I
    .end local v19    # "rotationWatcher":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    .restart local v3    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_19
    const-string/jumbo v5, ""

    goto/16 :goto_2

    .line 1031
    :cond_1a
    const-string/jumbo v5, ""

    goto/16 :goto_3

    .line 1053
    .restart local v11    # "anim":[I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5, v11}, Landroid/view/WindowManagerPolicy;->selectRotationAnimationLw([I)V

    goto/16 :goto_4

    .line 1066
    :cond_1c
    const/4 v3, 0x0

    .line 1070
    .local v3, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    goto/16 :goto_5

    .line 1106
    .end local v3    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :catchall_0
    move-exception v5

    .line 1107
    if-nez p1, :cond_1d

    .line 1108
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    .line 1109
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v6, :cond_1d

    .line 1110
    const-string/jumbo v6, "WindowManager"

    const-string/jumbo v7, "<<< CLOSE TRANSACTION setRotationUnchecked"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_1d
    throw v5

    .line 1150
    .restart local v13    # "i":I
    :cond_1e
    if-nez v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v5, :cond_1f

    .line 1151
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 1150
    if-eqz v5, :cond_1f

    .line 1152
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 1155
    :cond_1f
    const/4 v5, 0x1

    return v5

    .line 1141
    .restart local v19    # "rotationWatcher":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    :catch_0
    move-exception v12

    .local v12, "e":Landroid/os/RemoteException;
    goto :goto_7
.end method

.method updateStackBoundsAfterConfigChange(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1522
    .local p1, "changedStackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1523
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 1524
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->updateBoundsAfterConfigChange()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1525
    iget v2, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1522
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1532
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1533
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v2}, Lcom/android/server/wm/PinnedStackController;->onDisplayInfoChanged()V

    .line 1535
    :cond_2
    return-void
.end method

.method updateSystemUiVisibility(II)V
    .locals 2
    .param p1, "visibility"    # I
    .param p2, "globalDiff"    # I

    .prologue
    const/4 v1, 0x1

    .line 2737
    new-instance v0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$4;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$4;-><init>(BII)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2754
    return-void
.end method

.method updateWallpaperForAnimator(Lcom/android/server/wm/WindowAnimator;)V
    .locals 3
    .param p1, "animator"    # Lcom/android/server/wm/WindowAnimator;

    .prologue
    .line 2685
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->resetAnimationBackgroundAnimator()V

    .line 2688
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 2689
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 2691
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWallpaperForAnimator:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2693
    iget-object v0, p1, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eq v0, v1, :cond_1

    .line 2694
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/DisplayContent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Detached wallpaper changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2695
    iget-object v2, p1, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 2694
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2695
    const-string/jumbo v2, " to "

    .line 2694
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2695
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 2694
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iput-object v0, p1, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 2697
    iget v0, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 2699
    :cond_1
    return-void
.end method

.method updateWindowsForAnimator(Lcom/android/server/wm/WindowAnimator;)V
    .locals 2
    .param p1, "animator"    # Lcom/android/server/wm/WindowAnimator;

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 2681
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWindowsForAnimator:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2682
    return-void
.end method

.method waitForAllWindowsDrawn()V
    .locals 3

    .prologue
    .line 2773
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 2774
    .local v0, "policy":Landroid/view/WindowManagerPolicy;
    new-instance v1, Lcom/android/server/wm/-$Lambda$qRW_P-TWddDPPnAT8S1SNpM72ho;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, v0}, Lcom/android/server/wm/-$Lambda$qRW_P-TWddDPPnAT8S1SNpM72ho;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    .line 2786
    const/4 v2, 0x1

    .line 2774
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2787
    return-void
.end method
