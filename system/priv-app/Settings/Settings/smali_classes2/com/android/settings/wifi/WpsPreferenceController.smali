.class public Lcom/android/settings/wifi/WpsPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "WpsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WpsPreferenceController$1;,
        Lcom/android/settings/wifi/WpsPreferenceController$WpsFragment;
    }
.end annotation


# static fields
.field private static final KEY_WPS_PIN:Ljava/lang/String; = "wps_pin_entry"

.field private static final KEY_WPS_PUSH:Ljava/lang/String; = "wps_push_button"


# instance fields
.field private final mFilter:Landroid/content/IntentFilter;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field final mReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsPinPref:Landroid/support/v7/preference/Preference;

.field private mWpsPushPref:Landroid/support/v7/preference/Preference;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/wifi/WpsPreferenceController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/wifi/WpsPreferenceController;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/wifi/WpsPreferenceController;->togglePreferences()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Landroid/app/FragmentManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settings/core/lifecycle/Lifecycle;
    .param p3, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p4, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Lcom/android/settings/wifi/WpsPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WpsPreferenceController$1;-><init>(Lcom/android/settings/wifi/WpsPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mFilter:Landroid/content/IntentFilter;

    .line 70
    iput-object p3, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 71
    iput-object p4, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 72
    invoke-virtual {p2, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    .line 73
    return-void
.end method

.method private togglePreferences()V
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWpsPushPref:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWpsPinPref:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 125
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWpsPushPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 126
    iget-object v1, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWpsPinPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 128
    .end local v0    # "enabled":Z
    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 90
    const-string/jumbo v0, "wps_push_button"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWpsPushPref:Landroid/support/v7/preference/Preference;

    .line 91
    const-string/jumbo v0, "wps_pin_entry"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWpsPinPref:Landroid/support/v7/preference/Preference;

    .line 92
    iget-object v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWpsPushPref:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWpsPinPref:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_1

    .line 93
    :cond_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWpsPushPref:Landroid/support/v7/preference/Preference;

    new-instance v1, Lcom/android/settings/wifi/-$Lambda$758F9HWIFnnu1gkvpsEen6CqHeg;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/settings/wifi/-$Lambda$758F9HWIFnnu1gkvpsEen6CqHeg;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWpsPinPref:Landroid/support/v7/preference/Preference;

    new-instance v1, Lcom/android/settings/wifi/-$Lambda$758F9HWIFnnu1gkvpsEen6CqHeg;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/settings/wifi/-$Lambda$758F9HWIFnnu1gkvpsEen6CqHeg;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 109
    invoke-direct {p0}, Lcom/android/settings/wifi/WpsPreferenceController;->togglePreferences()V

    .line 110
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$-com_android_settings_wifi_WpsPreferenceController_3599(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "arg"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 97
    new-instance v0, Lcom/android/settings/wifi/WpsPreferenceController$WpsFragment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WpsPreferenceController$WpsFragment;-><init>(I)V

    .line 98
    .local v0, "wpsFragment":Lcom/android/settings/wifi/WpsPreferenceController$WpsFragment;
    iget-object v1, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string/jumbo v2, "wps_push_button"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WpsPreferenceController$WpsFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 99
    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$-com_android_settings_wifi_WpsPreferenceController_3932(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "arg"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 105
    new-instance v0, Lcom/android/settings/wifi/WpsPreferenceController$WpsFragment;

    invoke-direct {v0, v3}, Lcom/android/settings/wifi/WpsPreferenceController$WpsFragment;-><init>(I)V

    .line 106
    .local v0, "wpsFragment":Lcom/android/settings/wifi/WpsPreferenceController$WpsFragment;
    iget-object v1, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string/jumbo v2, "wps_pin_entry"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WpsPreferenceController$WpsFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 107
    return v3
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 120
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    return-void
.end method
