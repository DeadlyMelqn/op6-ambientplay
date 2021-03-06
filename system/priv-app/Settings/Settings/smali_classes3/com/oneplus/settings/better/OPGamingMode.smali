.class public Lcom/oneplus/settings/better/OPGamingMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPGamingMode.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/better/OPGamingMode$1;
    }
.end annotation


# static fields
.field private static final BATTERY_SAVER_CLOSE_VALUE:Ljava/lang/String; = "0_0"

.field private static final BATTERY_SAVER_HIGH_VALUE:Ljava/lang/String; = "56_30"

.field private static final BATTERY_SAVER_LIGHT_VALUE:Ljava/lang/String; = "56_0"

.field public static final GAME_MODE_ANSWER_NO_INCALLUI:Ljava/lang/String; = "game_mode_answer_no_incallui"

.field public static final GAME_MODE_BATTERY_SAVER:Ljava/lang/String; = "game_mode_battery_saver"

.field public static final GAME_MODE_BLOCK_NOTIFICATION:Ljava/lang/String; = "game_mode_block_notification"

.field public static final GAME_MODE_CLOSE_AUTOMATIC_BRIGHTNESS:Ljava/lang/String; = "game_mode_close_automatic_brightness"

.field public static final GAME_MODE_LOCK_BUTTONS:Ljava/lang/String; = "game_mode_lock_buttons"

.field private static final GAME_MODE_NETWORK_ACCELERATION:Ljava/lang/String; = "game_mode_network_acceleration"

.field public static final GAME_MODE_STATUS:Ljava/lang/String; = "game_mode_status"

.field public static final GAME_MODE_STATUS_AUTO:Ljava/lang/String; = "game_mode_status_auto"

.field public static final GAME_MODE_STATUS_MANUAL:Ljava/lang/String; = "game_mode_status_manual"

.field private static final KEY_AUTO_TURN_ON_APPS:Ljava/lang/String; = "auto_turn_on_apps"

.field private static final KEY_BATTERY_SAVER:Ljava/lang/String; = "battery_saver"

.field private static final KEY_BLOCK_NOTIFICATIONS:Ljava/lang/String; = "block_notifications"

.field private static final KEY_CLOSE_AUTOMATIC_BRIGHTNESS:Ljava/lang/String; = "close_automatic_brightness"

.field private static final KEY_DO_NOT_DISTURB_ANSWER_CALL_BY_SPEAKER:Ljava/lang/String; = "do_not_disturb_answer_call_by_speaker"

.field private static final KEY_DO_NOT_DISTURB_SETTINGS:Ljava/lang/String; = "do_not_disturb_settings"

.field private static final KEY_GAMING_MODE_ADD_APPS:Ljava/lang/String; = "gaming_mode_add_apps"

.field private static final KEY_LOCK_BUTTONS:Ljava/lang/String; = "lock_buttons"

.field private static final KEY_NETWORK_ACCELERATION:Ljava/lang/String; = "network_acceleration"

.field private static final TAG:Ljava/lang/String; = "OPGamingMode"

.field private static mToast:Landroid/widget/Toast;


# instance fields
.field private mAnswerCallBySpeakerPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAutoTurnOnAppList:Landroid/support/v7/preference/PreferenceCategory;

.field private mBatterySaverPreference:Landroid/support/v7/preference/Preference;

.field private mBlockNotificationsPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mCloseAutomaticBrightness:Landroid/support/v14/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mDoNotDisturbSettings:Landroid/support/v7/preference/PreferenceCategory;

