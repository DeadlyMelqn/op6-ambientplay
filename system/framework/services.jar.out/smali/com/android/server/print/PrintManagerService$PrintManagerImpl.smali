.class Lcom/android/server/print/PrintManagerService$PrintManagerImpl;
.super Landroid/print/IPrintManager$Stub;
.source "PrintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/PrintManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrintManagerImpl"
.end annotation


# static fields
.field private static final BACKGROUND_USER_ID:I = -0xa


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/print/UserState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/print/PrintManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    .prologue
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    .prologue
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    .prologue
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    .prologue
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZZ)Lcom/android/server/print/UserState;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/print/PrintManagerService$PrintManagerImpl;
    .param p1, "userId"    # I
    .param p2, "lowPriority"    # Z
    .param p3, "enforceUserUnlockingOrUnlocked"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZZ)Lcom/android/server/print/UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/print/PrintManagerService$PrintManagerImpl;
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->handleUserStopped(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/print/PrintManagerService$PrintManagerImpl;
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->handleUserUnlocked(I)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/print/PrintManagerService;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/print/PrintManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->this$0:Lcom/android/server/print/PrintManagerService;

    invoke-direct {p0}, Landroid/print/IPrintManager$Stub;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    .line 109
    iput-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    .line 110
    const-string/jumbo v0, "user"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    .line 111
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerContentObservers()V

    .line 112
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerBroadcastReceivers()V

    .line 113
    return-void
.end method

.method private getCurrentUserId()I
    .locals 3

    .prologue
    .line 953
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 955
    .local v0, "identity":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 957
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 955
    return v2

    .line 956
    :catchall_0
    move-exception v2

    .line 957
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 956
    throw v2
.end method

.method private getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "lowPriority"    # Z

    .prologue
    .line 830
    const/4 v0, 0x1

    .line 829
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZZ)Lcom/android/server/print/UserState;

    move-result-object v0

    return-object v0
.end method

.method private getOrCreateUserStateLocked(IZZ)Lcom/android/server/print/UserState;
    .locals 4
    .param p1, "userId"    # I
    .param p2, "lowPriority"    # Z
    .param p3, "enforceUserUnlockingOrUnlocked"    # Z

    .prologue
    .line 835
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 836
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 837
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must be unlocked for printing to be available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 836
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 840
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/UserState;

    .line 841
    .local v0, "userState":Lcom/android/server/print/UserState;
    if-nez v0, :cond_1

    .line 842
    new-instance v0, Lcom/android/server/print/UserState;

    .end local v0    # "userState":Lcom/android/server/print/UserState;
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/android/server/print/UserState;-><init>(Landroid/content/Context;ILjava/lang/Object;Z)V

    .line 843
    .restart local v0    # "userState":Lcom/android/server/print/UserState;
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 846
    :cond_1
    if-nez p2, :cond_2

    .line 847
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->increasePriority()V

    .line 850
    :cond_2
    return-object v0
.end method

.method private handleUserStopped(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 878
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 890
    return-void
.end method

.method private handleUserUnlocked(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 856
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 873
    return-void
.end method

.method private registerBroadcastReceivers()V
    .locals 5

    .prologue
    .line 686
    new-instance v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)V

    .line 825
    .local v0, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 826
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    .line 825
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 827
    return-void
.end method

.method private registerContentObservers()V
    .locals 5

    .prologue
    .line 663
    const-string/jumbo v2, "disabled_print_services"

    .line 662
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 664
    .local v0, "enabledPrintServicesUri":Landroid/net/Uri;
    new-instance v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;Landroid/os/Handler;Landroid/net/Uri;)V

    .line 681
    .local v1, "observer":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 682
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 681
    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 683
    return-void
.end method

