.class public final Lcom/android/server/autofill/AutofillManagerService;
.super Lcom/android/server/SystemService;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/AutofillManagerService$1;,
        Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;,
        Lcom/android/server/autofill/AutofillManagerService$LocalService;,
        Lcom/android/server/autofill/AutofillManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field static final RECEIVER_BUNDLE_EXTRA_SESSIONS:Ljava/lang/String; = "sessions"

.field private static final TAG:Ljava/lang/String; = "AutofillManagerService"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDisabledUsers:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mRequestsHistory:Landroid/util/LocalLog;

.field private mServicesCache:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/autofill/AutofillManagerServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mUi:Lcom/android/server/autofill/ui/AutoFillUI;

.field private final mUiLatencyHistory:Landroid/util/LocalLog;


# direct methods
.method static synthetic -get0(Lcom/android/server/autofill/AutofillManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/autofill/AutofillManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/autofill/AutofillManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledUsers:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/autofill/AutofillManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/autofill/AutofillManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/autofill/AutofillManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/ui/AutoFillUI;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/autofill/AutofillManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/autofill/AutofillManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUiLatencyHistory:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/autofill/AutofillManagerService;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/autofill/AutofillManagerService;
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->removeCachedServiceLocked(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/autofill/AutofillManagerService;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/autofill/AutofillManagerService;
    .param p1, "debug"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->setDebugLocked(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/autofill/AutofillManagerService;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/autofill/AutofillManagerService;
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->updateCachedServiceLocked(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v9, 0x14

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    .line 109
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    .line 115
    new-instance v8, Landroid/util/SparseBooleanArray;

    invoke-direct {v8}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledUsers:Landroid/util/SparseBooleanArray;

    .line 117
    new-instance v8, Landroid/util/LocalLog;

    invoke-direct {v8, v9}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v8, p0, Lcom/android/server/autofill/AutofillManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    .line 118
    new-instance v8, Landroid/util/LocalLog;

    invoke-direct {v8, v9}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v8, p0, Lcom/android/server/autofill/AutofillManagerService;->mUiLatencyHistory:Landroid/util/LocalLog;

    .line 120
    new-instance v8, Lcom/android/server/autofill/AutofillManagerService$1;

    invoke-direct {v8, p0}, Lcom/android/server/autofill/AutofillManagerService$1;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    iput-object v8, p0, Lcom/android/server/autofill/AutofillManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    .line 144
    new-instance v8, Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/autofill/ui/AutoFillUI;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 146
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 147
    .local v0, "debug":Z
    const-string/jumbo v8, "AutofillManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Setting debug to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0, v0}, Lcom/android/server/autofill/AutofillManagerService;->setDebugLocked(Z)V

    .line 150
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 151
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v8, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    iget-object v8, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/autofill/AutofillManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v2, v11, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 155
    const-class v8, Landroid/os/UserManager;

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 156
    .local v4, "um":Landroid/os/UserManager;
    const-class v8, Landroid/os/UserManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManagerInternal;

    .line 157
    .local v5, "umi":Landroid/os/UserManagerInternal;
    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .line 158
    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 159
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    iget v6, v8, Landroid/content/pm/UserInfo;->id:I

    .line 160
    .local v6, "userId":I
    const-string/jumbo v8, "no_autofill"

    invoke-virtual {v5, v6, v8}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    .line 161
    .local v1, "disabled":Z
    if-eqz v1, :cond_1

    .line 162
    if-eqz v1, :cond_0

    .line 163
    const-string/jumbo v8, "AutofillManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Disabling Autofill for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    iget-object v8, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v6, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 158
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "disabled":Z
    .end local v6    # "userId":I
    :cond_2
    new-instance v8, Lcom/android/server/autofill/-$Lambda$vJuxjgWyqc7YDAVrm5huZJMbjMg;

    invoke-direct {v8, p0}, Lcom/android/server/autofill/-$Lambda$vJuxjgWyqc7YDAVrm5huZJMbjMg;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v8}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    .line 186
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->startTrackingPackageChanges()V

    .line 187
    return-void
.end method

.method private removeCachedServiceLocked(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v0

    .line 461
    .local v0, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v0, :cond_0

    .line 462
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 463
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroyLocked()V

    .line 465
    :cond_0
    return-void
.end method

.method private setDebugLocked(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    .line 446
    sput-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 447
    sput-boolean p1, Landroid/view/autofill/Helper;->sDebug:Z

    .line 448
    return-void
.end method

.method private setVerboseLocked(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .prologue
    .line 452
    sput-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 453
    sput-boolean p1, Landroid/view/autofill/Helper;->sVerbose:Z

    .line 454
    return-void
.end method

.method private startTrackingPackageChanges()V
    .locals 5

    .prologue
    .line 190
    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/AutofillManagerService$2;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    .line 262
    .local v0, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 263
    return-void
.end method

.method private updateCachedServiceLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/autofill/AutofillManagerService;->updateCachedServiceLocked(IZ)V

    .line 472
    return-void
.end method

.method private updateCachedServiceLocked(IZ)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 478
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v0

    .line 479
    .local v0, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroySessionsLocked()V

    .line 481
    invoke-virtual {v0, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateLocked(Z)V

    .line 482
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 483
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->removeCachedServiceLocked(I)V

    .line 486
    :cond_0
    return-void
.end method


# virtual methods
.method destroySessions(ILcom/android/internal/os/IResultReceiver;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .prologue
    .line 330
    const-string/jumbo v4, "AutofillManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "destroySessions() for userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.MANAGE_AUTO_FILL"

    const-string/jumbo v6, "AutofillManagerService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 334
    const/4 v4, -0x1

    if-eq p1, v4, :cond_1

    .line 335
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v2

    .line 336
    .local v2, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v2, :cond_0

    .line 337
    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroySessionsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_0
    monitor-exit v5

    .line 348
    :try_start_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    invoke-interface {p2, v5, v4}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 352
    :goto_0
    return-void

    .line 340
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 341
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 342
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroySessionsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 333
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 349
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method getLogLevel()I
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_AUTO_FILL"

    const-string/jumbo v2, "AutofillManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 421
    :try_start_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    monitor-exit v1

    return v0

    .line 422
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    monitor-exit v1

    return v0

    .line 423
    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getMaxPartitions()I
    .locals 3

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_AUTO_FILL"

    const-string/jumbo v2, "AutofillManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_0
    sget v1, Lcom/android/server/autofill/Helper;->sPartitionMaxCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 431
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .locals 8
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 305
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 306
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move v2, p1

    move v4, v3

    move-object v6, v5

    .line 305
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 307
    .local v5, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 308
    .local v0, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-nez v0, :cond_0

    .line 309
    new-instance v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .end local v0    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    .line 310
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService;->mUiLatencyHistory:Landroid/util/LocalLog;

    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v7, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    .line 309
    invoke-direct/range {v0 .. v7}, Lcom/android/server/autofill/AutofillManagerServiceImpl;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/util/LocalLog;Landroid/util/LocalLog;ILcom/android/server/autofill/ui/AutoFillUI;Z)V

    .line 311
    .restart local v0    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 313
    :cond_0
    return-object v0
.end method

.method synthetic lambda$-com_android_server_autofill_AutofillManagerService_6601(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    .prologue
    .line 170
    const-string/jumbo v2, "no_autofill"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 171
    .local v1, "disabledNow":Z
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 172
    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 173
    .local v0, "disabledBefore":Z
    if-ne v0, v1, :cond_0

    .line 175
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_0

    .line 176
    const-string/jumbo v2, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Autofill restriction did not change for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 177
    invoke-static {p2}, Lcom/android/server/autofill/Helper;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    .line 176
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 178
    return-void

    .line 181
    :cond_0
    :try_start_1
    const-string/jumbo v2, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Updating Autofill for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": disabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 183
    invoke-direct {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerService;->updateCachedServiceLocked(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void

    .line 171
    .end local v0    # "disabledBefore":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method listSessions(ILcom/android/internal/os/IResultReceiver;)V
    .locals 9
    .param p1, "userId"    # I
    .param p2, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .prologue
    .line 356
    const-string/jumbo v6, "AutofillManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "listSessions() for userId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.MANAGE_AUTO_FILL"

    const-string/jumbo v8, "AutofillManagerService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 360
    .local v2, "resultData":Landroid/os/Bundle;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v4, "sessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 363
    const/4 v6, -0x1

    if-eq p1, v6, :cond_1

    .line 364
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v3

    .line 365
    .local v3, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v3, :cond_0

    .line 366
    invoke-virtual {v3, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->listSessionsLocked(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_0
    monitor-exit v7

    .line 376
    const-string/jumbo v6, "sessions"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 378
    const/4 v6, 0x0

    :try_start_1
    invoke-interface {p2, v6, v2}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 382
    :goto_0
    return-void

    .line 369
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 370
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 371
    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v6, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->listSessionsLocked(Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 362
    .end local v1    # "i":I
    .end local v5    # "size":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 379
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 273
    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 274
    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$SettingsObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/AutofillManagerService$SettingsObserver;-><init>(Lcom/android/server/autofill/AutofillManagerService;Landroid/os/Handler;)V

    .line 276
    :cond_0
    return-void
.end method

.method public onCleanupUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->removeCachedServiceLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 296
    return-void

    .line 293
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 267
    const-string/jumbo v0, "autofill"

    new-instance v1, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/autofill/AutofillManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 268
    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    new-instance v1, Lcom/android/server/autofill/AutofillManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/autofill/AutofillManagerService$LocalService;-><init>(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/server/autofill/AutofillManagerService$LocalService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/autofill/AutofillManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 287
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AutofillManagerService"

    const-string/jumbo v1, "Hiding UI when user switched"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAll(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 289
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->updateCachedServiceLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 283
    return-void

    .line 280
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .locals 8
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 323
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 324
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move v2, p1

    move v4, v3

    move-object v6, v5

    .line 323
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 325
    .local v7, "resolvedUserId":I
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    return-object v0
.end method

.method reset()V
    .locals 5

    .prologue
    .line 386
    const-string/jumbo v2, "AutofillManagerService"

    const-string/jumbo v3, "reset()"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MANAGE_AUTO_FILL"

    const-string/jumbo v4, "AutofillManagerService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 390
    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 391
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 392
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroyLocked()V

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_0
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 396
    return-void

    .line 389
    .end local v0    # "i":I
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method setLogLevel(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    .line 400
    const-string/jumbo v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLogLevel(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MANAGE_AUTO_FILL"

    const-string/jumbo v4, "AutofillManagerService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, "debug":Z
    const/4 v1, 0x0

    .line 405
    .local v1, "verbose":Z
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 406
    const/4 v1, 0x1

    const/4 v0, 0x1

    .line 410
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 411
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/autofill/AutofillManagerService;->setDebugLocked(Z)V

    .line 412
    invoke-direct {p0, v1}, Lcom/android/server/autofill/AutofillManagerService;->setVerboseLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 414
    return-void

    .line 407
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 408
    const/4 v0, 0x1

    goto :goto_0

    .line 410
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setMaxPartitions(I)V
    .locals 3
    .param p1, "max"    # I

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_AUTO_FILL"

    const-string/jumbo v2, "AutofillManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string/jumbo v0, "AutofillManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaxPartitions(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    :try_start_0
    sput p1, Lcom/android/server/autofill/Helper;->sPartitionMaxCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 443
    return-void

    .line 440
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