.field private mGamingModeAddAppsPreference:Landroid/support/v7/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mLockButtonsPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mNetworkAcceleration:Landroid/support/v14/preference/SwitchPreference;

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/better/OPGamingMode;)Ljava/util/List;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/better/OPGamingMode;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/better/OPGamingMode;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/better/OPGamingMode;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/settings/better/OPGamingMode;)Landroid/support/v7/preference/PreferenceCategory;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/better/OPGamingMode;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAutoTurnOnAppList:Landroid/support/v7/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/settings/better/OPGamingMode;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/better/OPGamingMode;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/settings/better/OPGamingMode;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/better/OPGamingMode;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAppList:Ljava/util/List;

    .line 79
    new-instance v0, Lcom/oneplus/settings/better/OPGamingMode$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPGamingMode$1;-><init>(Lcom/oneplus/settings/better/OPGamingMode;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method private showToast()V
    .locals 3

    .prologue
    const v2, 0x7f0f03e7

    const/4 v1, 0x1

    .line 207
    sget-object v0, Lcom/oneplus/settings/better/OPGamingMode;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lcom/oneplus/settings/better/OPGamingMode;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 209
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/better/OPGamingMode;->mToast:Landroid/widget/Toast;

    .line 215
    :goto_0
    sget-object v0, Lcom/oneplus/settings/better/OPGamingMode;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 216
    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/better/OPGamingMode;->mToast:Landroid/widget/Toast;

    goto :goto_0
.end method

.method private updateBatterySaverData()V
    .locals 4

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "game_mode_battery_saver"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "0_0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mBatterySaverPreference:Landroid/support/v7/preference/Preference;

    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const v3, 0x7f0f0496

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 166
    :cond_1
    :goto_0
    return-void

    .line 161
    :cond_2
    const-string/jumbo v1, "56_0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mBatterySaverPreference:Landroid/support/v7/preference/Preference;

    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const v3, 0x7f0f0497

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 163
    :cond_3
    const-string/jumbo v1, "56_30"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mBatterySaverPreference:Landroid/support/v7/preference/Preference;

    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const v3, 0x7f0f0499

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateListData()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-virtual {v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadSelectedGameOrReadAppMap(I)Ljava/util/Map;

    .line 171
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    .line 173
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 275
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const v0, 0x7f08005a

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->addPreferencesFromResource(I)V

    .line 115
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mContext:Landroid/content/Context;

    .line 116
    const-string/jumbo v0, "appops"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 117
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 118
    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v3, p0, Lcom/oneplus/settings/better/OPGamingMode;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    .line 119
    const-string/jumbo v0, "do_not_disturb_answer_call_by_speaker"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAnswerCallBySpeakerPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 120
    const-string/jumbo v0, "block_notifications"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mBlockNotificationsPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 121
    const-string/jumbo v0, "lock_buttons"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mLockButtonsPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 122
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAnswerCallBySpeakerPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAnswerCallBySpeakerPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mBlockNotificationsPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mBlockNotificationsPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mLockButtonsPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mLockButtonsPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    :cond_2
    const-string/jumbo v0, "auto_turn_on_apps"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAutoTurnOnAppList:Landroid/support/v7/preference/PreferenceCategory;

    .line 132
    const-string/jumbo v0, "gaming_mode_add_apps"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mGamingModeAddAppsPreference:Landroid/support/v7/preference/Preference;

    .line 133
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mGamingModeAddAppsPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_3

    .line 134
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mGamingModeAddAppsPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 136
    :cond_3
    const-string/jumbo v0, "do_not_disturb_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mDoNotDisturbSettings:Landroid/support/v7/preference/PreferenceCategory;

    .line 137
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mLockButtonsPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mDoNotDisturbSettings:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mLockButtonsPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 140
    :cond_4
    const-string/jumbo v0, "battery_saver"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mBatterySaverPreference:Landroid/support/v7/preference/Preference;

    .line 141
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mBatterySaverPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_5

    .line 142
    invoke-direct {p0}, Lcom/oneplus/settings/better/OPGamingMode;->updateBatterySaverData()V

    .line 144
    :cond_5
    const-string/jumbo v0, "close_automatic_brightness"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mCloseAutomaticBrightness:Landroid/support/v14/preference/SwitchPreference;

    .line 145
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mCloseAutomaticBrightness:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_6

    .line 146
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mCloseAutomaticBrightness:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    :cond_6
    const-string/jumbo v0, "network_acceleration"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mNetworkAcceleration:Landroid/support/v14/preference/SwitchPreference;

    .line 149
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mNetworkAcceleration:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_7

    .line 150
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mNetworkAcceleration:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    :cond_7
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportGameModeNetBoost()Z

    move-result v0

    if-nez v0, :cond_8

    .line 153
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mDoNotDisturbSettings:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mNetworkAcceleration:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 155
    :cond_8
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v7, -0x2

    const/4 v3, 0x1

    .line 220
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v4, "block_notifications"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 222
    const-string/jumbo v4, "OPGamingMode"

    const-string/jumbo v5, "KEY_BLOCK_NOTIFICATIONS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p2

    .line 229
    check-cast v1, Ljava/lang/Boolean;

    .line 230
    .local v1, "value":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "game_mode_block_notification"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v5, v2, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 258
    .end local v1    # "value":Ljava/lang/Boolean;
    :cond_1
    :goto_0
    return v3

    .line 231
    :cond_2
    const-string/jumbo v4, "lock_buttons"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 232
    const-string/jumbo v4, "OPGamingMode"

    const-string/jumbo v5, "KEY_LOCK_BUTTONS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p2

    .line 239
    check-cast v1, Ljava/lang/Boolean;

    .line 240
    .restart local v1    # "value":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "game_mode_lock_buttons"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v4, v5, v2, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 241
    .end local v1    # "value":Ljava/lang/Boolean;
    :cond_4
    const-string/jumbo v4, "do_not_disturb_answer_call_by_speaker"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 242
    const-string/jumbo v4, "OPGamingMode"

    const-string/jumbo v5, "KEY_LOCK_BUTTONS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p2

    .line 249
    check-cast v1, Ljava/lang/Boolean;

    .line 250
    .restart local v1    # "value":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "game_mode_answer_no_incallui"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    move v2, v3

    :cond_5
    invoke-static {v4, v5, v2, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 251
    .end local v1    # "value":Ljava/lang/Boolean;
    :cond_6
    const-string/jumbo v4, "close_automatic_brightness"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v1, p2

    .line 252
    check-cast v1, Ljava/lang/Boolean;

    .line 253
    .restart local v1    # "value":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "game_mode_close_automatic_brightness"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    move v2, v3

    :cond_7
    invoke-static {v4, v5, v2, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 254
    .end local v1    # "value":Ljava/lang/Boolean;
    :cond_8
    const-string/jumbo v4, "network_acceleration"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, p2

    .line 255
    check-cast v1, Ljava/lang/Boolean;

    .line 256
    .restart local v1    # "value":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "game_mode_network_acceleration"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_9

    move v2, v3

    :cond_9
    invoke-static {v4, v5, v2, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 263
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "gaming_mode_add_apps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    const-string/jumbo v1, "OPGamingMode"

    const-string/jumbo v2, "KEY_GAMING_MODE_ADD_APPS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "oneplus.intent.action.ONEPLUS_GAME_READ_APP_LIST_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "op_load_app_tyep"

    const/16 v2, 0x44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 268
    const/4 v1, 0x1

    return v1

    .line 270
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 178
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 179
    invoke-direct {p0}, Lcom/oneplus/settings/better/OPGamingMode;->updateListData()V

    .line 180
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "game_mode_answer_no_incallui"

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 181
    .local v0, "value":I
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAnswerCallBySpeakerPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 182
    iget-object v4, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAnswerCallBySpeakerPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_6

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "game_mode_block_notification"

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 186
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mBlockNotificationsPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 187
    iget-object v4, p0, Lcom/oneplus/settings/better/OPGamingMode;->mBlockNotificationsPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "game_mode_lock_buttons"

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 190
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mLockButtonsPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_2

    .line 191
    iget-object v4, p0, Lcom/oneplus/settings/better/OPGamingMode;->mLockButtonsPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_8

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 193
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "game_mode_close_automatic_brightness"

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 194
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mCloseAutomaticBrightness:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_3

    .line 195
    iget-object v4, p0, Lcom/oneplus/settings/better/OPGamingMode;->mCloseAutomaticBrightness:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 197
    :cond_3
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mBatterySaverPreference:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_4

    .line 198
    invoke-direct {p0}, Lcom/oneplus/settings/better/OPGamingMode;->updateBatterySaverData()V

    .line 200
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "game_mode_network_acceleration"

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 201
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mNetworkAcceleration:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_5

    .line 202
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mNetworkAcceleration:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_a

    :goto_4
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 204
    :cond_5
    return-void

    :cond_6
    move v1, v3

    .line 182
    goto :goto_0

    :cond_7
    move v1, v3

    .line 187
    goto :goto_1

    :cond_8
    move v1, v3

    .line 191
    goto :goto_2

    :cond_9
    move v1, v3

    .line 195
    goto :goto_3

    :cond_a
    move v2, v3

    .line 202
    goto :goto_4
.end method
