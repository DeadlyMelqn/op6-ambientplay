.class Lcom/android/server/wm/RootWindowContainer;
.super Lcom/android/server/wm/WindowContainer;
.source "RootWindowContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RootWindowContainer$MyHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer",
        "<",
        "Lcom/android/server/wm/DisplayContent;",
        ">;"
    }
.end annotation


# static fields
.field private static final SET_SCREEN_BRIGHTNESS_OVERRIDE:I = 0x1

.field private static final SET_USER_ACTIVITY_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mChangedStackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseSystemDialogsReason:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mHoldScreen:Lcom/android/server/wm/Session;

.field mHoldScreenWindow:Lcom/android/server/wm/WindowState;

.field private mLastWindowFreezeSource:Ljava/lang/Object;

.field private final mLayersController:Lcom/android/server/wm/WindowLayersController;

.field private mObscureApplicationContentOnSecondaryDisplays:Z

.field mObscuringWindow:Lcom/android/server/wm/WindowState;

.field public mOpRwc:Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;

.field mOrientationChangeComplete:Z

.field mRemoteEventTrace:Lcom/android/server/wm/RemoteEventTrace;

.field private mScreenBrightness:F

.field mService:Lcom/android/server/wm/WindowManagerService;

.field mSurfaceTraceEnabled:Z

.field mSurfaceTraceFd:Landroid/os/ParcelFileDescriptor;

.field private mSustainedPerformanceModeCurrent:Z

.field private mSustainedPerformanceModeEnabled:Z

.field private mUpdateRotation:Z

.field private mUserActivityTimeout:J

.field mWallpaperActionPending:Z

.field final mWallpaperController:Lcom/android/server/wm/WallpaperController;

.field private mWallpaperForceHidingChanged:Z

.field mWallpaperMayChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wm/-$Lambda$hCYoJeHmvymNpgtwuNPQ6z-HGjQ;->$INST$4:Lcom/android/server/wm/-$Lambda$hCYoJeHmvymNpgtwuNPQ6z-HGjQ;

    .line 161
    sput-object v0, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    .line 98
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 168
    invoke-direct {p0}, Lcom/android/server/wm/WindowContainer;-><init>()V

    .line 111
    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperForceHidingChanged:Z

    .line 112
    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 113
    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 114
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    .line 115
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 116
    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 119
    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 121
    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 124
    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 126
    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 127
    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 129
    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 135
    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChangedStackList:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    .line 169
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 170
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$MyHandler;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/RootWindowContainer$MyHandler;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    .line 171
    new-instance v0, Lcom/android/server/wm/WindowLayersController;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowLayersController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    .line 172
    new-instance v0, Lcom/android/server/wm/WallpaperController;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/WallpaperController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 176
    new-instance v0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mOpRwc:Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;

    .line 178
    return-void
.end method

.method private applySurfaceChangesTransaction(ZII)V
    .locals 6
    .param p1, "recoveringMemory"    # Z
    .param p2, "defaultDw"    # I
    .param p3, "defaultDh"    # I

    .prologue
    const/4 v4, 0x0

    .line 846
    iput-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 847
    iput-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 850
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v4, :cond_0

    .line 851
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    invoke-virtual {v4, p2, p3}, Lcom/android/server/wm/Watermark;->positionSurface(II)V

    .line 853
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-eqz v4, :cond_1

    .line 854
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    invoke-virtual {v4, p2, p3}, Lcom/android/server/wm/StrictModeFlash;->positionSurface(II)V

    .line 856
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    if-eqz v4, :cond_2

    .line 857
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    .line 858
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v5

    .line 857
    invoke-virtual {v4, p2, p3, v5}, Lcom/android/server/wm/CircularDisplayMask;->positionSurface(III)V

    .line 860
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    if-eqz v4, :cond_3

    .line 861
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    .line 862
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v5

    .line 861
    invoke-virtual {v4, p2, p3, v5}, Lcom/android/server/wm/EmulatorDisplayOverlay;->positionSurface(III)V

    .line 865
    :cond_3
    const/4 v2, 0x0

    .line 867
    .local v2, "focusDisplayed":Z
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 868
    .local v0, "count":I
    const/4 v3, 0x0

    .end local v2    # "focusDisplayed":Z
    .local v3, "j":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 869
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 870
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->applySurfaceChangesTransaction(Z)Z

    move-result v4

    or-int/2addr v2, v4

    .line 868
    .local v2, "focusDisplayed":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 873
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "focusDisplayed":Z
    :cond_4
    if-eqz v2, :cond_5

    .line 874
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 879
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManagerInternal;->performTraversalInTransactionFromWindowManager()V

    .line 880
    return-void
.end method

