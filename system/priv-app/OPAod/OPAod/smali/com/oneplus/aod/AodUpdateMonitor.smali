.class public Lcom/oneplus/aod/AodUpdateMonitor;
.super Ljava/lang/Object;
.source "AodUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/AodUpdateMonitor$1;,
        Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;,
        Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;,
        Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;
    }
.end annotation


# static fields
.field private static final RESULT_FAR:I = 0x2

.field private static final RESULT_NEAR:I = 0x1

.field private static final RESULT_UNKNOWN:I

.field public static STATE_DOZING:I

.field public static STATE_IDLE:I

.field public static STATE_PULSING:I

.field private static sDeviceTag:Ljava/lang/String;

.field private static sInstance:Lcom/oneplus/aod/AodUpdateMonitor;


# instance fields
.field private ACTION_UPDATE_TIME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAlarmIntent:Landroid/app/PendingIntent;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlwaysOnFired:Z

.field private final mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/oneplus/aod/AodUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAodView:Landroid/widget/RelativeLayout;

.field private mBatteryController:Lcom/oneplus/aod/battery/BatteryControllerImpl;

.field private mClockViewCtrl:Lcom/oneplus/aod/clock/ClockViewCtrl;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

.field private mDisplayPeriodTo:Lcom/oneplus/settings/TextTime;

.field private mDisplayViewManager:Lcom/oneplus/aod/DisplayViewManager;

.field private mDozeScrimController:Lcom/oneplus/doze/DozeScrimController;

.field private mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

.field private mDozing:Z

.field private mDozingRequested:Z

.field private mDreamState:I

.field private mInDisplayPeriod:Z

.field private mInited:Z

.field private mIsSecure:Z

.field private mIsWakingUp:Z

.field private mIsWindowRemoved:Z

.field private mLastDozing:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNotificationCollectorService:Lcom/oneplus/aod/NotificationCollectorService;

.field private mNotificationManager:Lcom/oneplus/aod/NotificationManager;

.field private mNotificationWakeUpEnable:Z

.field private mPocketCheck:Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;

.field private mPocketState:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingsOberver:Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;

.field private mVolumnController:Lcom/oneplus/aod/VolumneController;

.field private mWm:Landroid/view/WindowManager;

.field private mZenMode:I


