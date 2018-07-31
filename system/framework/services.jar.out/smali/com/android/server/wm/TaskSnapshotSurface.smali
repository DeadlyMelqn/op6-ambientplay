.class Lcom/android/server/wm/TaskSnapshotSurface;
.super Ljava/lang/Object;
.source "TaskSnapshotSurface.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$StartingSurface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskSnapshotSurface$1;,
        Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;,
        Lcom/android/server/wm/TaskSnapshotSurface$Window;
    }
.end annotation


# static fields
.field private static final FLAG_INHERIT_EXCLUDES:I = 0x3186e038

.field private static final MSG_REPORT_DRAW:I = 0x0

.field private static final PRIVATE_FLAG_INHERITS:I = 0x20000

.field private static final SIZE_MISMATCH_MINIMUM_TIME_MS:J = 0x1c2L

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TITLE_FORMAT:Ljava/lang/String; = "SnapshotStartingWindow for taskId=%s"

.field private static sHandler:Landroid/os/Handler;


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mChildSurfaceControl:Landroid/view/SurfaceControl;

.field private final mContentInsets:Landroid/graphics/Rect;

.field private final mFrame:Landroid/graphics/Rect;

.field private final mHandler:Landroid/os/Handler;

.field private mHasDrawn:Z

.field private final mOrientationOnCreation:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSession:Landroid/view/IWindowSession;

.field private mShownTime:J

.field private mSizeMismatch:Z

.field private mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

.field private final mStableInsets:Landroid/graphics/Rect;

.field private final mStatusBarColor:I

.field private final mSurface:Landroid/view/Surface;

.field final mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