.method private createDisplayContent(Landroid/view/Display;)Lcom/android/server/wm/DisplayContent;
    .locals 8
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    const/4 v7, 0x5

    .line 244
    new-instance v0, Lcom/android/server/wm/DisplayContent;

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    .line 245
    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 244
    invoke-direct {v0, p1, v4, v5, v6}, Lcom/android/server/wm/DisplayContent;-><init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowLayersController;Lcom/android/server/wm/WallpaperController;)V

    .line 246
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 248
    .local v1, "displayId":I
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Adding display="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 251
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 252
    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    iget-object v5, v2, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    iget-object v6, v2, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/server/wm/DisplaySettings;->getOverscanLocked(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 253
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iput v4, v2, Landroid/view/DisplayInfo;->overscanLeft:I

    .line 254
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iput v4, v2, Landroid/view/DisplayInfo;->overscanTop:I

    .line 255
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iput v4, v2, Landroid/view/DisplayInfo;->overscanRight:I

    .line 256
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iput v4, v2, Landroid/view/DisplayInfo;->overscanBottom:I

    .line 257
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v4, :cond_3

    .line 258
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v4, v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    .line 260
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService;->configureDisplayPolicyLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 266
    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 267
    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 269
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    if-ne v1, v4, :cond_3

    .line 270
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->canDispatchPointerEvents()Z

    move-result v4

    .line 266
    if-eqz v4, :cond_3

    .line 271
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v4, :cond_2

    .line 272
    sget-object v4, Lcom/android/server/wm/RootWindowContainer;->TAG:Ljava/lang/String;

    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Registering PointerEventListener for DisplayId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 272
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_2
    new-instance v4, Lcom/android/server/wm/TaskTapPointerEventListener;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v4, v5, v0}, Lcom/android/server/wm/TaskTapPointerEventListener;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v4, v0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    .line 276
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 277
    if-nez v1, :cond_3

    .line 278
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 283
    :cond_3
    return-object v0
.end method

.method private getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "objectId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v0, Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0;

    invoke-direct {v0, p3, p2, p1}, Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 318
    const/4 v1, 0x1

    .line 310
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 319
    return-void
.end method

