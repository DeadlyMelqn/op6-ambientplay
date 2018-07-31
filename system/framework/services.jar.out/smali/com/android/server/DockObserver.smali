.class final Lcom/android/server/DockObserver;
.super Lcom/android/server/SystemService;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DockObserver$1;,
        Lcom/android/server/DockObserver$2;,
        Lcom/android/server/DockObserver$BinderService;
    }
.end annotation


# static fields
.field private static final DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/dock/state"

.field private static final DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/dock"

.field private static final MSG_DOCK_STATE_CHANGED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DockObserver"


# instance fields
.field private mActualDockState:I

.field private final mAllowTheaterModeWakeFromDock:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Landroid/os/UEventObserver;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreviousDockState:I

.field private mReportedDockState:I

.field private mSystemReady:Z

.field private mUpdatesStopped:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/DockObserver;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/DockObserver;

    .prologue
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/DockObserver;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/DockObserver;

    .prologue
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/DockObserver;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/DockObserver;

    .prologue
    iget v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/DockObserver;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/DockObserver;

    .prologue
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/DockObserver;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/DockObserver;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/DockObserver;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/DockObserver;

    .prologue
    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/DockObserver;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/DockObserver;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/DockObserver;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/DockObserver;

    .prologue
    invoke-direct {p0}, Lcom/android/server/DockObserver;->handleDockStateChange()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/DockObserver;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/DockObserver;
    .param p1, "newState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/DockObserver;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/DockObserver;
    .param p1, "newState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    .line 63
    iput v1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 65
    iput v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 66
    iput v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 225
    new-instance v0, Lcom/android/server/DockObserver$1;

    invoke-direct {v0, p0, v2}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;Z)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    .line 237
    new-instance v0, Lcom/android/server/DockObserver$2;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$2;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    .line 75
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "DockObserver"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    const v1, 0x112000d

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    .line 80
    invoke-direct {p0}, Lcom/android/server/DockObserver;->init()V

    .line 82
    iget-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    const-string/jumbo v1, "DEVPATH=/devices/virtual/switch/dock"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method private handleDockStateChange()V
    .locals 14

    .prologue
    .line 153
    iget-object v11, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 154
    :try_start_0
    const-string/jumbo v10, "DockObserver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Dock state changed from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 155
    iget v13, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 154
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget v5, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 157
    .local v5, "previousDockState":I
    iget v10, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iput v10, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 160
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 162
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v10, "device_provisioned"

    const/4 v12, 0x0

    .line 161
    invoke-static {v1, v10, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_0

    .line 163
    const-string/jumbo v10, "DockObserver"

    const-string/jumbo v12, "Device not provisioned, skipping dock broadcast"

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    .line 164
    return-void

    .line 168
    :cond_0
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v10, 0x20000000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    const-string/jumbo v10, "android.intent.extra.DOCK_STATE"

    iget v12, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v4, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    const-string/jumbo v10, "dock_sounds_enabled"

    const/4 v12, 0x1

    .line 172
    invoke-static {v1, v10, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 173
    const/4 v12, 0x1

    .line 172
    if-ne v10, v12, :cond_5

    const/4 v2, 0x1

    .line 175
    .local v2, "dockSoundsEnabled":Z
    :goto_0
    const-string/jumbo v10, "dock_sounds_enabled_when_accessbility"

    const/4 v12, 0x1

    .line 174
    invoke-static {v1, v10, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 175
    const/4 v12, 0x1

    .line 174
    if-ne v10, v12, :cond_6

    const/4 v3, 0x1

    .line 177
    .local v3, "dockSoundsEnabledWhenAccessibility":Z
    :goto_1
    const-string/jumbo v10, "accessibility_enabled"

    const/4 v12, 0x0

    .line 176
    invoke-static {v1, v10, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 177
    const/4 v12, 0x1

    .line 176
    if-ne v10, v12, :cond_7

    const/4 v0, 0x1

    .line 181
    .local v0, "accessibilityEnabled":Z
    :goto_2
    if-nez v2, :cond_1

    .line 182
    if-eqz v0, :cond_4

    .line 181
    if-eqz v3, :cond_4

    .line 183
    :cond_1
    const/4 v9, 0x0

    .line 184
    .local v9, "whichSound":Ljava/lang/String;
    iget v10, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-nez v10, :cond_9

    .line 185
    const/4 v10, 0x1

    if-eq v5, v10, :cond_2

    .line 186
    const/4 v10, 0x3

    if-ne v5, v10, :cond_8

    .line 188
    :cond_2
    const-string/jumbo v9, "desk_undock_sound"

    .line 202
    .end local v9    # "whichSound":Ljava/lang/String;
    :cond_3
    :goto_3
    if-eqz v9, :cond_4

    .line 203
    invoke-static {v1, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 204
    .local v7, "soundPath":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 205
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "file://"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 206
    .local v8, "soundUri":Landroid/net/Uri;
    if-eqz v8, :cond_4

    .line 208
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 207
    invoke-static {v10, v8}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v6

    .line 209
    .local v6, "sfx":Landroid/media/Ringtone;
    if-eqz v6, :cond_4

    .line 210
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 211
    invoke-virtual {v6}, Landroid/media/Ringtone;->play()V

    .line 221
    .end local v6    # "sfx":Landroid/media/Ringtone;
    .end local v7    # "soundPath":Ljava/lang/String;
    .end local v8    # "soundUri":Landroid/net/Uri;
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v10

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v12}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v11

    .line 223
    return-void

    .line 172
    .end local v0    # "accessibilityEnabled":Z
    .end local v2    # "dockSoundsEnabled":Z
    .end local v3    # "dockSoundsEnabledWhenAccessibility":Z
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "dockSoundsEnabled":Z
    goto :goto_0

    .line 174
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "dockSoundsEnabledWhenAccessibility":Z
    goto :goto_1

    .line 176
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "accessibilityEnabled":Z
    goto :goto_2

    .line 187
    .restart local v9    # "whichSound":Ljava/lang/String;
    :cond_8
    const/4 v10, 0x4

    if-eq v5, v10, :cond_2

    .line 189
    const/4 v10, 0x2

    if-ne v5, v10, :cond_3

    .line 190
    :try_start_2
    const-string/jumbo v9, "car_undock_sound"

    .local v9, "whichSound":Ljava/lang/String;
    goto :goto_3

    .line 193
    .local v9, "whichSound":Ljava/lang/String;
    :cond_9
    iget v10, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/4 v12, 0x1

    if-eq v10, v12, :cond_a

    .line 194
    iget v10, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/4 v12, 0x3

    if-ne v10, v12, :cond_b

    .line 196
    :cond_a
    const-string/jumbo v9, "desk_dock_sound"

    .local v9, "whichSound":Ljava/lang/String;
    goto :goto_3

    .line 195
    .local v9, "whichSound":Ljava/lang/String;
    :cond_b
    iget v10, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/4 v12, 0x4

    if-eq v10, v12, :cond_a

    .line 197
    iget v10, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/4 v12, 0x2

    if-ne v10, v12, :cond_3

    .line 198
    const-string/jumbo v9, "car_dock_sound"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v9, "whichSound":Ljava/lang/String;
    goto :goto_3

    .line 153
    .end local v0    # "accessibilityEnabled":Z
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "dockSoundsEnabled":Z
    .end local v3    # "dockSoundsEnabledWhenAccessibility":Z
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "previousDockState":I
    .end local v9    # "whichSound":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10
.end method

.method private init()V
    .locals 8

    .prologue
    .line 105
    iget-object v6, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 107
    const/16 v5, 0x400

    :try_start_0
    new-array v0, v5, [C

    .line 108
    .local v0, "buffer":[C
    new-instance v3, Ljava/io/FileReader;

    const-string/jumbo v5, "/sys/class/switch/dock/state"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    .local v3, "file":Ljava/io/FileReader;
    const/4 v5, 0x0

    const/16 v7, 0x400

    :try_start_1
    invoke-virtual {v3, v0, v5, v7}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 111
    .local v4, "len":I
    new-instance v5, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v5, v0, v7, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    .line 112
    iget v5, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v5, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v0    # "buffer":[C
    .end local v3    # "file":Ljava/io/FileReader;
    .end local v4    # "len":I
    :goto_0
    monitor-exit v6

    .line 122
    return-void

    .line 113
    .restart local v0    # "buffer":[C
    .restart local v3    # "file":Ljava/io/FileReader;
    :catchall_0
    move-exception v5

    .line 114
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 113
    throw v5
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 116
    .end local v0    # "buffer":[C
    .end local v3    # "file":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string/jumbo v5, "DockObserver"

    const-string/jumbo v7, "This kernel does not have dock station support"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 105
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .line 118
    :catch_1
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v5, "DockObserver"

    const-string/jumbo v7, ""

    invoke-static {v5, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method private setActualDockStateLocked(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 126
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    if-nez v0, :cond_0

    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    .line 129
    :cond_0
    return-void
.end method

.method private setDockStateLocked(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const/4 v2, 0x0

    .line 132
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq p1, v0, :cond_2

    .line 133
    iput p1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 134
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz v0, :cond_2

    .line 136
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 138
    const-string/jumbo v1, "theater_mode_on"

    .line 137
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 140
    const-string/jumbo v1, "android.server:DOCK"

    .line 139
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    .line 145
    :cond_2
    return-void
.end method

.method private updateLocked()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 149
    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 150
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 92
    const/16 v0, 0x226

    if-ne p1, v0, :cond_1

    .line 93
    iget-object v1, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    .line 97
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 102
    :cond_1
    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 87
    const-string/jumbo v0, "DockObserver"

    new-instance v1, Lcom/android/server/DockObserver$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$BinderService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DockObserver;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 88
    return-void
.end method