.field private final mTaskBounds:Landroid/graphics/Rect;

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/TaskSnapshotSurface;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/wm/TaskSnapshotSurface;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mHasDrawn:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/TaskSnapshotSurface;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/wm/TaskSnapshotSurface;

    .prologue
    iget v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mOrientationOnCreation:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/TaskSnapshotSurface;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/wm/TaskSnapshotSurface;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic -get3()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/android/server/wm/TaskSnapshotSurface;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/TaskSnapshotSurface;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/wm/TaskSnapshotSurface;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->reportDrawn()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 421
    new-instance v0, Lcom/android/server/wm/TaskSnapshotSurface$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskSnapshotSurface$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/wm/TaskSnapshotSurface;->sHandler:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotSurface$Window;Landroid/view/Surface;Landroid/app/ActivityManager$TaskSnapshot;Ljava/lang/CharSequence;IIIIIILandroid/graphics/Rect;I)V
    .locals 7
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "window"    # Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .param p3, "surface"    # Landroid/view/Surface;
    .param p4, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;
    .param p5, "title"    # Ljava/lang/CharSequence;
    .param p6, "backgroundColor"    # I
    .param p7, "statusBarColor"    # I
    .param p8, "navigationBarColor"    # I
    .param p9, "sysUiVis"    # I
    .param p10, "windowFlags"    # I
    .param p11, "windowPrivateFlags"    # I
    .param p12, "taskBounds"    # Landroid/graphics/Rect;
    .param p13, "currentOrientation"    # I

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mStableInsets:Landroid/graphics/Rect;

    .line 117
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mContentInsets:Landroid/graphics/Rect;

    .line 118
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    .line 125
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 244
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 245
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mHandler:Landroid/os/Handler;

    .line 246
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSession:Landroid/view/IWindowSession;

    .line 247
    iput-object p2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;

    .line 248
    iput-object p3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    .line 249
    iput-object p4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 250
    iput-object p5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTitle:Ljava/lang/CharSequence;

    .line 251
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    if-eqz p6, :cond_0

    .end local p6    # "backgroundColor":I
    :goto_0
    invoke-virtual {v1, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTaskBounds:Landroid/graphics/Rect;

    .line 253
    new-instance v1, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    move/from16 v2, p10

    move/from16 v3, p11

    move/from16 v4, p9

    move v5, p7

    move v6, p8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;-><init>(IIIII)V

    iput-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    .line 255
    iput p7, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mStatusBarColor:I

    .line 256
    move/from16 v0, p13

    iput v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mOrientationOnCreation:I

    .line 257
    return-void

    .line 251
    .restart local p6    # "backgroundColor":I
    :cond_0
    const/4 p6, -0x1

    goto :goto_0
.end method

.method static create(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AppWindowToken;Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/server/wm/TaskSnapshotSurface;
    .locals 48
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .prologue
    .line 133
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v6}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 134
    .local v6, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    new-instance v4, Lcom/android/server/wm/TaskSnapshotSurface$Window;

    invoke-direct {v4}, Lcom/android/server/wm/TaskSnapshotSurface$Window;-><init>()V

    .line 135
    .local v4, "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v3

    .line 136
    .local v3, "session":Landroid/view/IWindowSession;
    invoke-virtual {v4, v3}, Lcom/android/server/wm/TaskSnapshotSurface$Window;->setSession(Landroid/view/IWindowSession;)V

    .line 137
    new-instance v13, Landroid/view/Surface;

    invoke-direct {v13}, Landroid/view/Surface;-><init>()V

    .line 138
    .local v13, "surface":Landroid/view/Surface;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 139
    .local v9, "tmpRect":Landroid/graphics/Rect;
    new-instance v32, Landroid/graphics/Rect;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Rect;-><init>()V

    .line 141
    .local v32, "tmpFrame":Landroid/graphics/Rect;
    new-instance v34, Landroid/graphics/Rect;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/Rect;-><init>()V

    .line 142
    .local v34, "tmpContentInsets":Landroid/graphics/Rect;
    new-instance v36, Landroid/graphics/Rect;

    invoke-direct/range {v36 .. v36}, Landroid/graphics/Rect;-><init>()V

    .line 143
    .local v36, "tmpStableInsets":Landroid/graphics/Rect;
    new-instance v39, Landroid/util/MergedConfiguration;

    invoke-direct/range {v39 .. v39}, Landroid/util/MergedConfiguration;-><init>()V

    .line 144
    .local v39, "tmpMergedConfiguration":Landroid/util/MergedConfiguration;
    const/16 v16, -0x1

    .line 145
    .local v16, "backgroundColor":I
    const/16 v17, 0x0

    .line 146
    .local v17, "statusBarColor":I
    const/16 v18, 0x0

    .line 151
    .local v18, "navigationBarColor":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v42

    .line 153
    .local v42, "mainWindow":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v44

    .line 154
    .local v44, "task":Lcom/android/server/wm/Task;
    if-nez v44, :cond_0

    .line 155
    sget-object v5, Lcom/android/server/wm/TaskSnapshotSurface;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "TaskSnapshotSurface.create: Failed to find task for token="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    const/4 v5, 0x0

    monitor-exit v7

    .line 151
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 157
    return-object v5

    .line 159
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getTopFullscreenAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v46

    .line 160
    .local v46, "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    if-nez v46, :cond_1

    .line 161
    sget-object v5, Lcom/android/server/wm/TaskSnapshotSurface;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "TaskSnapshotSurface.create: Failed to find top fullscreen for task="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    const/4 v5, 0x0

    monitor-exit v7

    .line 151
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 163
    return-object v5

    .line 165
    :cond_1
    :try_start_2
    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wm/AppWindowToken;->getTopFullscreenWindow()Lcom/android/server/wm/WindowState;

    move-result-object v47

    .line 166
    .local v47, "topFullscreenWindow":Lcom/android/server/wm/WindowState;
    if-eqz v42, :cond_2

    if-nez v47, :cond_3

    .line 167
    :cond_2
    sget-object v5, Lcom/android/server/wm/TaskSnapshotSurface;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "TaskSnapshotSurface.create: Failed to find main window for token="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    const/4 v5, 0x0

    monitor-exit v7

    .line 151
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 169
    return-object v5

    .line 171
    :cond_3
    :try_start_3
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v19

    .line 172
    .local v19, "sysUiVis":I
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v20, v0

    .line 173
    .local v20, "windowFlags":I
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v21, v0

    .line 175
    .local v21, "windowPrivateFlags":I
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 176
    const/4 v5, 0x3

    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getFormat()I

    move-result v5

    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 178
    const v5, -0x3186e039

    and-int v5, v5, v20

    or-int/lit8 v5, v5, 0x8

    or-int/lit8 v5, v5, 0x10

    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 181
    const/high16 v5, 0x20000

    and-int v5, v5, v21

    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 182
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    iput-object v5, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 183
    const/4 v5, -0x1

    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 184
    const/4 v5, -0x1

    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 185
    move/from16 v0, v19

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 186
    const-string/jumbo v5, "SnapshotStartingWindow for taskId=%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object/from16 v0, v44

    iget v11, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v8, v12

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v45

    .line 189
    .local v45, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    if-eqz v45, :cond_4

    .line 190
    invoke-virtual/range {v45 .. v45}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v16

    .line 191
    invoke-virtual/range {v45 .. v45}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v17

    .line 192
    invoke-virtual/range {v45 .. v45}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v18

    .line 194
    :cond_4
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 195
    .local v22, "taskBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v44

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 196
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v0, v5, Landroid/content/res/Configuration;->orientation:I

    move/from16 v23, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v23, "currentOrientation":I
    monitor-exit v7

    .line 151
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 199
    :try_start_4
    iget v5, v4, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mSeq:I

    .line 200
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v8

    const/4 v7, 0x0

    .line 201
    const/4 v12, 0x0

    move-object v10, v9

    move-object v11, v9

    .line 199
    invoke-interface/range {v3 .. v12}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v43

    .line 202
    .local v43, "res":I
    if-gez v43, :cond_5

    .line 203
    sget-object v5, Lcom/android/server/wm/TaskSnapshotSurface;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to add snapshot starting window res="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v43

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 204
    const/4 v5, 0x0

    return-object v5

    .line 151
    .end local v19    # "sysUiVis":I
    .end local v20    # "windowFlags":I
    .end local v21    # "windowPrivateFlags":I
    .end local v22    # "taskBounds":Landroid/graphics/Rect;
    .end local v23    # "currentOrientation":I
    .end local v42    # "mainWindow":Lcom/android/server/wm/WindowState;
    .end local v43    # "res":I
    .end local v44    # "task":Lcom/android/server/wm/Task;
    .end local v45    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v46    # "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    .end local v47    # "topFullscreenWindow":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v5

    monitor-exit v7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    .line 206
    .restart local v19    # "sysUiVis":I
    .restart local v20    # "windowFlags":I
    .restart local v21    # "windowPrivateFlags":I
    .restart local v22    # "taskBounds":Landroid/graphics/Rect;
    .restart local v23    # "currentOrientation":I
    .restart local v42    # "mainWindow":Lcom/android/server/wm/WindowState;
    .restart local v44    # "task":Lcom/android/server/wm/Task;
    .restart local v45    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v46    # "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v47    # "topFullscreenWindow":Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v41

    .line 209
    :cond_5
    new-instance v10, Lcom/android/server/wm/TaskSnapshotSurface;

    .line 210
    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v11, p0

    move-object v12, v4

    move-object/from16 v14, p2

    .line 209
    invoke-direct/range {v10 .. v23}, Lcom/android/server/wm/TaskSnapshotSurface;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotSurface$Window;Landroid/view/Surface;Landroid/app/ActivityManager$TaskSnapshot;Ljava/lang/CharSequence;IIIIIILandroid/graphics/Rect;I)V

    .line 213
    .local v10, "snapshotSurface":Lcom/android/server/wm/TaskSnapshotSurface;
    invoke-virtual {v4, v10}, Lcom/android/server/wm/TaskSnapshotSurface$Window;->setOuter(Lcom/android/server/wm/TaskSnapshotSurface;)V

    .line 223
    :try_start_5
    iget v0, v4, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mSeq:I

    move/from16 v26, v0

    const/16 v28, -0x1

    const/16 v29, -0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v27, v6

    move-object/from16 v33, v9

    move-object/from16 v35, v9

    move-object/from16 v37, v9

    move-object/from16 v38, v9

    move-object/from16 v40, v13

    invoke-interface/range {v24 .. v40}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/MergedConfiguration;Landroid/view/Surface;)I

    move-result v43

    .line 226
    .restart local v43    # "res":I
    if-nez v43, :cond_6

    .line 227
    sget-object v5, Lcom/android/server/wm/TaskSnapshotSurface;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to relayout snapshot starting window res="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v43

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 228
    const/4 v5, 0x0

    return-object v5

    .line 231
    .end local v43    # "res":I
    :catch_1
    move-exception v41

    .line 234
    :cond_6
    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    invoke-virtual {v10, v0, v1, v2}, Lcom/android/server/wm/TaskSnapshotSurface;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 235
    invoke-direct {v10}, Lcom/android/server/wm/TaskSnapshotSurface;->drawSnapshot()V

    .line 236
    return-object v10
