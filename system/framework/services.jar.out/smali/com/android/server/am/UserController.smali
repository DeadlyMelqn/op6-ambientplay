.class final Lcom/android/server/am/UserController;
.super Ljava/lang/Object;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UserController$Injector;
    }
.end annotation


# static fields
.field static final MAX_RUNNING_USERS:I = 0x3

.field private static final OEM_ACTION_BOOT_COMPLETED:Ljava/lang/String; = "com.oem.intent.action.BOOT_COMPLETED"

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final USER_SWITCH_TIMEOUT:I = 0xbb8


# instance fields
.field private volatile mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentProfileIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private volatile mCurrentUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/am/UserController$Injector;

.field private final mLock:Ljava/lang/Object;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private mStartedUserArray:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mStartedUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mTargetUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mUserLru:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mUserManager:Lcom/android/server/pm/UserManagerService;

.field private final mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

.field private final mUserSwitchObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IUserSwitchObserver;",
            ">;"
        }
    .end annotation
.end field

.field mUserSwitchUiEnabled:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/UserController;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/UserController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/UserController;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/UserController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/UserController;)Lcom/android/server/am/UserController$Injector;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/UserController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/am/UserController;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/UserController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 196
    new-instance v0, Lcom/android/server/am/UserController$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/am/UserController$Injector;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;-><init>(Lcom/android/server/am/UserController$Injector;)V

    .line 199
    iput-object p1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 201
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/UserController$Injector;)V
    .locals 4
    .param p1, "injector"    # Lcom/android/server/am/UserController$Injector;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 137
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 143
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 155
    new-array v1, v3, [I

    aput v2, v1, v2

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 160
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 165
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    .line 171
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 170
    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 173
    iput-boolean v3, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 205
    iput-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 206
    invoke-virtual {p1}, Lcom/android/server/am/UserController$Injector;->getLock()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 207
    invoke-virtual {p1}, Lcom/android/server/am/UserController$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 209
    new-instance v0, Lcom/android/server/am/UserState;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-direct {v0, v1}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .line 210
    .local v0, "uss":Lcom/android/server/am/UserState;
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 213
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    .line 214
    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;)V
    .locals 1
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    .line 264
    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V
    .locals 22
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "resultTo"    # Landroid/content/IIntentReceiver;

    .prologue
    .line 281
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    .line 283
    .local v16, "userId":I
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Finishing user boot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 286
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_0

    monitor-exit v21

    return-void

    .line 292
    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x1

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, v16

    invoke-virtual {v2, v0, v4}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 295
    if-nez v16, :cond_1

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->isRuntimeRestarted()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 295
    if-eqz v2, :cond_1

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->isFirstBootOrUpgrade()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 295
    if-eqz v2, :cond_1

    .line 297
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v0, v4

    move/from16 v20, v0

    .line 298
    .local v20, "uptimeSeconds":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 299
    const-string/jumbo v4, "framework_locked_boot_completed"

    .line 298
    move/from16 v0, v20

    invoke-static {v2, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 300
    const/16 v17, 0x78

    .line 301
    .local v17, "MAX_UPTIME_SECONDS":I
    const/16 v2, 0x78

    move/from16 v0, v20

    if-le v0, v2, :cond_1

    .line 302
    const-string/jumbo v2, "SystemServerTiming"

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "finishUserBoot took too long. uptimeSeconds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 302
    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .end local v17    # "MAX_UPTIME_SECONDS":I
    .end local v20    # "uptimeSeconds":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x40

    .line 308
    const/4 v6, 0x0

    .line 307
    move/from16 v0, v16

    invoke-virtual {v4, v5, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 309
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 310
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, v16

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    const/high16 v2, 0x9000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 314
    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/String;

    const-string/jumbo v4, "android.permission.RECEIVE_BOOT_COMPLETED"

    const/4 v5, 0x0

    aput-object v4, v9, v5

    .line 315
    sget v14, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 313
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 315
    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v15, 0x3e8

    move-object/from16 v5, p2

    .line 313
    invoke-virtual/range {v2 .. v16}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 320
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->isManagedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v18

    .line 322
    .local v18, "parent":Landroid/content/pm/UserInfo;
    if-eqz v18, :cond_3

    .line 323
    move-object/from16 v0, v18

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/UserController;->isUserRunningLocked(II)Z

    move-result v2

    .line 322
    if-eqz v2, :cond_3

    .line 324
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (parent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 325
    const-string/jumbo v5, "): attempting unlock because parent is unlocked"

    .line 324
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v18    # "parent":Landroid/content/pm/UserInfo;
    :goto_0
    monitor-exit v21

    .line 336
    return-void

    .line 328
    .restart local v18    # "parent":Landroid/content/pm/UserInfo;
    :cond_3
    if-nez v18, :cond_4

    :try_start_2
    const-string/jumbo v19, "<null>"

    .line 329
    .local v19, "parentId":Ljava/lang/String;
    :goto_1
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (parent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 330
    const-string/jumbo v5, "): delaying unlock because parent is locked"

    .line 329
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 284
    .end local v18    # "parent":Landroid/content/pm/UserInfo;
    .end local v19    # "parentId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v21

    throw v2

    .line 328
    .restart local v18    # "parent":Landroid/content/pm/UserInfo;
    :cond_4
    :try_start_3
    move-object/from16 v0, v18

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "parentId":Ljava/lang/String;
    goto :goto_1

    .line 333
    .end local v18    # "parent":Landroid/content/pm/UserInfo;
    .end local v19    # "parentId":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
    .locals 39
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 441
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 442
    .local v18, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    move-object/from16 v38, v0

    monitor-enter v38

    .line 444
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object/from16 v0, p1

    if-eq v4, v0, :cond_0

    monitor-exit v38

    return-void

    .line 445
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v37

    .line 446
    .local v37, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v37, :cond_1

    monitor-exit v38

    .line 447
    return-void

    .line 451
    :cond_1
    :try_start_2
    invoke-static/range {v18 .. v18}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    monitor-exit v38

    return-void

    .line 454
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/server/pm/UserManagerService;->onUserLoggedIn(I)V

    .line 456
    invoke-virtual/range {v37 .. v37}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_3

    .line 457
    if-eqz v18, :cond_3

    .line 458
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Initializing user #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.USER_INITIALIZE"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v4, 0x11000000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 462
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 463
    new-instance v7, Lcom/android/server/am/UserController$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v7, v0, v1}, Lcom/android/server/am/UserController$1;-><init>(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;)V

    .line 472
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 462
    const/4 v6, 0x0

    .line 471
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 472
    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    .line 462
    invoke-virtual/range {v4 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 478
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_3
    const/16 v4, 0x3e7

    move/from16 v0, v18

    if-ne v0, v4, :cond_4

    .line 479
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "finishUserUnlockedCompleted skip for user #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v38

    .line 480
    return-void

    .line 484
    :cond_4
    :try_start_4
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Sending BOOT_COMPLETE user #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    if-nez v18, :cond_5

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->isRuntimeRestarted()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 486
    if-eqz v4, :cond_5

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->isFirstBootOrUpgrade()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 486
    if-eqz v4, :cond_5

    .line 488
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v0, v6

    move/from16 v36, v0

    .line 489
    .local v36, "uptimeSeconds":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v6, "framework_boot_completed"

    move/from16 v0, v36

    invoke-static {v4, v6, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 492
    .end local v36    # "uptimeSeconds":I
    :cond_5
    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.BOOT_COMPLETED"

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 493
    .local v20, "bootIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.extra.user_handle"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    const/high16 v4, 0x9000000

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move-object/from16 v19, v0

    new-instance v22, Lcom/android/server/am/UserController$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/UserController$2;-><init>(Lcom/android/server/am/UserController;I)V

    .line 504
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v4, "android.permission.RECEIVE_BOOT_COMPLETED"

    const/4 v6, 0x0

    aput-object v4, v26, v6

    .line 505
    sget v31, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 496
    const/16 v21, 0x0

    .line 503
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 505
    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v32, 0x3e8

    move/from16 v33, v18

    .line 496
    invoke-virtual/range {v19 .. v33}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 509
    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v4, "com.oem.intent.action.BOOT_COMPLETED"

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 510
    .local v22, "oemBootIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.extra.user_handle"

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 511
    const/high16 v4, 0x19000000

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move-object/from16 v21, v0

    .line 515
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v28, v0

    const-string/jumbo v4, "android.permission.RECEIVE_BOOT_COMPLETED"

    const/4 v6, 0x0

    aput-object v4, v28, v6

    .line 516
    sget v33, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 514
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 516
    const/16 v29, -0x1

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v34, 0x3e8

    move/from16 v35, v18

    .line 514
    invoke-virtual/range {v21 .. v35}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v38

    .line 519
    return-void

    .line 442
    .end local v20    # "bootIntent":Landroid/content/Intent;
    .end local v22    # "oemBootIntent":Landroid/content/Intent;
    .end local v37    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v4

    monitor-exit v38

    throw v4
.end method

.method private finishUserUnlocking(Lcom/android/server/am/UserState;)V
    .locals 5
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 343
    iget-object v2, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 344
    .local v1, "userId":I
    const/4 v0, 0x0

    .line 345
    .local v0, "proceedWithUnlock":Z
    iget-object v3, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 347
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    iget-object v4, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eq v2, p1, :cond_0

    monitor-exit v3

    return-void

    .line 350
    :cond_0
    :try_start_1
    invoke-static {v1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v3

    return-void

    .line 352
    :cond_1
    const/4 v2, 0x1

    const/4 v4, 0x2

    :try_start_2
    invoke-virtual {p1, v2, v4}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 353
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    iget v4, p1, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v2, v1, v4}, Landroid/os/UserManagerInternal;->setUserState(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 354
    const/4 v0, 0x1

    :cond_2
    monitor-exit v3

    .line 358
    if-eqz v0, :cond_3

    .line 359
    iget-object v2, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v2}, Lcom/android/internal/util/ProgressReporter;->start()V

    .line 362
    iget-object v2, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    .line 363
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040079

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 362
    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/ProgressReporter;->setProgress(ILjava/lang/CharSequence;)V

    .line 364
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/UserManagerService;->onBeforeUnlockUser(I)V

    .line 365
    iget-object v2, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/android/internal/util/ProgressReporter;->setProgress(I)V

    .line 369
    iget-object v2, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 372
    :cond_3
    return-void

    .line 345
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private forceStopUserLocked(ILjava/lang/String;)V
    .locals 17
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/UserController$Injector;->activityManagerForceStopPackageLocked(ILjava/lang/String;)V

    .line 780
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_STOPPED"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 781
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v2, 0x50000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 783
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 784
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 786
    sget v14, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 785
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 786
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v15, 0x3e8

    const/16 v16, -0x1

    .line 784
    invoke-virtual/range {v2 .. v16}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 787
    return-void
.end method

.method private getStorageManager()Landroid/os/storage/IStorageManager;
    .locals 1

    .prologue
    .line 839
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    return-object v0
.end method

.method private getUsersToStopLocked(I)[I
    .locals 13
    .param p1, "userId"    # I

    .prologue
    const/16 v12, -0x2710

    .line 753
    iget-object v9, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 754
    .local v5, "startedUsersSize":I
    new-instance v7, Landroid/util/IntArray;

    invoke-direct {v7}, Landroid/util/IntArray;-><init>()V

    .line 755
    .local v7, "userIds":Landroid/util/IntArray;
    invoke-virtual {v7, p1}, Landroid/util/IntArray;->add(I)V

    .line 756
    iget-object v10, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    monitor-enter v10

    .line 757
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    .line 758
    const/16 v11, -0x2710

    .line 757
    invoke-virtual {v9, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 759
    .local v6, "userGroupId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_5

    .line 760
    iget-object v9, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/UserState;

    .line 761
    .local v8, "uss":Lcom/android/server/am/UserState;
    iget-object v9, v8, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 763
    .local v4, "startedUserId":I
    iget-object v9, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    .line 764
    const/16 v11, -0x2710

    .line 763
    invoke-virtual {v9, v4, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 765
    .local v3, "startedUserGroupId":I
    if-eq v6, v12, :cond_2

    .line 766
    if-ne v6, v3, :cond_1

    const/4 v1, 0x1

    .line 768
    .local v1, "sameGroup":Z
    :goto_1
    if-ne v4, p1, :cond_3

    const/4 v2, 0x1

    .line 769
    .local v2, "sameUserId":Z
    :goto_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_4

    .line 759
    :cond_0
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 766
    .end local v1    # "sameGroup":Z
    .end local v2    # "sameUserId":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "sameGroup":Z
    goto :goto_1

    .line 765
    .end local v1    # "sameGroup":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "sameGroup":Z
    goto :goto_1

    .line 768
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "sameUserId":Z
    goto :goto_2

    .line 772
    :cond_4
    invoke-virtual {v7, v4}, Landroid/util/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 756
    .end local v0    # "i":I
    .end local v1    # "sameGroup":Z
    .end local v2    # "sameUserId":Z
    .end local v3    # "startedUserGroupId":I
    .end local v4    # "startedUserId":I
    .end local v6    # "userGroupId":I
    .end local v8    # "uss":Lcom/android/server/am/UserState;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .restart local v0    # "i":I
    .restart local v6    # "userGroupId":I
    :cond_5
    monitor-exit v10

    .line 775
    invoke-virtual {v7}, Landroid/util/IntArray;->toArray()[I

    move-result-object v9

    return-object v9
.end method

.method private isCurrentUserLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1599
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLocked()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static notifyFinished(ILandroid/os/IProgressListener;)V
    .locals 2
    .param p0, "userId"    # I
    .param p1, "listener"    # Landroid/os/IProgressListener;

    .prologue
    .line 1071
    if-nez p1, :cond_0

    return-void

    .line 1073
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, p0, v1}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    :goto_0
    return-void

    .line 1074
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private reportRequireStrongAuth(II)V
    .locals 5
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    .line 270
    const-string/jumbo v2, "lock_settings"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 269
    invoke-static {v2}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    .line 272
    .local v1, "service":Lcom/android/internal/widget/ILockSettings;
    :try_start_0
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportRequireStrongAuth, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-interface {v1, p1, p2}, Lcom/android/internal/widget/ILockSettings;->requireStrongAuth(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t report requireStrongAuth "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopBackgroundUsersIfEnforced(I)V
    .locals 5
    .param p1, "oldUserId"    # I

    .prologue
    .line 1180
    if-nez p1, :cond_0

    .line 1181
    return-void

    .line 1184
    :cond_0
    const-string/jumbo v1, "no_run_in_background"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    .line 1186
    .local v0, "disallowRunInBg":Z
    if-nez v0, :cond_1

    .line 1187
    return-void

    .line 1189
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1190
    :try_start_0
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopBackgroundUsersIfEnforced stopping "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1191
    const-string/jumbo v4, " and related users"

    .line 1190
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1194
    return-void

    .line 1189
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private stopGuestOrEphemeralUserIfBackground()V
    .locals 9

    .prologue
    .line 793
    iget-object v6, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 794
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 795
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 796
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 797
    .local v2, "oldUserId":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 798
    .local v3, "oldUss":Lcom/android/server/am/UserState;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v7, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v5, v7, :cond_1

    .line 795
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 799
    :cond_1
    iget v5, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v7, 0x4

    if-eq v5, v7, :cond_0

    .line 800
    iget v5, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v7, 0x5

    if-eq v5, v7, :cond_0

    .line 803
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 804
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 805
    const-class v5, Landroid/os/UserManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManagerInternal;

    .line 806
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 805
    invoke-virtual {v5, v7}, Landroid/os/UserManagerInternal;->onEphemeralUserStop(I)V

    .line 808
    :cond_2
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 810
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v5, v7, v8}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "oldUserId":Ljava/lang/Integer;
    .end local v3    # "oldUss":Lcom/android/server/am/UserState;
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_4
    monitor-exit v6

    .line 815
    return-void

    .line 793
    .end local v0    # "i":I
    .end local v1    # "num":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private stopSingleUserLocked(ILandroid/app/IStopUserCallback;)V
    .locals 22
    .param p1, "userId"    # I
    .param p2, "callback"    # Landroid/app/IStopUserCallback;

    .prologue
    .line 589
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopSingleUserLocked userId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/UserState;

    .line 591
    .local v19, "uss":Lcom/android/server/am/UserState;
    if-nez v19, :cond_2

    .line 594
    if-eqz p2, :cond_1

    .line 595
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/am/UserController$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v6, v0, v1, v2}, Lcom/android/server/am/UserController$4;-><init>(Lcom/android/server/am/UserController;Landroid/app/IStopUserCallback;I)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 605
    :cond_1
    return-void

    .line 608
    :cond_2
    if-eqz p2, :cond_3

    .line 609
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    :cond_3
    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v6, 0x4

    if-eq v4, v6, :cond_4

    .line 613
    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v6, 0x5

    if-eq v4, v6, :cond_4

    .line 614
    const/4 v4, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/server/am/UserState;->setState(I)V

    .line 615
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v6}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 616
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    .line 618
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 623
    .local v20, "ident":J
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.USER_STOPPING"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 624
    .local v5, "stoppingIntent":Landroid/content/Intent;
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 625
    const-string/jumbo v4, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 626
    const-string/jumbo v4, "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 628
    new-instance v7, Lcom/android/server/am/UserController$5;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v7, v0, v1, v2}, Lcom/android/server/am/UserController$5;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V

    .line 641
    .local v7, "stoppingReceiver":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/UserController$Injector;->clearBroadcastQueueForUserLocked(I)V

    .line 643
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 645
    const/4 v6, 0x1

    new-array v11, v6, [Ljava/lang/String;

    const-string/jumbo v6, "android.permission.INTERACT_ACROSS_USERS"

    const/4 v8, 0x0

    aput-object v6, v11, v8

    .line 646
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 644
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 645
    const/4 v12, -0x1

    .line 646
    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    const/16 v18, -0x1

    .line 643
    invoke-virtual/range {v4 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 651
    .end local v5    # "stoppingIntent":Landroid/content/Intent;
    .end local v7    # "stoppingReceiver":Landroid/content/IIntentReceiver;
    .end local v20    # "ident":J
    :cond_4
    return-void

    .line 647
    .restart local v20    # "ident":J
    :catchall_0
    move-exception v4

    .line 648
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 647
    throw v4
.end method

.method private stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    .locals 8
    .param p1, "userId"    # I
    .param p2, "force"    # Z
    .param p3, "callback"    # Landroid/app/IStopUserCallback;

    .prologue
    const/4 v6, 0x0

    .line 558
    if-nez p1, :cond_0

    .line 559
    const/4 v4, -0x3

    return v4

    .line 561
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->isCurrentUserLocked(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 562
    const/4 v4, -0x2

    return v4

    .line 564
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUsersToStopLocked(I)[I

    move-result-object v3

    .line 566
    .local v3, "usersToStop":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_6

    .line 567
    aget v1, v3, v0

    .line 568
    .local v1, "relatedUserId":I
    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/am/UserController;->isCurrentUserLocked(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 569
    :cond_2
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stopUsersLocked cannot stop related user "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_3
    if-eqz p2, :cond_4

    .line 573
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    .line 574
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Force stop user "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ". Related users will not be stopped"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 573
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/UserController;->stopSingleUserLocked(ILandroid/app/IStopUserCallback;)V

    .line 576
    return v6

    .line 578
    :cond_4
    const/4 v4, -0x4

    return v4

    .line 566
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 581
    .end local v1    # "relatedUserId":I
    :cond_6
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stopUsersLocked usersToStop="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_7
    array-length v7, v3

    move v5, v6

    :goto_1
    if-ge v5, v7, :cond_9

    aget v2, v3, v5

    .line 583
    .local v2, "userIdToStop":I
    if-ne v2, p1, :cond_8

    move-object v4, p3

    :goto_2
    invoke-direct {p0, v2, v4}, Lcom/android/server/am/UserController;->stopSingleUserLocked(ILandroid/app/IStopUserCallback;)V

    .line 582
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    .line 583
    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    .line 585
    .end local v2    # "userIdToStop":I
    :cond_9
    return v6
.end method

.method private updateCurrentProfileIdsLocked()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 1493
    iget-object v5, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    iget v6, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2

    .line 1495
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [I

    .line 1496
    .local v0, "currentProfileIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_0

    .line 1497
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    aput v5, v0, v1

    .line 1496
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1499
    :cond_0
    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 1501
    iget-object v6, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    monitor-enter v6

    .line 1502
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 1503
    iget-object v5, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 1504
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 1505
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1506
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v7, -0x2710

    if-eq v5, v7, :cond_1

    .line 1507
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    iget v8, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1504
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    monitor-exit v6

    .line 1511
    return-void

    .line 1501
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private updateStartedUserArrayLocked()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    .line 1456
    const/4 v1, 0x0

    .line 1457
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1458
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 1460
    .local v3, "uss":Lcom/android/server/am/UserState;
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v6, :cond_0

    .line 1461
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v7, :cond_0

    .line 1462
    add-int/lit8 v1, v1, 0x1

    .line 1457
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1465
    .end local v3    # "uss":Lcom/android/server/am/UserState;
    :cond_1
    new-array v4, v1, [I

    iput-object v4, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 1466
    const/4 v1, 0x0

    .line 1467
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1468
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 1469
    .restart local v3    # "uss":Lcom/android/server/am/UserState;
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v6, :cond_2

    .line 1470
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v7, :cond_2

    .line 1471
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "num":I
    .local v2, "num":I
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v4, v1

    move v1, v2

    .line 1467
    .end local v2    # "num":I
    .restart local v1    # "num":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1474
    .end local v3    # "uss":Lcom/android/server/am/UserState;
    :cond_3
    return-void
.end method


# virtual methods
.method continueUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 5
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .prologue
    const/16 v4, 0x37

    const/4 v3, 0x0

    .line 1263
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Continue user switch oldUser #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", newUser #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget-boolean v0, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    if-eqz v0, :cond_0

    .line 1265
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1266
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingScreen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1269
    :cond_0
    iput-boolean v3, p1, Lcom/android/server/am/UserState;->switching:Z

    .line 1270
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1271
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1273
    invoke-direct {p0}, Lcom/android/server/am/UserController;->stopGuestOrEphemeralUserIfBackground()V

    .line 1274
    invoke-direct {p0, p2}, Lcom/android/server/am/UserController;->stopBackgroundUsersIfEnforced(I)V

    .line 1275
    return-void

    .line 1265
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method dispatchForegroundProfileChanged(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1142
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1143
    .local v2, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1145
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IUserSwitchObserver;

    invoke-interface {v3, p1}, Landroid/app/IUserSwitchObserver;->onForegroundProfileSwitch(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1150
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1151
    return-void

    .line 1146
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method dispatchLockedBootComplete(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1167
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1168
    .local v2, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1170
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IUserSwitchObserver;

    invoke-interface {v3, p1}, Landroid/app/IUserSwitchObserver;->onLockedBootComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1175
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1176
    return-void

    .line 1171
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 15
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .prologue
    .line 1204
    sget-object v3, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Dispatch onUserSwitching oldUser #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " newUser #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    .line 1206
    .local v14, "observerCount":I
    if-lez v14, :cond_0

    .line 1207
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 1208
    .local v7, "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1209
    const/4 v3, 0x1

    :try_start_0
    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/UserState;->switching:Z

    .line 1210
    iput-object v7, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 1212
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v8, v14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1213
    .local v8, "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1214
    .local v4, "dispatchStartedTime":J
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v14, :cond_1

    .line 1217
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "#"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v13}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1218
    .local v6, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1219
    :try_start_2
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v3

    .line 1221
    new-instance v2, Lcom/android/server/am/UserController$8;

    move-object v3, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/UserController$8;-><init>(Lcom/android/server/am/UserController;JLjava/lang/String;Landroid/util/ArraySet;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/am/UserState;II)V

    .line 1243
    .local v2, "callback":Landroid/os/IRemoteCallback;
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v13}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IUserSwitchObserver;

    move/from16 v0, p3

    invoke-interface {v3, v0, v2}, Landroid/app/IUserSwitchObserver;->onUserSwitching(ILandroid/os/IRemoteCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1214
    .end local v2    # "callback":Landroid/os/IRemoteCallback;
    .end local v6    # "name":Ljava/lang/String;
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1208
    .end local v4    # "dispatchStartedTime":J
    .end local v8    # "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v13    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v9

    throw v3

    .line 1218
    .restart local v4    # "dispatchStartedTime":J
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v13    # "i":I
    :catchall_1
    move-exception v9

    :try_start_4
    monitor-exit v3

    throw v9
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1244
    .end local v6    # "name":Ljava/lang/String;
    :catch_0
    move-exception v12

    .local v12, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 1248
    .end local v4    # "dispatchStartedTime":J
    .end local v7    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v8    # "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v13    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1249
    :try_start_5
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v3

    .line 1252
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1253
    return-void

    .line 1248
    :catchall_2
    move-exception v9

    monitor-exit v3

    throw v9
.end method

.method dispatchUserSwitchComplete(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 1155
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 1156
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1157
    .local v2, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1159
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IUserSwitchObserver;

    invoke-interface {v3, p1}, Landroid/app/IUserSwitchObserver;->onUserSwitchComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1157
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1163
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1164
    return-void

    .line 1160
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method dump(Ljava/io/PrintWriter;Z)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    .prologue
    .line 1681
    const-string/jumbo v2, "  mStartedUsers:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1682
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1683
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    .line 1684
    .local v1, "uss":Lcom/android/server/am/UserState;
    const-string/jumbo v2, "    User #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1685
    const-string/jumbo v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/UserState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1682
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1687
    .end local v1    # "uss":Lcom/android/server/am/UserState;
    :cond_0
    const-string/jumbo v2, "  mStartedUserArray: ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1688
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1689
    if-lez v0, :cond_1

    const-string/jumbo v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1690
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1688
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1692
    :cond_2
    const-string/jumbo v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1693
    const-string/jumbo v2, "  mUserLru: ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1694
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1695
    if-lez v0, :cond_3

    const-string/jumbo v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1696
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1694
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1698
    :cond_4
    const-string/jumbo v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1699
    if-eqz p2, :cond_5

    .line 1700
    const-string/jumbo v2, "  mStartedUserArray: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1702
    :cond_5
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    monitor-enter v3

    .line 1703
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 1704
    const-string/jumbo v2, "  mUserProfileGroupIds:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1705
    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 1706
    const-string/jumbo v2, "    User #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1707
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1708
    const-string/jumbo v2, " -> profile #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1709
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1705
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    monitor-exit v3

    .line 1713
    return-void

    .line 1702
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method exists(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    return v0
.end method

.method finishUserStopped(Lcom/android/server/am/UserState;)V
    .locals 9
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 694
    iget-object v6, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 697
    .local v5, "userId":I
    iget-object v7, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 698
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v6, p1, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 699
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    iget-object v6, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-eq v6, p1, :cond_0

    .line 700
    const/4 v4, 0x0

    .local v4, "stopped":Z
    :goto_0
    monitor-exit v7

    .line 718
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 720
    if-eqz v4, :cond_2

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/IStopUserCallback;

    invoke-interface {v6, v5}, Landroid/app/IStopUserCallback;->userStopped(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 718
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 701
    .end local v2    # "i":I
    .end local v4    # "stopped":Z
    :cond_0
    :try_start_2
    iget v6, p1, Lcom/android/server/am/UserState;->state:I

    const/4 v8, 0x5

    if-eq v6, v8, :cond_1

    .line 702
    const/4 v4, 0x0

    .restart local v4    # "stopped":Z
    goto :goto_0

    .line 704
    .end local v4    # "stopped":Z
    :cond_1
    const/4 v4, 0x1

    .line 706
    .restart local v4    # "stopped":Z
    iget-object v6, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 707
    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v6}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/UserManagerInternal;->removeUserState(I)V

    .line 708
    iget-object v6, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 709
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    .line 711
    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v6, v5}, Lcom/android/server/am/UserController$Injector;->activityManagerOnUserStopped(I)V

    .line 714
    const-string/jumbo v6, "finish user"

    invoke-direct {p0, v5, v6}, Lcom/android/server/am/UserController;->forceStopUserLocked(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 697
    .end local v0    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    .end local v4    # "stopped":Z
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 721
    .restart local v0    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    .restart local v2    # "i":I
    .restart local v4    # "stopped":Z
    :cond_2
    :try_start_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/IStopUserCallback;

    invoke-interface {v6, v5}, Landroid/app/IStopUserCallback;->userStopAborted(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 722
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 726
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    if-eqz v4, :cond_5

    .line 727
    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v6, v5}, Lcom/android/server/am/UserController$Injector;->systemServiceManagerCleanupUser(I)V

    .line 728
    iget-object v7, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 729
    :try_start_4
    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v6}, Lcom/android/server/am/UserController$Injector;->getActivityStackSupervisor()Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/am/ActivityStackSupervisor;->removeUserLocked(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v7

    .line 732
    invoke-virtual {p0, v5}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 733
    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v6}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/pm/UserManagerService;->removeUser(I)Z

    .line 737
    :cond_4
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/os/storage/IStorageManager;->lockUserKey(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 743
    const/4 v6, 0x1

    invoke-direct {p0, v6, v5}, Lcom/android/server/am/UserController;->reportRequireStrongAuth(II)V

    .line 746
    :cond_5
    return-void

    .line 728
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 738
    :catch_1
    move-exception v3

    .line 739
    .local v3, "re":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6
.end method

.method finishUserStopping(ILcom/android/server/am/UserState;)V
    .locals 18
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 655
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 656
    .local v3, "shutdownIntent":Landroid/content/Intent;
    const/high16 v2, 0x1000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 658
    new-instance v5, Lcom/android/server/am/UserController$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v5, v0, v1}, Lcom/android/server/am/UserController$6;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    .line 671
    .local v5, "shutdownReceiver":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 672
    :try_start_0
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/server/am/UserState;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x4

    if-eq v2, v6, :cond_0

    monitor-exit v4

    .line 674
    return-void

    .line 676
    :cond_0
    const/4 v2, 0x5

    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/server/am/UserState;->setState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 682
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 681
    const/16 v6, 0x4007

    .line 680
    move/from16 v0, p1

    invoke-virtual {v2, v6, v4, v0}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/UserController$Injector;->systemServiceManagerStopUser(I)V

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 686
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 689
    sget v14, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 687
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 688
    const/4 v10, -0x1

    .line 689
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v15, 0x3e8

    move/from16 v16, p1

    .line 686
    invoke-virtual/range {v2 .. v16}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v17

    .line 691
    return-void

    .line 671
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    .line 685
    :catchall_1
    move-exception v2

    monitor-exit v17

    throw v2
.end method

.method finishUserSwitch(Lcom/android/server/am/UserState;)V
    .locals 2
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->startProfilesLocked()V

    .line 221
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->stopRunningUsersLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 223
    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method finishUserUnlocked(Lcom/android/server/am/UserState;)V
    .locals 36
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 379
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    .line 380
    .local v16, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    move-object/from16 v35, v0

    monitor-enter v35

    .line 382
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_0

    monitor-exit v35

    return-void

    .line 385
    :cond_0
    :try_start_1
    invoke-static/range {v16 .. v16}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v35

    return-void

    .line 387
    :cond_1
    const/4 v2, 0x2

    const/4 v4, 0x3

    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, v16

    invoke-virtual {v2, v0, v4}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 389
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v2}, Lcom/android/internal/util/ProgressReporter;->finish()V

    .line 392
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v3, "unlockedIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, v16

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    const/high16 v2, 0x50000000

    .line 394
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 397
    sget v14, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 396
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 397
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v15, 0x3e8

    .line 396
    invoke-virtual/range {v2 .. v16}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 400
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v33

    .line 402
    .local v33, "parent":Landroid/content/pm/UserInfo;
    if-eqz v33, :cond_2

    .line 403
    new-instance v18, Landroid/content/Intent;

    .line 404
    const-string/jumbo v2, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    .line 403
    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    .local v18, "profileUnlockedIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.USER"

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 407
    const/high16 v2, 0x50000000

    .line 406
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move-object/from16 v17, v0

    .line 411
    sget v29, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 412
    move-object/from16 v0, v33

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v31, v0

    .line 410
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    .line 411
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x3e8

    .line 409
    invoke-virtual/range {v17 .. v31}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 419
    .end local v18    # "profileUnlockedIntent":Landroid/content/Intent;
    .end local v33    # "parent":Landroid/content/pm/UserInfo;
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v32

    .line 420
    .local v32, "info":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v32

    iget-object v2, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 425
    invoke-virtual/range {v32 .. v32}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 426
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/UserState;->tokenProvided:Z

    if-eqz v2, :cond_4

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    xor-int/lit8 v34, v2, 0x1

    .line 431
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 432
    new-instance v4, Lcom/android/server/am/-$Lambda$-wbdEBNBIl8hthLGGkbuzj1haLA;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/android/server/am/-$Lambda$-wbdEBNBIl8hthLGGkbuzj1haLA;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 431
    move/from16 v0, v16

    move/from16 v1, v34

    invoke-virtual {v2, v0, v1, v4}, Lcom/android/server/am/UserController$Injector;->sendPreBootBroadcast(IZLjava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v3    # "unlockedIntent":Landroid/content/Intent;
    .end local v32    # "info":Landroid/content/pm/UserInfo;
    :cond_3
    :goto_1
    monitor-exit v35

    .line 438
    return-void

    .line 426
    .restart local v3    # "unlockedIntent":Landroid/content/Intent;
    .restart local v32    # "info":Landroid/content/pm/UserInfo;
    :cond_4
    const/16 v34, 0x1

    .local v34, "quiet":Z
    goto :goto_0

    .line 429
    .end local v34    # "quiet":Z
    :cond_5
    const/16 v34, 0x0

    .restart local v34    # "quiet":Z
    goto :goto_0

    .line 434
    .end local v34    # "quiet":Z
    :cond_6
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 380
    .end local v3    # "unlockedIntent":Landroid/content/Intent;
    .end local v32    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    monitor-exit v35

    throw v2
.end method

.method getCurrentOrTargetUserIdLocked()I
    .locals 2

    .prologue
    .line 1591
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    goto :goto_0
.end method

.method getCurrentProfileIdsLocked()[I
    .locals 1

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    return-object v0
.end method

.method getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 3

    .prologue
    .line 1564
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v2}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1566
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    .line 1565
    if-eqz v1, :cond_0

    .line 1568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: getCurrentUser() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1569
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1568
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1570
    const-string/jumbo v2, ", uid="

    .line 1568
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1570
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1568
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1571
    const-string/jumbo v2, " requires "

    .line 1568
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1571
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    .line 1568
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1572
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1577
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v2, -0x2710

    if-ne v1, v2, :cond_1

    .line 1578
    iget v1, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1

    .line 1580
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1581
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserLocked()Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 1580
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method getCurrentUserIdLocked()I
    .locals 1

    .prologue
    .line 1595
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    return v0
.end method

.method getCurrentUserLocked()Landroid/content/pm/UserInfo;
    .locals 3

    .prologue
    .line 1586
    iget v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 1587
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1

    .line 1586
    .end local v0    # "userId":I
    :cond_0
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .restart local v0    # "userId":I
    goto :goto_0
.end method

.method getProfileIds(I)Ljava/util/Set;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1628
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1629
    .local v3, "userIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    .line 1630
    const/4 v5, 0x0

    .line 1629
    invoke-virtual {v4, p1, v5}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    .line 1631
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1632
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1634
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    return-object v3
.end method

.method getStartedUserArrayLocked()[I
    .locals 1

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    return-object v0
.end method

.method getStartedUserStateLocked(I)Lcom/android/server/am/UserState;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserState;

    return-object v0
.end method

.method getUserIds()[I
    .locals 1

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    return-object v0
.end method

.method getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method getUsers()[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1607
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    .line 1608
    .local v0, "ums":Lcom/android/server/pm/UserManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    goto :goto_0
.end method

.method handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "allowAll"    # Z
    .param p5, "allowMode"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "callerPackage"    # Ljava/lang/String;

    .prologue
    .line 1345
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1346
    .local v9, "callingUserId":I
    if-ne v9, p3, :cond_0

    .line 1347
    return p3

    .line 1356
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUserLocked(I)I

    move-result v11

    .line 1358
    .local v11, "targetUserId":I
    if-eqz p2, :cond_1

    const/16 v1, 0x3e8

    if-eq p2, v1, :cond_1

    .line 1360
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1361
    const/4 v5, -0x1

    const/4 v6, 0x1

    move v3, p1

    move v4, p2

    .line 1360
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController$Injector;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-nez v1, :cond_2

    .line 1363
    const/4 v7, 0x1

    .line 1381
    :goto_0
    if-nez v7, :cond_1

    .line 1382
    const/4 v1, -0x3

    if-ne p3, v1, :cond_7

    .line 1385
    move v11, v9

    .line 1410
    :cond_1
    if-nez p4, :cond_a

    if-gez v11, :cond_a

    .line 1411
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Call does not support special user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1411
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1364
    :cond_2
    const/4 v1, 0x2

    move/from16 v0, p5

    if-ne v0, v1, :cond_3

    .line 1366
    const/4 v7, 0x0

    .local v7, "allow":Z
    goto :goto_0

    .line 1367
    .end local v7    # "allow":Z
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    .line 1368
    const/4 v5, -0x1

    const/4 v6, 0x1

    move v3, p1

    move v4, p2

    .line 1367
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController$Injector;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-eqz v1, :cond_4

    .line 1370
    const/4 v7, 0x0

    .restart local v7    # "allow":Z
    goto :goto_0

    .line 1371
    .end local v7    # "allow":Z
    :cond_4
    if-nez p5, :cond_5

    .line 1373
    const/4 v7, 0x1

    .restart local v7    # "allow":Z
    goto :goto_0

    .line 1374
    .end local v7    # "allow":Z
    :cond_5
    const/4 v1, 0x1

    move/from16 v0, p5

    if-ne v0, v1, :cond_6

    .line 1377
    invoke-virtual {p0, v9, v11}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result v7

    .local v7, "allow":Z
    goto :goto_0

    .line 1379
    .end local v7    # "allow":Z
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1387
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1388
    .local v8, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Permission Denial: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    if-eqz p7, :cond_8

    .line 1391
    const-string/jumbo v1, " from "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    :cond_8
    const-string/jumbo v1, " asks to run as user "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1396
    const-string/jumbo v1, " but is calling from user "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1398
    const-string/jumbo v1, "; this requires "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    const/4 v1, 0x2

    move/from16 v0, p5

    if-eq v0, v1, :cond_9

    .line 1401
    const-string/jumbo v1, " or "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1404
    :cond_9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1405
    .local v10, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1415
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    .end local v10    # "msg":Ljava/lang/String;
    :cond_a
    const/16 v1, 0x7d0

    if-ne p2, v1, :cond_b

    if-ltz v11, :cond_b

    .line 1416
    const-string/jumbo v1, "no_debugging_features"

    invoke-virtual {p0, v1, v11}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1417
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Shell does not have permission to access user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1418
    const-string/jumbo v3, "\n "

    .line 1417
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1418
    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    .line 1417
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1421
    :cond_b
    return v11
.end method

.method hasStartedUserState(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasUserRestriction(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isCurrentProfileLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    return v0
.end method

.method isLockScreenDisabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    return v0
.end method

.method isSameProfileGroup(II)Z
    .locals 8
    .param p1, "callingUserId"    # I
    .param p2, "targetUserId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v7, -0x2710

    .line 1638
    if-ne p1, p2, :cond_0

    .line 1639
    return v2

    .line 1641
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    monitor-enter v4

    .line 1642
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    .line 1643
    const/16 v6, -0x2710

    .line 1642
    invoke-virtual {v5, p1, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1644
    .local v0, "callingProfile":I
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    .line 1645
    const/16 v6, -0x2710

    .line 1644
    invoke-virtual {v5, p2, v6}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1646
    .local v1, "targetProfile":I
    if-eq v0, v7, :cond_2

    .line 1647
    if-ne v0, v1, :cond_1

    :goto_0
    monitor-exit v4

    .line 1646
    return v2

    :cond_1
    move v2, v3

    .line 1647
    goto :goto_0

    :cond_2
    move v2, v3

    .line 1646
    goto :goto_0

    .line 1641
    .end local v0    # "callingProfile":I
    .end local v1    # "targetProfile":I
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method isUserRunningLocked(II)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1518
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserStateLocked(I)Lcom/android/server/am/UserState;

    move-result-object v0

    .line 1519
    .local v0, "state":Lcom/android/server/am/UserState;
    if-nez v0, :cond_0

    .line 1520
    return v2

    .line 1522
    :cond_0
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_1

    .line 1523
    return v1

    .line 1525
    :cond_1
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_2

    .line 1526
    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v3, :pswitch_data_0

    .line 1531
    return v2

    .line 1529
    :pswitch_0
    return v1

    .line 1534
    :cond_2
    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_3

    .line 1535
    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v3, :pswitch_data_1

    .line 1544
    return v2

    .line 1538
    :pswitch_1
    return v1

    .line 1542
    :pswitch_2
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    return v1

    .line 1547
    :cond_3
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_4

    .line 1548
    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v3, :pswitch_data_2

    .line 1556
    return v2

    .line 1550
    :pswitch_3
    return v1

    .line 1554
    :pswitch_4
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    return v1

    .line 1560
    :cond_4
    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_5

    :goto_0
    return v1

    :cond_5
    move v1, v2

    goto :goto_0

    .line 1526
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1535
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1548
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method synthetic lambda$-com_android_server_am_UserController_18747(Lcom/android/server/am/UserState;)V
    .locals 0
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    return-void
.end method

.method maybeUnlockUser(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1067
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z

    move-result v0

    return v0
.end method

.method moveUserToForegroundLocked(Lcom/android/server/am/UserState;II)V
    .locals 3
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .prologue
    .line 1279
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getActivityStackSupervisor()Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v1

    invoke-virtual {v1, p3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->switchUserLocked(ILcom/android/server/am/UserState;)Z

    move-result v0

    .line 1280
    .local v0, "homeInFront":Z
    if-eqz v0, :cond_0

    .line 1281
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v2, "moveUserToForeground"

    invoke-virtual {v1, p3, v2}, Lcom/android/server/am/UserController$Injector;->startHomeActivityLocked(ILjava/lang/String;)V

    .line 1285
    :goto_0
    invoke-static {p3}, Lcom/android/server/am/EventLogTags;->writeAmSwitchUser(I)V

    .line 1286
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/UserController;->sendUserSwitchBroadcastsLocked(II)V

    .line 1287
    return-void

    .line 1283
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getActivityStackSupervisor()Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    goto :goto_0
.end method

.method onSystemReady()V
    .locals 0

    .prologue
    .line 1484
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIdsLocked()V

    .line 1485
    return-void
.end method

.method registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    .locals 3
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1430
    const-string/jumbo v1, "Observer name cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: registerUserSwitchObserver() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1434
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1433
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1435
    const-string/jumbo v2, ", uid="

    .line 1433
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1435
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1433
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1436
    const-string/jumbo v2, " requires "

    .line 1433
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1436
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1433
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1437
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1440
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 1441
    return-void
.end method

.method restartUser(IZ)I
    .locals 2
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z

    .prologue
    .line 522
    new-instance v0, Lcom/android/server/am/UserController$3;

    invoke-direct {v0, p0, p2}, Lcom/android/server/am/UserController$3;-><init>(Lcom/android/server/am/UserController;Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/am/UserController;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v0

    return v0
.end method

.method sendBootCompletedLocked(Landroid/content/IIntentReceiver;)V
    .locals 3
    .param p1, "resultTo"    # Landroid/content/IIntentReceiver;

    .prologue
    .line 1477
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1478
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    .line 1479
    .local v1, "uss":Lcom/android/server/am/UserState;
    invoke-direct {p0, v1, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    .line 1477
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1481
    .end local v1    # "uss":Lcom/android/server/am/UserState;
    :cond_0
    return-void
.end method

.method sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    .locals 3
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .prologue
    .line 1256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1257
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1258
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x23

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1260
    return-void
.end method

.method sendUserSwitchBroadcastsLocked(II)V
    .locals 37
    .param p1, "oldUserId"    # I
    .param p2, "newUserId"    # I

    .prologue
    .line 1290
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v34

    .line 1293
    .local v34, "ident":J
    if-ltz p1, :cond_0

    .line 1295
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const/4 v4, 0x0

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v36

    .line 1296
    .local v36, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v32

    .line 1297
    .local v32, "count":I
    const/16 v33, 0x0

    .local v33, "i":I
    :goto_0
    move/from16 v0, v33

    move/from16 v1, v32

    if-ge v0, v1, :cond_0

    .line 1298
    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    .line 1299
    .local v16, "profileUserId":I
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1300
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v2, 0x50000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1302
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, v16

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1305
    sget v14, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1304
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 1305
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v15, 0x3e8

    .line 1303
    invoke-virtual/range {v2 .. v16}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 1297
    add-int/lit8 v33, v33, 0x1

    goto :goto_0

    .line 1308
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v16    # "profileUserId":I
    .end local v32    # "count":I
    .end local v33    # "i":I
    .end local v36    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    if-ltz p2, :cond_2

    .line 1310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-virtual {v2, v0, v4}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v36

    .line 1311
    .restart local v36    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v32

    .line 1312
    .restart local v32    # "count":I
    const/16 v33, 0x0

    .restart local v33    # "i":I
    :goto_1
    move/from16 v0, v33

    move/from16 v1, v32

    if-ge v0, v1, :cond_1

    .line 1313
    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    .line 1314
    .restart local v16    # "profileUserId":I
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_FOREGROUND"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1315
    .restart local v3    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x50000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1317
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, v16

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1320
    sget v14, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1319
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 1320
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v15, 0x3e8

    .line 1318
    invoke-virtual/range {v2 .. v16}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 1312
    add-int/lit8 v33, v33, 0x1

    goto :goto_1

    .line 1322
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v16    # "profileUserId":I
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1323
    .restart local v3    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x50000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1325
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, p2

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move-object/from16 v17, v0

    .line 1328
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v24, v0

    const-string/jumbo v2, "android.permission.MANAGE_USERS"

    const/4 v4, 0x0

    aput-object v2, v24, v4

    .line 1329
    sget v29, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1327
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 1329
    const/16 v25, -0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x3e8

    .line 1330
    const/16 v31, -0x1

    move-object/from16 v18, v3

    .line 1326
    invoke-virtual/range {v17 .. v31}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 1334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v2}, Lcom/android/server/am/OemSceneModeAmHelper;->endUserSwitching(Lcom/android/server/am/ActivityManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1338
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v32    # "count":I
    .end local v33    # "i":I
    .end local v36    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1340
    return-void

    .line 1337
    :catchall_0
    move-exception v2

    .line 1338
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1337
    throw v2
.end method

.method setTargetUserIdLocked(I)I
    .locals 0
    .param p1, "targetUserId"    # I

    .prologue
    .line 1603
    iput p1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    return p1
.end method

.method shouldConfirmCredentials(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1664
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1665
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_0

    monitor-exit v2

    .line 1666
    return v1

    :cond_0
    monitor-exit v2

    .line 1669
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1670
    return v1

    .line 1664
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1672
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    .line 1673
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    :cond_2
    return v1
.end method

.method showUserSwitchDialog(Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/pm/UserInfo;",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1133
    .local p1, "fromToUserPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/UserInfo;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/UserController$Injector;->showUserSwitchingDialog(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)V

    .line 1137
    invoke-static {}, Lcom/android/server/am/OemSceneModeAmHelper;->startUserSwitching()V

    .line 1139
    return-void
.end method

.method startProfilesLocked()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 818
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "startProfilesLocked"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v6}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    .line 820
    iget v7, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 819
    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    .line 821
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 822
    .local v2, "profilesToStart":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "user$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 823
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget v6, v4, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v6, v6, 0x10

    const/16 v7, 0x10

    if-ne v6, v7, :cond_1

    .line 824
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    iget v7, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-eq v6, v7, :cond_1

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 823
    if-eqz v6, :cond_1

    .line 825
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 828
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 829
    .local v3, "profilesToStartSize":I
    const/4 v0, 0x0

    .line 830
    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_3

    const/4 v6, 0x2

    if-ge v0, v6, :cond_3

    .line 831
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6, v8}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    .line 830
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 833
    :cond_3
    if-ge v0, v3, :cond_4

    .line 834
    sget-object v6, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "More profiles than MAX_RUNNING_USERS"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_4
    return-void
.end method

.method startUser(IZ)Z
    .locals 30
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z

    .prologue
    .line 872
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v6, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v4, v6}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 874
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Permission Denial: switchUser() from pid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 875
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 874
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 876
    const-string/jumbo v6, ", uid="

    .line 874
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 876
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 874
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 877
    const-string/jumbo v6, " requires "

    .line 874
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 877
    const-string/jumbo v6, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 874
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 878
    .local v22, "msg":Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    new-instance v4, Ljava/lang/SecurityException;

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 882
    .end local v22    # "msg":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Starting userid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " fg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 886
    .local v20, "ident":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 887
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    move/from16 v24, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 888
    .local v24, "oldUserId":I
    move/from16 v0, v24

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    :try_start_2
    monitor-exit v29
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 889
    const/4 v4, 0x1

    .line 1024
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 889
    return v4

    .line 892
    :cond_1
    if-eqz p2, :cond_2

    .line 893
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getActivityStackSupervisor()Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v4

    .line 894
    const-string/jumbo v6, "startUser"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 893
    invoke-virtual {v4, v7, v8, v6, v9}, Lcom/android/server/am/ActivityStackSupervisor;->setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    .line 897
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v26

    .line 898
    .local v26, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v26, :cond_3

    .line 899
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No user info for user #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v29
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 900
    const/4 v4, 0x0

    .line 1024
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 900
    return v4

    .line 902
    :cond_3
    if-eqz p2, :cond_4

    :try_start_5
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 903
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Cannot switch to User #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": not a full user"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v29
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 904
    const/4 v4, 0x0

    .line 1024
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 904
    return v4

    .line 907
    :cond_4
    if-eqz p2, :cond_5

    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    if-eqz v4, :cond_5

    .line 908
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    .line 909
    const v6, 0x10a0082

    const v7, 0x10a0081

    .line 908
    invoke-virtual {v4, v6, v7}, Lcom/android/server/wm/WindowManagerService;->startFreezingScreen(II)V

    .line 912
    :cond_5
    const/16 v23, 0x0

    .line 916
    .local v23, "needStart":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    .line 917
    new-instance v27, Lcom/android/server/am/UserState;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .line 918
    .local v27, "userState":Lcom/android/server/am/UserState;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 919
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    move-object/from16 v0, v27

    iget v6, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v6}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 920
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    .line 921
    const/16 v23, 0x1

    .line 924
    .end local v27    # "userState":Lcom/android/server/am/UserState;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/am/UserState;

    .line 925
    .local v28, "uss":Lcom/android/server/am/UserState;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 926
    .local v25, "userIdInt":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 927
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    if-eqz p2, :cond_d

    .line 930
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 931
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->updateUserConfigurationLocked()V

    .line 932
    const/16 v4, -0x2710

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 933
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIdsLocked()V

    .line 934
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v6}, Lcom/android/server/wm/WindowManagerService;->setCurrentUser(I[I)V

    .line 937
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    if-eqz v4, :cond_7

    .line 938
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 939
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 951
    :cond_7
    :goto_0
    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_e

    .line 955
    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/server/am/UserState;->lastState:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/android/server/am/UserState;->setState(I)V

    .line 956
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    move-object/from16 v0, v28

    iget v6, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v6}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 957
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    .line 958
    const/16 v23, 0x1

    .line 968
    :cond_8
    :goto_1
    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    if-nez v4, :cond_9

    .line 971
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/pm/UserManagerService;->onBeforeStartUser(I)V

    .line 976
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x2a

    const/4 v8, 0x0

    move/from16 v0, p1

    invoke-virtual {v6, v7, v0, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 979
    :cond_9
    if-eqz p2, :cond_a

    .line 980
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x2b

    move/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v6, v7, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 982
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x22

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 983
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x24

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 984
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x22

    move/from16 v0, v24

    move/from16 v1, p1

    move-object/from16 v2, v28

    invoke-virtual {v6, v7, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 986
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x24

    move/from16 v0, v24

    move/from16 v1, p1

    move-object/from16 v2, v28

    invoke-virtual {v6, v7, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 987
    const-wide/16 v8, 0xbb8

    .line 986
    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 990
    :cond_a
    if-eqz v23, :cond_b

    .line 992
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.USER_STARTED"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 993
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v4, 0x50000000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 995
    const-string/jumbo v4, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 996
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 998
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 997
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 998
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    move/from16 v18, p1

    .line 996
    invoke-virtual/range {v4 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 1001
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_b
    if-eqz p2, :cond_f

    .line 1002
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v24

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController;->moveUserToForegroundLocked(Lcom/android/server/am/UserState;II)V

    .line 1007
    :goto_2
    if-eqz v23, :cond_c

    .line 1008
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.USER_STARTING"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1009
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1010
    const-string/jumbo v4, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1011
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1012
    new-instance v7, Lcom/android/server/am/UserController$7;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/am/UserController$7;-><init>(Lcom/android/server/am/UserController;)V

    .line 1019
    const/4 v6, 0x1

    new-array v11, v6, [Ljava/lang/String;

    const-string/jumbo v6, "android.permission.INTERACT_ACROSS_USERS"

    const/4 v8, 0x0

    aput-object v6, v11, v8

    .line 1020
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1012
    const/4 v6, 0x0

    .line 1018
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1019
    const/4 v12, -0x1

    .line 1020
    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    const/16 v18, -0x1

    .line 1011
    invoke-virtual/range {v4 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v5    # "intent":Landroid/content/Intent;
    :cond_c
    :try_start_8
    monitor-exit v29
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1024
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1027
    const/4 v4, 0x1

    return v4

    .line 942
    :cond_d
    :try_start_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 943
    .local v19, "currentUserIdInt":Ljava/lang/Integer;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIdsLocked()V

    .line 944
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->setCurrentProfileIds([I)V

    .line 945
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 946
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 886
    .end local v19    # "currentUserIdInt":Ljava/lang/Integer;
    .end local v23    # "needStart":Z
    .end local v24    # "oldUserId":I
    .end local v25    # "userIdInt":Ljava/lang/Integer;
    .end local v26    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v28    # "uss":Lcom/android/server/am/UserState;
    :catchall_0
    move-exception v4

    :try_start_a
    monitor-exit v29

    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1023
    :catchall_1
    move-exception v4

    .line 1024
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1023
    throw v4

    .line 959
    .restart local v23    # "needStart":Z
    .restart local v24    # "oldUserId":I
    .restart local v25    # "userIdInt":Ljava/lang/Integer;
    .restart local v26    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v28    # "uss":Lcom/android/server/am/UserState;
    :cond_e
    :try_start_b
    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v6, 0x5

    if-ne v4, v6, :cond_8

    .line 962
    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/android/server/am/UserState;->setState(I)V

    .line 963
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    move-object/from16 v0, v28

    iget v6, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v6}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 964
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    .line 965
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 1004
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2
.end method

.method startUserInForeground(I)V
    .locals 3
    .param p1, "targetUserId"    # I

    .prologue
    .line 1034
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    move-result v0

    .line 1035
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 1036
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 1038
    :cond_0
    return-void
.end method

.method stopRunningUsersLocked(I)V
    .locals 8
    .param p1, "maxRunningUsers"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 226
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 227
    .local v1, "num":I
    const/4 v0, 0x0

    .line 228
    .local v0, "i":I
    :goto_0
    if-le v1, p1, :cond_7

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 229
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 230
    .local v2, "oldUserId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 231
    .local v3, "oldUss":Lcom/android/server/am/UserState;
    if-nez v3, :cond_0

    .line 233
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 234
    add-int/lit8 v1, v1, -0x1

    .line 235
    goto :goto_0

    .line 237
    :cond_0
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    .line 238
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 240
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 241
    add-int/lit8 v0, v0, 0x1

    .line 242
    goto :goto_0

    .line 244
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v4, v5, :cond_5

    .line 247
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/content/pm/UserInfo;->isSystemOnly(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 248
    add-int/lit8 v1, v1, -0x1

    .line 250
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 251
    goto :goto_0

    .line 254
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I

    move-result v4

    if-eqz v4, :cond_6

    .line 255
    add-int/lit8 v1, v1, -0x1

    .line 257
    :cond_6
    add-int/lit8 v1, v1, -0x1

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    .end local v2    # "oldUserId":Ljava/lang/Integer;
    .end local v3    # "oldUss":Lcom/android/server/am/UserState;
    :cond_7
    return-void
.end method

.method stopUser(IZLandroid/app/IStopUserCallback;)I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "force"    # Z
    .param p3, "callback"    # Landroid/app/IStopUserCallback;

    .prologue
    .line 535
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: switchUser() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 538
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 539
    const-string/jumbo v2, ", uid="

    .line 537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 539
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 540
    const-string/jumbo v2, " requires "

    .line 537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 540
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 544
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    if-ltz p1, :cond_1

    if-nez p1, :cond_2

    .line 545
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t stop system user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 547
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v2, "no_debugging_features"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/UserController$Injector;->enforceShellRestriction(Ljava/lang/String;I)V

    .line 548
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 549
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v1

    return v2

    .line 548
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method timeoutUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 4
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .prologue
    .line 1197
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1198
    :try_start_0
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User switch timeout: from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1201
    return-void

    .line 1197
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B
    .param p4, "listener"    # Landroid/os/IProgressListener;

    .prologue
    .line 1041
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v3, v4}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1043
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Permission Denial: unlockUser() from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1044
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1043
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1045
    const-string/jumbo v4, ", uid="

    .line 1043
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1045
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1043
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1046
    const-string/jumbo v4, " requires "

    .line 1043
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1046
    const-string/jumbo v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1043
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1047
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1051
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1053
    .local v0, "binderToken":J
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 1055
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1053
    return v3

    .line 1054
    :catchall_0
    move-exception v3

    .line 1055
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1054
    throw v3
.end method

.method unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z
    .locals 16
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B
    .param p4, "listener"    # Landroid/os/IProgressListener;

    .prologue
    .line 1081
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1083
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1084
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v10

    .line 1085
    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getStorageManager()Landroid/os/storage/IStorageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1088
    .local v8, "storageManager":Landroid/os/storage/IStorageManager;
    :try_start_1
    iget v12, v10, Landroid/content/pm/UserInfo;->serialNumber:I

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v8, v0, v12, v1, v2}, Landroid/os/storage/IStorageManager;->unlockUserKey(II[B[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1095
    .end local v8    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/UserState;

    .line 1096
    .local v11, "uss":Lcom/android/server/am/UserState;
    if-nez v11, :cond_1

    .line 1097
    move/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1098
    const/4 v12, 0x0

    monitor-exit v13

    return v12

    .line 1089
    .end local v11    # "uss":Lcom/android/server/am/UserState;
    .restart local v8    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v4

    .line 1090
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v12, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Failed to unlock: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1081
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v8    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    .line 1100
    .restart local v11    # "uss":Lcom/android/server/am/UserState;
    :cond_1
    :try_start_4
    iget-object v12, v11, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 1101
    if-eqz p2, :cond_3

    const/4 v12, 0x1

    :goto_1
    iput-boolean v12, v11, Lcom/android/server/am/UserState;->tokenProvided:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v13

    .line 1105
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/am/UserController;->finishUserUnlocking(Lcom/android/server/am/UserState;)V

    .line 1107
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1108
    .local v3, "childProfilesToUnlock":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1112
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v5, v12, :cond_4

    .line 1113
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 1114
    .local v9, "testUserId":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v12}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 1115
    .local v6, "parent":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_2

    iget v12, v6, Landroid/content/pm/UserInfo;->id:I

    move/from16 v0, p1

    if-ne v12, v0, :cond_2

    move/from16 v0, p1

    if-eq v9, v0, :cond_2

    .line 1116
    sget-object v12, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "User "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " (parent "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1117
    const-string/jumbo v15, "): attempting unlock because parent was just unlocked"

    .line 1116
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1112
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1101
    .end local v3    # "childProfilesToUnlock":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v5    # "i":I
    .end local v6    # "parent":Landroid/content/pm/UserInfo;
    .end local v9    # "testUserId":I
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .restart local v3    # "childProfilesToUnlock":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v5    # "i":I
    :cond_4
    monitor-exit v13

    .line 1123
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v7

    .line 1124
    .local v7, "size":I
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v7, :cond_5

    .line 1125
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    .line 1124
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1108
    .end local v7    # "size":I
    :catchall_1
    move-exception v12

    monitor-exit v13

    throw v12

    .line 1128
    .restart local v7    # "size":I
    :cond_5
    const/4 v12, 0x1

    return v12
.end method

.method unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1445
    return-void
.end method

.method unsafeConvertIncomingUserLocked(I)I
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1425
    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x3

    if-ne p1, v0, :cond_1

    .line 1426
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserIdLocked()I

    move-result p1

    .line 1425
    .end local p1    # "userId":I
    :cond_1
    return p1
.end method
