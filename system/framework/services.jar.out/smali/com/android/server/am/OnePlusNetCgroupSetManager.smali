.class public Lcom/android/server/am/OnePlusNetCgroupSetManager;
.super Ljava/lang/Object;
.source "OnePlusNetCgroupSetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusNetCgroupSetManager$1;,
        Lcom/android/server/am/OnePlusNetCgroupSetManager$2;,
        Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;,
        Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeStatusContentObserver;,
        Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static DEBUG_OEMLOG:Z = false

.field private static final GAME_MODE_NETWORK_ACC:Ljava/lang/String; = "game_mode_network_acceleration"

.field private static final MSG_GET_LAUNCHERS:I = 0x6

.field private static final MSG_SET_NETCGROUP_BG:I = 0x0

.field private static final MSG_SET_NETCGROUP_BG_UIDS:I = 0x3

.field private static final MSG_SET_NETCGROUP_CLEAR:I = 0x2

.field private static final MSG_SET_NETCGROUP_FG:I = 0x1

.field private static final MSG_SET_NETCGROUP_TOUCH_WIN:I = 0x4

.field private static final MSG_SET_NETCGROUP_WITHOUT_CODE:I = 0x5

.field public static final TAG:Ljava/lang/String; = "OnePlusNetCgroupSetManager"

.field private static final URI_GAME_NETWORK_ACC:Landroid/net/Uri;

.field private static final URI_GAME_STATUS:Landroid/net/Uri;

.field private static final VALUE_BG_FLAG:I = 0x1

.field private static final VALUE_DF_FLAG:I = 0x0

.field private static final VALUE_FG_FLAG:I = 0x2

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static final VALUE_TOUCH_WIN_CHANGE_FLAG:I = 0x3

.field private static final VALUE_TOUCH_WIN_SWITCHOFF_FLAG:I = 0x1

.field private static final VALUE_TOUCH_WIN_SWITCHON_FLAG:I = 0x2

.field public static final VERSION:I = 0x7848b7f1

.field public static mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private static mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

.field public static pm:Landroid/content/pm/PackageManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentFrontUid:I

.field mFrontActivityUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mFrontWindowTouchUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGameModeNetWorkAccObserver:Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;

.field private mGameModeStatus:Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeStatusContentObserver;

.field private mGameStatus:Z

.field mLastFgUid:I

.field mLastFrontWindowTouchUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mLastSetFrontUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mLaunchers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNetCgroupSetHandler:Landroid/os/Handler;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field final mRulesLock:Ljava/lang/Object;

.field final mTouchWinLock:Ljava/lang/Object;

.field final mUidPidState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWifiBoost:I