.end method

.method private drawSizeMatchSnapshot(Landroid/graphics/GraphicBuffer;)V
    .locals 1
    .param p1, "buffer"    # Landroid/graphics/GraphicBuffer;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    .line 313
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 314
    return-void
.end method

.method private drawSizeMismatchSnapshot(Landroid/graphics/GraphicBuffer;)V
    .locals 12
    .param p1, "buffer"    # Landroid/graphics/GraphicBuffer;

    .prologue
    .line 317
    new-instance v1, Landroid/view/SurfaceSession;

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/SurfaceSession;-><init>(Landroid/view/Surface;)V

    .line 320
    .local v1, "session":Landroid/view/SurfaceSession;
    new-instance v0, Landroid/view/SurfaceControl;

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - task-snapshot-surface"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 322
    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getFormat()I

    move-result v5

    const/4 v6, 0x4

    .line 320
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    .line 323
    new-instance v11, Landroid/view/Surface;

    invoke-direct {v11}, Landroid/view/Surface;-><init>()V

    .line 324
    .local v11, "surface":Landroid/view/Surface;
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v11, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 327
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->calculateSnapshotCrop()Landroid/graphics/Rect;

    move-result-object v8

    .line 328
    .local v8, "crop":Landroid/graphics/Rect;
    invoke-virtual {p0, v8}, Lcom/android/server/wm/TaskSnapshotSurface;->calculateSnapshotFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    .line 329
    .local v9, "frame":Landroid/graphics/Rect;
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 334
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v8}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 335
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, v9, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v9, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 338
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v10, v2, v0

    .line 339
    .local v10, "scale":F
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v10, v2, v3, v10}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 343
    invoke-virtual {v11, p1}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    .line 344
    invoke-virtual {v11}, Landroid/view/Surface;->release()V

    .line 346
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v7

    .line 347
    .local v7, "c":Landroid/graphics/Canvas;
    invoke-virtual {p0, v7, v9}, Lcom/android/server/wm/TaskSnapshotSurface;->drawBackgroundAndBars(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v7}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 349
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 350
    return-void

    .line 340
    .end local v7    # "c":Landroid/graphics/Canvas;
    .end local v10    # "scale":F
    :catchall_0
    move-exception v0

    .line 341
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 340
    throw v0