# direct methods
.method static synthetic -get0(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->ACTION_UPDATE_TIME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get10(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/settings/TextTime;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodTo:Lcom/oneplus/settings/TextTime;

    return-object v0
.end method

.method static synthetic -get11(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/DisplayViewManager;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayViewManager:Lcom/oneplus/aod/DisplayViewManager;

    return-object v0
.end method

.method static synthetic -get12(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/doze/DozeScrimController;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeScrimController:Lcom/oneplus/doze/DozeScrimController;

    return-object v0
.end method

.method static synthetic -get13(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    return-object v0
.end method

.method static synthetic -get14(Lcom/oneplus/aod/AodUpdateMonitor;)Z
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozing:Z

    return v0
.end method

.method static synthetic -get15(Lcom/oneplus/aod/AodUpdateMonitor;)Z
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozingRequested:Z

    return v0
.end method

.method static synthetic -get16(Lcom/oneplus/aod/AodUpdateMonitor;)I
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    iget v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDreamState:I

    return v0
.end method

.method static synthetic -get17(Lcom/oneplus/aod/AodUpdateMonitor;)Z
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mIsWindowRemoved:Z

    return v0
.end method

.method static synthetic -get18(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get19(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketCheck:Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic -get20(Lcom/oneplus/aod/AodUpdateMonitor;)I
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    iget v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketState:I

    return v0
.end method

.method static synthetic -get21(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get22(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic -get23(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/VolumneController;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mVolumnController:Lcom/oneplus/aod/VolumneController;

    return-object v0
.end method

.method static synthetic -get24(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mWm:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/aod/AodUpdateMonitor;)Z
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    return v0
.end method

.method static synthetic -get4(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/battery/BatteryControllerImpl;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mBatteryController:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    return-object v0
.end method

.method static synthetic -get7(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get8(Lcom/oneplus/aod/AodUpdateMonitor;)I
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    iget v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    return v0
.end method

.method static synthetic -get9(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/settings/TextTime;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/aod/AodUpdateMonitor;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "-value"    # Landroid/app/PendingIntent;

    .prologue
    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic -set1(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    return p1
.end method

.method static synthetic -set2(Lcom/oneplus/aod/AodUpdateMonitor;I)I
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    return p1
.end method

.method static synthetic -set3(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozingRequested:Z

    return p1
.end method

.method static synthetic -set4(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mIsSecure:Z

    return p1
.end method

.method static synthetic -set5(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mIsWakingUp:Z

    return p1
.end method

.method static synthetic -set6(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mIsWindowRemoved:Z

    return p1
.end method

.method static synthetic -set7(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mNotificationWakeUpEnable:Z

    return p1
.end method

.method static synthetic -set8(Lcom/oneplus/aod/AodUpdateMonitor;I)I
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketState:I

    return p1
.end method

.method static synthetic -set9(Lcom/oneplus/aod/AodUpdateMonitor;I)I
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mZenMode:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->getAodViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/aod/AodUpdateMonitor;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "isPocketChange"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitor;->handleAlwaysOn(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/aod/AodUpdateMonitor;I)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitor;->handleDreamStateUpdate(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->handleUserInfoChange()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/aod/AodUpdateMonitor;I)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitor;->handleUserSwitch(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->updateDozing()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput v0, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_IDLE:I

    .line 67
    const/4 v0, 0x1

    sput v0, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_DOZING:I

    .line 68
    const/4 v0, 0x2

    sput v0, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_PULSING:I

    .line 106
    const-string/jumbo v0, ""

    sput-object v0, Lcom/oneplus/aod/AodUpdateMonitor;->sDeviceTag:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string/jumbo v1, "AodUpdateMonitor"

    iput-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->TAG:Ljava/lang/String;

    .line 64
    const-string/jumbo v1, "com.oneplus.aod.action.UPDATE_TIME"

    iput-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->ACTION_UPDATE_TIME:Ljava/lang/String;

    .line 70
    iput v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketState:I

    .line 109
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    .line 113
    iput v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    .line 114
    iput-boolean v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mInited:Z

    .line 123
    new-instance v1, Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;-><init>(Lcom/oneplus/aod/AodUpdateMonitor;)V

    iput-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mSettingsOberver:Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;

    .line 669
    new-instance v1, Lcom/oneplus/aod/AodUpdateMonitor$1;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/AodUpdateMonitor$1;-><init>(Lcom/oneplus/aod/AodUpdateMonitor;)V

    iput-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    .line 134
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mWm:Landroid/view/WindowManager;

    .line 135
    new-instance v1, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;-><init>(Lcom/oneplus/aod/AodUpdateMonitor;Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;)V

    iput-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    .line 136
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    .line 138
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 139
    new-instance v2, Lcom/oneplus/aod/AodUpdateMonitor$2;

    invoke-direct {v2, p0}, Lcom/oneplus/aod/AodUpdateMonitor$2;-><init>(Lcom/oneplus/aod/AodUpdateMonitor;)V

    .line 151
    const-string/jumbo v3, "AodUpdateMonitor"

    .line 138
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method private caculateAlarmDelay(Z)J
    .locals 14
    .param p1, "wakeAlarm"    # Z

    .prologue
    .line 885
    const-wide/32 v8, 0xea60

    .line 886
    .local v8, "nextAlarmDelay":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 888
    .local v7, "now":Ljava/lang/Long;
    if-nez p1, :cond_0

    .line 889
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/32 v12, 0xea60

    div-long/2addr v10, v12

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    const-wide/32 v12, 0xea60

    mul-long/2addr v10, v12

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v8, v10, v12

    .line 909
    :goto_0
    return-wide v8

    .line 891
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->inverseCalculate()Z

    move-result v6

    .line 893
    .local v6, "inverse":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 894
    .local v3, "date":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v0

    .line 895
    .local v0, "currentH":I
    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v1

    .line 896
    .local v1, "currentM":I
    invoke-virtual {v3}, Ljava/util/Date;->getSeconds()I

    move-result v2

    .line 897
    .local v2, "currentS":I
    const-string/jumbo v10, "AodUpdateMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "currentH = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", currentM = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v10, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v10}, Lcom/oneplus/settings/TextTime;->getHour()I

    move-result v4

    .line 900
    .local v4, "fromH":I
    iget-object v10, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v10}, Lcom/oneplus/settings/TextTime;->getMin()I

    move-result v5

    .line 901
    .local v5, "fromM":I
    const-string/jumbo v10, "AodUpdateMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "caculateAlarmDelay: fromHour = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", fromMin = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    if-gt v4, v0, :cond_1

    if-ne v4, v0, :cond_2

    if-le v5, v1, :cond_2

    .line 904
    :cond_1
    mul-int/lit8 v10, v4, 0x3c

    mul-int/lit8 v10, v10, 0x3c

    mul-int/lit8 v11, v5, 0x3c

    add-int/2addr v10, v11

    mul-int/lit16 v10, v10, 0x3e8

    mul-int/lit8 v11, v0, 0x3c

    mul-int/lit8 v11, v11, 0x3c

    mul-int/lit8 v12, v1, 0x3c

    add-int/2addr v11, v12

    add-int/2addr v11, v2

    mul-int/lit16 v11, v11, 0x3e8

    sub-int/2addr v10, v11

    int-to-long v8, v10

    .line 903
    goto/16 :goto_0

    .line 906
    :cond_2
    mul-int/lit8 v10, v0, 0x3c

    mul-int/lit8 v10, v10, 0x3c

    const v11, 0x15180

    sub-int v10, v11, v10

    mul-int/lit8 v11, v1, 0x3c

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    mul-int/lit16 v10, v10, 0x3e8

    mul-int/lit8 v11, v4, 0x3c

    mul-int/lit8 v11, v11, 0x3c

    mul-int/lit8 v12, v5, 0x3c

    add-int/2addr v11, v12

    mul-int/lit16 v11, v11, 0x3e8

    add-int/2addr v10, v11

    int-to-long v8, v10

    goto/16 :goto_0
.end method

.method private getAodViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 187
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 188
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x8ff

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 190
    const v0, 0x10500

    .line 194
    .local v0, "flags":I
    const/16 v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 197
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-lt v2, v3, :cond_0

    .line 198
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x200000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 190
    :cond_0
    const v2, 0x10500

    .line 202
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 203
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 204
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 205
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 206
    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 207
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 208
    const-string/jumbo v2, "OPAod"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    sget-object v0, Lcom/oneplus/aod/AodUpdateMonitor;->sInstance:Lcom/oneplus/aod/AodUpdateMonitor;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/AodUpdateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/aod/AodUpdateMonitor;->sInstance:Lcom/oneplus/aod/AodUpdateMonitor;

    .line 129
    :cond_0
    sget-object v0, Lcom/oneplus/aod/AodUpdateMonitor;->sInstance:Lcom/oneplus/aod/AodUpdateMonitor;

    return-object v0
.end method

.method private handleAlwaysOn(Z)V
    .locals 6
    .param p1, "isPocketChange"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 844
    invoke-virtual {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->inDisplayPeriod()Z

    move-result v0

    .line 845
    .local v0, "inDisplayPeriod":Z
    const-string/jumbo v1, "AodUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleAlwaysOn: inPeriod="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mAlwaysOnFired="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isPocketChange="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", pocket="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-boolean v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mInDisplayPeriod:Z

    if-eq v1, v0, :cond_0

    .line 848
    iput-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mInDisplayPeriod:Z

    .line 849
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    invoke-virtual {v1, v0}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->onEnterDisplayPeriod(Z)V

    .line 852
    :cond_0
    iget v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketState:I

    if-ne v1, v5, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    if-eqz v1, :cond_1

    .line 853
    const-string/jumbo v1, "AodUpdateMonitor"

    const-string/jumbo v2, "handleAlwaysOn: in pocket , pulseOutImmediatly"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iput-boolean v4, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    .line 855
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeScrimController:Lcom/oneplus/doze/DozeScrimController;

    invoke-virtual {v1}, Lcom/oneplus/doze/DozeScrimController;->pulseOutImmediatly()V

    .line 856
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 857
    return-void

    .line 860
    :cond_1
    if-nez v0, :cond_2

    .line 861
    const-string/jumbo v1, "AodUpdateMonitor"

    const-string/jumbo v2, "handleAlwaysOn: not in display period, pulseOutImmediatly"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    invoke-virtual {p0, v5}, Lcom/oneplus/aod/AodUpdateMonitor;->setAlarm(Z)V

    .line 863
    iput-boolean v4, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    .line 864
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeScrimController:Lcom/oneplus/doze/DozeScrimController;

    invoke-virtual {v1}, Lcom/oneplus/doze/DozeScrimController;->pulseOutImmediatly()V

    .line 865
    return-void

    .line 868
    :cond_2
    if-eqz v0, :cond_4

    .line 869
    const-string/jumbo v1, "AodUpdateMonitor"

    const-string/jumbo v2, "handleAlwaysOn: entering display period, show always on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-virtual {p0, v4}, Lcom/oneplus/aod/AodUpdateMonitor;->setAlarm(Z)V

    .line 871
    iget-boolean v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    if-nez v1, :cond_3

    .line 872
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->fireAlwaysDisplay()V

    .line 873
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketCheck:Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->startListening()V

    .line 875
    :cond_3
    return-void

    .line 877
    :cond_4
    return-void
.end method

.method private handleDreamStateUpdate(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    .line 637
    iget v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDreamState:I

    if-ne v2, p1, :cond_0

    .line 638
    return-void

    .line 640
    :cond_0
    const-string/jumbo v2, "AodUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDreamStateUpdate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iput p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDreamState:I

    .line 643
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 644
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 645
    .local v0, "cb":Lcom/oneplus/aod/AodUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 646
    invoke-virtual {v0, p1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onDreamingStateChanged(I)V

    .line 643
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 649
    .end local v0    # "cb":Lcom/oneplus/aod/AodUpdateMonitorCallback;
    :cond_2
    return-void
.end method

.method private handleTimeUpdate()V
    .locals 4

    .prologue
    .line 689
    const-string/jumbo v2, "AodUpdateMonitor"

    const-string/jumbo v3, "handleTimeUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 691
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 692
    .local v0, "cb":Lcom/oneplus/aod/AodUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onTimeChanged()V

    .line 690
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 696
    .end local v0    # "cb":Lcom/oneplus/aod/AodUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleUserInfoChange()V
    .locals 4

    .prologue
    .line 660
    const-string/jumbo v2, "AodUpdateMonitor"

    const-string/jumbo v3, "handleUserInfoChange"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 662
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 663
    .local v0, "cb":Lcom/oneplus/aod/AodUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 664
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onUserInfoChanged(I)V

    .line 661
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 667
    .end local v0    # "cb":Lcom/oneplus/aod/AodUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleUserSwitch(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 699
    const-string/jumbo v2, "AodUpdateMonitor"

    const-string/jumbo v3, "handleUserSwitch"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 701
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 702
    .local v0, "cb":Lcom/oneplus/aod/AodUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {v0, p1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onUserSwitchComplete(I)V

    .line 700
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 706
    .end local v0    # "cb":Lcom/oneplus/aod/AodUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private sendUpdates(Lcom/oneplus/aod/AodUpdateMonitorCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .prologue
    .line 630
    invoke-virtual {p1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onRefreshBatteryInfo()V

    .line 631
    invoke-virtual {p1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onTimeChanged()V

    .line 632
    iget v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    invoke-virtual {p1, v0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onUserSwitching(I)V

    .line 634
    return-void
.end method

.method private updateDozing()V
    .locals 3

    .prologue
    .line 536
    const-string/jumbo v0, "PhoneStatusBar#updateDozing"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 538
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozingRequested:Z

    iput-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozing:Z

    .line 542
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozing:Z

    iget-boolean v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mLastDozing:Z

    if-eq v0, v1, :cond_0

    .line 543
    const-string/jumbo v0, "AodUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDozing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozing:Z

    iput-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mLastDozing:Z

    .line 547
    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->updateDozingState()V

    .line 548
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 549
    return-void
.end method

.method private updateDozingState()V
    .locals 4

    .prologue
    .line 552
    const-string/jumbo v1, "PhoneStatusBar#updateDozingState"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 553
    iget-boolean v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeScrimController:Lcom/oneplus/doze/DozeScrimController;

    invoke-virtual {v1}, Lcom/oneplus/doze/DozeScrimController;->isPulsing()Z

    move-result v0

    .line 557
    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeScrimController:Lcom/oneplus/doze/DozeScrimController;

    iget-boolean v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozing:Z

    .line 559
    const/4 v3, 0x0

    .line 557
    invoke-virtual {v1, v2, v3}, Lcom/oneplus/doze/DozeScrimController;->setDozing(ZZ)V

    .line 560
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 561
    return-void

    .line 553
    :cond_0
    const/4 v0, 0x0

    .local v0, "animate":Z
    goto :goto_0
.end method


# virtual methods
.method public abortPulsingWithAnim()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeScrimController:Lcom/oneplus/doze/DozeScrimController;

    invoke-virtual {v0}, Lcom/oneplus/doze/DozeScrimController;->abortPulsingWithAnim()V

    .line 577
    return-void
.end method

.method public continePulse(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 656
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeScrimController:Lcom/oneplus/doze/DozeScrimController;

    invoke-virtual {v0, p1}, Lcom/oneplus/doze/DozeScrimController;->continuePulse(I)V

    .line 657
    return-void
.end method

.method public fireNewNotifications()V
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->shouldNotificationPulse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const-string/jumbo v0, "AodUpdateMonitor"

    const-string/jumbo v1, "fireNewNotifications: don\'t pulse due to in DND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void

    .line 225
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayViewManager:Lcom/oneplus/aod/DisplayViewManager;

    invoke-virtual {v0}, Lcom/oneplus/aod/DisplayViewManager;->postDelayResetViewState()V

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayViewManager:Lcom/oneplus/aod/DisplayViewManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/DisplayViewManager;->setState(I)V

    .line 232
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->fireNewNotifications()V

    goto :goto_0
.end method

.method public firePowerSaveChanged(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 235
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->firePowerSaveChanged(Z)V

    .line 236
    return-void
.end method

.method public getAodView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getBatteryController()Lcom/oneplus/aod/battery/BatteryController;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mBatteryController:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    return-object v0
.end method

.method public getClockViewCtrl()Lcom/oneplus/aod/clock/ClockViewCtrl;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mClockViewCtrl:Lcom/oneplus/aod/clock/ClockViewCtrl;

    return-object v0
.end method

.method public getCurrentUser()I
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    return v0
.end method

.method public getDisplayViewManager()Lcom/oneplus/aod/DisplayViewManager;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayViewManager:Lcom/oneplus/aod/DisplayViewManager;

    return-object v0
.end method

.method public getDozeHost()Lcom/oneplus/doze/DozeHost;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    return-object v0
.end method

.method public getDreamState()I
    .locals 1

    .prologue
    .line 652
    iget v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDreamState:I

    return v0
.end method

.method public getNotificationManager()Lcom/oneplus/aod/NotificationManager;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mNotificationManager:Lcom/oneplus/aod/NotificationManager;

    return-object v0
.end method

.method public getPSensorState()I
    .locals 1

    .prologue
    .line 840
    iget v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketState:I

    return v0
.end method

.method public inDisplayPeriod()Z
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 913
    invoke-virtual {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->inverseCalculate()Z

    move-result v3

    .line 915
    .local v3, "inverse":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 916
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v2

    .line 917
    .local v2, "h":I
    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v4

    .line 918
    .local v4, "m":I
    new-instance v0, Lcom/oneplus/settings/TextTime;

    iget-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v6, ""

    invoke-direct {v0, v5, v6}, Lcom/oneplus/settings/TextTime;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 919
    .local v0, "currentTime":Lcom/oneplus/settings/TextTime;
    invoke-virtual {v0, v2, v4}, Lcom/oneplus/settings/TextTime;->setTime(II)V

    .line 920
    sget-boolean v5, Lcom/oneplus/aod/Utils;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "AodUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "inDisplayPeriod: current time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/oneplus/settings/TextTime;->toStringIn24()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", from="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v7}, Lcom/oneplus/settings/TextTime;->toStringIn24()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", to="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodTo:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v7}, Lcom/oneplus/settings/TextTime;->toStringIn24()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", inverse="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_0
    if-nez v3, :cond_2

    .line 923
    iget-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v0, v5}, Lcom/oneplus/settings/TextTime;->comapreTo(Lcom/oneplus/settings/TextTime;)I

    move-result v5

    if-eq v5, v8, :cond_1

    iget-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodTo:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v0, v5}, Lcom/oneplus/settings/TextTime;->comapreTo(Lcom/oneplus/settings/TextTime;)I

    move-result v5

    if-eq v5, v10, :cond_1

    .line 924
    return v8

    .line 926
    :cond_1
    return v9

    .line 928
    :cond_2
    iget-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v0, v5}, Lcom/oneplus/settings/TextTime;->comapreTo(Lcom/oneplus/settings/TextTime;)I

    move-result v5

    if-eq v5, v8, :cond_3

    .line 929
    return v8

    .line 930
    :cond_3
    iget-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodTo:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v0, v5}, Lcom/oneplus/settings/TextTime;->comapreTo(Lcom/oneplus/settings/TextTime;)I

    move-result v5

    if-eq v5, v10, :cond_4

    .line 931
    return v8

    .line 933
    :cond_4
    return v9
.end method

.method protected inflateAodView(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    const v0, 0x7f040004

    const/4 v1, 0x0

    .line 214
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 158
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mInited:Z

    if-eqz v0, :cond_0

    .line 159
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mInited:Z

    .line 162
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodUpdateMonitor;->inflateAodView(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodView:Landroid/widget/RelativeLayout;

    .line 163
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    .line 164
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 166
    new-instance v0, Lcom/oneplus/aod/clock/ClockViewCtrl;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodView:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0}, Lcom/oneplus/aod/clock/ClockViewCtrl;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/oneplus/aod/AodUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mClockViewCtrl:Lcom/oneplus/aod/clock/ClockViewCtrl;

    .line 167
    new-instance v0, Lcom/oneplus/doze/DozeScrimController;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodView:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/doze/DozeScrimController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeScrimController:Lcom/oneplus/doze/DozeScrimController;

    .line 168
    new-instance v0, Lcom/oneplus/aod/DisplayViewManager;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodView:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/aod/DisplayViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayViewManager:Lcom/oneplus/aod/DisplayViewManager;

    .line 169
    new-instance v0, Lcom/oneplus/aod/VolumneController;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/oneplus/aod/VolumneController;-><init>(Landroid/content/Context;Lcom/oneplus/aod/AodUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mVolumnController:Lcom/oneplus/aod/VolumneController;

    .line 170
    new-instance v0, Lcom/oneplus/aod/battery/BatteryControllerImpl;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;-><init>(Landroid/content/Context;Lcom/oneplus/aod/AodUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mBatteryController:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .line 171
    new-instance v0, Lcom/oneplus/aod/NotificationCollectorService;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/oneplus/aod/NotificationCollectorService;-><init>(Landroid/content/Context;Lcom/oneplus/aod/AodUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mNotificationCollectorService:Lcom/oneplus/aod/NotificationCollectorService;

    .line 172
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 173
    new-instance v0, Lcom/oneplus/settings/TextTime;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "display_from"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/TextTime;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

    .line 174
    new-instance v0, Lcom/oneplus/settings/TextTime;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "display_to"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/TextTime;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodTo:Lcom/oneplus/settings/TextTime;

    .line 175
    invoke-virtual {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->updateDisplayPeriod()V

    .line 176
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/aod/Utils;->KEY_NOTIFICATION_WAKE:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mSettingsOberver:Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 177
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/aod/Utils;->KEY_AOD_DISPLAY_MODE:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mSettingsOberver:Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 178
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/aod/Utils;->KEY_MOTION_AWAKE:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mSettingsOberver:Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 179
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "display_time_start"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mSettingsOberver:Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 180
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "display_time_end"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mSettingsOberver:Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 182
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/Utils;->init(Landroid/content/Context;I)V

    .line 183
    new-instance v0, Lcom/oneplus/aod/AodUpdateMonitor$3;

    invoke-direct {v0, p0, p0}, Lcom/oneplus/aod/AodUpdateMonitor$3;-><init>(Lcom/oneplus/aod/AodUpdateMonitor;Lcom/oneplus/aod/AodUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketCheck:Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;

    .line 184
    return-void
.end method

.method public inverseCalculate()Z
    .locals 4

    .prologue
    .line 938
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

    iget-object v3, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodTo:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/TextTime;->comapreTo(Lcom/oneplus/settings/TextTime;)I

    move-result v0

    .line 939
    .local v0, "compare":I
    const/4 v1, 0x0

    .line 940
    .local v1, "inverse":Z
    if-nez v0, :cond_0

    .line 941
    const/4 v2, 0x1

    return v2

    .line 942
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 945
    const/4 v1, 0x1

    .line 948
    :cond_1
    return v1
.end method

.method public isAlwaysOnFired()Z
    .locals 1

    .prologue
    .line 880
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    return v0
.end method

.method public isDozing()Z
    .locals 1

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozing:Z

    return v0
.end method

.method public isRTL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 709
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 714
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mIsSecure:Z

    return v0
.end method

.method public isWakingUp()Z
    .locals 1

    .prologue
    .line 604
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mIsWakingUp:Z

    return v0
.end method

.method public onZenModeChange(I)V
    .locals 2
    .param p1, "zenMode"    # I

    .prologue
    .line 239
    iput p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mZenMode:I

    .line 241
    invoke-static {}, Lcom/oneplus/aod/Utils;->isMotionAwakeOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    return-void

    .line 245
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayViewManager:Lcom/oneplus/aod/DisplayViewManager;

    invoke-virtual {v0}, Lcom/oneplus/aod/DisplayViewManager;->postDelayResetViewState()V

    .line 250
    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayViewManager:Lcom/oneplus/aod/DisplayViewManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/DisplayViewManager;->setState(I)V

    .line 252
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->fireThreeKeyStateChanged()V

    goto :goto_0
.end method

.method public registerCallback(Lcom/oneplus/aod/AodUpdateMonitorCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .prologue
    .line 609
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 610
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 611
    return-void

    .line 609
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 614
    :cond_1
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->removeCallback(Lcom/oneplus/aod/AodUpdateMonitorCallback;)V

    .line 617
    return-void
.end method

.method public removeCallback(Lcom/oneplus/aod/AodUpdateMonitorCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .prologue
    .line 620
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 621
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 622
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 620
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 625
    :cond_1
    return-void
.end method

.method public setAlarm(Z)V
    .locals 10
    .param p1, "wakeUpAlarm"    # Z

    .prologue
    const/4 v9, 0x0

    .line 515
    const-string/jumbo v5, "AodUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAlarm: isWakeUpAlarm="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor;->ACTION_UPDATE_TIME:Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 517
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 518
    iget-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v5, v9, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmIntent:Landroid/app/PendingIntent;

    .line 520
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 521
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 525
    .local v4, "now":Ljava/lang/Long;
    invoke-direct {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitor;->caculateAlarmDelay(Z)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 526
    .local v3, "nextAlarmDelay":Ljava/lang/Long;
    const-string/jumbo v5, "AodUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "delay = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v5

    const/16 v6, 0xe

    invoke-virtual {v1, v6, v5}, Ljava/util/Calendar;->add(II)V

    .line 529
    new-instance v0, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmIntent:Landroid/app/PendingIntent;

    invoke-direct {v0, v6, v7, v5}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    .line 531
    .local v0, "alarmClockInfo":Landroid/app/AlarmManager$AlarmClockInfo;
    iget-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v9, v6, v7, v8}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 533
    return-void
.end method

.method public setNotificationManager(Lcom/oneplus/aod/NotificationManager;)V
    .locals 0
    .param p1, "nm"    # Lcom/oneplus/aod/NotificationManager;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mNotificationManager:Lcom/oneplus/aod/NotificationManager;

    .line 581
    return-void
.end method

.method public shouldNotificationPulse()Z
    .locals 1

    .prologue
    .line 718
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mNotificationWakeUpEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mVolumnController:Lcom/oneplus/aod/VolumneController;

    invoke-virtual {v0}, Lcom/oneplus/aod/VolumneController;->isDNDEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDisplayPeriod()V
    .locals 4

    .prologue
    .line 952
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "display_time_start"

    iget v3, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/TextTime;->setTime(Ljava/lang/String;)V

    .line 953
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodTo:Lcom/oneplus/settings/TextTime;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "display_time_end"

    iget v3, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/TextTime;->setTime(Ljava/lang/String;)V

    .line 954
    return-void
.end method