.method private handleResizingWindows()Landroid/util/ArraySet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/DisplayContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 889
    const/4 v2, 0x0

    .line 890
    .local v2, "touchExcludeRegionUpdateSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/DisplayContent;>;"
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .end local v2    # "touchExcludeRegionUpdateSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/DisplayContent;>;"
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 891
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 892
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-eqz v4, :cond_1

    .line 890
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 897
    :cond_1
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_2

    .line 898
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->destroySavedSurfaces()V

    .line 900
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->reportResized()V

    .line 901
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 902
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v4}, Lcom/android/server/wm/WindowManagerService;->excludeWindowTypeFromTapOutTask(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 903
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 904
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v2, :cond_3

    .line 905
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 907
    :cond_3
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 910
    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_4
    return-object v2
.end method

.method static synthetic lambda$-com_android_server_wm_RootWindowContainer_13446(Ljava/lang/String;Ljava/util/ArrayList;ILcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p2, "objectId"    # I
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 311
    .local p1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    if-eqz p0, :cond_1

    .line 312
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 316
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_wm_RootWindowContainer_18315(IZLcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "userId"    # I
    .param p1, "disabled"    # Z
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 442
    iget-boolean v0, p2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 443
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->setSecureLocked(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_RootWindowContainer_19024(ILcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "pid"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 460
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_wm_RootWindowContainer_47324(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZLcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "index"    # [I
    .param p3, "dumpAll"    # Z
    .param p4, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .local p0, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1094
    if-eqz p0, :cond_0

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1095
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Window #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1096
    const-string/jumbo v2, "    "

    if-nez p3, :cond_1

    if-eqz p0, :cond_3

    :cond_1
    :goto_0
    invoke-virtual {p4, p1, v2, v0}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1097
    aget v0, p2, v1

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, v1

    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 1096
    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_wm_RootWindowContainer_7654(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 163
    .local v0, "aToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppWindowToken;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)V

    :cond_0
    return-void
.end method

.method private prepareFreezingTaskBounds()V
    .locals 2

    .prologue
    .line 424
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 425
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->prepareFreezingTaskBounds()V

    .line 424
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 427
    :cond_0
    return-void
.end method

.method private setGlobalConfigurationIfNeeded(Landroid/content/res/Configuration;)[I
    .locals 2
    .param p1, "newConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 382
    .local v0, "configChanged":Z
    :goto_0
    if-nez v0, :cond_1

    .line 383
    const/4 v1, 0x0

    return-object v1

    .line 381
    .end local v0    # "configChanged":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "configChanged":Z
    goto :goto_0

    .line 385
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 386
    invoke-direct {p0}, Lcom/android/server/wm/RootWindowContainer;->updateStackBoundsAfterConfigChange()[I

    move-result-object v1

    return-object v1
.end method

.method private static toBrightnessOverride(F)I
    .locals 1
    .param p0, "value"    # F

    .prologue
    .line 1013
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private updateStackBoundsAfterConfigChange()[I
    .locals 4

    .prologue
    .line 402
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChangedStackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 404
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 405
    .local v2, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 406
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 407
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChangedStackList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->updateStackBoundsAfterConfigChange(Ljava/util/List;)V

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChangedStackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChangedStackList:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v3

    goto :goto_1
.end method

.method private updateStackBoundsAfterConfigChange(I)[I
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 415
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChangedStackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 417
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 418
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChangedStackList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->updateStackBoundsAfterConfigChange(Ljava/util/List;)V

    .line 420
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChangedStackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChangedStackList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method canShowStrictModeViolation(I)Z
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 460
    new-instance v1, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;-><init>(BI)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 461
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method closeSystemDialogs(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    .line 466
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 467
    return-void
.end method

.method computeFocusedWindow()Lcom/android/server/wm/WindowState;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 181
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 182
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 183
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 184
    .local v2, "win":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_0

    .line 185
    return-object v2

    .line 181
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 188
    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    return-object v4
.end method

.method copyAnimToLayoutParams()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 978
    const/4 v1, 0x0

    .line 980
    .local v1, "doRequest":Z
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v0, v2, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 981
    .local v0, "bulkUpdateParams":I
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 982
    iput-boolean v4, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 983
    const/4 v1, 0x1

    .line 985
    :cond_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 986
    iput-boolean v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    .line 987
    const/4 v1, 0x1

    .line 989
    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    .line 990
    iput-boolean v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperForceHidingChanged:Z

    .line 991
    const/4 v1, 0x1

    .line 993
    :cond_2
    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_6

    .line 994
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 1002
    :cond_3
    :goto_0
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_4

    .line 1003
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    .line 1005
    :cond_4
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_5

    .line 1006
    iput-boolean v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 1009
    :cond_5
    return v1

    .line 996
    :cond_6
    iput-boolean v4, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 997
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 998
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v2, :cond_3

    .line 999
    const/4 v1, 0x1

    goto :goto_0
.end method

.method disableSurfaceTrace()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1054
    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mSurfaceTraceEnabled:Z

    .line 1055
    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mRemoteEventTrace:Lcom/android/server/wm/RemoteEventTrace;

    .line 1056
    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mSurfaceTraceFd:Landroid/os/ParcelFileDescriptor;

    .line 1057
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1058
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 1059
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->disableSurfaceTrace()V

    .line 1057
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1061
    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_0
    return-void
.end method

.method dumpDisplayContents(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1064
    const-string/jumbo v3, "WINDOW MANAGER DISPLAY CONTENTS (dumpsys window displays)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1065
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v3, :cond_0

    .line 1066
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1067
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1068
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1069
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    const-string/jumbo v3, "  "

    invoke-virtual {v1, v3, p1}, Lcom/android/server/wm/DisplayContent;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1067
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1072
    .end local v0    # "count":I
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "i":I
    :cond_0
    const-string/jumbo v3, "  NO DISPLAY"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1074
    :cond_1
    return-void
.end method

.method dumpLayoutNeededDisplayIds(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1077
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1078
    return-void

    .line 1080
    :cond_0
    const-string/jumbo v3, "  mLayoutNeeded on displays="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1081
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1082
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "displayNdx":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1083
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1084
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1085
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1082
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1088
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1089
    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Z)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    .prologue
    .line 1103
    const-string/jumbo v1, "  All tokens:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1104
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1105
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->dumpTokens(Ljava/io/PrintWriter;Z)V

    .line 1104
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1107
    :cond_0
    return-void
.end method

.method dumpWindowsNoHeader(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const/4 v2, 0x1

    .line 1092
    new-array v0, v2, [I

    .line 1093
    .local v0, "index":[I
    new-instance v1, Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0$1;

    invoke-direct {v1, p2, p3, p1, v0}, Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0$1;-><init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1100
    return-void
.end method

.method enableSurfaceTrace(Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 1040
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 1041
    .local v2, "fd":Ljava/io/FileDescriptor;
    iget-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mSurfaceTraceEnabled:Z

    if-eqz v3, :cond_0

    .line 1042
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->disableSurfaceTrace()V

    .line 1044
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mSurfaceTraceEnabled:Z

    .line 1045
    new-instance v3, Lcom/android/server/wm/RemoteEventTrace;

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v3, v4, v2}, Lcom/android/server/wm/RemoteEventTrace;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/io/FileDescriptor;)V

    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mRemoteEventTrace:Lcom/android/server/wm/RemoteEventTrace;

    .line 1046
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mSurfaceTraceFd:Landroid/os/ParcelFileDescriptor;

    .line 1047
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1048
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 1049
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->enableSurfaceTrace(Ljava/io/FileDescriptor;)V

    .line 1047
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1051
    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_1
    return-void
.end method

.method getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 327
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 328
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 329
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 330
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_0

    .line 331
    return-object v0

    .line 327
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 334
    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_1
    return-object v4
.end method

.method getDisplayContent(I)Lcom/android/server/wm/DisplayContent;
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 234
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 235
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 236
    .local v0, "current":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 237
    return-object v0

    .line 234
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 240
    .end local v0    # "current":Lcom/android/server/wm/DisplayContent;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;
    .locals 5
    .param p1, "displayId"    # I

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 219
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v2, :cond_0

    .line 220
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    .line 221
    .local v3, "display":Landroid/view/Display;
    if-eqz v3, :cond_0

    .line 222
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 224
    .local v0, "callingIdentity":J
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/wm/RootWindowContainer;->createDisplayContent(Landroid/view/Display;)Lcom/android/server/wm/DisplayContent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 226
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 230
    .end local v0    # "callingIdentity":J
    .end local v3    # "display":Landroid/view/Display;
    :cond_0
    return-object v2

    .line 225
    .restart local v0    # "callingIdentity":J
    .restart local v3    # "display":Landroid/view/Display;
    :catchall_0
    move-exception v4

    .line 226
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 225
    throw v4
.end method

.method getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V
    .locals 4
    .param p1, "displaysInFocusOrder"    # Landroid/util/SparseIntArray;

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 198
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 199
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 200
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 201
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isRemovalDeferred()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 207
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1111
    const-string/jumbo v0, "ROOT"

    return-object v0
.end method

.method getStackById(I)Lcom/android/server/wm/TaskStack;
    .locals 5
    .param p1, "stackId"    # I

    .prologue
    const/4 v4, 0x0

    .line 430
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 431
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 432
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 433
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v2, :cond_0

    .line 434
    return-object v2

    .line 430
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 437
    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    return-object v4
.end method

.method getWindowTokenDisplay(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayContent;
    .locals 5
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .prologue
    const/4 v4, 0x0

    .line 339
    if-nez p1, :cond_0

    .line 340
    return-object v4

    .line 343
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 344
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 345
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v3, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v0

    .line 346
    .local v0, "current":Lcom/android/server/wm/WindowToken;
    if-ne v0, p1, :cond_1

    .line 347
    return-object v1

    .line 343
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 351
    .end local v0    # "current":Lcom/android/server/wm/WindowToken;
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_2
    return-object v4
.end method

.method getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const/4 v1, 0x0

    .line 301
    .local v1, "objectId":I
    const/16 v2, 0x10

    :try_start_0
    invoke-static {p2, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 302
    const/4 p2, 0x0

    .line 306
    .end local p2    # "name":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/wm/RootWindowContainer;->getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 307
    return-void

    .line 303
    .restart local p2    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Z
    .locals 12
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "obscured"    # Z
    .param p3, "syswin"    # Z

    .prologue
    .line 921
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 922
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 923
    .local v0, "attrFlags":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v2

    .line 924
    .local v2, "canBeSeen":Z
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 925
    .local v5, "privateflags":I
    const/4 v4, 0x0

    .line 934
    .local v4, "displayHasContent":Z
    iget-boolean v7, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v7, :cond_7

    if-nez v2, :cond_0

    and-int/lit16 v7, v5, 0x400

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 936
    :cond_0
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_8

    .line 937
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v7, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 938
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 944
    :cond_1
    :goto_0
    if-nez p3, :cond_2

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_2

    iget v7, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    .line 945
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v7, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    .line 947
    :cond_2
    if-nez p3, :cond_3

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v8, v7, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_3

    iget-wide v8, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_3

    .line 948
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v8, v7, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v8, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 951
    :cond_3
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 954
    .local v6, "type":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 955
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_9

    iget-boolean v7, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v7, :cond_9

    .line 959
    const/16 v7, 0x7e7

    if-eq v6, v7, :cond_4

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_5

    .line 960
    :cond_4
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 962
    :cond_5
    const/4 v4, 0x1

    .line 969
    :cond_6
    :goto_1
    const/high16 v7, 0x40000

    and-int/2addr v7, v5

    if-eqz v7, :cond_7

    .line 970
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 974
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "type":I
    :cond_7
    return v4

    .line 939
    :cond_8
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEEP_SCREEN_ON:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    if-ne p1, v7, :cond_1

    .line 940
    sget-object v7, Lcom/android/server/wm/WindowManagerDebugConfig;->TAG_KEEP_SCREEN_ON:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleNotObscuredLocked: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " was holding "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 941
    const-string/jumbo v9, "screen wakelock but no longer has FLAG_KEEP_SCREEN_ON!!! called by"

    .line 940
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 942
    const/16 v9, 0xa

    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v9

    .line 940
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 963
    .restart local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v6    # "type":I
    :cond_9
    if-eqz v3, :cond_6

    .line 964
    iget-boolean v7, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    if-eqz v7, :cond_a

    .line 965
    if-eqz p2, :cond_6

    const/16 v7, 0x7d9

    if-ne v6, v7, :cond_6

    .line 967
    :cond_a
    const/4 v4, 0x1

    goto :goto_1
.end method

.method hasPendingLayoutChanges(Lcom/android/server/wm/WindowAnimator;)Z
    .locals 6
    .param p1, "animator"    # Lcom/android/server/wm/WindowAnimator;

    .prologue
    .line 481
    const/4 v2, 0x0

    .line 483
    .local v2, "hasChanges":Z
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 484
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 485
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 486
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v4

    .line 487
    .local v4, "pendingChanges":I
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_0

    .line 488
    iget v5, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 490
    :cond_0
    if-eqz v4, :cond_1

    .line 491
    const/4 v2, 0x1

    .line 484
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 495
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "pendingChanges":I
    :cond_2
    return v2
.end method

.method isLayoutNeeded()Z
    .locals 4

    .prologue
    .line 287
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 288
    .local v2, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 289
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 290
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    const/4 v3, 0x1

    return v3

    .line 288
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method synthetic lambda$-com_android_server_wm_RootWindowContainer_18580(Lcom/android/server/wm/WindowState;)V
    .locals 7
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 450
    iget v3, p1, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 451
    return-void

    .line 453
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v4, p1, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v5

    .line 454
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v6

    .line 453
    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 455
    .local v0, "mode":I
    if-eqz v0, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    return-void

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wm_RootWindowContainer_21687(Landroid/util/SparseIntArray;Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "pidCandidates"    # Landroid/util/SparseIntArray;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 523
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    return-void

    .line 526
    :cond_0
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 527
    .local v0, "wsa":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_1

    .line 528
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    :cond_1
    return-void
.end method

.method synthetic lambda$-com_android_server_wm_RootWindowContainer_7373(Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 153
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_0

    .line 155
    :try_start_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/android/server/wm/RootWindowContainer;->prepareFreezingTaskBounds()V

    .line 392
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 394
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->onConfigurationChanged()V

    .line 395
    return-void
.end method

.method performSurfacePlacement(Z)V
    .locals 32
    .param p1, "recoveringMemory"    # Z

    .prologue
    .line 577
    sget-boolean v28, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v28, :cond_0

    sget-object v28, Lcom/android/server/wm/RootWindowContainer;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "performSurfacePlacementInner: entry. Called by "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 578
    const/16 v30, 0x3

    invoke-static/range {v30 .. v30}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v30

    .line 577
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_0
    const/16 v23, 0x0

    .line 583
    .local v23, "updateInputWindowsNeeded":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    .line 586
    const/16 v29, 0x3

    const/16 v30, 0x0

    .line 585
    invoke-virtual/range {v28 .. v30}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v23

    .line 590
    .end local v23    # "updateInputWindowsNeeded":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowList;->size()I

    move-result v20

    .line 591
    .local v20, "numDisplays":I
    const/4 v15, 0x0

    .local v15, "displayNdx":I
    :goto_0
    move/from16 v0, v20

    if-ge v15, v0, :cond_2

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/DisplayContent;

    .line 593
    .local v12, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Lcom/android/server/wm/DisplayContent;->setExitingTokensHasVisible(Z)V

    .line 591
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 596
    .end local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_2
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 597
    const/high16 v28, -0x40800000    # -1.0f

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    .line 598
    const-wide/16 v28, -0x1

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 599
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 600
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    .line 605
    .local v9, "defaultDisplay":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v11

    .line 606
    .local v11, "defaultInfo":Landroid/view/DisplayInfo;
    iget v10, v11, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 607
    .local v10, "defaultDw":I
    iget v8, v11, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 609
    .local v8, "defaultDh":I
    sget-boolean v28, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v28, :cond_3

    sget-object v28, Lcom/android/server/wm/RootWindowContainer;->TAG:Ljava/lang/String;

    .line 610
    const-string/jumbo v29, ">>> OPEN TRANSACTION performLayoutAndPlaceSurfaces"

    .line 609
    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 613
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v10, v8}, Lcom/android/server/wm/RootWindowContainer;->applySurfaceChangesTransaction(ZII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    .line 618
    sget-boolean v28, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v28, :cond_4

    sget-object v28, Lcom/android/server/wm/RootWindowContainer;->TAG:Ljava/lang/String;

    .line 619
    const-string/jumbo v29, "<<< CLOSE TRANSACTION performLayoutAndPlaceSurfaces"

    .line 618
    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v21, v0

    .line 626
    .local v21, "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v28

    if-eqz v28, :cond_5

    .line 627
    iget v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v28, v0

    .line 628
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowSurfacePlacer;->handleAppTransitionReadyLocked()I

    move-result v29

    .line 627
    or-int v28, v28, v29

    move/from16 v0, v28

    iput v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 629
    sget-boolean v28, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v28, :cond_5

    .line 630
    const-string/jumbo v28, "after handleAppTransitionReadyLocked"

    .line 631
    iget v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v29, v0

    .line 630
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 634
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    move/from16 v28, v0

    if-nez v28, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v28

    if-eqz v28, :cond_6

    .line 639
    iget v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v28, v0

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowManagerService;->handleAnimatingStoppedAndTransitionLocked()I

    move-result v29

    .line 639
    or-int v28, v28, v29

    move/from16 v0, v28

    iput v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 641
    sget-boolean v28, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v28, :cond_6

    .line 642
    const-string/jumbo v28, "after handleAnimStopAndXitionLock"

    .line 643
    iget v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v29, v0

    .line 642
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 646
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperForceHidingChanged:Z

    move/from16 v28, v0

    if-eqz v28, :cond_7

    iget v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v28, v0

    if-nez v28, :cond_7

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v28

    xor-int/lit8 v28, v28, 0x1

    .line 646
    if-eqz v28, :cond_7

    .line 652
    iget v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v28, v0

    or-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    iput v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 653
    sget-boolean v28, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v28, :cond_7

    .line 654
    const-string/jumbo v28, "after animateAwayWallpaperLocked"

    iget v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v29, v0

    .line 653
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 656
    :cond_7
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWallpaperForceHidingChanged:Z

    .line 658
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    move/from16 v28, v0

    if-eqz v28, :cond_9

    .line 659
    sget-boolean v28, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v28, :cond_8

    sget-object v28, Lcom/android/server/wm/RootWindowContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v29, "Wallpaper may change!  Adjusting"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_8
    iget v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v28, v0

    or-int/lit8 v28, v28, 0x4

    move/from16 v0, v28

    iput v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 661
    sget-boolean v28, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v28, :cond_9

    const-string/jumbo v28, "WallpaperMayChange"

    .line 662
    iget v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v29, v0

    .line 661
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 665
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    move/from16 v28, v0

    if-eqz v28, :cond_a

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    .line 668
    const/16 v30, 0x0

    .line 667
    invoke-virtual/range {v28 .. v30}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 669
    const/16 v23, 0x1

    .line 670
    .restart local v23    # "updateInputWindowsNeeded":Z
    iget v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v28, v0

    or-int/lit8 v28, v28, 0x8

    move/from16 v0, v28

    iput v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 674
    .end local v23    # "updateInputWindowsNeeded":Z
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v28

    if-eqz v28, :cond_b

    .line 675
    iget v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v28, v0

    or-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    iput v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 676
    sget-boolean v28, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v28, :cond_b

    const-string/jumbo v28, "mLayoutNeeded"

    .line 677
    iget v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v29, v0

    .line 676
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 680
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->handleResizingWindows()Landroid/util/ArraySet;

    move-result-object v22

    .line 682
    .local v22, "touchExcludeRegionUpdateDisplays":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/DisplayContent;>;"
    sget-boolean v28, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v28, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    move/from16 v28, v0

    if-eqz v28, :cond_c

    sget-object v28, Lcom/android/server/wm/RootWindowContainer;->TAG:Ljava/lang/String;

    .line 683
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "With display frozen, orientationChangeComplete="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 682
    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    move/from16 v28, v0

    if-eqz v28, :cond_e

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    move/from16 v28, v0

    if-eqz v28, :cond_d

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v28, v0

    const/16 v29, 0xb

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 690
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 694
    :cond_e
    const/16 v26, 0x0

    .line 695
    .local v26, "wallpaperDestroyed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 696
    .local v18, "i":I
    if-lez v18, :cond_12

    .line 698
    :cond_f
    add-int/lit8 v18, v18, -0x1

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/WindowState;

    .line 700
    .local v27, "win":Lcom/android/server/wm/WindowState;
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_10

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wm/WindowManagerService;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 704
    :cond_10
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v28

    if-eqz v28, :cond_11

    .line 705
    const/16 v26, 0x1

    .line 707
    :cond_11
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->destroyOrSaveSurfaceUnchecked()V

    .line 708
    if-gtz v18, :cond_f

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clear()V

    .line 713
    .end local v27    # "win":Lcom/android/server/wm/WindowState;
    :cond_12
    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v20

    if-ge v15, v0, :cond_14

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/DisplayContent;

    .line 715
    .restart local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->removeExistingTokensIfPossible()V

    .line 713
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 614
    .end local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v18    # "i":I
    .end local v21    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    .end local v22    # "touchExcludeRegionUpdateDisplays":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/DisplayContent;>;"
    .end local v26    # "wallpaperDestroyed":Z
    :catch_0
    move-exception v16

    .line 615
    .local v16, "e":Ljava/lang/RuntimeException;
    :try_start_1
    sget-object v28, Lcom/android/server/wm/RootWindowContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v29, "Unhandled exception in Window Manager"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    .line 618
    sget-boolean v28, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v28, :cond_4

    sget-object v28, Lcom/android/server/wm/RootWindowContainer;->TAG:Ljava/lang/String;

    .line 619
    const-string/jumbo v29, "<<< CLOSE TRANSACTION performLayoutAndPlaceSurfaces"

    .line 618
    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 616
    .end local v16    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v28

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    .line 618
    sget-boolean v29, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v29, :cond_13

    sget-object v29, Lcom/android/server/wm/RootWindowContainer;->TAG:Ljava/lang/String;

    .line 619
    const-string/jumbo v30, "<<< CLOSE TRANSACTION performLayoutAndPlaceSurfaces"

    .line 618
    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_13
    throw v28

    .line 718
    .restart local v18    # "i":I
    .restart local v21    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    .restart local v22    # "touchExcludeRegionUpdateDisplays":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/DisplayContent;>;"
    .restart local v26    # "wallpaperDestroyed":Z
    :cond_14
    if-eqz v26, :cond_15

    .line 719
    iget v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v28, v0

    or-int/lit8 v28, v28, 0x4

    move/from16 v0, v28

    iput v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 720
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 723
    :cond_15
    const/4 v15, 0x0

    :goto_3
    move/from16 v0, v20

    if-ge v15, v0, :cond_17

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/DisplayContent;

    .line 725
    .restart local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v0, v12, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v28, v0

    if-eqz v28, :cond_16

    .line 726
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 723
    :cond_16
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 731
    .end local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wm/WindowManagerService;->setHoldScreenLocked(Lcom/android/server/wm/Session;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    move/from16 v28, v0

    if-nez v28, :cond_19

    .line 735
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpg-float v28, v28, v29

    if-ltz v28, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    move/from16 v28, v0

    const/high16 v29, 0x3f800000    # 1.0f

    cmpl-float v28, v28, v29

    if-lez v28, :cond_26

    .line 736
    :cond_18
    const/4 v5, -0x1

    .line 740
    .local v5, "brightness":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v5, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/os/Message;->sendToTarget()V

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    const/16 v30, 0x2

    move-object/from16 v0, v28

    move/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/os/Message;->sendToTarget()V

    .line 744
    .end local v5    # "brightness":I
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_1a

    .line 745
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v29, v0

    .line 748
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    move/from16 v28, v0

    if-eqz v28, :cond_27

    const/16 v28, 0x1

    .line 747
    :goto_5
    const/16 v30, 0x6

    .line 746
    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 751
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1f

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAllowTheaterModeWakeFromLayout:Z

    move/from16 v28, v0

    if-nez v28, :cond_1b

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 754
    const-string/jumbo v29, "theater_mode_on"

    const/16 v30, 0x0

    .line 753
    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    if-nez v28, :cond_1e

    .line 755
    :cond_1b
    sget-boolean v28, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v28, :cond_1c

    sget-boolean v28, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_POWER:Z

    if-eqz v28, :cond_1d

    .line 756
    :cond_1c
    sget-object v28, Lcom/android/server/wm/RootWindowContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v29, "Turning screen on after layout!"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v28, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    .line 759
    const-string/jumbo v29, "android.server.wm:TURN_ON"

    .line 758
    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 761
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    .line 764
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    move/from16 v28, v0

    if-eqz v28, :cond_21

    .line 765
    sget-boolean v28, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v28, :cond_20

    sget-object v28, Lcom/android/server/wm/RootWindowContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v29, "Performing post-rotate rotation"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_20
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v13

    .line 768
    .local v13, "displayId":I
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked(Z)Z

    move-result v28

    if-eqz v28, :cond_28

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v28, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x12

    move-object/from16 v0, v28

    move/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/os/Message;->sendToTarget()V

    .line 776
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_29

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v24

    .line 778
    :goto_7
    if-eqz v24, :cond_21

    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked(Z)Z

    move-result v28

    if-eqz v28, :cond_21

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x12

    move-object/from16 v0, v28

    move/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/os/Message;->sendToTarget()V

    .line 784
    .end local v13    # "displayId":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    if-nez v28, :cond_22

    .line 785
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    move/from16 v28, v0

    if-eqz v28, :cond_23

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v28

    xor-int/lit8 v28, v28, 0x1

    if-eqz v28, :cond_23

    .line 786
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    move/from16 v28, v0

    xor-int/lit8 v28, v28, 0x1

    .line 784
    if-eqz v28, :cond_23

    .line 787
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    .line 790
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 791
    .local v4, "N":I
    if-lez v4, :cond_2b

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v0, v4, :cond_24

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    add-int/lit8 v29, v4, 0xa

    move/from16 v0, v29

    new-array v0, v0, [Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    .line 795
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clear()V

    .line 797
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 798
    .local v14, "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/DisplayContent;>;"
    const/16 v18, 0x0

    :goto_8
    move/from16 v0, v18

    if-ge v0, v4, :cond_2a

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0

    aget-object v25, v28, v18

    .line 800
    .local v25, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 801
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    .line 802
    .restart local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v12, :cond_25

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v28

    xor-int/lit8 v28, v28, 0x1

    if-eqz v28, :cond_25

    .line 803
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    :cond_25
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 736
    .end local v4    # "N":I
    .end local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v14    # "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/DisplayContent;>;"
    .end local v25    # "w":Lcom/android/server/wm/WindowState;
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/RootWindowContainer;->toBrightnessOverride(F)I

    move-result v5

    .restart local v5    # "brightness":I
    goto/16 :goto_4

    .line 748
    .end local v5    # "brightness":I
    :cond_27
    const/16 v28, 0x0

    goto/16 :goto_5

    .line 771
    .restart local v13    # "displayId":I
    :cond_28
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    goto/16 :goto_6

    .line 777
    :cond_29
    const/16 v24, 0x0

    .local v24, "vrDisplay":Lcom/android/server/wm/DisplayContent;
    goto/16 :goto_7

    .line 807
    .end local v13    # "displayId":I
    .end local v24    # "vrDisplay":Lcom/android/server/wm/DisplayContent;
    .restart local v4    # "N":I
    .restart local v14    # "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/DisplayContent;>;"
    :cond_2a
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v28

    add-int/lit8 v19, v28, -0x1

    .local v19, "j":I
    :goto_9
    if-ltz v19, :cond_2b

    .line 808
    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    .line 809
    .local v6, "dc":Lcom/android/server/wm/DisplayContent;
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 807
    add-int/lit8 v19, v19, -0x1

    goto :goto_9

    .line 814
    .end local v6    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v14    # "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/DisplayContent;>;"
    .end local v19    # "j":I
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowList;->size()I

    move-result v28

    add-int/lit8 v15, v28, -0x1

    :goto_a
    if-ltz v15, :cond_2c

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/wm/DisplayContent;

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/DisplayContent;->checkCompleteDeferredRemoval()Z

    .line 814
    add-int/lit8 v15, v15, -0x1

    goto :goto_a

    .line 818
    :cond_2c
    if-eqz v23, :cond_2d

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 821
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wm/WindowManagerService;->setFocusTaskRegionLocked(Lcom/android/server/wm/AppWindowToken;)V

    .line 822
    if-eqz v22, :cond_30

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2f

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v17

    .line 825
    :goto_b
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "dc$iterator":Ljava/util/Iterator;
    :cond_2e
    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_30

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    .line 827
    .restart local v6    # "dc":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v0, v17

    if-eq v0, v6, :cond_2e

    .line 828
    const/16 v28, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/android/server/wm/DisplayContent;->setTouchExcludeRegion(Lcom/android/server/wm/Task;)V

    goto :goto_c

    .line 824
    .end local v6    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v7    # "dc$iterator":Ljava/util/Iterator;
    :cond_2f
    const/16 v17, 0x0

    .local v17, "focusedDc":Lcom/android/server/wm/DisplayContent;
    goto :goto_b

    .line 835
    .end local v17    # "focusedDc":Lcom/android/server/wm/DisplayContent;
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowSurfacePlacer;->destroyPendingSurfaces()V

    .line 840
    sget-boolean v28, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v28, :cond_31

    sget-object v28, Lcom/android/server/wm/RootWindowContainer;->TAG:Ljava/lang/String;

    .line 841
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "performSurfacePlacementInner exit: animating="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/WindowAnimator;->isAnimating()Z

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 840
    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_31
    return-void
.end method

.method reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z
    .locals 16
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "secure"    # Z

    .prologue
    .line 500
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 501
    .local v12, "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    const/4 v8, 0x0

    .line 502
    .local v8, "leakedSurface":Z
    const/4 v7, 0x0

    .line 504
    .local v7, "killedApps":Z
    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 505
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v14, v14, Lcom/android/server/wm/Session;->mPid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const/4 v14, 0x2

    aput-object p2, v13, v14

    .line 504
    const/16 v14, 0x7918

    invoke-static {v14, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 507
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 512
    .local v2, "callingIdentity":J
    :try_start_0
    const-string/jumbo v13, "WindowManager"

    const-string/jumbo v14, "Out of memory for surface!  Looking for leaks..."

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowList;->size()I

    move-result v9

    .line 514
    .local v9, "numDisplays":I
    const/4 v4, 0x0

    .end local v8    # "leakedSurface":Z
    .local v4, "displayNdx":I
    :goto_0
    if-ge v4, v9, :cond_0

    .line 515
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v13, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->destroyLeakedSurfaces()Z

    move-result v13

    or-int/2addr v8, v13

    .line 514
    .local v8, "leakedSurface":Z
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 518
    .end local v8    # "leakedSurface":Z
    :cond_0
    if-nez v8, :cond_3

    .line 519
    const-string/jumbo v13, "WindowManager"

    const-string/jumbo v14, "No leaked surfaces; killing applications!"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    .line 521
    .local v10, "pidCandidates":Landroid/util/SparseIntArray;
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v9, :cond_3

    .line 522
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v13, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/DisplayContent;

    new-instance v14, Lcom/android/server/wm/-$Lambda$qRW_P-TWddDPPnAT8S1SNpM72ho;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v14, v15, v0, v10}, Lcom/android/server/wm/-$Lambda$qRW_P-TWddDPPnAT8S1SNpM72ho;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    .line 530
    const/4 v15, 0x0

    .line 522
    invoke-virtual {v13, v14, v15}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 532
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    if-lez v13, :cond_2

    .line 533
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    new-array v11, v13, [I

    .line 534
    .local v11, "pids":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v13, v11

    if-ge v6, v13, :cond_1

    .line 535
    invoke-virtual {v10, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    aput v13, v11, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 538
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string/jumbo v14, "Free memory"

    move/from16 v0, p3

    invoke-interface {v13, v11, v14, v0}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    if-eqz v13, :cond_2

    .line 539
    const/4 v7, 0x1

    .line 521
    .end local v6    # "i":I
    .end local v11    # "pids":[I
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 547
    .end local v10    # "pidCandidates":Landroid/util/SparseIntArray;
    :cond_3
    if-nez v8, :cond_4

    if-eqz v7, :cond_8

    .line 550
    :cond_4
    :try_start_2
    const-string/jumbo v13, "WindowManager"

    .line 551
    const-string/jumbo v14, "Looks like we have reclaimed some memory, clearing surface for retry."

    .line 550
    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    if-eqz v12, :cond_7

    .line 553
    sget-boolean v13, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v13, :cond_5

    sget-boolean v13, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v13, :cond_6

    :cond_5
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 554
    const-string/jumbo v14, "RECOVER DESTROY"

    const/4 v15, 0x0

    .line 553
    invoke-static {v13, v14, v15}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 555
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    .line 556
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v13, :cond_7

    .line 557
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v13}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 558
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v13}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 563
    :cond_7
    :try_start_3
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v13}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 568
    :cond_8
    :goto_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 571
    if-nez v8, :cond_9

    .end local v7    # "killedApps":Z
    :goto_5
    return v7

    .line 567
    .end local v4    # "displayNdx":I
    .end local v9    # "numDisplays":I
    .restart local v7    # "killedApps":Z
    :catchall_0
    move-exception v13

    .line 568
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 567
    throw v13

    .line 571
    .restart local v4    # "displayNdx":I
    .restart local v9    # "numDisplays":I
    :cond_9
    const/4 v7, 0x1

    goto :goto_5

    .line 564
    :catch_0
    move-exception v5

    .local v5, "e":Landroid/os/RemoteException;
    goto :goto_4

    .line 541
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v6    # "i":I
    .restart local v10    # "pidCandidates":Landroid/util/SparseIntArray;
    .restart local v11    # "pids":[I
    :catch_1
    move-exception v5

    .restart local v5    # "e":Landroid/os/RemoteException;
    goto :goto_3
.end method

.method removeReplacedWindows()V
    .locals 3

    .prologue
    .line 470
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/RootWindowContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, ">>> OPEN TRANSACTION removeReplacedWindows"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 473
    :try_start_0
    sget-object v0, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    .line 476
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/RootWindowContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "<<< CLOSE TRANSACTION removeReplacedWindows"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_1
    return-void

    .line 474
    :catchall_0
    move-exception v0

    .line 475
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    .line 476
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/wm/RootWindowContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "<<< CLOSE TRANSACTION removeReplacedWindows"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_2
    throw v0
.end method

.method setDisplayOverrideConfigurationIfNeeded(Landroid/content/res/Configuration;I)[I
    .locals 6
    .param p1, "newConfiguration"    # Landroid/content/res/Configuration;
    .param p2, "displayId"    # I

    .prologue
    const/4 v4, 0x0

    .line 359
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 360
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v2, :cond_0

    .line 361
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Display not found for id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 364
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 365
    .local v1, "currentConfig":Landroid/content/res/Configuration;
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 366
    .local v0, "configChanged":Z
    :goto_0
    if-nez v0, :cond_2

    .line 367
    return-object v4

    .line 365
    .end local v0    # "configChanged":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "configChanged":Z
    goto :goto_0

    .line 369
    :cond_2
    invoke-virtual {v2, p1}, Lcom/android/server/wm/DisplayContent;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 371
    if-nez p2, :cond_3

    .line 374
    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->setGlobalConfigurationIfNeeded(Landroid/content/res/Configuration;)[I

    move-result-object v3

    return-object v3

    .line 376
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->updateStackBoundsAfterConfigChange(I)[I

    move-result-object v3

    return-object v3
.end method

.method setSecureSurfaceState(IZ)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 441
    new-instance v0, Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0$2;

    invoke-direct {v0, p2, p1}, Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0$2;-><init>(ZI)V

    .line 445
    const/4 v1, 0x1

    .line 441
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 446
    return-void
.end method

.method updateAppOpsState()V
    .locals 2

    .prologue
    .line 449
    new-instance v0, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;

    const/16 v1, 0x11

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;-><init>(BLjava/lang/Object;)V

    .line 456
    const/4 v1, 0x0

    .line 449
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 457
    return-void
.end method
