.class public Lcom/android/server/vr/VrManagerService;
.super Lcom/android/server/SystemService;
.source "VrManagerService.java"

# interfaces
.implements Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/VrManagerService$1;,
        Lcom/android/server/vr/VrManagerService$2;,
        Lcom/android/server/vr/VrManagerService$3;,
        Lcom/android/server/vr/VrManagerService$4;,
        Lcom/android/server/vr/VrManagerService$LocalService;,
        Lcom/android/server/vr/VrManagerService$NotificationAccessManager;,
        Lcom/android/server/vr/VrManagerService$SettingEvent;,
        Lcom/android/server/vr/VrManagerService$VrState;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final EVENT_LOG_SIZE:I = 0x40

.field private static final FLAG_ALL:I = 0x7

.field private static final FLAG_AWAKE:I = 0x1

.field private static final FLAG_KEYGUARD_UNLOCKED:I = 0x4

.field private static final FLAG_NONE:I = 0x0

.field private static final FLAG_SCREEN_ON:I = 0x2

.field private static final INVALID_APPOPS_MODE:I = -0x1

.field private static final MSG_PENDING_VR_STATE_CHANGE:I = 0x1

.field private static final MSG_PERSISTENT_VR_MODE_STATE_CHANGE:I = 0x2

.field private static final MSG_VR_STATE_CHANGE:I = 0x0

.field private static final PENDING_STATE_DELAY_MS:I = 0x12c

.field public static final TAG:Ljava/lang/String; = "VrManagerService"

.field private static final sBinderChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;


# instance fields
.field private mBootsToVr:Z

.field private mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

.field private mCurrentVrModeComponent:Landroid/content/ComponentName;

.field private mCurrentVrModeUser:I

.field private mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

.field private mDefaultVrService:Landroid/content/ComponentName;

.field private final mEventCallback:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

.field private mGuard:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mLogLimitHit:Z

.field private final mLoggingDeque:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/utils/ManagedApplicationService$LogFormattable;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

.field private mNotificationManager:Landroid/app/INotificationManager;

.field private final mOverlayToken:Landroid/os/IBinder;

.field private mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

.field private mPersistentVrModeEnabled:Z

.field private final mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/service/vr/IPersistentVrStateCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousCoarseLocationMode:I

.field private mPreviousManageOverlayMode:I

.field private mRunning2dInVr:Z

.field private mSystemSleepFlags:I

.field private mUserUnlocked:Z

.field private mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

.field private mVrAppProcessId:I

.field private final mVrManager:Landroid/service/vr/IVrManager;

.field private mVrModeAllowed:Z

.field private mVrModeEnabled:Z

