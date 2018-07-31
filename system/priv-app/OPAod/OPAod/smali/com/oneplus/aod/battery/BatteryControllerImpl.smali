.class public Lcom/oneplus/aod/battery/BatteryControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "BatteryControllerImpl.java"

# interfaces
.implements Lcom/oneplus/aod/battery/BatteryController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/battery/BatteryControllerImpl$1;,
        Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;
    }
.end annotation


# static fields
.field public static final ACTION_LEVEL_TEST:Ljava/lang/String; = "com.android.systemui.BATTERY_LEVEL_TEST"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "AodBatteryController"


# instance fields
.field private mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

.field private mAodUpdateMonitorCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

.field private mBatteryContainer:Landroid/widget/LinearLayout;

.field private mBatteryDashChargeView:Lcom/oneplus/aod/battery/BatteryDashChargeView;

.field private mBatteryMeterView:Lcom/oneplus/aod/battery/BatteryMeterView;

.field private mBatteryStyle:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected mCharged:Z

.field protected mCharging:Z

.field private mClockViewCtrl:Lcom/oneplus/aod/clock/ClockViewCtrl;

.field private final mContext:Landroid/content/Context;

.field private mDemoMode:Z

.field private mFastcharge:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasReceivedBattery:Z

.field protected mLevel:I

.field protected mPluggedIn:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field protected mPowerSave:Z

.field private final mSettingObserver:Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;

.field private mShowPercent:Z

.field private mTestmode:Z