.method private resolveCallingAppEnforcingPermissions(I)I
    .locals 5
    .param p1, "appId"    # I

    .prologue
    .line 910
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 911
    .local v1, "callingUid":I
    if-nez v1, :cond_0

    .line 912
    return p1

    .line 914
    :cond_0
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 915
    .local v0, "callingAppId":I
    if-eq p1, v0, :cond_1

    const/16 v2, 0x7d0

    if-ne v0, v2, :cond_2

    .line 917
    :cond_1
    return p1

    .line 916
    :cond_2
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_1

    .line 919
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    .line 920
    const-string/jumbo v3, "com.android.printspooler.permission.ACCESS_ALL_PRINT_JOBS"

    .line 919
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 922
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Call from app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " as app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 923
    const-string/jumbo v4, " without com.android.printspooler.permission"

    .line 922
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 924
    const-string/jumbo v4, ".ACCESS_ALL_PRINT_JOBS"

    .line 922
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 926
    :cond_3
    return p1
.end method

.method private resolveCallingPackageNameEnforcingSecurity(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 941
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 942
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 941
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 943
    .local v2, "packages":[Ljava/lang/String;
    array-length v1, v2

    .line 944
    .local v1, "packageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 945
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 946
    return-object p1

    .line 944
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 949
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "packageName has to belong to the caller"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private resolveCallingProfileParentLocked(I)I
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 893
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 894
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 896
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 897
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    .line 898
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 903
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 898
    return v3

    .line 900
    :cond_0
    const/16 v3, -0xa

    .line 903
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 900
    return v3

    .line 902
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    .line 903
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 902
    throw v3

    .line 906
    .end local v0    # "identity":J
    :cond_1
    return p1
.end method

.method private resolveCallingUserEnforcingPermissions(I)I
    .locals 9
    .param p1, "userId"    # I

    .prologue
    .line 931
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 932
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v6, ""

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    move v3, p1

    .line 931
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 933
    :catch_0
    move-exception v8

    .line 936
    .local v8, "re":Landroid/os/RemoteException;
    return p1
.end method


# virtual methods
.method public addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;II)V
    .locals 8
    .param p1, "listener"    # Landroid/print/IPrintJobStateChangeListener;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 497
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "listener":Landroid/print/IPrintJobStateChangeListener;
    check-cast p1, Landroid/print/IPrintJobStateChangeListener;

    .line 499
    .restart local p1    # "listener":Landroid/print/IPrintJobStateChangeListener;
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v3

    .line 502
    .local v3, "resolvedUserId":I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 504
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v5

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eq v5, v7, :cond_0

    monitor-exit v6

    .line 505
    return-void

    .line 507
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result v2

    .line 508
    .local v2, "resolvedAppId":I
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .local v4, "userState":Lcom/android/server/print/UserState;
    monitor-exit v6

    .line 510
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 512
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v4, p1, v2}, Lcom/android/server/print/UserState;->addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 514
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 516
    return-void

    .line 502
    .end local v0    # "identity":J
    .end local v2    # "resolvedAppId":I
    .end local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 513
    .restart local v0    # "identity":J
    .restart local v2    # "resolvedAppId":I
    .restart local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    .line 514
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 513
    throw v5
.end method

.method public addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V
    .locals 7
    .param p1, "listener"    # Landroid/printservice/recommendation/IRecommendationsChangeListener;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 592
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "listener":Landroid/printservice/recommendation/IRecommendationsChangeListener;
    check-cast p1, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    .line 594
    .restart local p1    # "listener":Landroid/printservice/recommendation/IRecommendationsChangeListener;
    iget-object v4, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    .line 595
    const-string/jumbo v5, "android.permission.READ_PRINT_SERVICE_RECOMMENDATIONS"

    const/4 v6, 0x0

    .line 594
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 598
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 600
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    monitor-exit v5

    .line 601
    return-void

    .line 603
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 605
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 607
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 609
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 611
    return-void

    .line 598
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 608
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 609
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 608
    throw v4
.end method

.method public addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V
    .locals 7
    .param p1, "listener"    # Landroid/print/IPrintServicesChangeListener;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 543
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "listener":Landroid/print/IPrintServicesChangeListener;
    check-cast p1, Landroid/print/IPrintServicesChangeListener;

    .line 545
    .restart local p1    # "listener":Landroid/print/IPrintServicesChangeListener;
    iget-object v4, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.READ_PRINT_SERVICES"

    .line 546
    const/4 v6, 0x0

    .line 545
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 549
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 551
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    monitor-exit v5

    .line 552
    return-void

    .line 554
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 556
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 558
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 560
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 562
    return-void

    .line 549
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 559
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 560
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 559
    throw v4