.field private final mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/service/vr/IVrStateCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mWasDefaultGranted:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/vr/VrManagerService;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/EnabledComponentsObserver;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/vr/VrManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/vr/VrManagerService;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;

    .prologue
    iget v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/vr/VrManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/vr/VrManagerService;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/vr/VrManagerService;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/vr/VrManagerService;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->getPersistentVrMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/vr/VrManagerService;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->getVrMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->grantCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->grantNotificationListenerAccess(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->grantNotificationPolicyAccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/vr/VrManagerService;Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "event"    # Lcom/android/server/utils/ManagedApplicationService$LogFormattable;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "cb"    # Landroid/service/vr/IPersistentVrStateCallbacks;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->removePersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->removeStateCallback(Landroid/service/vr/IVrStateCallbacks;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->revokeCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->revokeNotificationListenerAccess(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->revokeNotificationPolicyAccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setAndBindCompositor(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->isCurrentVrListener(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/vr/VrManagerService;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "isShowing"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setKeyguardShowing(Z)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/vr/VrManagerService;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setPersistentVrModeEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/vr/VrManagerService;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "isScreenOn"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setScreenOn(Z)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/vr/VrManagerService;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "isAsleep"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setSleepState(Z)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/vr/VrManagerService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->setUserUnlocked()V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/vr/VrManagerService;ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "enabled"    # Z
    .param p2, "targetPackageName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "processId"    # I
    .param p5, "callingPackage"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/vr/VrManagerService;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->getVr2dDisplayId()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;I)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "targetPackageName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->hasVrPackage(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "cb"    # Landroid/service/vr/IPersistentVrStateCallbacks;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->addPersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->addStateCallback(Landroid/service/vr/IVrStateCallbacks;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/vr/VrManagerService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/vr/VrManagerService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->dumpStateTransitions(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 405
    new-instance v0, Lcom/android/server/vr/VrManagerService$3;

    invoke-direct {v0}, Lcom/android/server/vr/VrManagerService$3;-><init>()V

    sput-object v0, Lcom/android/server/vr/VrManagerService;->sBinderChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 725
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 131
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    .line 149
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 148
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 151
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 152
    iput v1, p0, Lcom/android/server/vr/VrManagerService;->mPreviousCoarseLocationMode:I

    .line 153
    iput v1, p0, Lcom/android/server/vr/VrManagerService;->mPreviousManageOverlayMode:I

    .line 156
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    .line 157
    new-instance v0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;-><init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$NotificationAccessManager;)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    .line 160
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    .line 173
    new-instance v0, Lcom/android/server/vr/VrManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/vr/VrManagerService$1;-><init>(Lcom/android/server/vr/VrManagerService;)V

    .line 172
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mEventCallback:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    .line 276
    new-instance v0, Lcom/android/server/vr/VrManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/vr/VrManagerService$2;-><init>(Lcom/android/server/vr/VrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    .line 504
    new-instance v0, Lcom/android/server/vr/VrManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/vr/VrManagerService$4;-><init>(Lcom/android/server/vr/VrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Landroid/service/vr/IVrManager;

    .line 726
    return-void
.end method

.method private addPersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .locals 1
    .param p1, "cb"    # Landroid/service/vr/IPersistentVrStateCallbacks;

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1366
    return-void
.end method

.method private addStateCallback(Landroid/service/vr/IVrStateCallbacks;)V
    .locals 1
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1358
    return-void
.end method

.method private changeVrModeLocked(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1111
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1112
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    .line 1115
    const-string/jumbo v1, "VrManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VR mode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "enabled"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->setVrModeNative(Z)V

    .line 1118
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->onVrModeChangedLocked()V

    .line 1120
    :cond_0
    return-void

    .line 1115
    :cond_1
    const-string/jumbo v0, "disabled"

    goto :goto_0
.end method

.method private consumeAndApplyPendingStateLocked()V
    .locals 1

    .prologue
    .line 1161
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked(Z)V

    .line 1162
    return-void
.end method

.method private consumeAndApplyPendingStateLocked(Z)V
    .locals 8
    .param p1, "disconnectIfNoPendingState"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 1172
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    if-eqz v0, :cond_1

    .line 1173
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget-boolean v1, v0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget-boolean v2, v0, Lcom/android/server/vr/VrManagerService$VrState;->running2dInVr:Z

    .line 1174
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget-object v3, v0, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget v4, v0, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget v5, v0, Lcom/android/server/vr/VrManagerService$VrState;->processId:I

    .line 1175
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget-object v6, v0, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    move-object v0, p0

    .line 1173
    invoke-direct/range {v0 .. v6}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    .line 1176
    iput-object v7, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    .line 1180
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    if-eqz p1, :cond_0

    .line 1178
    const/4 v5, -0x1

    move-object v0, p0

    move v2, v1

    move-object v3, v7

    move v4, v1

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    goto :goto_0
.end method

.method private createAndConnectService(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 1098
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->createVrListenerService(Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 1099
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->connect()V

    .line 1100
    const-string/jumbo v0, "VrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    return-void
.end method

.method private createVrCompositorService(Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;
    .locals 10
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1149
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    .line 1151
    .local v7, "retryType":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    .line 1153
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/vr/VrManagerService;->mEventCallback:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    .line 1151
    const/4 v3, 0x0

    .line 1152
    const/4 v6, 0x1

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    .line 1151
    invoke-static/range {v0 .. v9}, Lcom/android/server/utils/ManagedApplicationService;->build(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;ZILandroid/os/Handler;Lcom/android/server/utils/ManagedApplicationService$EventCallback;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v0

    return-object v0

    .line 1150
    .end local v7    # "retryType":I
    :cond_0
    const/4 v7, 0x3

    .restart local v7    # "retryType":I
    goto :goto_0
.end method

.method private createVrListenerService(Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;
    .locals 10
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 1137
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    .line 1139
    .local v7, "retryType":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    .line 1140
    const-string/jumbo v4, "android.settings.VR_LISTENER_SETTINGS"

    .line 1141
    sget-object v5, Lcom/android/server/vr/VrManagerService;->sBinderChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/vr/VrManagerService;->mEventCallback:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    .line 1140
    const v3, 0x104066e

    .line 1141
    const/4 v6, 0x1

    move-object v1, p1

    move v2, p2

    .line 1139
    invoke-static/range {v0 .. v9}, Lcom/android/server/utils/ManagedApplicationService;->build(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;ZILandroid/os/Handler;Lcom/android/server/utils/ManagedApplicationService$EventCallback;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v0

    return-object v0

    .line 1138
    .end local v7    # "retryType":I
    :cond_0
    const/4 v7, 0x2

    .restart local v7    # "retryType":I
    goto :goto_0
.end method

.method private dumpStateTransitions(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1200
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1201
    .local v0, "d":Ljava/text/SimpleDateFormat;
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    monitor-enter v4

    .line 1202
    :try_start_0
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1203
    const-string/jumbo v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1204
    const-string/jumbo v3, "None"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1207
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mLogLimitHit:Z

    if-eqz v3, :cond_1

    .line 1208
    const-string/jumbo v3, "..."

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1211
    :cond_1
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "event$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/ManagedApplicationService$LogFormattable;

    .line 1212
    .local v1, "event":Lcom/android/server/utils/ManagedApplicationService$LogFormattable;
    invoke-interface {v1, v0}, Lcom/android/server/utils/ManagedApplicationService$LogFormattable;->toLogString(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1201
    .end local v1    # "event":Lcom/android/server/utils/ManagedApplicationService$LogFormattable;
    .end local v2    # "event$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "event$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v4

    .line 1215
    return-void
.end method

.method private varargs enforceCallerPermissionAnyOf([Ljava/lang/String;)V
    .locals 4
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 657
    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 658
    .local v0, "permission":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 660
    return-void

    .line 657
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 663
    .end local v0    # "permission":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Caller does not hold at least one of the permissions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 664
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 663
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static formatSettings(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1076
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1077
    :cond_0
    const-string/jumbo v4, ""

    return-object v4

    .line 1080
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1081
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 1082
    .local v3, "start":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "s$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1083
    .local v1, "s":Ljava/lang/String;
    const-string/jumbo v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1086
    if-nez v3, :cond_3

    .line 1087
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1089
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    const/4 v3, 0x0

    goto :goto_0

    .line 1092
    .end local v1    # "s":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getNotificationListeners(Landroid/content/ContentResolver;I)Landroid/util/ArraySet;
    .locals 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I)",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1061
    const-string/jumbo v4, "enabled_notification_listeners"

    .line 1060
    invoke-static {p1, v4, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1063
    .local v2, "flat":Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1064
    .local v1, "current":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 1065
    const-string/jumbo v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1066
    .local v0, "allowed":[Ljava/lang/String;
    const/4 v4, 0x0

    array-length v5, v0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    .line 1067
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1068
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1066
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1072
    .end local v0    # "allowed":[Ljava/lang/String;
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private getPersistentVrMode()Z
    .locals 2

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1380
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 1379
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getStateAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    iget v0, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "awake, "

    .line 262
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 264
    iget v0, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const-string/jumbo v0, "screen_on, "

    .line 262
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 265
    iget v0, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const-string/jumbo v0, "keyguard_off"

    .line 262
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 263
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 264
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    .line 265
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_2
.end method

.method private getVr2dDisplayId()I
    .locals 2

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    invoke-virtual {v0}, Lcom/android/server/vr/Vr2dDisplay;->getVirtualDisplayId()I

    move-result v0

    return v0

    .line 1291
    :cond_0
    const-string/jumbo v0, "VrManagerService"

    const-string/jumbo v1, "Vr2dDisplay is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    const/4 v0, -0x1

    return v0
.end method

.method private getVrMode()Z
    .locals 2

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1374
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 1373
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private grantCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1026
    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/vr/VrManagerService;->isPermissionUserUpdated(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1028
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1029
    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 1028
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    :cond_0
    :goto_0
    return-void

    .line 1030
    :catch_0
    move-exception v0

    .line 1032
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "VrManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not grant coarse location permission, package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1033
    const-string/jumbo v3, " was removed."

    .line 1032
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private grantNotificationListenerAccess(Ljava/lang/String;I)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1000
    iget-object v5, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/NotificationManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1001
    .local v2, "nm":Landroid/app/NotificationManager;
    iget-object v5, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1003
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v5, "android.service.notification.NotificationListenerService"

    .line 1004
    const-string/jumbo v6, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    .line 1002
    invoke-static {v3, p2, v5, v6}, Lcom/android/server/vr/EnabledComponentsObserver;->loadComponentNames(Landroid/content/pm/PackageManager;ILjava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v4

    .line 1006
    .local v4, "possibleServices":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1007
    .local v0, "c":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1008
    const/4 v5, 0x1

    invoke-virtual {v2, v0, p2, v5}, Landroid/app/NotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    goto :goto_0

    .line 1011
    .end local v0    # "c":Landroid/content/ComponentName;
    :cond_1
    return-void
.end method

.method private grantNotificationPolicyAccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 987
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 988
    .local v0, "nm":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 989
    return-void
.end method

.method private hasVrPackage(Landroid/content/ComponentName;I)I
    .locals 2
    .param p1, "targetPackageName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 1337
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1338
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/vr/EnabledComponentsObserver;->isValid(Landroid/content/ComponentName;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1337
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native initializeNative()V
.end method

.method private isCurrentVrListener(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1343
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1344
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v1

    .line 1345
    return v0

    .line 1347
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v2}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1348
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v2}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-ne p2, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit v1

    .line 1347
    return v0

    .line 1343
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isDefaultAllowed(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 972
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 974
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 976
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 980
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v3

    :goto_1
    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 981
    :cond_0
    const/4 v3, 0x0

    return v3

    .line 977
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    move v3, v4

    .line 980
    goto :goto_1

    .line 983
    :cond_2
    return v4
.end method

.method private isPermissionUserUpdated(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1053
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1054
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 1053
    invoke-virtual {v2, p1, p2, v3}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    .line 1055
    .local v0, "flags":I
    and-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V
    .locals 3
    .param p1, "event"    # Lcom/android/server/utils/ManagedApplicationService$LogFormattable;

    .prologue
    .line 1190
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 1191
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v2, 0x40

    if-ne v0, v2, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 1193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mLogLimitHit:Z

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1197
    return-void

    .line 1190
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private logStateLocked()V
    .locals 8

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-nez v0, :cond_0

    const/4 v3, 0x0

    .line 1185
    :goto_0
    new-instance v0, Lcom/android/server/vr/VrManagerService$VrState;

    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    .line 1186
    iget v4, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    iget v5, p0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    iget-object v6, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    iget-boolean v7, p0, Lcom/android/server/vr/VrManagerService;->mWasDefaultGranted:Z

    .line 1185
    invoke-direct/range {v0 .. v7}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/vr/VrManagerService;->logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    .line 1187
    return-void

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .local v3, "currentBoundService":Landroid/content/ComponentName;
    goto :goto_0
.end method

.method private onVrModeChangedLocked()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1128
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    .line 1129
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1128
    :goto_0
    invoke-virtual {v3, v1, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1130
    return-void

    :cond_0
    move v0, v1

    .line 1129
    goto :goto_0
.end method

.method private removePersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .locals 1
    .param p1, "cb"    # Landroid/service/vr/IPersistentVrStateCallbacks;

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1370
    return-void
.end method

.method private removeStateCallback(Landroid/service/vr/IVrStateCallbacks;)V
    .locals 1
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1362
    return-void
.end method

.method private revokeCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1040
    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/vr/VrManagerService;->isPermissionUserUpdated(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1042
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1043
    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 1042
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    :cond_0
    :goto_0
    return-void

    .line 1044
    :catch_0
    move-exception v0

    .line 1046
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "VrManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not revoke coarse location permission, package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1047
    const-string/jumbo v3, " was removed."

    .line 1046
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private revokeNotificationListenerAccess(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1014
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/NotificationManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1015
    .local v3, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v3, p2}, Landroid/app/NotificationManager;->getEnabledNotificationListeners(I)Ljava/util/List;

    move-result-object v2

    .line 1017
    .local v2, "current":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "component$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1018
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1019
    const/4 v4, 0x0

    invoke-virtual {v3, v0, p2, v4}, Landroid/app/NotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    goto :goto_0

    .line 1022
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_1
    return-void
.end method

.method private revokeNotificationPolicyAccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 992
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 994
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z

    .line 996
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 997
    return-void
.end method

.method private setAndBindCompositor(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 1296
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1297
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1298
    .local v0, "token":J
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1299
    :try_start_0
    invoke-direct {p0, v2, p1}, Lcom/android/server/vr/VrManagerService;->updateCompositorServiceLocked(ILandroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 1301
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1302
    return-void

    .line 1298
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method private setKeyguardShowing(Z)V
    .locals 2
    .param p1, "isShowing"    # Z

    .prologue
    .line 243
    xor-int/lit8 v0, p1, 0x1

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    .line 244
    return-void
.end method

.method private setPersistentModeAndNotifyListenersLocked(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1324
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    if-ne v1, p1, :cond_0

    .line 1325
    return-void

    .line 1327
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Persistent VR mode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    const-string/jumbo v1, "enabled"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1328
    .local v0, "eventName":Ljava/lang/String;
    const-string/jumbo v1, "VrManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    new-instance v1, Lcom/android/server/vr/VrManagerService$SettingEvent;

    invoke-direct {v1, v0}, Lcom/android/server/vr/VrManagerService$SettingEvent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/vr/VrManagerService;->logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    .line 1330
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    .line 1332
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    .line 1333
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 1332
    :goto_1
    const/4 v5, 0x2

    invoke-virtual {v4, v5, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1334
    return-void

    .line 1327
    .end local v0    # "eventName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "disabled"

    goto :goto_0

    .restart local v0    # "eventName":Ljava/lang/String;
    :cond_2
    move v1, v2

    .line 1333
    goto :goto_1
.end method

.method private setPersistentVrModeEnabled(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    .line 1269
    iget-object v6, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1270
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setPersistentModeAndNotifyListenersLocked(Z)V

    .line 1272
    if-nez p1, :cond_0

    .line 1273
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v6

    .line 1276
    return-void

    .line 1269
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private setScreenOn(Z)V
    .locals 1
    .param p1, "isScreenOn"    # Z

    .prologue
    .line 239
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    .line 240
    return-void
.end method

.method private setSleepState(Z)V
    .locals 2
    .param p1, "isAsleep"    # Z

    .prologue
    .line 235
    xor-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    .line 236
    return-void
.end method

.method private setSystemState(IZ)V
    .locals 4
    .param p1, "flags"    # I
    .param p2, "isOn"    # Z

    .prologue
    .line 247
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 248
    :try_start_0
    iget v0, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    .line 249
    .local v0, "oldState":I
    if-eqz p2, :cond_1

    .line 250
    iget v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    .line 254
    :goto_0
    iget v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    if-eq v0, v1, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->updateVrModeAllowedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 259
    return-void

    .line 252
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    not-int v3, p1

    and-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 247
    .end local v0    # "oldState":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private setUserUnlocked()V
    .locals 2

    .prologue
    .line 270
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 271
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mUserUnlocked:Z

    .line 272
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->updateVrModeAllowedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 274
    return-void

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    .locals 12
    .param p1, "enabled"    # Z
    .param p2, "targetPackageName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "processId"    # I
    .param p5, "callingPackage"    # Landroid/content/ComponentName;

    .prologue
    .line 1223
    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1229
    if-nez p1, :cond_0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    .line 1230
    :goto_0
    if-nez p1, :cond_1

    iget-boolean v2, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    .line 1231
    :goto_1
    if-eqz v2, :cond_2

    .line 1232
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mDefaultVrService:Landroid/content/ComponentName;

    .line 1237
    .local v3, "targetListener":Landroid/content/ComponentName;
    :goto_2
    new-instance v0, Lcom/android/server/vr/VrManagerService$VrState;

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 1240
    .local v0, "pending":Lcom/android/server/vr/VrManagerService$VrState;
    iget-boolean v4, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    if-nez v4, :cond_3

    .line 1244
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    .line 1245
    return-void

    .line 1229
    .end local v0    # "pending":Lcom/android/server/vr/VrManagerService$VrState;
    .end local v3    # "targetListener":Landroid/content/ComponentName;
    :cond_0
    const/4 v1, 0x1

    .local v1, "targetEnabledState":Z
    goto :goto_0

    .line 1230
    .end local v1    # "targetEnabledState":Z
    :cond_1
    const/4 v2, 0x0

    .local v2, "running2dInVr":Z
    goto :goto_1

    .line 1234
    .end local v2    # "running2dInVr":Z
    :cond_2
    move-object v3, p2

    .restart local v3    # "targetListener":Landroid/content/ComponentName;
    goto :goto_2

    .line 1248
    .restart local v0    # "pending":Lcom/android/server/vr/VrManagerService$VrState;
    :cond_3
    if-nez v1, :cond_5

    :try_start_1
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v4, :cond_5

    .line 1251
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    if-nez v4, :cond_4

    .line 1252
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    .line 1253
    const-wide/16 v6, 0x12c

    .line 1252
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1256
    :cond_4
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v11

    .line 1257
    return-void

    .line 1259
    :cond_5
    :try_start_2
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1260
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    move-object v4, p0

    move v5, v1

    move v6, v2

    move-object v7, v3

    move v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    .line 1263
    invoke-direct/range {v4 .. v10}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v11

    .line 1266
    return-void

    .line 1223
    .end local v0    # "pending":Lcom/android/server/vr/VrManagerService$VrState;
    .end local v3    # "targetListener":Landroid/content/ComponentName;
    :catchall_0
    move-exception v4

    monitor-exit v11

    throw v4
.end method

.method private static native setVrModeNative(Z)V
.end method

.method private updateCompositorServiceLocked(ILandroid/content/ComponentName;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 1305
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/utils/ManagedApplicationService;->disconnectIfNotMatching(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 1305
    if-eqz v0, :cond_0

    .line 1307
    const-string/jumbo v0, "VrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Disconnecting compositor service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1308
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v2}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 1307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iput-object v3, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    .line 1314
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    if-nez v0, :cond_1

    .line 1317
    const-string/jumbo v0, "VrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connecting compositor service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    invoke-direct {p0, p2, p1}, Lcom/android/server/vr/VrManagerService;->createVrCompositorService(Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    .line 1319
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->connect()V

    .line 1321
    :cond_1
    return-void
.end method

.method private updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z
    .locals 20
    .param p1, "enabled"    # Z
    .param p2, "running2dInVr"    # Z
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .param p5, "processId"    # I
    .param p6, "calling"    # Landroid/content/ComponentName;

    .prologue
    .line 870
    const/4 v15, 0x0

    .line 871
    .local v15, "sendUpdatedCaller":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 874
    .local v8, "identity":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/vr/EnabledComponentsObserver;->isValid(Landroid/content/ComponentName;I)I

    move-result v17

    if-nez v17, :cond_0

    const/16 v16, 0x1

    .line 876
    .local v16, "validUserComponent":Z
    :goto_0
    if-eqz v16, :cond_1

    move/from16 v6, p1

    .line 877
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    move/from16 v17, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v17, :cond_2

    xor-int/lit8 v17, v6, 0x1

    if-eqz v17, :cond_2

    .line 967
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 878
    return v16

    .line 874
    .end local v16    # "validUserComponent":Z
    :cond_0
    const/16 v16, 0x0

    .restart local v16    # "validUserComponent":Z
    goto :goto_0

    .line 876
    :cond_1
    const/4 v6, 0x0

    .local v6, "goingIntoVrMode":Z
    goto :goto_1

    .line 881
    .end local v6    # "goingIntoVrMode":Z
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 883
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    .line 886
    .local v12, "oldUserId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/vr/VrManagerService;->changeVrModeLocked(Z)V

    .line 888
    const/4 v11, 0x0

    .line 889
    .local v11, "nothingChanged":Z
    if-nez v6, :cond_c

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 892
    const-string/jumbo v17, "VrManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Leaving VR mode, disconnecting "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    .line 892
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 893
    const-string/jumbo v19, " for user "

    .line 892
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v19

    .line 892
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    .line 896
    const/16 v17, -0x2710

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/vr/VrManagerService;->updateCompositorServiceLocked(ILandroid/content/ComponentName;)V

    .line 897
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 925
    :goto_3
    if-nez p6, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 926
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    .line 925
    if-nez v17, :cond_5

    .line 927
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p2

    if-eq v0, v1, :cond_6

    .line 928
    :cond_5
    const/4 v15, 0x1

    .line 930
    :cond_6
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    .line 931
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    .line 932
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    .line 934
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p4

    if-eq v0, v1, :cond_7

    .line 935
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    .line 936
    const/4 v15, 0x1

    .line 939
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 941
    :goto_4
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    .line 945
    .local v7, "newUserId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7, v13, v12}, Lcom/android/server/vr/VrManagerService;->updateDependentAppOpsLocked(Ljava/lang/String;ILjava/lang/String;I)V

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    if-eqz v15, :cond_8

    .line 949
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    .line 950
    .local v5, "c":Landroid/content/ComponentName;
    move/from16 v4, p2

    .line 951
    .local v4, "b":Z
    move/from16 v14, p5

    .line 952
    .local v14, "pid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/server/vr/VrManagerService$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p5

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/vr/VrManagerService$6;-><init>(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;ZI)V

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/utils/ManagedApplicationService;->sendEvent(Lcom/android/server/utils/ManagedApplicationService$PendingEvent;)V

    .line 961
    .end local v4    # "b":Z
    .end local v5    # "c":Landroid/content/ComponentName;
    .end local v14    # "pid":I
    :cond_8
    if-nez v11, :cond_9

    .line 962
    invoke-direct/range {p0 .. p0}, Lcom/android/server/vr/VrManagerService;->logStateLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 967
    :cond_9
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 965
    return v16

    .line 882
    .end local v7    # "newUserId":I
    .end local v11    # "nothingChanged":Z
    .end local v12    # "oldUserId":I
    :cond_a
    const/4 v13, 0x0

    .local v13, "oldVrServicePackage":Ljava/lang/String;
    goto/16 :goto_2

    .line 899
    .end local v13    # "oldVrServicePackage":Ljava/lang/String;
    .restart local v11    # "nothingChanged":Z
    .restart local v12    # "oldUserId":I
    :cond_b
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 903
    :cond_c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/ManagedApplicationService;->disconnectIfNotMatching(Landroid/content/ComponentName;I)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 907
    const-string/jumbo v17, "VrManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "VR mode component changed to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 908
    const-string/jumbo v19, ", disconnecting "

    .line 907
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    .line 907
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 909
    const-string/jumbo v19, " for user "

    .line 907
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v19

    .line 907
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const/16 v17, -0x2710

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/vr/VrManagerService;->updateCompositorServiceLocked(ILandroid/content/ComponentName;)V

    .line 911
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/server/vr/VrManagerService;->createAndConnectService(Landroid/content/ComponentName;I)V

    .line 912
    const/4 v15, 0x1

    goto/16 :goto_3

    .line 914
    :cond_d
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 920
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/server/vr/VrManagerService;->createAndConnectService(Landroid/content/ComponentName;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 921
    const/4 v15, 0x1

    goto/16 :goto_3

    .line 940
    :cond_f
    const/4 v10, 0x0

    .local v10, "newVrServicePackage":Ljava/lang/String;
    goto/16 :goto_4

    .line 966
    .end local v10    # "newVrServicePackage":Ljava/lang/String;
    .end local v11    # "nothingChanged":Z
    .end local v12    # "oldUserId":I
    .end local v16    # "validUserComponent":Z
    :catchall_0
    move-exception v17

    .line 967
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 966
    throw v17
.end method

.method private updateDependentAppOpsLocked(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .param p1, "newVrServicePackage"    # Ljava/lang/String;
    .param p2, "newUserId"    # I
    .param p3, "oldVrServicePackage"    # Ljava/lang/String;
    .param p4, "oldUserId"    # I

    .prologue
    .line 839
    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 840
    return-void

    .line 842
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 845
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/vr/VrManagerService;->updateOverlayStateLocked(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 849
    return-void

    .line 846
    :catchall_0
    move-exception v2

    .line 847
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 846
    throw v2
.end method

.method private updateOverlayStateLocked(Ljava/lang/String;II)V
    .locals 6
    .param p1, "exemptedPackage"    # Ljava/lang/String;
    .param p2, "newUserId"    # I
    .param p3, "oldUserId"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v1, 0x18

    const/4 v2, 0x0

    .line 820
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 823
    .local v0, "appOpsManager":Landroid/app/AppOpsManager;
    if-eq p3, p2, :cond_0

    .line 825
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    move v5, p3

    .line 824
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    .line 829
    :cond_0
    if-nez p1, :cond_1

    new-array v4, v2, [Ljava/lang/String;

    .line 833
    .local v4, "exemptions":[Ljava/lang/String;
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    move v5, p2

    .line 832
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    .line 834
    return-void

    .line 830
    .end local v4    # "exemptions":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v2

    .restart local v4    # "exemptions":[Ljava/lang/String;
    goto :goto_0
.end method

.method private updateVrModeAllowedLocked()V
    .locals 14

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 206
    iget v0, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    iget-boolean v13, p0, Lcom/android/server/vr/VrManagerService;->mUserUnlocked:Z

    .line 207
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    if-eq v0, v13, :cond_1

    .line 208
    iput-boolean v13, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    .line 210
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    if-eqz v0, :cond_3

    .line 211
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v0, :cond_0

    .line 212
    invoke-direct {p0, v1}, Lcom/android/server/vr/VrManagerService;->setPersistentVrModeEnabled(Z)V

    .line 214
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 215
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mDefaultVrService:Landroid/content/ComponentName;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 232
    :cond_1
    :goto_1
    return-void

    .line 206
    :cond_2
    const/4 v13, 0x0

    .local v13, "allowed":Z
    goto :goto_0

    .line 220
    .end local v13    # "allowed":Z
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/server/vr/VrManagerService;->setPersistentModeAndNotifyListenersLocked(Z)V

    .line 223
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v0, :cond_4

    .line 224
    new-instance v6, Lcom/android/server/vr/VrManagerService$VrState;

    iget-boolean v7, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget-boolean v8, p0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 225
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v10

    iget v11, p0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    iget-object v12, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    .line 224
    invoke-direct/range {v6 .. v12}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 223
    :goto_2
    iput-object v6, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    move-object v6, p0

    move v7, v3

    move v8, v3

    move-object v9, v5

    move v10, v3

    move v11, v4

    move-object v12, v5

    .line 229
    invoke-direct/range {v6 .. v12}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    goto :goto_1

    :cond_4
    move-object v6, v5

    .line 226
    goto :goto_2
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 13
    .param p1, "phase"    # I

    .prologue
    const/4 v12, 0x0

    .line 742
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 744
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 743
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mNotificationManager:Landroid/app/INotificationManager;

    .line 745
    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 746
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    .line 747
    .local v3, "looper":Landroid/os/Looper;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 748
    .local v1, "handler":Landroid/os/Handler;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 749
    .local v7, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;>;"
    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    .line 751
    const-string/jumbo v2, "enabled_vr_listeners"

    .line 752
    const-string/jumbo v4, "android.permission.BIND_VR_LISTENER_SERVICE"

    .line 753
    const-string/jumbo v5, "android.service.vr.VrListenerService"

    iget-object v6, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 750
    invoke-static/range {v0 .. v7}, Lcom/android/server/vr/EnabledComponentsObserver;->build(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;)Lcom/android/server/vr/EnabledComponentsObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    .line 755
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    .line 760
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getDefaultVrComponents()Landroid/util/ArraySet;

    move-result-object v8

    .line 761
    .local v8, "defaultVrComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 762
    invoke-virtual {v8, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mDefaultVrService:Landroid/content/ComponentName;

    .line 768
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/display/DisplayManager;

    .line 769
    .local v9, "dm":Landroid/hardware/display/DisplayManager;
    new-instance v4, Lcom/android/server/vr/Vr2dDisplay;

    .line 771
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 772
    const-class v2, Landroid/view/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerInternal;

    .line 773
    iget-object v5, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Landroid/service/vr/IVrManager;

    .line 769
    invoke-direct {v4, v9, v0, v2, v5}, Lcom/android/server/vr/Vr2dDisplay;-><init>(Landroid/hardware/display/DisplayManager;Landroid/app/ActivityManagerInternal;Landroid/view/WindowManagerInternal;Landroid/service/vr/IVrManager;)V

    iput-object v4, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    .line 774
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    invoke-virtual {v0, v2, v4}, Lcom/android/server/vr/Vr2dDisplay;->init(Landroid/content/Context;Z)V

    .line 776
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 777
    .local v10, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 778
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/android/server/vr/VrManagerService$5;

    invoke-direct {v2, p0}, Lcom/android/server/vr/VrManagerService$5;-><init>(Lcom/android/server/vr/VrManagerService;)V

    invoke-virtual {v0, v2, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 787
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v3    # "looper":Landroid/os/Looper;
    .end local v7    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;>;"
    .end local v8    # "defaultVrComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v9    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v10    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 745
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0

    .line 764
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v3    # "looper":Landroid/os/Looper;
    .restart local v7    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;>;"
    .restart local v8    # "defaultVrComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_1
    const-string/jumbo v0, "VrManagerService"

    const-string/jumbo v2, "No default vr listener service found."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCleanupUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 814
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 815
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 817
    return-void

    .line 814
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onEnabledComponentChanged()V
    .locals 14

    .prologue
    .line 472
    iget-object v13, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 473
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 475
    .local v7, "currentUser":I
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0, v7}, Lcom/android/server/vr/EnabledComponentsObserver;->getEnabled(I)Landroid/util/ArraySet;

    move-result-object v8

    .line 477
    .local v8, "enabledListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 478
    .local v9, "enabledPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "n$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    .line 479
    .local v10, "n":Landroid/content/ComponentName;
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 480
    .local v12, "pkg":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/android/server/vr/VrManagerService;->isDefaultAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 472
    .end local v7    # "currentUser":I
    .end local v8    # "enabledListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v9    # "enabledPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v10    # "n":Landroid/content/ComponentName;
    .end local v11    # "n$iterator":Ljava/util/Iterator;
    .end local v12    # "pkg":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v13

    throw v0

    .line 484
    .restart local v7    # "currentUser":I
    .restart local v8    # "enabledListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .restart local v9    # "enabledPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "n$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    invoke-virtual {v0, v9}, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->update(Ljava/util/Collection;)V

    .line 486
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    monitor-exit v13

    .line 487
    return-void

    .line 491
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked(Z)V

    .line 493
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_3

    monitor-exit v13

    .line 494
    return-void

    .line 498
    :cond_3
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    .line 499
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v4

    .line 500
    iget v5, p0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    iget-object v6, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    move-object v0, p0

    .line 498
    invoke-direct/range {v0 .. v6}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v13

    .line 502
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 730
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 731
    :try_start_0
    invoke-static {}, Lcom/android/server/vr/VrManagerService;->initializeNative()V

    .line 732
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 735
    const-string/jumbo v0, "ro.boot.vr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    .line 736
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    new-instance v1, Lcom/android/server/vr/VrManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/vr/VrManagerService$LocalService;-><init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$LocalService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vr/VrManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 737
    const-string/jumbo v0, "vrmanager"

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Landroid/service/vr/IVrManager;

    invoke-interface {v1}, Landroid/service/vr/IVrManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vr/VrManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 738
    return-void

    .line 730
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 791
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 792
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 794
    return-void

    .line 791
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStopUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 806
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 807
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 810
    return-void

    .line 806
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onSwitchUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 798
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 799
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 802
    return-void

    .line 798
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    .locals 2
    .param p1, "compatDisplayProp"    # Landroid/app/Vr2dDisplayProperties;

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    if-eqz v0, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/Vr2dDisplay;->setVirtualDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V

    .line 1282
    return-void

    .line 1284
    :cond_0
    const-string/jumbo v0, "VrManagerService"

    const-string/jumbo v1, "Vr2dDisplay is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    return-void
.end method