.field resolver:Landroid/content/ContentResolver;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .prologue
    iget v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/am/OnePlusNetCgroupSetManager;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mGameStatus:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .prologue
    iget v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mWifiBoost:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/am/OnePlusNetCgroupSetManager;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/am/OnePlusNetCgroupSetManager;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mGameStatus:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/am/OnePlusNetCgroupSetManager;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mWifiBoost:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/am/OnePlusNetCgroupSetManager;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->getGameModeStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/OnePlusNetCgroupSetManager;)Lcom/android/server/am/ActivityRecord;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->getCurrentFrontUid()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->getGameModeNetWorkAcc()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/am/OnePlusNetCgroupSetManager;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->getLaunchers()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/am/OnePlusNetCgroupSetManager;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;
    .param p1, "flag"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUidsTouchWin(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/am/OnePlusNetCgroupSetManager;Ljava/util/HashSet;II)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;
    .param p1, "temp_uids"    # Ljava/util/HashSet;
    .param p2, "flag"    # I
    .param p3, "code"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUids(Ljava/util/HashSet;II)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/am/OnePlusNetCgroupSetManager;II)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;
    .param p1, "uid"    # I
    .param p2, "flag"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(II)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/am/OnePlusNetCgroupSetManager;III)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;
    .param p1, "uid"    # I
    .param p2, "flag"    # I
    .param p3, "code"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(III)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/am/OnePlusNetCgroupSetManager;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;
    .param p1, "on"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->opStatusChanged(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/am/OnePlusNetCgroupSetManager;ZI)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;
    .param p1, "foregroundActivities"    # Z
    .param p2, "uid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->toSetNetCgroup(ZI)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 51
    sput-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    .line 52
    sput-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    .line 67
    const-string/jumbo v0, "game_mode_network_acceleration"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->URI_GAME_NETWORK_ACC:Landroid/net/Uri;

    .line 68
    const-string/jumbo v0, "game_mode_status"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->URI_GAME_STATUS:Landroid/net/Uri;

    .line 96
    sput-object v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 97
    sput-object v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->pm:Landroid/content/pm/PackageManager;

    .line 99
    sput-object v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .line 49
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 7
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    .line 77
    iput v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mWifiBoost:I

    .line 78
    iput v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    .line 79
    iput-boolean v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mGameStatus:Z

    .line 80
    iput v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFgUid:I

    .line 81
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mRulesLock:Ljava/lang/Object;

    .line 82
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mTouchWinLock:Ljava/lang/Object;

    .line 84
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    .line 86
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidPidState:Landroid/util/SparseArray;

    .line 88
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    .line 89
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    .line 91
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    .line 92
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLaunchers:Ljava/util/HashSet;

    .line 95
    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->resolver:Landroid/content/ContentResolver;

    .line 161
    new-instance v2, Lcom/android/server/am/OnePlusNetCgroupSetManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager$1;-><init>(Lcom/android/server/am/OnePlusNetCgroupSetManager;)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    new-instance v2, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;-><init>(Lcom/android/server/am/OnePlusNetCgroupSetManager;)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 109
    const-string/jumbo v2, "OnePlusNetCgroupSetManager"

    const-string/jumbo v3, "OnePlusNetCgroupSetManager VERSION = v2018031601"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string/jumbo v2, "persist.sys.netgroupset.debug"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    .line 111
    const-string/jumbo v2, "persist.sys.assert.panic"

    sget-boolean v3, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    .line 113
    sput-object p1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 114
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mContext:Landroid/content/Context;

    .line 115
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->resolver:Landroid/content/ContentResolver;

    .line 117
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->pm:Landroid/content/pm/PackageManager;

    .line 119
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "NetCgroupSetThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "mNetCgroupSetThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 121
    new-instance v2, Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;-><init>(Lcom/android/server/am/OnePlusNetCgroupSetManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    .line 123
    new-instance v2, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;

    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;-><init>(Lcom/android/server/am/OnePlusNetCgroupSetManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mGameModeNetWorkAccObserver:Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;

    .line 124
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->resolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/am/OnePlusNetCgroupSetManager;->URI_GAME_NETWORK_ACC:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mGameModeNetWorkAccObserver:Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 125
    invoke-direct {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->getGameModeNetWorkAcc()I

    move-result v2

    iput v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mWifiBoost:I

    .line 127
    new-instance v2, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeStatusContentObserver;

    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeStatusContentObserver;-><init>(Lcom/android/server/am/OnePlusNetCgroupSetManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mGameModeStatus:Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeStatusContentObserver;

    .line 128
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->resolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/am/OnePlusNetCgroupSetManager;->URI_GAME_STATUS:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mGameModeStatus:Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeStatusContentObserver;

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 129
    invoke-direct {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->getGameModeStatus()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mGameStatus:Z

    .line 131
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string/jumbo v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 140
    sget-object v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 141
    return-void
.end method

.method private add3rdAppProcessState(II)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 251
    sget-boolean v5, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "OnePlusNetCgroupSetManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[netCgroupSet] add3rdAppProcessState uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " |pid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 253
    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 254
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 255
    .local v4, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v4, :cond_1

    .line 256
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .restart local v4    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 259
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 260
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->isSetNetCgroup()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 263
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 265
    .local v1, "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 266
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 267
    .local v3, "mUid1":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 268
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x2

    invoke-direct {p0, v7, v8, v5}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 253
    .end local v1    # "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "mUid1":Ljava/lang/Integer;
    .end local v4    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 272
    .restart local v1    # "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v4    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 273
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 275
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 276
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 277
    .local v2, "mUid":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_4

    .line 278
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x5

    const/4 v8, 0x2

    invoke-direct {p0, v7, v8, v5}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v1    # "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "mUid":Ljava/lang/Integer;
    :cond_5
    monitor-exit v6

    .line 285
    .end local v4    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    return-void
.end method

.method static final addPidToCgroupTasksWithJudge(Lcom/android/server/am/ProcessRecord;I)V
    .locals 2
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "childPid"    # I

    .prologue
    .line 288
    if-eqz p0, :cond_0

    .line 289
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    .line 288
    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 291
    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    if-eqz v0, :cond_0

    .line 292
    if-lez p1, :cond_0

    .line 293
    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {v0, v1, p1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->add3rdAppProcessState(II)V

    .line 297
    :cond_0
    return-void
.end method

.method private checkToSetCgroup(II)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "flag"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 451
    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[netCgroupSet] checkToSetCgroup uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " |flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " |mFrontActivityUids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " |mFrontWindowTouchUids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 454
    return v3

    .line 458
    :cond_1
    if-ne p2, v4, :cond_3

    .line 459
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 460
    :cond_2
    return v3

    .line 464
    :cond_3
    return v4
.end method

.method private getCurrentFrontUid()Lcom/android/server/am/ActivityRecord;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 171
    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 173
    .local v0, "a":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2

    .line 174
    sget-boolean v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OnePlusNetCgroupSetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[netCgroupSet] pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 175
    const-string/jumbo v4, " |uid:"

    .line 174
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 175
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 174
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 176
    const-string/jumbo v4, " |processName:"

    .line 174
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 176
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 174
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_0
    return-object v0

    .line 179
    .end local v0    # "a":Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "OnePlusNetCgroupSetManager"

    const-string/jumbo v3, "[netCgroupSet] getCurrentFrontUid error, return -1"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_1
    return-object v5

    .line 184
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return-object v5
.end method

.method private getGameModeNetWorkAcc()I
    .locals 4

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->resolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "game_mode_network_acceleration"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getGameModeStatus()Z
    .locals 4

    .prologue
    .line 610
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->resolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "game_mode_status"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OnePlusNetCgroupSetManager;
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 102
    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .line 105
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    return-object v0
.end method

.method private getLaunchers()V
    .locals 9

    .prologue
    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.category.HOME"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    sget-object v5, Lcom/android/server/am/OnePlusNetCgroupSetManager;->pm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 147
    .local v1, "lst":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLaunchers:Ljava/util/HashSet;

    monitor-enter v6

    .line 148
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLaunchers:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 149
    if-eqz v1, :cond_1

    .line 150
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 151
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 152
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLaunchers:Ljava/util/HashSet;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 153
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLaunchers:Ljava/util/HashSet;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 147
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "resolveInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 157
    :cond_1
    :try_start_1
    sget-boolean v5, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "OnePlusNetCgroupSetManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[netCgroupSet] mLaunchers: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLaunchers:Ljava/util/HashSet;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v6

    .line 159
    return-void
.end method

.method private handleSetNetCgroup(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "flag"    # I

    .prologue
    .line 350
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(III)V

    .line 351
    return-void
.end method

.method private handleSetNetCgroup(III)V
    .locals 10
    .param p1, "uid"    # I
    .param p2, "flag"    # I
    .param p3, "code"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 354
    sget-boolean v4, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    if-eqz v4, :cond_1

    :cond_0
    const-string/jumbo v4, "OnePlusNetCgroupSetManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[netCgroupSet] handleSetNetCgroup UserHandle.isApp(uid):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " |uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " |flag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " |code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 357
    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 358
    if-ne p2, v8, :cond_3

    const/4 v4, 0x3

    if-ne p3, v4, :cond_3

    .line 359
    sget-boolean v4, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "OnePlusNetCgroupSetManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[netCgroupSet] handleSetNetCgroup uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is showing touchwindow, dont set VALUE_BG_FLAG, return"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_2
    return-void

    .line 364
    :cond_3
    if-ne p2, v8, :cond_5

    const/4 v4, 0x4

    if-ne p3, v4, :cond_5

    .line 365
    iget v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    if-eq v4, v7, :cond_5

    iget v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    if-ne p1, v4, :cond_5

    .line 366
    sget-boolean v4, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "OnePlusNetCgroupSetManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[netCgroupSet] handleSetNetCgroup uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is front activity, dont set VALUE_BG_FLAG, return"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_4
    return-void

    .line 371
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mTouchWinLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->checkToSetCgroup(II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_6

    :try_start_2
    monitor-exit v4

    return-void

    :cond_6
    monitor-exit v4

    .line 375
    const/4 v3, 0x0

    .line 376
    .local v3, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 377
    :try_start_3
    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v3, v0

    .line 379
    .local v3, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ltz v4, :cond_b

    .line 380
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 381
    sget-boolean v4, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-nez v4, :cond_7

    sget-boolean v4, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    if-eqz v4, :cond_8

    :cond_7
    const-string/jumbo v4, "OnePlusNetCgroupSetManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[netCgroupSet] handleSetNetCgroup uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " |pid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " |flag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_8
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4, p2}, Landroid/os/Process;->setProcessNetGroup(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 380
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 371
    .end local v2    # "i":I
    .end local v3    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v4

    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 404
    :catch_0
    move-exception v1

    .line 405
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "OnePlusNetCgroupSetManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[netCgroupSet] handleSetNetCgroup fail e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_1
    return-void

    .line 385
    .restart local v2    # "i":I
    .restart local v3    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_a
    if-ne p2, v9, :cond_e

    if-ne p3, v8, :cond_e

    .line 386
    :try_start_5
    iput p1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFgUid:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v2    # "i":I
    :cond_b
    :goto_2
    :try_start_6
    monitor-exit v5

    .line 393
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mTouchWinLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 394
    if-ne p2, v9, :cond_f

    :try_start_7
    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_f

    .line 395
    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_c
    :goto_3
    const/4 v4, 0x5

    if-eq p3, v4, :cond_d

    invoke-direct {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->toSetFrontUids()V

    .line 401
    :cond_d
    invoke-direct {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->isFrontActivityUidsEmpty()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1

    .line 387
    .restart local v2    # "i":I
    :cond_e
    if-ne p2, v8, :cond_b

    if-ne p3, v9, :cond_b

    .line 388
    const/4 v4, -0x1

    :try_start_9
    iput v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFgUid:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .line 376
    .end local v2    # "i":I
    .end local v3    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v4

    :try_start_a
    monitor-exit v5

    throw v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 396
    .restart local v3    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_f
    if-ne p2, v8, :cond_c

    :try_start_b
    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 397
    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_3

    .line 393
    :catchall_2
    move-exception v4

    :try_start_c
    monitor-exit v5

    throw v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
.end method

.method private handleSetNetCgroupUids(Ljava/util/HashSet;II)V
    .locals 5
    .param p2, "flag"    # I
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, "temp_uids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 470
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 471
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 472
    .local v1, "uid":Ljava/lang/Integer;
    sget-boolean v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OnePlusNetCgroupSetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[netCgroupSet] handleSetNetCgroupUids uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " |flag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " |code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(III)V

    goto :goto_0

    .line 475
    .end local v1    # "uid":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method private handleSetNetCgroupUidsTouchWin(I)V
    .locals 4
    .param p1, "flag"    # I

    .prologue
    .line 478
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mTouchWinLock:Ljava/lang/Object;

    monitor-enter v1

    .line 479
    :try_start_0
    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OnePlusNetCgroupSetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[netCgroupSet] handleSetNetCgroupUidsTouchWin mLastFrontWindowTouchUids:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " |mFrontWindowTouchUids:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " |flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    monitor-exit v1

    .line 497
    return-void

    .line 482
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUids(Ljava/util/HashSet;II)V

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUids(Ljava/util/HashSet;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 486
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUids(Ljava/util/HashSet;II)V

    .line 487
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUids(Ljava/util/HashSet;II)V

    goto :goto_0

    .line 490
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUids(Ljava/util/HashSet;II)V

    .line 491
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUids(Ljava/util/HashSet;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 480
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isFrontActivityUidsEmpty()V
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 411
    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[netCgroupSet] FrontActivityUids is Empty, mCurrentFrontUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    iget v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 413
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    iget v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 414
    iget v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(III)V

    .line 417
    :cond_1
    return-void
.end method

.method private opStatusChanged(Z)V
    .locals 14
    .param p1, "on"    # Z

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 530
    sget-boolean v6, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "OnePlusNetCgroupSetManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[netCgroupSet] opStatusChanged mFrontActivityUids:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " |mLastFgUid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFgUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " |on:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_0
    if-eqz p1, :cond_5

    .line 532
    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 534
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 535
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 536
    .local v3, "mUid":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v9, v11, v6}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    .line 538
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 539
    .local v5, "temp_uids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 540
    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 541
    .local v2, "key":I
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v2, :cond_1

    .line 542
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 546
    .end local v2    # "key":I
    :cond_2
    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 547
    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 549
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    invoke-static {v6, v12, v10, v9, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 550
    .local v4, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 553
    .end local v0    # "i":I
    .end local v3    # "mUid":Ljava/lang/Integer;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "temp_uids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_4
    invoke-direct {p0, v13, v11, v10}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    .line 565
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_2
    return-void

    .line 555
    :cond_5
    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 556
    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 559
    :cond_6
    iget v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFgUid:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    .line 560
    iget v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFgUid:I

    invoke-direct {p0, v11, v9, v6}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    .line 563
    :cond_7
    invoke-direct {p0, v13, v9, v10}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    goto :goto_2
.end method

.method private sendMessageSetNetCgroup(III)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "flag"    # I
    .param p3, "uid"    # I

    .prologue
    .line 525
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, p1, p3, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 526
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 527
    return-void
.end method

.method private toSetFrontUids()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x5

    .line 420
    sget-boolean v7, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "OnePlusNetCgroupSetManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[netCgroupSet] toSetFrontUids mLastSetFrontUids:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " |mFrontActivityUids:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " |mFrontWindowTouchUids:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    iget-object v7, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 423
    .local v0, "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 424
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 425
    .local v4, "uid1":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    invoke-virtual {v7, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 426
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7, v11, v10}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(III)V

    goto :goto_0

    .line 430
    .end local v4    # "uid1":Ljava/lang/Integer;
    :cond_2
    iget-object v7, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 432
    .local v1, "iterator2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 433
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 434
    .local v5, "uid2":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 435
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7, v11, v10}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(III)V

    goto :goto_1

    .line 439
    .end local v5    # "uid2":Ljava/lang/Integer;
    :cond_4
    iget-object v7, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 440
    .local v3, "mCloneHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 442
    .local v2, "iterator3":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 443
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 444
    .local v6, "uid3":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5

    .line 445
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8, v10}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(III)V

    goto :goto_2

    .line 448
    .end local v6    # "uid3":Ljava/lang/Integer;
    :cond_6
    return-void
.end method

.method private toSetNetCgroup(ZI)V
    .locals 7
    .param p1, "foregroundActivities"    # Z
    .param p2, "uid"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 505
    sget-boolean v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OnePlusNetCgroupSetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[netCgroupSet] toSetNetCgroup uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " |foregroundActivities:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " |mFrontActivityUids:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->isSetNetCgroup()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 507
    if-eqz p1, :cond_2

    .line 508
    invoke-direct {p0, v5, v6, p2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    .line 522
    :cond_1
    return-void

    .line 510
    :cond_2
    iget v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    if-eq v2, p2, :cond_3

    .line 511
    const/4 v2, 0x0

    invoke-direct {p0, v2, v5, p2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    .line 514
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 516
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 517
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 518
    .local v1, "mUid":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v5, v6, v2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    goto :goto_0
.end method

.method public static updateTouchWindowUidChange(Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "fontWindowTouchUids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    if-eqz v0, :cond_1

    .line 301
    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[netCgroupSet] updateTouchWindowUidChange change ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " |mFrontWindowTouchUids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v1, v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mTouchWinLock:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    .line 304
    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 305
    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 308
    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->isSetNetCgroup()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    .line 310
    :cond_1
    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method isSetNetCgroup()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 500
    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v2, "OnePlusNetCgroupSetManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[netCgroupSet] isSetNetCgroup: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mWifiBoost:I

    if-ne v0, v4, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mGameStatus:Z

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_0
    iget v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mWifiBoost:I

    if-ne v0, v4, :cond_1

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mGameStatus:Z

    :cond_1
    return v1

    :cond_2
    move v0, v1

    .line 500
    goto :goto_0
.end method