.end method

.method public cancelPrintJob(Landroid/print/PrintJobId;II)V
    .locals 8
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 214
    return-void

    .line 217
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v3

    .line 220
    .local v3, "resolvedUserId":I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 222
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v5

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eq v5, v7, :cond_1

    monitor-exit v6

    .line 223
    return-void

    .line 225
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result v2

    .line 226
    .local v2, "resolvedAppId":I
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .local v4, "userState":Lcom/android/server/print/UserState;
    monitor-exit v6

    .line 228
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 230
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v4, p1, v2}, Lcom/android/server/print/UserState;->cancelPrintJob(Landroid/print/PrintJobId;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 232
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 234
    return-void

    .line 220
    .end local v0    # "identity":J
    .end local v2    # "resolvedAppId":I
    .end local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 231
    .restart local v0    # "identity":J
    .restart local v2    # "resolvedAppId":I
    .restart local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    .line 232
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 231
    throw v5
.end method

.method public createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    .locals 7
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p2, "userId"    # I

    .prologue
    .line 343
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    check-cast p1, Landroid/print/IPrinterDiscoveryObserver;

    .line 345
    .restart local p1    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 347
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 349
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    monitor-exit v5

    .line 350
    return-void

    .line 352
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 354
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 356
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 358
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 360
    return-void

    .line 347
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 357
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 358
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 357
    throw v4
.end method

.method public destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    .locals 7
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p2, "userId"    # I

    .prologue
    .line 365
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    check-cast p1, Landroid/print/IPrinterDiscoveryObserver;

    .line 367
    .restart local p1    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 369
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 371
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    monitor-exit v5

    .line 372
    return-void

    .line 374
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 376
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 378
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 380
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 382
    return-void

    .line 369
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 379
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 380
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 379
    throw v4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 640
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    check-cast p1, Ljava/io/FileDescriptor;

    .line 641
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "pw":Ljava/io/PrintWriter;
    check-cast p2, Ljava/io/PrintWriter;

    .line 643
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "PrintManagerService"

    invoke-static {v5, v6, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 645
    :cond_0
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 646
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 648
    .local v2, "identity":J
    :try_start_1
    const-string/jumbo v5, "PRINT MANAGER STATE (dumpsys print)"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 650
    .local v4, "userStateCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 651
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/UserState;

    .line 652
    .local v1, "userState":Lcom/android/server/print/UserState;
    const-string/jumbo v5, ""

    invoke-virtual {v1, p1, p2, v5}, Lcom/android/server/print/UserState;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 653
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 656
    .end local v1    # "userState":Lcom/android/server/print/UserState;
    :cond_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v6

    .line 659
    return-void

    .line 655
    .end local v0    # "i":I
    .end local v4    # "userStateCount":I
    :catchall_0
    move-exception v5

    .line 656
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 655
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 645
    .end local v2    # "identity":J
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public getCustomPrinterIcon(Landroid/print/PrinterId;I)Landroid/graphics/drawable/Icon;
    .locals 7
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "userId"    # I

    .prologue
    .line 192
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "printerId":Landroid/print/PrinterId;
    check-cast p1, Landroid/print/PrinterId;

    .line 194
    .restart local p1    # "printerId":Landroid/print/PrinterId;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 196
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 198
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    .line 199
    const/4 v4, 0x0

    monitor-exit v5

    return-object v4

    .line 201
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 203
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 205
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    .line 207
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    return-object v4

    .line 196
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 206
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 207
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 206
    throw v4
.end method

.method public getPrintJobInfo(Landroid/print/PrintJobId;II)Landroid/print/PrintJobInfo;
    .locals 9
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v8, 0x0

    .line 167
    if-nez p1, :cond_0

    .line 168
    return-object v8

    .line 171
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v3

    .line 174
    .local v3, "resolvedUserId":I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 176
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v5

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eq v5, v7, :cond_1

    monitor-exit v6

    .line 177
    return-object v8

    .line 179
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result v2

    .line 180
    .local v2, "resolvedAppId":I
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .local v4, "userState":Lcom/android/server/print/UserState;
    monitor-exit v6

    .line 182
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 184
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v4, p1, v2}, Lcom/android/server/print/UserState;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    .line 186
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    return-object v5

    .line 174
    .end local v0    # "identity":J
    .end local v2    # "resolvedAppId":I
    .end local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 185
    .restart local v0    # "identity":J
    .restart local v2    # "resolvedAppId":I
    .restart local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    .line 186
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 185
    throw v5
.end method

.method public getPrintJobInfos(II)Ljava/util/List;
    .locals 8
    .param p1, "appId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v3

    .line 149
    .local v3, "resolvedUserId":I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 151
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v5

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eq v5, v7, :cond_0

    .line 152
    const/4 v5, 0x0

    monitor-exit v6

    return-object v5

    .line 154
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result v2

    .line 155
    .local v2, "resolvedAppId":I
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .local v4, "userState":Lcom/android/server/print/UserState;
    monitor-exit v6

    .line 157
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 159
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v4, v2}, Lcom/android/server/print/UserState;->getPrintJobInfos(I)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    .line 161
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    return-object v5

    .line 149
    .end local v0    # "identity":J
    .end local v2    # "resolvedAppId":I
    .end local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 160
    .restart local v0    # "identity":J
    .restart local v2    # "resolvedAppId":I
    .restart local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    .line 161
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 160
    throw v5
