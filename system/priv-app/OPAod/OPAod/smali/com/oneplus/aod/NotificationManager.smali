.class public Lcom/oneplus/aod/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"

# interfaces
.implements Lcom/oneplus/aod/NotificationData$Environment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/NotificationManager$1;,
        Lcom/oneplus/aod/NotificationManager$2;,
        Lcom/oneplus/aod/NotificationManager$3;
    }
.end annotation


# static fields
.field static final UPDATE_REASON_NEW_POSTED:I = 0x0

.field static final UPDATE_REASON_OTHER:I = 0x3

.field static final UPDATE_REASON_RANKING:I = 0x2

.field static final UPDATE_REASON_REMOVE:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mAllowLockscreenRemoteInput:Z

.field private mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

.field private mAodView:Landroid/view/ViewGroup;

.field private mCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

.field private mContext:Landroid/content/Context;

.field protected final mCurrentProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentUserId:I

.field protected mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field private mForegroundServiceController:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

.field private mHandler:Landroid/os/Handler;

.field private mIconController:Lcom/oneplus/aod/NotificationIconAreaController;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenPublicMode:Z

.field private final mLockscreenSettingsObserver:Landroid/database/ContentObserver;

.field private mNotificationData:Lcom/oneplus/aod/NotificationData;

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field protected mShowLockscreenNotifications:Z

.field private mSingleNotificationView:Lcom/oneplus/aod/SingleNotificationView;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

.field private final mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;


# direct methods
.method static synthetic -get0(Lcom/oneplus/aod/NotificationManager;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/NotificationManager;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/aod/NotificationManager;)Z
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/NotificationManager;

    .prologue
    iget-boolean v0, p0, Lcom/oneplus/aod/NotificationManager;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic -get2(Lcom/oneplus/aod/NotificationManager;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/NotificationManager;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/aod/NotificationManager;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/NotificationManager;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/aod/NotificationManager;I)I
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/NotificationManager;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentUserId:I

    return p1
.end method

