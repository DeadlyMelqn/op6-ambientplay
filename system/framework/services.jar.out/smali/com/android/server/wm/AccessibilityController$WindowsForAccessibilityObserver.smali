.class final Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WindowsForAccessibilityObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mOldWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecurringAccessibilityEventsIntervalMillis:J

.field private final mTempBinderSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mTempRegion:Landroid/graphics/Region;

.field private final mTempRegion1:Landroid/graphics/Region;

.field private final mTempWindowStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .locals 2
    .param p1, "windowManagerService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "callback"    # Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    .prologue
    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1001
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1000
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    .line 1003
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    .line 1005
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    .line 1007
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    .line 1009
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    .line 1011
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    .line 1013
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1015
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    .line 1017
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    .line 1031
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mContext:Landroid/content/Context;

    .line 1032
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 1033
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    .line 1034
    new-instance v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    .line 1035
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    .line 1037
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows()V

    .line 1038
    return-void
.end method

.method private cacheWindows(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1268
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1269
    .local v3, "oldWindowCount":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1270
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowInfo;

    invoke-virtual {v4}, Landroid/view/WindowInfo;->recycle()V

    .line 1269
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1272
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1273
    .local v2, "newWindowCount":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 1274
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInfo;

    .line 1275
    .local v1, "newWindow":Landroid/view/WindowInfo;
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-static {v1}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1273
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1277
    .end local v1    # "newWindow":Landroid/view/WindowInfo;
    :cond_1
    return-void
.end method

.method private static clearAndRecycleWindows(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1326
    .local p0, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1327
    .local v1, "windowCount":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1328
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    invoke-virtual {v2}, Landroid/view/WindowInfo;->recycle()V

    .line 1327
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1330
    :cond_0
    return-void
.end method

.method private computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1240
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    .line 1241
    .local v2, "touchableRegion":Landroid/graphics/Region;
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 1242
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1243
    .local v1, "touchableFrame":Landroid/graphics/Rect;
    invoke-virtual {v2, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 1246
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    .line 1247
    .local v3, "windowFrame":Landroid/graphics/RectF;
    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1248
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 1251
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    .line 1252
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-static {p1, v0}, Lcom/android/server/wm/AccessibilityController;->-wrap1(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    .line 1253
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1256
    iget v4, v3, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    .line 1257
    iget v6, v3, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    .line 1256
    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1258
    return-void
.end method

.method private static isReportedWindowType(I)Z
    .locals 2
    .param p0, "windowType"    # I

    .prologue
    const/4 v0, 0x0

    .line 1333
    const/16 v1, 0x7dd

    if-eq p0, v1, :cond_0

    .line 1334
    const/16 v1, 0x7e5

    if-eq p0, v1, :cond_0

    .line 1335
    const/16 v1, 0x7ea

    if-eq p0, v1, :cond_0

    .line 1336
    const/16 v1, 0x7e0

    if-eq p0, v1, :cond_0

    .line 1337
    const/16 v1, 0x7e6

    if-eq p0, v1, :cond_0

    .line 1338
    const/16 v1, 0x7e2

    if-eq p0, v1, :cond_0

    .line 1339
    const/16 v1, 0x7eb

    if-eq p0, v1, :cond_0

    .line 1340
    const/16 v1, 0x3ec

    if-eq p0, v1, :cond_0

    .line 1341
    const/16 v1, 0x7df

    if-eq p0, v1, :cond_0

    .line 1342
    const/16 v1, 0x7ee

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    .line 1333
    :cond_0
    return v0
.end method

.method static synthetic lambda$-com_android_server_wm_AccessibilityController$WindowsForAccessibilityObserver_60406(Landroid/util/SparseArray;Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 1348
    .local p0, "outWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1349
    iget v0, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;
    .locals 2
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p1, "boundsInScreen"    # Landroid/graphics/Rect;

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowInfo()Landroid/view/WindowInfo;

    move-result-object v0

    .line 1263
    .local v0, "window":Landroid/view/WindowInfo;
    iget-object v1, v0, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1264
    return-object v0
.end method

.method private populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1346
    .local p1, "outWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1347
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    new-instance v1, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;-><init>(BLjava/lang/Object;)V

    .line 1351
    const/4 v2, 0x0

    .line 1347
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1352
    return-void
.end method

.method private windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z
    .locals 4
    .param p1, "oldWindow"    # Landroid/view/WindowInfo;
    .param p2, "newWindow"    # Landroid/view/WindowInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1280
    if-ne p1, p2, :cond_0

    .line 1281
    return v3

    .line 1283
    :cond_0
    if-nez p1, :cond_1

    .line 1284
    return v2

    .line 1286
    :cond_1
    if-nez p2, :cond_2

    .line 1287
    return v2

    .line 1289
    :cond_2
    iget v0, p1, Landroid/view/WindowInfo;->type:I

    iget v1, p2, Landroid/view/WindowInfo;->type:I

    if-eq v0, v1, :cond_3

    .line 1290
    return v2

    .line 1292
    :cond_3
    iget-boolean v0, p1, Landroid/view/WindowInfo;->focused:Z

    iget-boolean v1, p2, Landroid/view/WindowInfo;->focused:Z

    if-eq v0, v1, :cond_4

    .line 1293
    return v2

    .line 1295
    :cond_4
    iget-object v0, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-nez v0, :cond_5

    .line 1296
    iget-object v0, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-eqz v0, :cond_6

    .line 1297
    return v2

    .line 1299
    :cond_5
    iget-object v0, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    iget-object v1, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1300
    return v2

    .line 1302
    :cond_6
    iget-object v0, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-nez v0, :cond_7

    .line 1303
    iget-object v0, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-eqz v0, :cond_8

    .line 1304
    return v2

    .line 1306
    :cond_7
    iget-object v0, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    iget-object v1, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1307
    return v2

    .line 1309
    :cond_8
    iget-object v0, p1, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    iget-object v1, p2, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1310
    return v2

    .line 1312
    :cond_9
    iget-object v0, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 1313
    iget-object v0, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v1, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1312
    if-eqz v0, :cond_a

    .line 1314
    return v2

    .line 1316
    :cond_a
    iget-object v0, p1, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    iget-object v1, p2, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1317
    return v2

    .line 1319
    :cond_b
    iget v0, p1, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    iget v1, p2, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    if-eq v0, v1, :cond_c

    .line 1320
    return v2

    .line 1322
    :cond_c
    return v3
.end method


# virtual methods
.method public computeChangedWindows()V
    .locals 27

    .prologue
    .line 1057
    const/16 v23, 0x0

    .line 1058
    .local v23, "windowsChanged":Z
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1060
    .local v22, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v25, v0

    monitor-enter v25

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v24, :cond_0

    monitor-exit v25

    .line 1060
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1065
    return-void

    .line 1069
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string/jumbo v26, "window"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    .line 1068
    check-cast v20, Landroid/view/WindowManager;

    .line 1070
    .local v20, "windowManager":Landroid/view/WindowManager;
    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v12, v0, Landroid/graphics/Point;->x:I

    .line 1072
    .local v12, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v11, v0, Landroid/graphics/Point;->y:I

    .line 1074
    .local v11, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    .line 1075
    .local v15, "unaccountedSpace":Landroid/graphics/Region;
    const/16 v24, 0x0

    const/16 v26, 0x0

    move/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v15, v0, v1, v12, v11}, Landroid/graphics/Region;->set(IIII)Z

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    .line 1078
    .local v17, "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    .line 1080
    .local v2, "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1082
    const/4 v6, 0x0

    .line 1084
    .local v6, "focusedWindowAdded":Z
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseArray;->size()I

    move-result v16

    .line 1085
    .local v16, "visibleWindowCount":I
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 1086
    .local v13, "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    add-int/lit8 v7, v16, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_6

    .line 1087
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/WindowState;

    .line 1088
    .local v21, "windowState":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1089
    .local v5, "flags":I
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v14

    .line 1092
    .local v14, "task":Lcom/android/server/wm/Task;
    if-eqz v14, :cond_2

    iget v0, v14, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 1086
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 1097
    :cond_2
    and-int/lit8 v24, v5, 0x10

    if-nez v24, :cond_1

    .line 1102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1103
    .local v3, "boundsInScreen":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v3}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 1106
    invoke-virtual {v15, v3}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Rect;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 1111
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->isReportedWindowType(I)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 1113
    move-object/from16 v0, v21

    invoke-static {v0, v3}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;

    move-result-object v18

    .line 1114
    .local v18, "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1115
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1116
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 1117
    const/4 v6, 0x1

    .line 1124
    .end local v18    # "window":Landroid/view/WindowInfo;
    :cond_3
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    .line 1125
    const/16 v26, 0x7f0

    .line 1124
    move/from16 v0, v24

    move/from16 v1, v26

    if-eq v0, v1, :cond_4

    .line 1127
    sget-object v24, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    .line 1126
    move-object/from16 v0, v24

    invoke-virtual {v15, v3, v15, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1131
    :cond_4
    and-int/lit8 v24, v5, 0x28

    if-nez v24, :cond_5

    .line 1136
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v24

    .line 1137
    sget-object v26, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    .line 1136
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v15, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1139
    if-eqz v14, :cond_6

    .line 1142
    iget v0, v14, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 1060
    .end local v2    # "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    .end local v3    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v5    # "flags":I
    .end local v6    # "focusedWindowAdded":Z
    .end local v7    # "i":I
    .end local v11    # "screenHeight":I
    .end local v12    # "screenWidth":I
    .end local v13    # "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v14    # "task":Lcom/android/server/wm/Task;
    .end local v15    # "unaccountedSpace":Landroid/graphics/Region;
    .end local v16    # "visibleWindowCount":I
    .end local v17    # "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    .end local v20    # "windowManager":Landroid/view/WindowManager;
    .end local v21    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v24

    monitor-exit v25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v24

    .line 1151
    .restart local v2    # "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    .restart local v3    # "boundsInScreen":Landroid/graphics/Rect;
    .restart local v5    # "flags":I
    .restart local v6    # "focusedWindowAdded":Z
    .restart local v7    # "i":I
    .restart local v11    # "screenHeight":I
    .restart local v12    # "screenWidth":I
    .restart local v13    # "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v14    # "task":Lcom/android/server/wm/Task;
    .restart local v15    # "unaccountedSpace":Landroid/graphics/Region;
    .restart local v16    # "visibleWindowCount":I
    .restart local v17    # "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    .restart local v20    # "windowManager":Landroid/view/WindowManager;
    .restart local v21    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_5
    :try_start_2
    invoke-virtual {v15}, Landroid/graphics/Region;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 1157
    .end local v3    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v5    # "flags":I
    .end local v14    # "task":Lcom/android/server/wm/Task;
    .end local v21    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_6
    if-nez v6, :cond_7

    .line 1158
    add-int/lit8 v7, v16, -0x1

    :goto_2
    if-ltz v7, :cond_7

    .line 1159
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/WindowState;

    .line 1160
    .restart local v21    # "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v24

    if-eqz v24, :cond_a

    .line 1162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1163
    .restart local v3    # "boundsInScreen":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v3}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 1166
    move-object/from16 v0, v21

    invoke-static {v0, v3}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;

    move-result-object v18

    .line 1168
    .restart local v18    # "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1169
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1176
    .end local v3    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v18    # "window":Landroid/view/WindowInfo;
    .end local v21    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_7
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v19

    .line 1177
    .local v19, "windowCount":I
    const/4 v7, 0x0

    :goto_3
    move/from16 v0, v19

    if-ge v7, v0, :cond_c

    .line 1178
    move-object/from16 v0, v22

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/WindowInfo;

    .line 1179
    .restart local v18    # "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_8

    .line 1180
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 1182
    :cond_8
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    move-object/from16 v24, v0

    if-eqz v24, :cond_b

    .line 1183
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    .line 1184
    .local v4, "childTokenCount":I
    add-int/lit8 v8, v4, -0x1

    .local v8, "j":I
    :goto_4
    if-ltz v8, :cond_b

    .line 1185
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_9

    .line 1186
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1184
    :cond_9
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 1158
    .end local v4    # "childTokenCount":I
    .end local v8    # "j":I
    .end local v18    # "window":Landroid/view/WindowInfo;
    .end local v19    # "windowCount":I
    .restart local v21    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_a
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_2

    .line 1177
    .end local v21    # "windowState":Lcom/android/server/wm/WindowState;
    .restart local v18    # "window":Landroid/view/WindowInfo;
    .restart local v19    # "windowCount":I
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1193
    .end local v18    # "window":Landroid/view/WindowInfo;
    :cond_c
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseArray;->clear()V

    .line 1194
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v24

    move/from16 v1, v26

    if-eq v0, v1, :cond_10

    .line 1199
    const/16 v23, 0x1

    .line 1217
    :cond_d
    :goto_5
    if-eqz v23, :cond_e

    .line 1218
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->cacheWindows(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_e
    monitor-exit v25

    .line 1060
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1223
    if-eqz v23, :cond_f

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;->onWindowsForAccessibilityChanged(Ljava/util/List;)V

    .line 1235
    :cond_f
    invoke-static/range {v22 .. v22}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->clearAndRecycleWindows(Ljava/util/List;)V

    .line 1236
    return-void

    .line 1200
    :cond_10
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_11

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v24

    xor-int/lit8 v24, v24, 0x1

    if-eqz v24, :cond_d

    .line 1204
    :cond_11
    const/4 v7, 0x0

    :goto_6
    move/from16 v0, v19

    if-ge v7, v0, :cond_d

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowInfo;

    .line 1206
    .local v10, "oldWindow":Landroid/view/WindowInfo;
    move-object/from16 v0, v22

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowInfo;

    .line 1210
    .local v9, "newWindow":Landroid/view/WindowInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v24

    if-eqz v24, :cond_12

    .line 1211
    const/16 v23, 0x1

    .line 1212
    goto :goto_5

    .line 1204
    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_6
.end method

.method public performComputeChangedWindowsNotLocked()V
    .locals 2

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1042
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows()V

    .line 1043
    return-void
.end method

.method public scheduleComputeChangedWindowsLocked()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1046
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    .line 1048
    iget-wide v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    .line 1047
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1050
    :cond_0
    return-void
.end method
