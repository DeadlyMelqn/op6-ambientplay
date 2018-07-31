.class public Lcom/android/systemui/qs/tiles/DataSwitchTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "DataSwitchTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/DataSwitchTile$1;,
        Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;,
        Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field static final DATA_SWITCH_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCanSwitch:Z

.field protected final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

.field private mPhoneStateListener:Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;

.field private mRegistered:Z

.field protected final mSignalCallback:Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;

.field private mSimCount:I

.field mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVirtualSimExist:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/DataSwitchTile;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DataSwitchTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/DataSwitchTile;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DataSwitchTile;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mVirtualSimExist:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/DataSwitchTile;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DataSwitchTile;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mCanSwitch:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/tiles/DataSwitchTile;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DataSwitchTile;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mVirtualSimExist:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "oneplus.intent.action.SIM_AND_NETWORK_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->DATA_SWITCH_SETTINGS:Landroid/content/Intent;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 40
    const-string/jumbo v0, "DataSwitchTile"

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mRegistered:Z

    .line 45
    iput v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mCanSwitch:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 54
    new-instance v0, Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/DataSwitchTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;

    .line 56
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mVirtualSimExist:Z

    .line 106
    new-instance v0, Lcom/android/systemui/qs/tiles/DataSwitchTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DataSwitchTile$1;-><init>(Lcom/android/systemui/qs/tiles/DataSwitchTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 64
    new-instance v0, Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;-><init>(Lcom/android/systemui/qs/tiles/DataSwitchTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mPhoneStateListener:Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;

    .line 67
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 69
    return-void
.end method

.method private setDefaultDataSimIndex(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .prologue
    .line 135
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    if-nez v2, :cond_0

    .line 136
    const-string/jumbo v2, "extphone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 138
    :cond_0
    const-string/jumbo v2, "DataSwitchTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "oemDdsSwitch:phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "oemDdsSwitch"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 140
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 141
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DataSwitchTile"

    const-string/jumbo v3, "setDefaultDataSimId"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateSimCount()V
    .locals 7

    .prologue
    .line 115
    const-string/jumbo v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "simState":Ljava/lang/String;
    const-string/jumbo v4, "DataSwitchTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DataSwitchTile:updateSimCount:simState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I

    .line 119
    :try_start_0
    const-string/jumbo v4, ","

    invoke-static {v2, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "sims":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 121
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v3, v1

    const-string/jumbo v5, "ABSENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v3, v1

    const-string/jumbo v5, "NOT_READY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 120
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_1
    iget v4, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 126
    .end local v1    # "i":I
    .end local v3    # "sims":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DataSwitchTile"

    const-string/jumbo v5, "Error to parse sim state"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v4, "DataSwitchTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DataSwitchTile:updateSimCount:mSimCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100a9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->DATA_SWITCH_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 252
    const/16 v0, 0x7d2

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const v1, 0x7f11042a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 152
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mCanSwitch:Z

    if-nez v0, :cond_0

    .line 153
    const-string/jumbo v0, "DataSwitchTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setVibrateTweak()V

    return-void

    .line 159
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mVirtualSimExist:Z

    if-eqz v0, :cond_1

    .line 160
    const-string/jumbo v0, "DataSwitchTile"

    const-string/jumbo v1, "virtual sim exist. ignore click."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setVibrateTweak()V

    return-void

    .line 165
    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I

    if-nez v0, :cond_2

    .line 166
    const-string/jumbo v0, "DataSwitchTile"

    const-string/jumbo v1, "handleClick:no sim card"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const v2, 0x7f11042b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setVibrateTweak()V

    return-void

    .line 169
    :cond_2
    iget v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I

    if-ne v0, v3, :cond_3

    .line 170
    const-string/jumbo v0, "DataSwitchTile"

    const-string/jumbo v1, "handleClick:only one sim card"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const v2, 0x7f11042c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setVibrateTweak()V

    return-void

    .line 176
    :cond_3
    new-instance v0, Lcom/android/systemui/qs/tiles/-$Lambda$KsKm11ifpbmNf6U3c9pg6obghzk;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$KsKm11ifpbmNf6U3c9pg6obghzk;-><init>(BLjava/lang/Object;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setVibrateTweak()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    const/4 v3, 0x0

    .line 78
    if-eqz p1, :cond_2

    .line 79
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mRegistered:Z

    if-nez v1, :cond_0

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mPhoneStateListener:Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 87
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 89
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mRegistered:Z

    .line 91
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->refreshState()V

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mRegistered:Z

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mPhoneStateListener:Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 99
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 101
    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mRegistered:Z

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 9
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v2, 0x7f080222

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 198
    if-nez p2, :cond_1

    .line 199
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    .line 200
    .local v0, "defaultPhoneId":I
    const-string/jumbo v5, "DataSwitchTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "default data phone id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    if-nez v0, :cond_0

    .line 203
    const/4 v1, 0x1

    .line 211
    .end local v0    # "defaultPhoneId":I
    .end local p2    # "arg":Ljava/lang/Object;
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->updateSimCount()V

    .line 213
    iget v5, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I

    packed-switch v5, :pswitch_data_0

    .line 224
    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 225
    iput-boolean v8, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 231
    :goto_1
    iget v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I

    if-ge v2, v3, :cond_4

    .line 232
    iput v8, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 241
    :goto_2
    if-eqz v1, :cond_7

    .line 242
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const v3, 0x7f1100a9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 247
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const v3, 0x7f11042a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 248
    return-void

    .line 205
    .restart local v0    # "defaultPhoneId":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    .local v1, "value":Z
    goto :goto_0

    .line 208
    .end local v0    # "defaultPhoneId":I
    .end local v1    # "value":Z
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .local v1, "value":Z
    goto :goto_0

    .line 215
    .end local v1    # "value":Z
    :pswitch_0
    if-eqz v1, :cond_2

    const v2, 0x7f080221

    :goto_4
    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 216
    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    goto :goto_1

    .line 215
    :cond_2
    const v2, 0x7f080223

    goto :goto_4

    .line 219
    :pswitch_1
    if-eqz v1, :cond_3

    :goto_5
    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 220
    iput-boolean v8, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    goto :goto_1

    .line 219
    :cond_3
    const v2, 0x7f080224

    goto :goto_5

    .line 233
    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mVirtualSimExist:Z

    if-eqz v2, :cond_5

    .line 234
    iput v8, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 235
    const-string/jumbo v2, "DataSwitchTile"

    const-string/jumbo v3, "virtual sim exist, set to unavailable."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 237
    :cond_5
    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_6
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    goto :goto_2

    :cond_6
    move v2, v4

    goto :goto_6

    .line 244
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const v3, 0x7f1100aa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_3

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 194
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_DataSwitchTile_6770()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->setDefaultDataSimIndex(I)V

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->refreshState()V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method