.method static synthetic -set1(Lcom/oneplus/aod/NotificationManager;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/NotificationManager;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/oneplus/aod/NotificationManager;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/aod/NotificationManager;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/NotificationManager;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/aod/NotificationManager;->updateCurrentProfilesCache()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/aod/NotificationManager;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/NotificationManager;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/aod/NotificationManager;->updateLockscreenNotificationSetting()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/aod/NotificationManager;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/NotificationManager;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/aod/NotificationManager;->updatePublicMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aodUpdateMonitor"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string/jumbo v0, "NotificationManager"

    iput-object v0, p0, Lcom/oneplus/aod/NotificationManager;->TAG:Ljava/lang/String;

    .line 53
    iput v1, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentUserId:I

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 57
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 58
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    .line 61
    iput-boolean v1, p0, Lcom/oneplus/aod/NotificationManager;->mDeviceProvisioned:Z

    .line 107
    new-instance v0, Lcom/oneplus/aod/NotificationManager$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/NotificationManager$1;-><init>(Lcom/oneplus/aod/NotificationManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 455
    new-instance v0, Lcom/oneplus/aod/NotificationManager$2;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/oneplus/aod/NotificationManager$2;-><init>(Lcom/oneplus/aod/NotificationManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    .line 468
    new-instance v0, Lcom/oneplus/aod/NotificationManager$3;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/oneplus/aod/NotificationManager$3;-><init>(Lcom/oneplus/aod/NotificationManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 66
    iput-object p1, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mUserManager:Landroid/os/UserManager;

    .line 68
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    .line 69
    const-string/jumbo v2, "device_policy"

    .line 68
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 70
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentUserId:I

    .line 71
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 72
    new-instance v0, Lcom/oneplus/aod/NotificationData;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/NotificationData;-><init>(Lcom/oneplus/aod/NotificationData$Environment;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    .line 73
    iput-object p2, p0, Lcom/oneplus/aod/NotificationManager;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    .line 74
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/AodUpdateMonitor;->registerCallback(Lcom/oneplus/aod/AodUpdateMonitorCallback;)V

    .line 75
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getAodView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mAodView:Landroid/view/ViewGroup;

    .line 76
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mAodView:Landroid/view/ViewGroup;

    const v2, 0x7f0e004c

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/SingleNotificationView;

    iput-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mSingleNotificationView:Lcom/oneplus/aod/SingleNotificationView;

    .line 78
    new-instance v0, Lcom/oneplus/aod/NotificationIconAreaController;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mAodView:Landroid/view/ViewGroup;

    invoke-direct {v0, p1, v2}, Lcom/oneplus/aod/NotificationIconAreaController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mIconController:Lcom/oneplus/aod/NotificationIconAreaController;

    .line 79
    new-instance v0, Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/oneplus/aod/ForegroundServiceControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mForegroundServiceController:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    .line 80
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mForegroundServiceController:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/NotificationData;->setForeGroundServiceController(Lcom/oneplus/aod/ForegroundServiceControllerImpl;)V

    .line 83
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "device_provisioned"

    .line 82
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/aod/NotificationManager;->mDeviceProvisioned:Z

    .line 85
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 86
    const-string/jumbo v2, "lock_screen_show_notifications"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 87
    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    .line 88
    const/4 v4, -0x1

    .line 85
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mHandler:Landroid/os/Handler;

    .line 102
    invoke-direct {p0}, Lcom/oneplus/aod/NotificationManager;->updateCurrentProfilesCache()V

    .line 103
    invoke-direct {p0}, Lcom/oneplus/aod/NotificationManager;->updateLockscreenNotificationSetting()V

    .line 104
    invoke-direct {p0}, Lcom/oneplus/aod/NotificationManager;->updatePublicMode()V

    .line 105
    return-void

    :cond_0
    move v0, v1

    .line 82
    goto :goto_0
.end method

.method private adminAllowsUnredactedNotifications(I)Z
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 523
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 524
    return v1

    .line 526
    :cond_0
    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    .line 528
    .local v0, "dpmFlags":I
    and-int/lit8 v3, v0, 0x8

    if-nez v3, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private createNotification(Landroid/service/notification/StatusBarNotification;)Lcom/oneplus/aod/NotificationData$Entry;
    .locals 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v5, 0x0

    .line 243
    invoke-virtual {p0, p1}, Lcom/oneplus/aod/NotificationManager;->createIcon(Landroid/service/notification/StatusBarNotification;)Lcom/oneplus/aod/StatusBarIconView;

    move-result-object v2

    .line 244
    .local v2, "iconView":Lcom/oneplus/aod/StatusBarIconView;
    if-nez v2, :cond_0

    .line 245
    const-string/jumbo v3, "NotificationManager"

    const-string/jumbo v4, "createNotification: iconView = null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-object v5

    .line 250
    :cond_0
    new-instance v1, Lcom/oneplus/aod/NotificationData$Entry;

    invoke-direct {v1, p1, v2}, Lcom/oneplus/aod/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/oneplus/aod/StatusBarIconView;)V

    .line 254
    .local v1, "entry":Lcom/oneplus/aod/NotificationData$Entry;
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/aod/NotificationData$Entry;->cacheContentViews(Landroid/content/Context;Landroid/app/Notification;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-object v1

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "NotificationManager"

    const-string/jumbo v4, "Unable to get notification remote views"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private packageHasVisibilityOverride(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 504
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v1, p1}, Lcom/oneplus/aod/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setLockscreenPublicMode(Z)V
    .locals 0
    .param p1, "isPublic"    # Z

    .prologue
    .line 384
    iput-boolean p1, p0, Lcom/oneplus/aod/NotificationManager;->mLockScreenPublicMode:Z

    .line 385
    return-void
.end method

.method private updateCurrentProfilesCache()V
    .locals 5

    .prologue
    .line 359
    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v3

    .line 360
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 361
    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mUserManager:Landroid/os/UserManager;

    if-eqz v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 363
    .local v0, "user":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentProfiles:Landroid/util/SparseArray;

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 359
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    .end local v1    # "user$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    .line 367
    return-void
.end method

.method private updateLockscreenNotificationSetting()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 396
    iget-object v4, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 397
    const-string/jumbo v5, "lock_screen_show_notifications"

    .line 399
    iget v6, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentUserId:I

    .line 398
    const/4 v7, 0x1

    .line 396
    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 400
    .local v2, "show":Z
    :goto_0
    iget-object v4, p0, Lcom/oneplus/aod/NotificationManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 401
    iget v5, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentUserId:I

    const/4 v6, 0x0

    .line 400
    invoke-virtual {v4, v6, v5}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 402
    .local v1, "dpmFlags":I
    and-int/lit8 v4, v1, 0x4

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 405
    .local v0, "allowedByDpm":Z
    :goto_1
    if-eqz v2, :cond_2

    .end local v0    # "allowedByDpm":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/oneplus/aod/NotificationManager;->setShowLockscreenNotifications(Z)V

    .line 417
    invoke-virtual {p0, v3}, Lcom/oneplus/aod/NotificationManager;->setLockScreenAllowRemoteInput(Z)V

    .line 419
    return-void

    .line 396
    .end local v1    # "dpmFlags":I
    .end local v2    # "show":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "show":Z
    goto :goto_0

    .line 402
    .restart local v1    # "dpmFlags":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "allowedByDpm":Z
    goto :goto_1

    :cond_2
    move v0, v3

    .line 405
    goto :goto_2
.end method

.method private updatePublicMode()V
    .locals 5

    .prologue
    .line 370
    const/4 v1, 0x0

    .line 372
    .local v1, "isPublic":Z
    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 373
    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 374
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 375
    const/4 v1, 0x1

    .line 380
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    invoke-direct {p0, v1}, Lcom/oneplus/aod/NotificationManager;->setLockscreenPublicMode(Z)V

    .line 381
    return-void

    .line 372
    .restart local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private updateSingleNotificationView()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mSingleNotificationView:Lcom/oneplus/aod/SingleNotificationView;

    invoke-virtual {v0}, Lcom/oneplus/aod/SingleNotificationView;->updateView()V

    .line 302
    return-void
.end method


# virtual methods
.method public addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/oneplus/aod/NotificationData$Entry;)V
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;
    .param p3, "oldEntry"    # Lcom/oneplus/aod/NotificationData$Entry;

    .prologue
    .line 149
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v1, p2}, Lcom/oneplus/aod/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/oneplus/aod/NotificationManager;->createNotification(Landroid/service/notification/StatusBarNotification;)Lcom/oneplus/aod/NotificationData$Entry;

    move-result-object v0

    .line 153
    .local v0, "entry":Lcom/oneplus/aod/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 154
    return-void

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v1, v0, p2}, Lcom/oneplus/aod/NotificationData;->add(Lcom/oneplus/aod/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 159
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mForegroundServiceController:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    iget-object v2, v0, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    iget-object v4, v0, Lcom/oneplus/aod/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/oneplus/aod/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->addNotification(Landroid/service/notification/StatusBarNotification;I)V

    .line 160
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/NotificationManager;->updateNotifications(I)V

    .line 161
    return-void
.end method

.method public createIcon(Landroid/service/notification/StatusBarNotification;)Lcom/oneplus/aod/StatusBarIconView;
    .locals 10
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v9, 0x0

    .line 265
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    .line 266
    .local v8, "n":Landroid/app/Notification;
    new-instance v7, Lcom/oneplus/aod/StatusBarIconView;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-direct {v7, v1, v2, v8}, Lcom/oneplus/aod/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 268
    .local v7, "iconView":Lcom/oneplus/aod/StatusBarIconView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v1}, Lcom/oneplus/aod/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 270
    invoke-virtual {v8}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 271
    .local v3, "smallIcon":Landroid/graphics/drawable/Icon;
    if-nez v3, :cond_0

    .line 272
    const-string/jumbo v1, "NotificationManager"

    const-string/jumbo v2, "createIcon: small icon is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-object v9

    .line 275
    :cond_0
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 276
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 277
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 279
    iget v4, v8, Landroid/app/Notification;->iconLevel:I

    .line 280
    iget v5, v8, Landroid/app/Notification;->number:I

    .line 281
    iget-object v6, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v8}, Lcom/oneplus/aod/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v6

    .line 275
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 282
    .local v0, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {v7, v0}, Lcom/oneplus/aod/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 283
    const-string/jumbo v1, "NotificationManager"

    const-string/jumbo v2, "set icon view fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-object v9

    .line 286
    :cond_1
    return-object v7
.end method

.method public getCurrentMediaNotificationKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotificationData()Lcom/oneplus/aod/NotificationData;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    return-object v0
.end method

.method protected isCurrentProfile(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x1

    .line 353
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v1

    .line 354
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/oneplus/aod/NotificationManager;->mDeviceProvisioned:Z

    return v0
.end method

.method public isLockScreenPublicMode()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/oneplus/aod/NotificationManager;->mLockScreenPublicMode:Z

    return v0
.end method

.method public isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z
    .locals 7
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 333
    iget v1, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentUserId:I

    .line 334
    .local v1, "thisUserId":I
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    .line 336
    .local v0, "notificationUserId":I
    const-string/jumbo v2, "NotificationManager"

    const-string/jumbo v3, "%s: current userid: %d, notification userid: %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 337
    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 336
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p0, v0}, Lcom/oneplus/aod/NotificationManager;->isCurrentProfile(I)Z

    move-result v2

    return v2
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    const/4 v3, 0x0

    .line 135
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v2, v1}, Lcom/oneplus/aod/NotificationData;->get(Ljava/lang/String;)Lcom/oneplus/aod/NotificationData$Entry;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 137
    .local v0, "isUpdate":Z
    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->isDozing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mSingleNotificationView:Lcom/oneplus/aod/SingleNotificationView;

    invoke-virtual {v2, p1, v0}, Lcom/oneplus/aod/SingleNotificationView;->setNewPosted(Landroid/service/notification/StatusBarNotification;Z)V

    .line 141
    :cond_0
    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/NotificationManager;->updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 146
    :goto_1
    return-void

    .line 136
    .end local v0    # "isUpdate":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isUpdate":Z
    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p0, p1, p2, v3}, Lcom/oneplus/aod/NotificationManager;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/oneplus/aod/NotificationData$Entry;)V

    goto :goto_1
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1
    .param p1, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 239
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/NotificationManager;->updateNotifications(I)V

    .line 240
    return-void
