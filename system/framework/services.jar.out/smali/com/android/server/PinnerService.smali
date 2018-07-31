.class public final Lcom/android/server/PinnerService;
.super Lcom/android/server/SystemService;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PinnerService$1;,
        Lcom/android/server/PinnerService$BinderService;,
        Lcom/android/server/PinnerService$PinnedFile;,
        Lcom/android/server/PinnerService$PinnerHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PinnerService"


# instance fields
.field private final MAX_CAMERA_PIN_SIZE:J

.field private mBinderService:Lcom/android/server/PinnerService$BinderService;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mPinnedCameraFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/PinnerService$PinnedFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mPinnedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/PinnerService$PinnedFile;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

.field private final mShouldPinCamera:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/PinnerService;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/PinnerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/PinnerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/PinnerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/PinnerService;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/PinnerService;
    .param p1, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->handlePinCamera(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/PinnerService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/PinnerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/PinnerService;->handlePinOnStart()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    .line 71
    const-wide/32 v2, 0x5000000

    iput-wide v2, p0, Lcom/android/server/PinnerService;->MAX_CAMERA_PIN_SIZE:J

    .line 73
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 75
    new-instance v1, Lcom/android/server/PinnerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/PinnerService$1;-><init>(Lcom/android/server/PinnerService;)V

    iput-object v1, p0, Lcom/android/server/PinnerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    iput-object p1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 94
    const v2, 0x1120087

    .line 93
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PinnerService;->mShouldPinCamera:Z

    .line 95
    new-instance v1, Lcom/android/server/PinnerService$PinnerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/PinnerService$PinnerHandler;-><init>(Lcom/android/server/PinnerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/PinnerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    return-void
.end method

.method private alreadyPinned(I)Z
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 187
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->getCameraInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 188
    .local v0, "cameraInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 189
    return v4

    .line 191
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 192
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PinnerService$PinnedFile;

    iget-object v2, v2, Lcom/android/server/PinnerService$PinnedFile;->mFilename:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    const/4 v2, 0x1

    return v2

    .line 191
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_2
    return v4
.end method

.method private getCameraInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 217
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "cameraIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 220
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/high16 v3, 0xd0000

    .line 219
    invoke-virtual {v2, v0, v3, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 223
    .local v1, "cameraResolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_0

    .line 228
    return-object v4

    .line 231
    :cond_0
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v3}, Lcom/android/server/PinnerService;->isResolverActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    return-object v4

    .line 239
    :cond_1
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v3
.end method

.method private handlePinCamera(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 169
    iget-boolean v1, p0, Lcom/android/server/PinnerService;->mShouldPinCamera:Z

    if-eqz v1, :cond_0

    .line 170
    monitor-enter p0

    .line 171
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->pinCamera(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "success":Z
    monitor-exit p0

    .line 180
    .end local v0    # "success":Z
    :cond_0
    return-void

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private handlePinOnStart()V
    .locals 10

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 148
    const v2, 0x1070021

    .line 147
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "filesToPin":[Ljava/lang/String;
    monitor-enter p0

    .line 151
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    :try_start_0
    array-length v1, v0

    if-ge v8, v1, :cond_1

    .line 152
    aget-object v1, v0, v8

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;JJJ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v9

    .line 153
    .local v9, "pf":Lcom/android/server/PinnerService$PinnedFile;
    if-eqz v9, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 159
    :cond_0
    const-string/jumbo v1, "PinnerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to pin file = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 149
    .end local v9    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    monitor-exit p0

    .line 163
    return-void
.end method

.method private isResolverActivity(Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 210
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private pinCamera(I)Z
    .locals 18
    .param p1, "userHandle"    # I

    .prologue
    .line 246
    invoke-direct/range {p0 .. p1}, Lcom/android/server/PinnerService;->getCameraInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    .line 247
    .local v13, "cameraInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v13, :cond_0

    .line 248
    const/4 v4, 0x0

    return v4

    .line 254
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PinnerService;->unpinCameraApp()V

    .line 257
    iget-object v3, v13, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 258
    .local v3, "camAPK":Ljava/lang/String;
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/32 v8, 0x5000000

    invoke-static/range {v3 .. v9}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;JJJ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v16

    .line 259
    .local v16, "pf":Lcom/android/server/PinnerService$PinnedFile;
    if-nez v16, :cond_1

    .line 260
    const-string/jumbo v4, "PinnerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to pin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v4, 0x0

    return v4

    .line 266
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    const-string/jumbo v2, "arm"

    .line 270
    .local v2, "arch":Ljava/lang/String;
    iget-object v4, v13, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 271
    iget-object v4, v13, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v4}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "64"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 281
    :cond_2
    :goto_0
    invoke-virtual {v13}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v12

    .line 282
    .local v12, "baseCodePath":Ljava/lang/String;
    const/4 v14, 0x0

    .line 284
    .local v14, "files":[Ljava/lang/String;
    :try_start_0
    invoke-static {v12, v2}, Ldalvik/system/DexFile;->getDexFileOutputPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 286
    .end local v14    # "files":[Ljava/lang/String;
    :goto_1
    if-nez v14, :cond_4

    .line 287
    const/4 v4, 0x1

    return v4

    .line 275
    .end local v12    # "baseCodePath":Ljava/lang/String;
    :cond_3
    sget-object v4, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-static {v4}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "64"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 285
    .restart local v12    # "baseCodePath":Ljava/lang/String;
    .restart local v14    # "files":[Ljava/lang/String;
    :catch_0
    move-exception v15

    .local v15, "ioe":Ljava/io/IOException;
    goto :goto_1

    .line 291
    .end local v14    # "files":[Ljava/lang/String;
    .end local v15    # "ioe":Ljava/io/IOException;
    :cond_4
    const/4 v4, 0x0

    array-length v0, v14

    move/from16 v17, v0

    :goto_2
    move/from16 v0, v17

    if-ge v4, v0, :cond_6

    aget-object v5, v14, v4

    .line 292
    .local v5, "file":Ljava/lang/String;
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/32 v10, 0x5000000

    invoke-static/range {v5 .. v11}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;JJJ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v16

    .line 293
    if-eqz v16, :cond_5

    .line 294
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 301
    .end local v5    # "file":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x1

    return v4
.end method

.method private static pinFile(Ljava/lang/String;JJJ)Lcom/android/server/PinnerService$PinnedFile;
    .locals 19
    .param p0, "fileToPin"    # Ljava/lang/String;
    .param p1, "offset"    # J
    .param p3, "length"    # J
    .param p5, "maxSize"    # J

    .prologue
    .line 310
    new-instance v8, Ljava/io/FileDescriptor;

    invoke-direct {v8}, Ljava/io/FileDescriptor;-><init>()V

    .line 313
    .local v8, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    sget v3, Landroid/system/OsConstants;->O_CLOEXEC:I

    or-int/2addr v2, v3

    sget v3, Landroid/system/OsConstants;->O_NOFOLLOW:I

    or-int/2addr v2, v3

    .line 314
    sget v3, Landroid/system/OsConstants;->O_RDONLY:I

    .line 312
    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v8

    .line 316
    invoke-static {v8}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v17

    .line 318
    .local v17, "sb":Landroid/system/StructStat;
    add-long v2, p1, p3

    move-object/from16 v0, v17

    iget-wide v4, v0, Landroid/system/StructStat;->st_size:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 319
    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 320
    const-string/jumbo v2, "PinnerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to pin file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 321
    const-string/jumbo v4, ", request extends beyond end of file.  offset + length =  "

    .line 320
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 322
    add-long v4, p1, p3

    .line 320
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 322
    const-string/jumbo v4, ", file length = "

    .line 320
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 322
    move-object/from16 v0, v17

    iget-wide v4, v0, Landroid/system/StructStat;->st_size:J

    .line 320
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v2, 0x0

    return-object v2

    .line 326
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_1

    .line 327
    move-object/from16 v0, v17

    iget-wide v2, v0, Landroid/system/StructStat;->st_size:J

    sub-long p3, v2, p1

    .line 330
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-lez v2, :cond_2

    cmp-long v2, p3, p5

    if-lez v2, :cond_2

    .line 331
    const-string/jumbo v2, "PinnerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not pin file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 332
    const-string/jumbo v4, ", size = "

    .line 331
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 332
    const-string/jumbo v4, ", maxSize = "

    .line 331
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 334
    const/4 v2, 0x0

    return-object v2

    .line 337
    :cond_2
    const-wide/16 v2, 0x0

    sget v6, Landroid/system/OsConstants;->PROT_READ:I

    .line 338
    sget v7, Landroid/system/OsConstants;->MAP_PRIVATE:I

    move-wide/from16 v4, p3

    move-wide/from16 v9, p1

    .line 337
    invoke-static/range {v2 .. v10}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v10

    .line 339
    .local v10, "address":J
    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 341
    move-wide/from16 v0, p3

    invoke-static {v10, v11, v0, v1}, Landroid/system/Os;->mlock(JJ)V

    .line 343
    new-instance v9, Lcom/android/server/PinnerService$PinnedFile;

    move-wide/from16 v12, p3

    move-object/from16 v14, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/server/PinnerService$PinnedFile;-><init>(JJLjava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    .line 344
    .end local v10    # "address":J
    .end local v17    # "sb":Landroid/system/StructStat;
    :catch_0
    move-exception v15

    .line 345
    .local v15, "e":Landroid/system/ErrnoException;
    const-string/jumbo v2, "PinnerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not pin file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {v8}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 348
    :try_start_1
    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 354
    :cond_3
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 350
    :catch_1
    move-exception v16

    .line 351
    .local v16, "eClose":Landroid/system/ErrnoException;
    const-string/jumbo v2, "PinnerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to close fd, error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unpinCameraApp()V
    .locals 2

    .prologue
    .line 203
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PinnerService$PinnedFile;

    invoke-static {v1}, Lcom/android/server/PinnerService;->unpinFile(Lcom/android/server/PinnerService$PinnedFile;)Z

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 207
    return-void
.end method

.method private static unpinFile(Lcom/android/server/PinnerService$PinnedFile;)Z
    .locals 6
    .param p0, "pf"    # Lcom/android/server/PinnerService$PinnedFile;

    .prologue
    .line 360
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/PinnerService$PinnedFile;->mAddress:J

    iget-wide v4, p0, Lcom/android/server/PinnerService$PinnedFile;->mLength:J

    invoke-static {v2, v3, v4, v5}, Landroid/system/Os;->munlock(JJ)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    const/4 v1, 0x1

    return v1

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Landroid/system/ErrnoException;
    const-string/jumbo v1, "PinnerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to unpin file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PinnerService$PinnedFile;->mFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    new-instance v0, Lcom/android/server/PinnerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/PinnerService$BinderService;-><init>(Lcom/android/server/PinnerService;Lcom/android/server/PinnerService$BinderService;)V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mBinderService:Lcom/android/server/PinnerService$BinderService;

    .line 109
    const-string/jumbo v0, "pinner"

    iget-object v1, p0, Lcom/android/server/PinnerService;->mBinderService:Lcom/android/server/PinnerService$BinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PinnerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 110
    const-class v0, Lcom/android/server/PinnerService;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/PinnerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    const/16 v1, 0xfa1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/PinnerService$PinnerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 115
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    const/16 v1, 0xfa0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/PinnerService$PinnerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 126
    return-void
.end method

.method public update(Landroid/util/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 134
    invoke-direct {p0, v3}, Lcom/android/server/PinnerService;->getCameraInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 135
    .local v0, "cameraInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const-string/jumbo v1, "PinnerService"

    const-string/jumbo v2, "Updating pinned files."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    const/16 v2, 0xfa0

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/server/PinnerService$PinnerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 140
    :cond_0
    return-void
.end method
