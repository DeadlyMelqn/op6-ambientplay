.class public Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiTetherPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnStart;
.implements Lcom/android/settings/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;
    }
.end annotation


# static fields
.field public static final WIFI_TETHER_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final WIFI_TETHER_SETTINGS:Ljava/lang/String; = "wifi_tether"


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

.field private mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiRegexs:[Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->clearSummaryForAirplaneMode()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;II)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->handleWifiApStateChanged(II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;
    .param p1, "tethered"    # [Ljava/lang/Object;
    .param p2, "errored"    # [Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->WIFI_TETHER_INTENT_FILTER:Landroid/content/IntentFilter;

    .line 58
    sget-object v0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->WIFI_TETHER_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->WIFI_TETHER_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settings/core/lifecycle/Lifecycle;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 118
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;-><init>(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 64
    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 66
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 67
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiRegexs:[Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    .line 69
    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p2, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    .line 72
    :cond_0
    return-void
.end method

.method private clearSummaryForAirplaneMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 204
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 205
    const-string/jumbo v2, "airplane_mode_on"

    .line 204
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 206
    .local v0, "isAirplaneMode":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    const v2, 0x7f0f123b

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/MasterSwitchPreference;->setSummary(I)V

    .line 209
    :cond_0
    return-void

    .line 204
    .end local v0    # "isAirplaneMode":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isAirplaneMode":Z
    goto :goto_0
.end method

.method private handleWifiApStateChanged(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .prologue
    .line 141
    packed-switch p1, :pswitch_data_0

    .line 159
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    const v1, 0x7f0f081b

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setSummary(I)V

    .line 164
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->clearSummaryForAirplaneMode()V

    .line 166
    :goto_1
    :pswitch_0
    return-void

    .line 143
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    const v1, 0x7f0f08b8

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 152
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    const v1, 0x7f0f08b9

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 155
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    const v1, 0x7f0f1269

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setSummary(I)V

    .line 156
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->clearSummaryForAirplaneMode()V

    goto :goto_1

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    const v1, 0x7f0f081a

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private matchRegex([Ljava/lang/Object;)Z
    .locals 10
    .param p1, "tethers"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 183
    array-length v6, p1

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v0, p1, v5

    .local v0, "o":Ljava/lang/Object;
    move-object v2, v0

    .line 184
    check-cast v2, Ljava/lang/String;

    .line 185
    .local v2, "s":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiRegexs:[Ljava/lang/String;

    array-length v8, v7

    move v3, v4

    :goto_1
    if-ge v3, v8, :cond_1

    aget-object v1, v7, v3

    .line 186
    .local v1, "regex":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 187
    const/4 v3, 0x1

    return v3

    .line 185
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 183
    .end local v1    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 191
    .end local v0    # "o":Ljava/lang/Object;
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    return v4
.end method

.method private updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 6
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mContext:Landroid/content/Context;

    .line 196
    const v2, 0x10406ae

    .line 195
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 199
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v4

    .line 200
    if-nez p1, :cond_0

    .line 199
    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 198
    const v4, 0x7f0f08ba

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/MasterSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    return-void

    .line 200
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "tethered"    # [Ljava/lang/Object;
    .param p2, "errored"    # [Ljava/lang/Object;

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->matchRegex([Ljava/lang/Object;)Z

    move-result v2

    .line 170
    .local v2, "wifiTethered":Z
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->matchRegex([Ljava/lang/Object;)Z

    move-result v1

    .line 172
    .local v1, "wifiErrored":Z
    if-eqz v2, :cond_0

    .line 173
    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 174
    .local v0, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 180
    .end local v0    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-void

    .line 175
    :cond_0
    if-eqz v1, :cond_1

    .line 176
    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    const v4, 0x7f0f081a

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/MasterSwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    const v4, 0x7f0f1269

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/MasterSwitchPreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 85
    const-string/jumbo v0, "wifi_tether"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    if-nez v0, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    .line 91
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/settings/widget/MasterSwitchController;

    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-direct {v2, v3}, Lcom/android/settings/widget/MasterSwitchController;-><init>(Lcom/android/settings/widget/MasterSwitchPreference;)V

    .line 90
    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mSwitchController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    .line 92
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mSwitchController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-virtual {v0, v1}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    .line 93
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string/jumbo v0, "wifi_tether"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 76
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiRegexs:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiRegexs:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_0

    .line 78
    invoke-static {}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->isTetherSettingPageEnabled()Z

    move-result v1

    .line 76
    if-eqz v1, :cond_0

    .line 79
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 76
    :cond_0
    return v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->WIFI_TETHER_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->clearSummaryForAirplaneMode()V

    .line 106
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    :cond_0
    return-void
.end method
