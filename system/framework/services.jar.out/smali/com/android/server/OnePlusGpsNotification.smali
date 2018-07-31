.class public Lcom/android/server/OnePlusGpsNotification;
.super Ljava/lang/Object;
.source "OnePlusGpsNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OnePlusGpsNotification$1;,
        Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;
    }
.end annotation


# static fields
.field private static final CANCEL_DELAY:J = 0x320L

.field static DEBUG:Z = false

.field private static final MESSAGE_CANCEL:I = 0xdac1

.field private static final MESSAGE_START:I = 0xdac0

.field private static final START_DELAY:J = 0x1f4L

.field static mNotificationIdPackage:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static mPendingGpsPackage:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mPendingPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field TAG:Ljava/lang/String;

.field idCount:I

.field private mAction:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mCurrentGpsLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentGpsPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;

.field private volatile mLastIsCancel:Z

.field private volatile mLastNotifyTime:J

.field final mLock:Ljava/lang/Object;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field mPendingIntent:Landroid/app/PendingIntent;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mSettingLocationIntent:Landroid/content/Intent;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private manager:Landroid/app/ActivityManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/OnePlusGpsNotification;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OnePlusGpsNotification;

    .prologue
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/OnePlusGpsNotification;)Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OnePlusGpsNotification;

    .prologue
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification;->mHandler:Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/OnePlusGpsNotification;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OnePlusGpsNotification;

    .prologue
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/OnePlusGpsNotification;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OnePlusGpsNotification;

    .prologue
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification;->manager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/OnePlusGpsNotification;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OnePlusGpsNotification;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/OnePlusGpsNotification;->mLastIsCancel:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/OnePlusGpsNotification;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OnePlusGpsNotification;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/OnePlusGpsNotification;->mLastNotifyTime:J

    return-wide p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/OnePlusGpsNotification;->mPendingPackageList:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/OnePlusGpsNotification;->mNotificationIdPackage:Landroid/util/ArrayMap;

    .line 38
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/OnePlusGpsNotification;->mPendingGpsPackage:Landroid/util/ArrayMap;

    .line 45
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OnePlusGpsNotification;->DEBUG:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsLists:Ljava/util/ArrayList;

    .line 41
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/OnePlusGpsNotification;->mLastNotifyTime:J

    .line 42
    iput-boolean v4, p0, Lcom/android/server/OnePlusGpsNotification;->mLastIsCancel:Z

    .line 43
    iput v4, p0, Lcom/android/server/OnePlusGpsNotification;->idCount:I

    .line 44
    const-string/jumbo v1, "OnePlusGpsNotification"

    iput-object v1, p0, Lcom/android/server/OnePlusGpsNotification;->TAG:Ljava/lang/String;

    .line 46
    const-string/jumbo v1, "android.intent.oneplus.gpsforcestop"

    iput-object v1, p0, Lcom/android/server/OnePlusGpsNotification;->mAction:Ljava/lang/String;

    .line 53
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/OnePlusGpsNotification;->mLock:Ljava/lang/Object;

    .line 54
    iput-object v5, p0, Lcom/android/server/OnePlusGpsNotification;->mSettingLocationIntent:Landroid/content/Intent;

    .line 55
    iput-object v5, p0, Lcom/android/server/OnePlusGpsNotification;->mPendingIntent:Landroid/app/PendingIntent;

    .line 71
    new-instance v1, Lcom/android/server/OnePlusGpsNotification$1;

    invoke-direct {v1, p0}, Lcom/android/server/OnePlusGpsNotification$1;-><init>(Lcom/android/server/OnePlusGpsNotification;)V

    iput-object v1, p0, Lcom/android/server/OnePlusGpsNotification;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    iput-object p1, p0, Lcom/android/server/OnePlusGpsNotification;->mContext:Landroid/content/Context;

    .line 59
    const-string/jumbo v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/OnePlusGpsNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 60
    const-string/jumbo v1, "statusbar"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/server/OnePlusGpsNotification;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 61
    const-string/jumbo v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/server/OnePlusGpsNotification;->manager:Landroid/app/ActivityManager;

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/OnePlusGpsNotification;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/android/server/OnePlusGpsNotification;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    new-instance v1, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;-><init>(Lcom/android/server/OnePlusGpsNotification;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/OnePlusGpsNotification;->mHandler:Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;

    .line 66
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/OnePlusGpsNotification;->mSettingLocationIntent:Landroid/content/Intent;

    .line 67
    iget-object v1, p0, Lcom/android/server/OnePlusGpsNotification;->mSettingLocationIntent:Landroid/content/Intent;

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    iget-object v1, p0, Lcom/android/server/OnePlusGpsNotification;->mSettingLocationIntent:Landroid/content/Intent;

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    return-void
.end method


# virtual methods
.method public notifyPackageNotification()V
    .locals 24

    .prologue
    .line 133
    const-string/jumbo v20, ""

    .line 134
    .local v20, "mCurrentGpsList":Ljava/lang/String;
    const/16 v18, 0x0

    .line 135
    .local v18, "isSingleGpsRequestPackage":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 136
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsLists:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    .line 139
    return-void

    .line 141
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    .line 142
    const/16 v18, 0x0

    .line 146
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v19, v2, -0x1

    .line 147
    .local v19, "k":I
    move/from16 v17, v19

    .local v17, "i":I
    :goto_1
    if-ltz v17, :cond_4

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 149
    .local v22, "packageNameTemp":Ljava/lang/String;
    const/4 v13, 0x0

    .line 150
    .local v13, "context":Landroid/content/Context;
    const-string/jumbo v10, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .local v10, "applicationName":Ljava/lang/String;
    :try_start_2
    new-instance v15, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-direct {v15, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 153
    .local v15, "currentUser":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusGpsNotification;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v4, v15}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v13

    .line 154
    .local v13, "context":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 155
    .local v9, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    .end local v10    # "applicationName":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    .end local v9    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "context":Landroid/content/Context;
    .end local v15    # "currentUser":Landroid/os/UserHandle;
    .restart local v10    # "applicationName":Ljava/lang/String;
    :goto_2
    if-nez v13, :cond_2

    .line 147
    :goto_3
    add-int/lit8 v17, v17, -0x1

    goto :goto_1

    .line 144
    .end local v10    # "applicationName":Ljava/lang/String;
    .end local v17    # "i":I
    .end local v19    # "k":I
    .end local v22    # "packageNameTemp":Ljava/lang/String;
    :cond_1
    const/16 v18, 0x1

    goto :goto_0

    .line 156
    .restart local v17    # "i":I
    .restart local v19    # "k":I
    .restart local v22    # "packageNameTemp":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 157
    .local v16, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusGpsNotification;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Unable to create context for heavy notification"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    const-string/jumbo v10, ""

    .line 159
    .restart local v10    # "applicationName":Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "context":Landroid/content/Context;
    goto :goto_2

    .line 164
    .end local v13    # "context":Landroid/content/Context;
    .end local v16    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    if-nez v17, :cond_3

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto :goto_3

    .line 167
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/OnePlusGpsNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104009b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v20

    goto :goto_3

    .end local v10    # "applicationName":Ljava/lang/String;
    .end local v22    # "packageNameTemp":Ljava/lang/String;
    :cond_4
    monitor-exit v3

    .line 172
    sget-boolean v2, Lcom/android/server/OnePlusGpsNotification;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 174
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusGpsNotification;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyPackageNotification mCurrentGpsPackageList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 175
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    .line 174
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 175
    const-string/jumbo v5, " mCurrentGpsList = "

    .line 174
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v3

    .line 178
    :cond_5
    const-string/jumbo v23, ""

    .line 179
    .local v23, "title":Ljava/lang/String;
    if-eqz v18, :cond_6

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusGpsNotification;->mContext:Landroid/content/Context;

    const v3, 0x50b0041

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 184
    :goto_4
    move-object/from16 v14, v20

    .line 185
    .local v14, "contextStopPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusGpsNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/OnePlusGpsNotification;->mSettingLocationIntent:Landroid/content/Intent;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/high16 v5, 0x8000000

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/OnePlusGpsNotification;->mPendingIntent:Landroid/app/PendingIntent;

    .line 189
    const-string/jumbo v8, "OP_GPS_NOTIFICATION"

    .line 190
    .local v8, "OP_GPS_CHANNEL":Ljava/lang/String;
    const-string/jumbo v12, "GPS"

    .line 191
    .local v12, "channel_title":Ljava/lang/String;
    new-instance v11, Landroid/app/NotificationChannel;

    .line 192
    const-string/jumbo v2, "OP_GPS_NOTIFICATION"

    .line 193
    const-string/jumbo v3, "GPS"

    .line 195
    const/4 v4, 0x3

    .line 191
    invoke-direct {v11, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 197
    .local v11, "channelGPS":Landroid/app/NotificationChannel;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 198
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusGpsNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v11}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 201
    new-instance v2, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/OnePlusGpsNotification;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "OP_GPS_NOTIFICATION"

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 202
    const v3, 0x502000d

    .line 201
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 203
    const-wide/16 v4, 0x0

    .line 201
    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 204
    const/4 v3, 0x1

    .line 201
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 206
    const/4 v3, 0x0

    .line 201
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/OnePlusGpsNotification;->mContext:Landroid/content/Context;

    .line 208
    const v4, 0x106014c

    .line 207
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 201
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/OnePlusGpsNotification;->mPendingIntent:Landroid/app/PendingIntent;

    .line 201
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 212
    const/4 v3, 0x1

    .line 201
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v21

    .line 215
    .local v21, "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusGpsNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const v5, 0x50b0040

    move-object/from16 v0, v21

    invoke-virtual {v2, v4, v5, v0, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 216
    return-void

    .line 135
    .end local v8    # "OP_GPS_CHANNEL":Ljava/lang/String;
    .end local v11    # "channelGPS":Landroid/app/NotificationChannel;
    .end local v12    # "channel_title":Ljava/lang/String;
    .end local v14    # "contextStopPackage":Ljava/lang/String;
    .end local v17    # "i":I
    .end local v19    # "k":I
    .end local v21    # "notification":Landroid/app/Notification;
    .end local v23    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 173
    .restart local v17    # "i":I
    .restart local v19    # "k":I
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 182
    .restart local v23    # "title":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusGpsNotification;->mContext:Landroid/content/Context;

    const v3, 0x50b0040

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_4
.end method

.method public updateGpsRequstPackage(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "mPackageUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v10, 0x320

    const-wide/16 v8, 0x1f4

    .line 89
    iget-object v4, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 90
    :try_start_0
    sget-boolean v3, Lcom/android/server/OnePlusGpsNotification;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 91
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateGpsRequstPackage mLastIsCancel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/OnePlusGpsNotification;->mLastIsCancel:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " start = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 94
    .local v0, "curTime":J
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsLists:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 95
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mHandler:Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;

    const v5, 0xdac1

    invoke-virtual {v3, v5}, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->removeMessages(I)V

    .line 96
    sget-boolean v3, Lcom/android/server/OnePlusGpsNotification;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 97
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateGpsRequstPackage mLastIsCancel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/OnePlusGpsNotification;->mLastIsCancel:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " start = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mCurrentGpsLists ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsLists:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " same return"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v4

    .line 98
    return-void

    .line 100
    :cond_2
    :try_start_1
    iget-wide v6, p0, Lcom/android/server/OnePlusGpsNotification;->mLastNotifyTime:J

    sub-long v6, v0, v6

    cmp-long v3, v6, v8

    if-gez v3, :cond_5

    .line 101
    iget v3, p0, Lcom/android/server/OnePlusGpsNotification;->idCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/OnePlusGpsNotification;->idCount:I

    .line 102
    iget v3, p0, Lcom/android/server/OnePlusGpsNotification;->idCount:I

    const/4 v5, 0x3

    if-gt v3, v5, :cond_3

    .line 103
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mHandler:Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;

    const v5, 0xdac0

    invoke-virtual {v3, v5}, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->removeMessages(I)V

    .line 111
    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 112
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_4

    .line 113
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 115
    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 116
    .local v2, "msg":Landroid/os/Message;
    const v3, 0xdac1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 117
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mHandler:Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;

    const-wide/16 v6, 0x320

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v4

    .line 128
    return-void

    .line 105
    .end local v2    # "msg":Landroid/os/Message;
    :cond_5
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/OnePlusGpsNotification;->mLastIsCancel:Z

    if-eqz v3, :cond_6

    iget-wide v6, p0, Lcom/android/server/OnePlusGpsNotification;->mLastNotifyTime:J

    sub-long v6, v0, v6

    cmp-long v3, v6, v10

    if-gez v3, :cond_6

    .line 106
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mHandler:Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;

    const v5, 0xdac1

    invoke-virtual {v3, v5}, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->removeMessages(I)V

    .line 107
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/OnePlusGpsNotification;->idCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 89
    .end local v0    # "curTime":J
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 109
    .restart local v0    # "curTime":J
    :cond_6
    const/4 v3, 0x0

    :try_start_3
    iput v3, p0, Lcom/android/server/OnePlusGpsNotification;->idCount:I

    goto :goto_0

    .line 119
    :cond_7
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mHandler:Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;

    const v5, 0xdac1

    invoke-virtual {v3, v5}, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->removeMessages(I)V

    .line 120
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 121
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 122
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 123
    .restart local v2    # "msg":Landroid/os/Message;
    const v3, 0xdac0

    iput v3, v2, Landroid/os/Message;->what:I

    .line 124
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 125
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mHandler:Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