# direct methods
.method static synthetic -get0(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Lcom/oneplus/aod/clock/ClockViewCtrl;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mClockViewCtrl:Lcom/oneplus/aod/clock/ClockViewCtrl;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mSettingObserver:Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .prologue
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mTestmode:Z

    return v0
.end method

.method static synthetic -set0(Lcom/oneplus/aod/battery/BatteryControllerImpl;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mTestmode:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/aod/battery/BatteryControllerImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->registerReceiver()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/aod/battery/BatteryControllerImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->updateBatteryStyle()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const-string/jumbo v0, "AodBatteryController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->DEBUG:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aodUpdateMonitor"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 72
    iput-boolean v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mTestmode:Z

    .line 73
    iput-boolean v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mHasReceivedBattery:Z

    .line 75
    iput-boolean v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mFastcharge:Z

    .line 76
    iput-boolean v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mShowPercent:Z

    .line 77
    new-instance v1, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;-><init>(Lcom/oneplus/aod/battery/BatteryControllerImpl;)V

    iput-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mSettingObserver:Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;

    .line 79
    iput v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryStyle:I

    .line 126
    new-instance v1, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;-><init>(Lcom/oneplus/aod/battery/BatteryControllerImpl;)V

    iput-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mAodUpdateMonitorCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 90
    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mContext:Landroid/content/Context;

    .line 91
    iput-object p0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mHandler:Landroid/os/Handler;

    .line 93
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 95
    invoke-virtual {p2}, Lcom/oneplus/aod/AodUpdateMonitor;->getAodView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 96
    .local v0, "container":Landroid/view/ViewGroup;
    const v1, 0x7f0e0045

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/battery/BatteryMeterView;

    iput-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryMeterView:Lcom/oneplus/aod/battery/BatteryMeterView;

    .line 97
    const v1, 0x7f0e0046

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/battery/BatteryDashChargeView;

    iput-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryDashChargeView:Lcom/oneplus/aod/battery/BatteryDashChargeView;

    .line 98
    const v1, 0x7f0e0043

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryContainer:Landroid/widget/LinearLayout;

    .line 99
    iput-object p2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    .line 100
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mAodUpdateMonitorCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/oneplus/aod/AodUpdateMonitor;->registerCallback(Lcom/oneplus/aod/AodUpdateMonitorCallback;)V

    .line 101
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->getClockViewCtrl()Lcom/oneplus/aod/clock/ClockViewCtrl;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mClockViewCtrl:Lcom/oneplus/aod/clock/ClockViewCtrl;

    .line 102
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->updatePowerSave()V

    .line 103
    return-void
.end method

.method private fireBatteryStylechange()V
    .locals 6

    .prologue
    .line 328
    iget-object v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 329
    .local v0, "N":I
    const-string/jumbo v3, "AodBatteryController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " fireBatteryStylechange mShowPercent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mShowPercent:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mBatteryStyle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryStyle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 333
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;

    iget-boolean v4, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mShowPercent:Z

    invoke-interface {v3, v4}, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;->onBatteryPercentShowChange(Z)V

    .line 334
    iget-object v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;

    iget v4, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryStyle:I

    invoke-interface {v3, v4}, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;->onBatteryStyleChanged(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "AodBatteryController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " fireBatteryStylechange:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 340
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    return-void
.end method

.method private firePowerSaveChanged()V
    .locals 5

    .prologue
    .line 313
    const-string/jumbo v2, "AodBatteryController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " firePowerSaveChanged mPowerSave:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPowerSave:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    iget-boolean v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPowerSave:Z

    invoke-virtual {v2, v3}, Lcom/oneplus/aod/AodUpdateMonitor;->firePowerSaveChanged(Z)V

    .line 318
    iget-object v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 319
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 320
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 321
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;

    iget-boolean v4, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPowerSave:Z

    invoke-interface {v2, v4}, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;->onPowerSaveChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    .line 324
    return-void

    .line 318
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private registerReceiver()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 107
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string/jumbo v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string/jumbo v1, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string/jumbo v1, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 118
    const-string/jumbo v2, "status_bar_show_battery_percent"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mSettingObserver:Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;

    .line 117
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 119
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 120
    const-string/jumbo v2, "status_bar_battery_style"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mSettingObserver:Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;

    .line 119
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 121
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->updateBatteryStyle()V

    .line 122
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->updatePowerSave()V

    .line 124
    return-void
.end method

.method private setPowerSave(Z)V
    .locals 3
    .param p1, "powerSave"    # Z

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPowerSave:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 280
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPowerSave:Z

    .line 281
    const-string/jumbo v1, "AodBatteryController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Power save is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPowerSave:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "on"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->firePowerSaveChanged()V

    .line 283
    return-void

    .line 281
    :cond_1
    const-string/jumbo v0, "off"

    goto :goto_0
.end method

.method private updateBatteryStyle()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 384
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 385
    const-string/jumbo v2, "status_bar_show_battery_percent"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 384
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mShowPercent:Z

    .line 386
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 387
    const-string/jumbo v2, "status_bar_battery_style"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 386
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryStyle:I

    .line 388
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->fireBatteryStylechange()V

    .line 390
    return-void

    :cond_0
    move v0, v1

    .line 384
    goto :goto_0
.end method

.method private updatePowerSave()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->setPowerSave(Z)V

    .line 276
    return-void
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;

    .prologue
    .line 175
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 178
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mHasReceivedBattery:Z

    if-nez v0, :cond_0

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 179
    :cond_0
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mLevel:I

    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPluggedIn:Z

    iget-boolean v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mCharging:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZZ)V

    .line 180
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPowerSave:Z

    invoke-interface {p1, v0}, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;->onPowerSaveChanged(Z)V

    .line 182
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mFastcharge:Z

    invoke-interface {p1, v0}, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;->onFastChargeChanged(Z)V

    .line 183
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryStyle:I

    invoke-interface {p1, v0}, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;->onBatteryStyleChanged(I)V

    .line 184
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mShowPercent:Z

    invoke-interface {p1, v0}, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;->onBatteryPercentShowChange(Z)V

    .line 186
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 347
    iget-boolean v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mDemoMode:Z

    if-nez v2, :cond_1

    const-string/jumbo v2, "enter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mDemoMode:Z

    .line 349
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mDemoMode:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "exit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 351
    iput-boolean v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mDemoMode:Z

    .line 352
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->registerReceiver()V

    .line 353
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->updatePowerSave()V

    goto :goto_0

    .line 354
    :cond_2
    iget-boolean v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mDemoMode:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "battery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    const-string/jumbo v2, "level"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "level":Ljava/lang/String;
    const-string/jumbo v2, "plugged"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "plugged":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 358
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x64

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mLevel:I

    .line 360
    :cond_3
    if-eqz v1, :cond_4

    .line 361
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPluggedIn:Z

    .line 363
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->fireBatteryLevelChanged()V

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 156
    const-string/jumbo v0, "BatteryController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    const-string/jumbo v0, "  mLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 158
    const-string/jumbo v0, "  mPluggedIn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPluggedIn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 159
    const-string/jumbo v0, "  mCharging="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mCharging:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 160
    const-string/jumbo v0, "  mCharged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mCharged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 161
    const-string/jumbo v0, "  mPowerSave="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPowerSave:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 163
    const-string/jumbo v0, "  mShowPercent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mShowPercent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 164
    const-string/jumbo v0, "  mBatteryStyle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryStyle:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 166
    return-void
.end method

.method protected fireBatteryLevelChanged()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 287
    const-string/jumbo v2, "AodBatteryController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " fireBatteryLevelChanged mLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " PluggedIn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPluggedIn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 288
    const-string/jumbo v4, " Charging:"

    .line 287
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 288
    iget-boolean v4, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mCharging:Z

    .line 287
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 288
    const-string/jumbo v4, " Fastcharge:"

    .line 287
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 288
    iget-boolean v4, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mFastcharge:Z

    .line 287
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 288
    const-string/jumbo v4, " show:"

    .line 287
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 288
    iget-boolean v4, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mShowPercent:Z

    .line 287
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 288
    const-string/jumbo v4, " style:"

    .line 287
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 288
    iget v4, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryStyle:I

    .line 287
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 291
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 292
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 293
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;

    iget v4, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mLevel:I

    iget-boolean v5, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPluggedIn:Z

    iget-boolean v6, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mCharging:Z

    invoke-interface {v2, v4, v5, v6}, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZZ)V

    .line 295
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;

    iget-boolean v4, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mFastcharge:Z

    invoke-interface {v2, v4}, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;->onFastChargeChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    .line 300
    iget-boolean v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mFastcharge:Z

    if-eqz v2, :cond_1

    .line 301
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryDashChargeView:Lcom/oneplus/aod/battery/BatteryDashChargeView;

    iget v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mLevel:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/aod/battery/BatteryDashChargeView;->setLevel(IZ)V

    .line 302
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryDashChargeView:Lcom/oneplus/aod/battery/BatteryDashChargeView;

    invoke-virtual {v2, v7}, Lcom/oneplus/aod/battery/BatteryDashChargeView;->setVisibility(I)V

    .line 303
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryMeterView:Lcom/oneplus/aod/battery/BatteryMeterView;

    invoke-virtual {v2, v8}, Lcom/oneplus/aod/battery/BatteryMeterView;->setVisibility(I)V

    .line 309
    :goto_1
    return-void

    .line 290
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 305
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryDashChargeView:Lcom/oneplus/aod/battery/BatteryDashChargeView;

    invoke-virtual {v2, v8}, Lcom/oneplus/aod/battery/BatteryDashChargeView;->setVisibility(I)V

    .line 306
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryMeterView:Lcom/oneplus/aod/battery/BatteryMeterView;

    invoke-virtual {v2, v7}, Lcom/oneplus/aod/battery/BatteryMeterView;->setVisibility(I)V

    goto :goto_1
.end method

.method public isPowerSave()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPowerSave:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 197
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 199
    iget-boolean v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mTestmode:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "testmode"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    return-void

    .line 201
    :cond_0
    const/4 v1, 0x0

    .line 202
    .local v1, "refreshOthers":Z
    iget-boolean v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mHasReceivedBattery:Z

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 204
    :cond_1
    iput-boolean v4, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mHasReceivedBattery:Z

    .line 206
    const-string/jumbo v3, "level"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    .line 205
    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v3, v6

    .line 207
    const-string/jumbo v6, "scale"

    const/16 v7, 0x64

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    int-to-float v6, v6

    .line 205
    div-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mLevel:I

    .line 208
    const-string/jumbo v3, "plugged"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPluggedIn:Z

    .line 210
    const-string/jumbo v3, "status"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 212
    .local v2, "status":I
    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mCharged:Z

    .line 213
    iget-boolean v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mCharged:Z

    if-nez v3, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    :cond_2
    :goto_2
    iput-boolean v4, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mCharging:Z

    .line 216
    const-string/jumbo v3, "fastcharge_status"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mFastcharge:Z

    .line 219
    invoke-virtual {p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->fireBatteryLevelChanged()V

    .line 222
    if-eqz v1, :cond_3

    .line 223
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->fireBatteryStylechange()V

    .line 267
    .end local v1    # "refreshOthers":Z
    .end local v2    # "status":I
    :cond_3
    :goto_3
    return-void

    .restart local v1    # "refreshOthers":Z
    :cond_4
    move v3, v5

    .line 208
    goto :goto_0

    .restart local v2    # "status":I
    :cond_5
    move v3, v5

    .line 212
    goto :goto_1

    :cond_6
    move v4, v5

    .line 213
    goto :goto_2

    .line 226
    .end local v1    # "refreshOthers":Z
    .end local v2    # "status":I
    :cond_7
    const-string/jumbo v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 227
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->updatePowerSave()V

    goto :goto_3

    .line 228
    :cond_8
    const-string/jumbo v3, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 229
    const-string/jumbo v3, "mode"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->setPowerSave(Z)V

    goto :goto_3

    .line 231
    :cond_9
    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 232
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->updateBatteryStyle()V

    goto :goto_3

    .line 234
    :cond_a
    const-string/jumbo v3, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 235
    iput-boolean v4, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mTestmode:Z

    .line 236
    iget-object v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;

    invoke-direct {v4, p0, p1}, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;-><init>(Lcom/oneplus/aod/battery/BatteryControllerImpl;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3
.end method

.method public removeStateChangedCallback(Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;

    .prologue
    .line 190
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 193
    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setPowerSaveMode(Z)V
    .locals 1
    .param p1, "powerSave"    # Z

    .prologue
    .line 170
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    .line 171
    return-void
.end method