.end method

.method public getPrintServiceRecommendations(I)Ljava/util/List;
    .locals 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 321
    iget-object v4, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    .line 322
    const-string/jumbo v5, "android.permission.READ_PRINT_SERVICE_RECOMMENDATIONS"

    .line 321
    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 325
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 327
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    monitor-exit v5

    .line 328
    return-object v7

    .line 330
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 332
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 334
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/print/UserState;->getPrintServiceRecommendations()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    .line 336
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 334
    return-object v4

    .line 325
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 335
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 336
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 335
    throw v4
.end method

.method public getPrintServices(II)Ljava/util/List;
    .locals 8
    .param p1, "selectionFlags"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 264
    const/4 v4, 0x3

    .line 263
    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 266
    iget-object v4, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    .line 267
    const-string/jumbo v5, "android.permission.READ_PRINT_SERVICES"

    .line 266
    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 270
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 272
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    monitor-exit v5

    .line 273
    return-object v7

    .line 275
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 277
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 279
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->getPrintServices(I)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    .line 281
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 279
    return-object v4

    .line 270
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 280
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 281
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 280
    throw v4
.end method

.method public print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 9
    .param p1, "printJobName"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/print/IPrintDocumentAdapter;
    .param p3, "attributes"    # Landroid/print/PrintAttributes;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "appId"    # I
    .param p6, "userId"    # I

    .prologue
    .line 118
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "printJobName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .line 119
    .restart local p1    # "printJobName":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "adapter":Landroid/print/IPrintDocumentAdapter;
    check-cast p2, Landroid/print/IPrintDocumentAdapter;

    .line 120
    .restart local p2    # "adapter":Landroid/print/IPrintDocumentAdapter;
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p4

    .end local p4    # "packageName":Ljava/lang/String;
    check-cast p4, Ljava/lang/String;

    .line 122
    .restart local p4    # "packageName":Ljava/lang/String;
    invoke-direct {p0, p6}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v8

    .line 126
    .local v8, "resolvedUserId":I
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 128
    :try_start_0
    invoke-direct {p0, v8}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eq v1, v3, :cond_0

    .line 129
    const/4 v1, 0x0

    monitor-exit v2

    return-object v1

    .line 131
    :cond_0
    :try_start_1
    invoke-direct {p0, p5}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result v5

    .line 132
    .local v5, "resolvedAppId":I
    invoke-direct {p0, p4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingPackageNameEnforcingSecurity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "resolvedPackageName":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v8, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .local v0, "userState":Lcom/android/server/print/UserState;
    monitor-exit v2

    .line 135
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "identity":J
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 137
    :try_start_2
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/print/UserState;->print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 140
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    return-object v1

    .line 126
    .end local v0    # "userState":Lcom/android/server/print/UserState;
    .end local v4    # "resolvedPackageName":Ljava/lang/String;
    .end local v5    # "resolvedAppId":I
    .end local v6    # "identity":J
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 139
    .restart local v0    # "userState":Lcom/android/server/print/UserState;
    .restart local v4    # "resolvedPackageName":Ljava/lang/String;
    .restart local v5    # "resolvedAppId":I
    .restart local v6    # "identity":J
    :catchall_1
    move-exception v1

    .line 140
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    throw v1
.end method

.method public removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    .locals 7
    .param p1, "listener"    # Landroid/print/IPrintJobStateChangeListener;
    .param p2, "userId"    # I

    .prologue
    .line 521
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "listener":Landroid/print/IPrintJobStateChangeListener;
    check-cast p1, Landroid/print/IPrintJobStateChangeListener;

    .line 523
    .restart local p1    # "listener":Landroid/print/IPrintJobStateChangeListener;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 525
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 527
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    monitor-exit v5

    .line 528
    return-void

    .line 530
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 532
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 534
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 536
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 538
    return-void

    .line 525
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 535
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 536
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 535
    throw v4
.end method

.method public removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V
    .locals 7
    .param p1, "listener"    # Landroid/printservice/recommendation/IRecommendationsChangeListener;
    .param p2, "userId"    # I

    .prologue
    .line 616
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "listener":Landroid/printservice/recommendation/IRecommendationsChangeListener;
    check-cast p1, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    .line 618
    .restart local p1    # "listener":Landroid/printservice/recommendation/IRecommendationsChangeListener;
    iget-object v4, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    .line 619
    const-string/jumbo v5, "android.permission.READ_PRINT_SERVICE_RECOMMENDATIONS"

    const/4 v6, 0x0

    .line 618
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 622
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 625
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    monitor-exit v5

    .line 626
    return-void

    .line 628
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 630
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 632
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 634
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 636
    return-void

    .line 622
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 633
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 634
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 633
    throw v4
.end method

.method public removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V
    .locals 7
    .param p1, "listener"    # Landroid/print/IPrintServicesChangeListener;
    .param p2, "userId"    # I

    .prologue
    .line 567
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "listener":Landroid/print/IPrintServicesChangeListener;
    check-cast p1, Landroid/print/IPrintServicesChangeListener;

    .line 569
    .restart local p1    # "listener":Landroid/print/IPrintServicesChangeListener;
    iget-object v4, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.READ_PRINT_SERVICES"

    .line 570
    const/4 v6, 0x0

    .line 569
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 573
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 575
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    monitor-exit v5

    .line 576
    return-void

    .line 578
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 580
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 582
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 584
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 586
    return-void

    .line 573
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 583
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 584
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 583
    throw v4
.end method

.method public restartPrintJob(Landroid/print/PrintJobId;II)V
    .locals 8
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 238
    if-nez p1, :cond_0

    .line 239
    return-void

    .line 242
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v3

    .line 245
    .local v3, "resolvedUserId":I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 247
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v5

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eq v5, v7, :cond_1

    monitor-exit v6

    .line 248
    return-void

    .line 250
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result v2

    .line 251
    .local v2, "resolvedAppId":I
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .local v4, "userState":Lcom/android/server/print/UserState;
    monitor-exit v6

    .line 253
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 255
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v4, p1, v2}, Lcom/android/server/print/UserState;->restartPrintJob(Landroid/print/PrintJobId;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 257
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 259
    return-void

    .line 245
    .end local v0    # "identity":J
    .end local v2    # "resolvedAppId":I
    .end local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 256
    .restart local v0    # "identity":J
    .restart local v2    # "resolvedAppId":I
    .restart local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    .line 257
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 256
    throw v5
.end method

.method public setPrintServiceEnabled(Landroid/content/ComponentName;ZI)V
    .locals 9
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "isEnabled"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 287
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v4

    .line 288
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 291
    .local v0, "appId":I
    const/16 v6, 0x3e8

    if-eq v0, v6, :cond_0

    .line 292
    :try_start_0
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 293
    const-string/jumbo v7, "com.android.printspooler"

    .line 292
    invoke-virtual {v6, v7, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v6

    .line 291
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-eq v0, v6, :cond_0

    .line 294
    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "Only system and print spooler can call this"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "PrintManagerService"

    const-string/jumbo v7, "Could not verify caller"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    return-void

    .line 301
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "service":Landroid/content/ComponentName;
    check-cast p1, Landroid/content/ComponentName;

    .line 304
    .restart local p1    # "service":Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 306
    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v6

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eq v6, v8, :cond_1

    monitor-exit v7

    .line 307
    return-void

    .line 309
    :cond_1
    const/4 v6, 0x0

    :try_start_2
    invoke-direct {p0, v4, v6}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .local v5, "userState":Lcom/android/server/print/UserState;
    monitor-exit v7

    .line 311
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 313
    .local v2, "identity":J
    :try_start_3
    invoke-virtual {v5, p1, p2}, Lcom/android/server/print/UserState;->setPrintServiceEnabled(Landroid/content/ComponentName;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 315
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 317
    return-void

    .line 304
    .end local v2    # "identity":J
    .end local v5    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 314
    .restart local v2    # "identity":J
    .restart local v5    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v6

    .line 315
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    throw v6
.end method

.method public startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;I)V
    .locals 7
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p2, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    check-cast p1, Landroid/print/IPrinterDiscoveryObserver;

    .line 388
    .restart local p1    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    if-eqz p2, :cond_0

    .line 390
    const-string/jumbo v4, "PrinterId"

    .line 389
    invoke-static {p2, v4}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p2

    .end local p2    # "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    check-cast p2, Ljava/util/List;

    .line 393
    .restart local p2    # "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 395
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 397
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_1

    monitor-exit v5

    .line 398
    return-void

    .line 400
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 402
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 404
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/UserState;->startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 406
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 408
    return-void

    .line 395
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 405
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 406
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 405
    throw v4
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;I)V
    .locals 7
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "userId"    # I

    .prologue
    .line 454
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "printerId":Landroid/print/PrinterId;
    check-cast p1, Landroid/print/PrinterId;

    .line 456
    .restart local p1    # "printerId":Landroid/print/PrinterId;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 458
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 460
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    monitor-exit v5

    .line 461
    return-void

    .line 463
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 465
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 467
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->startPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 469
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 471
    return-void

    .line 458
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 468
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 469
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 468
    throw v4
.end method

.method public stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;I)V
    .locals 7
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p2, "userId"    # I

    .prologue
    .line 412
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    check-cast p1, Landroid/print/IPrinterDiscoveryObserver;

    .line 414
    .restart local p1    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 416
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 418
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    monitor-exit v5

    .line 419
    return-void

    .line 421
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 423
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 425
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 427
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 429
    return-void

    .line 416
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 426
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 427
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 426
    throw v4
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;I)V
    .locals 7
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "userId"    # I

    .prologue
    .line 475
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "printerId":Landroid/print/PrinterId;
    check-cast p1, Landroid/print/PrinterId;

    .line 477
    .restart local p1    # "printerId":Landroid/print/PrinterId;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 479
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 481
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    monitor-exit v5

    .line 482
    return-void

    .line 484
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 486
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 488
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->stopPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 490
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 492
    return-void

    .line 479
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 489
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 490
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 489
    throw v4
.end method

.method public validatePrinters(Ljava/util/List;I)V
    .locals 7
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    const-string/jumbo v4, "PrinterId"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    .end local p1    # "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    check-cast p1, Ljava/util/List;

    .line 435
    .restart local p1    # "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 437
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 439
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    monitor-exit v5

    .line 440
    return-void

    .line 442
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 444
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 446
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->validatePrinters(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 448
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 450
    return-void

    .line 437
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 447
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 448
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 447
    throw v4
.end method