.end method

.method private drawSnapshot()V
    .locals 6

    .prologue
    .line 290
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 291
    .local v0, "buffer":Landroid/graphics/GraphicBuffer;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/TaskSnapshotSurface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Drawing snapshot surface sizeMismatch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 292
    iget-boolean v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    .line 291
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    if-eqz v1, :cond_1

    .line 297
    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotSurface;->drawSizeMismatchSnapshot(Landroid/graphics/GraphicBuffer;)V

    .line 301
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 302
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    .line 303
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mHasDrawn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 301
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 305
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->reportDrawn()V

    .line 308
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 309
    return-void

    .line 299
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotSurface;->drawSizeMatchSnapshot(Landroid/graphics/GraphicBuffer;)V

    goto :goto_0

    .line 301
    :catchall_0
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private reportDrawn()V
    .locals 3

    .prologue
    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_0
    return-void

    .line 416
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method synthetic -com_android_server_wm_TaskSnapshotSurface-mthref-0()V
    .locals 0

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->remove()V

    return-void
.end method

.method calculateSnapshotCrop()Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 359
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 360
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 361
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v0

    .line 365
    .local v0, "insets":Landroid/graphics/Rect;
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 366
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTaskBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-eqz v4, :cond_0

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 367
    :cond_0
    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 368
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v6}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 365
    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/graphics/Rect;->inset(IIII)V

    .line 369
    return-object v1