.end method

.method public onSecureLockScreen()Z
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/oneplus/aod/NotificationManager;->isLockScreenPublicMode()Z

    move-result v0

    return v0
.end method

.method public removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 222
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v1, p1}, Lcom/oneplus/aod/NotificationData;->get(Ljava/lang/String;)Lcom/oneplus/aod/NotificationData$Entry;

    move-result-object v0

    .line 223
    .local v0, "entry":Lcom/oneplus/aod/NotificationData$Entry;
    if-eqz v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mForegroundServiceController:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    iget-object v2, v0, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v2}, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->removeNotification(Landroid/service/notification/StatusBarNotification;)Z

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v1, p1, p2}, Lcom/oneplus/aod/NotificationData;->remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/oneplus/aod/NotificationData$Entry;

    .line 227
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/NotificationManager;->updateNotifications(I)V

    .line 228
    return-void
.end method

.method public resetData()V
    .locals 2

    .prologue
    .line 231
    new-instance v0, Lcom/oneplus/aod/NotificationData;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/NotificationData;-><init>(Lcom/oneplus/aod/NotificationData$Environment;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    .line 232
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mIconController:Lcom/oneplus/aod/NotificationIconAreaController;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/NotificationIconAreaController;->updateNotificationIcons(Lcom/oneplus/aod/NotificationData;)V

    .line 233
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mForegroundServiceController:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    invoke-virtual {v0}, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->reset()V

    .line 234
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mForegroundServiceController:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/NotificationData;->setForeGroundServiceController(Lcom/oneplus/aod/ForegroundServiceControllerImpl;)V

    .line 235
    return-void
.end method

.method protected setLockScreenAllowRemoteInput(Z)V
    .locals 0
    .param p1, "allowLockscreenRemoteInput"    # Z

    .prologue
    .line 431
    iput-boolean p1, p0, Lcom/oneplus/aod/NotificationManager;->mAllowLockscreenRemoteInput:Z

    .line 432
    return-void
.end method

.method protected setShowLockscreenNotifications(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 423
    iput-boolean p1, p0, Lcom/oneplus/aod/NotificationManager;->mShowLockscreenNotifications:Z

    .line 425
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mSingleNotificationView:Lcom/oneplus/aod/SingleNotificationView;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mSingleNotificationView:Lcom/oneplus/aod/SingleNotificationView;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/SingleNotificationView;->setShowLockscreenNotifications(Z)V

    .line 428
    :cond_0
    return-void
.end method

.method public shouldHideNotifications(I)Z
    .locals 1
    .param p1, "userid"    # I

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/oneplus/aod/NotificationManager;->isLockScreenPublicMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/NotificationManager;->userAllowsNotificationsInPublic(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldHideNotifications(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 321
    const-string/jumbo v1, "NotificationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldHideNotifications: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oneplus/aod/NotificationManager;->isLockScreenPublicMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v3, p1}, Lcom/oneplus/aod/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p0}, Lcom/oneplus/aod/NotificationManager;->isLockScreenPublicMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v1, p1}, Lcom/oneplus/aod/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 322
    :cond_0
    return v0
.end method

.method public showingPublic(Lcom/oneplus/aod/NotificationData$Entry;)Z
    .locals 7
    .param p1, "ent"    # Lcom/oneplus/aod/NotificationData$Entry;

    .prologue
    .line 509
    iget-object v6, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v5, v6, Landroid/app/Notification;->visibility:I

    .line 513
    .local v5, "vis":I
    iget-object v6, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/oneplus/aod/NotificationManager;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v6

    xor-int/lit8 v0, v6, 0x1

    .line 514
    .local v0, "hideSensitive":Z
    if-nez v5, :cond_1

    const/4 v2, 0x1

    .line 515
    .local v2, "sensitiveNote":Z
    :goto_0
    iget-object v6, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/oneplus/aod/NotificationManager;->packageHasVisibilityOverride(Ljava/lang/String;)Z

    move-result v3

    .line 516
    .local v3, "sensitivePackage":Z
    if-eqz v2, :cond_0

    if-nez v0, :cond_2

    :cond_0
    move v1, v3

    .line 517
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/aod/NotificationManager;->isLockScreenPublicMode()Z

    move-result v4

    .line 519
    :goto_2
    return v4

    .line 514
    .end local v2    # "sensitiveNote":Z
    .end local v3    # "sensitivePackage":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "sensitiveNote":Z
    goto :goto_0

    .line 516
    .restart local v3    # "sensitivePackage":Z
    :cond_2
    const/4 v1, 0x1

    .local v1, "sensitive":Z
    goto :goto_1

    .line 517
    .end local v1    # "sensitive":Z
    :cond_3
    const/4 v4, 0x0

    .local v4, "showingPublic":Z
    goto :goto_2
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 13
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 165
    .local v10, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v1, v10}, Lcom/oneplus/aod/NotificationData;->get(Ljava/lang/String;)Lcom/oneplus/aod/NotificationData$Entry;

    move-result-object v9

    .line 166
    .local v9, "entry":Lcom/oneplus/aod/NotificationData$Entry;
    if-nez v9, :cond_0

    .line 167
    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mForegroundServiceController:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    iget-object v2, v9, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    iget-object v4, v9, Lcom/oneplus/aod/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/oneplus/aod/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->updateNotification(Landroid/service/notification/StatusBarNotification;I)V

    .line 170
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    .line 171
    .local v11, "n":Landroid/app/Notification;
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v1, p2}, Lcom/oneplus/aod/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lcom/oneplus/aod/NotificationData$Entry;->cacheContentViews(Landroid/content/Context;Landroid/app/Notification;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 181
    :goto_0
    const/4 v12, 0x0

    .line 182
    .local v12, "updateSuccessful":Z
    if-eqz v7, :cond_2

    .line 183
    const-string/jumbo v1, "NotificationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reusing notification for key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :try_start_1
    iget-object v1, v9, Lcom/oneplus/aod/NotificationData$Entry;->icon:Lcom/oneplus/aod/StatusBarIconView;

    if-eqz v1, :cond_1

    .line 187
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 188
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 189
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {v11}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 191
    iget v4, v11, Landroid/app/Notification;->iconLevel:I

    .line 192
    iget v5, v11, Landroid/app/Notification;->number:I

    .line 193
    iget-object v6, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v11}, Lcom/oneplus/aod/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v6

    .line 187
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 194
    .local v0, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v1, v9, Lcom/oneplus/aod/NotificationData$Entry;->icon:Lcom/oneplus/aod/StatusBarIconView;

    invoke-virtual {v1, v11}, Lcom/oneplus/aod/StatusBarIconView;->setNotification(Landroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    .end local v0    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_1
    const/4 v12, 0x1

    .line 204
    :cond_2
    :goto_1
    if-nez v12, :cond_3

    .line 205
    const-string/jumbo v1, "NotificationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not reusing notification for key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 207
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 208
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-virtual {v11}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 210
    iget v4, v11, Landroid/app/Notification;->iconLevel:I

    .line 211
    iget v5, v11, Landroid/app/Notification;->number:I

    .line 212
    iget-object v6, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v11}, Lcom/oneplus/aod/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v6

    .line 206
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 213
    .restart local v0    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v1, v9, Lcom/oneplus/aod/NotificationData$Entry;->icon:Lcom/oneplus/aod/StatusBarIconView;

    invoke-virtual {v1, v11}, Lcom/oneplus/aod/StatusBarIconView;->setNotification(Landroid/app/Notification;)V

    .line 214
    iget-object v1, v9, Lcom/oneplus/aod/NotificationData$Entry;->icon:Lcom/oneplus/aod/StatusBarIconView;

    invoke-virtual {v1, v0}, Lcom/oneplus/aod/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 217
    .end local v0    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/NotificationManager;->updateNotifications(I)V

    .line 218
    return-void

    .line 176
    .end local v12    # "updateSuccessful":Z
    :catch_0
    move-exception v8

    .line 177
    .local v8, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "NotificationManager"

    const-string/jumbo v2, "Unable to get notification remote views"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    const/4 v7, 0x0

    .local v7, "applyInPlace":Z
    goto/16 :goto_0

    .line 198
    .end local v7    # "applyInPlace":Z
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .restart local v12    # "updateSuccessful":Z
    :catch_1
    move-exception v8

    .line 200
    .restart local v8    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "NotificationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t reapply views for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public updateNotifications(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v0}, Lcom/oneplus/aod/NotificationData;->filterAndSort()Z

    .line 292
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/oneplus/aod/NotificationManager;->updateSingleNotificationView()V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mIconController:Lcom/oneplus/aod/NotificationIconAreaController;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/NotificationIconAreaController;->updateNotificationIcons(Lcom/oneplus/aod/NotificationData;)V

    .line 297
    return-void
.end method

.method public userAllowsNotificationsInPublic(I)Z
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 440
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 441
    const/4 v1, 0x1

    return v1

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_2

    .line 446
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 447
    const-string/jumbo v2, "lock_screen_show_notifications"

    .line 445
    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 448
    .local v0, "allowed":Z
    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 449
    return v0

    .line 445
    .end local v0    # "allowed":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "allowed":Z
    goto :goto_0

    .line 452
    .end local v0    # "allowed":Z
    :cond_2
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    return v1
.end method

.method public userAllowsPrivateNotificationsInPublic(I)Z
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 486
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 487
    const/4 v3, 0x1

    return v3

    .line 490
    :cond_0
    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_3

    .line 492
    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 493
    const-string/jumbo v4, "lock_screen_allow_private_notifications"

    .line 491
    invoke-static {v3, v4, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 494
    .local v2, "allowedByUser":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/oneplus/aod/NotificationManager;->adminAllowsUnredactedNotifications(I)Z

    move-result v1

    .line 495
    .local v1, "allowedByDpm":Z
    if-eqz v2, :cond_2

    move v0, v1

    .line 496
    :goto_1
    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 497
    return v0

    .line 491
    .end local v1    # "allowedByDpm":Z
    .end local v2    # "allowedByUser":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "allowedByUser":Z
    goto :goto_0

    .line 495
    .restart local v1    # "allowedByDpm":Z
    :cond_2
    const/4 v0, 0x0

    .local v0, "allowed":Z
    goto :goto_1

    .line 500
    .end local v0    # "allowed":Z
    .end local v1    # "allowedByDpm":Z
    .end local v2    # "allowedByUser":Z
    :cond_3
    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    return v3
.end method