.end method

.method calculateSnapshotFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 379
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 380
    .local v1, "frame":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v2

    .line 383
    .local v2, "scale":F
    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->scale(F)V

    .line 386
    iget v3, p1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 389
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mStableInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 390
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mContentInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 389
    invoke-static {v3, v4}, Lcom/android/internal/policy/DecorView;->getColorViewLeftInset(II)I

    move-result v0

    .line 391
    .local v0, "colorViewLeftInset":I
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 392
    return-object v1
.end method

.method drawBackgroundAndBars(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->getStatusBarColorViewHeight()I

    move-result v8

    .line 398
    .local v8, "statusBarHeight":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_2

    const/4 v6, 0x1

    .line 399
    .local v6, "fillHorizontally":Z
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_3

    const/4 v7, 0x1

    .line 400
    .local v7, "fillVertically":Z
    :goto_1
    if-eqz v6, :cond_0

    .line 401
    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mStatusBarColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v2, 0xff

    if-ne v0, v2, :cond_4

    .end local v8    # "statusBarHeight":I
    :goto_2
    int-to-float v2, v8

    .line 402
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    if-eqz v7, :cond_5

    .line 403
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 402
    :goto_3
    int-to-float v4, v0

    .line 405
    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 401
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 407
    :cond_0
    if-eqz v7, :cond_1

    .line 408
    const/4 v1, 0x0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 411
    return-void

    .line 398
    .end local v6    # "fillHorizontally":Z
    .end local v7    # "fillVertically":Z
    .restart local v8    # "statusBarHeight":I
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "fillHorizontally":Z
    goto :goto_0

    .line 399
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "fillVertically":Z
    goto :goto_1

    .line 401
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 404
    .end local v8    # "statusBarHeight":I
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    goto :goto_3
.end method

.method public remove()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1c2

    .line 261
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 262
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 263
    .local v2, "now":J
    iget-boolean v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    if-eqz v1, :cond_1

    iget-wide v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    sub-long v6, v2, v6

    cmp-long v1, v6, v8

    if-gez v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/wm/-$Lambda$aEpJ2RCAIjecjyIIYTv6ricEwh4;

    const/16 v6, 0x9

    invoke-direct {v5, v6, p0}, Lcom/android/server/wm/-$Lambda$aEpJ2RCAIjecjyIIYTv6ricEwh4;-><init>(BLjava/lang/Object;)V

    iget-wide v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    add-long/2addr v6, v8

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 265
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v1, :cond_0

    .line 266
    sget-object v1, Lcom/android/server/wm/TaskSnapshotSurface;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Defer removing snapshot surface in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    .line 261
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 268
    return-void

    :cond_1
    monitor-exit v4

    .line 261
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 272
    :try_start_1
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/wm/TaskSnapshotSurface;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Removing snapshot surface"

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;

    invoke-interface {v1, v4}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 277
    :goto_0
    return-void

    .line 261
    .end local v2    # "now":J
    :catchall_0
    move-exception v1

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 274
    .restart local v2    # "now":J
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;
    .param p3, "stableInsets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x1

    .line 281
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 282
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 283
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 284
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 284
    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    .line 286
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 287
    return-void

    .line 285
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
