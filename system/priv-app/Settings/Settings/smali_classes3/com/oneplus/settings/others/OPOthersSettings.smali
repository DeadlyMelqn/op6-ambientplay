.class public Lcom/oneplus/settings/others/OPOthersSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPOthersSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/others/OPOthersSettings$1;,
        Lcom/oneplus/settings/others/OPOthersSettings$2;
    }
.end annotation


# static fields
.field private static final ACTION_OTG_AUTO_SHUTDOWN:Ljava/lang/String; = "oneplus.intent.action.otg_auto_shutdown"

.field private static final ANTI_MISOPERATION_SCREEN_TOUCH:Ljava/lang/String; = "anti_misoperation_of_the_screen_touch_enable"

.field private static final KEY_OP_BLUETOOTH_AUDIO_CODEC:Ljava/lang/String; = "op_bluetooth_audio_codec"

.field private static final KEY_OP_MULTITASKING_CLEAN_WAY:Ljava/lang/String; = "op_multitasking_clean_way"

.field private static final KEY_OP_RECEIVE_NOTIFICATIONS:Ljava/lang/String; = "onepus_receive_notifications"

.field private static final KEY_OTG_READ_ENABLE:Ljava/lang/String; = "otg_read_enable"

.field private static final KEY_QUICK_CLIPBOARD:Ljava/lang/String; = "quick_clipboard"

.field private static final KEY_RECEIVE_NOTIFICATIONS:Ljava/lang/String; = "receive_notifications"

.field private static final KEY_SWITCH:Ljava/lang/String; = "switch"

.field private static final PUSH_SWITCH_ACTION:Ljava/lang/String; = "net.oneplus.push.action.SWITCH_CHANGED"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "OPOthersSettings"

.field private static final TIMER_SHUTDOWN_STARTUP_KEY:Ljava/lang/String; = "timer_shutdown_startup_settings"

.field private static final USER_ENJOY_PLAY_KEY:Ljava/lang/String; = "user_enjoy_plan"

.field private static isSupportAptxHdSupport:Z


# instance fields
.field private mAntiMisOperationTouch:Landroid/support/v14/preference/SwitchPreference;

.field private mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

.field private mContext:Landroid/content/Context;

.field private mOPMultitaskingCleanWayPreference:Landroid/support/v7/preference/Preference;

.field private mOTGContentObserver:Landroid/database/ContentObserver;

.field private mOTGReadEnableSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mQuickClipboardSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mReceiveNotificationsPreference:Landroid/support/v7/preference/Preference;

.field private mReceiveNotificationsSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mSwitchPreference:Landroid/support/v7/preference/Preference;

.field private mTimerShutdownPreference:Landroid/support/v7/preference/Preference;

.field private mUserPlanPreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/settings/others/OPOthersSettings;->isSupportAptxHdSupport:Z

    return v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/others/OPOthersSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/others/OPOthersSettings;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOTGReadEnableSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/others/OPOthersSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/others/OPOthersSettings;

    .prologue
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 283
    new-instance v0, Lcom/oneplus/settings/others/OPOthersSettings$2;

    invoke-direct {v0}, Lcom/oneplus/settings/others/OPOthersSettings$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/others/OPOthersSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 86
    new-instance v0, Lcom/oneplus/settings/others/OPOthersSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/others/OPOthersSettings$1;-><init>(Lcom/oneplus/settings/others/OPOthersSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOTGContentObserver:Landroid/database/ContentObserver;

    .line 56
    return-void
.end method

.method private updateView()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    const-string/jumbo v1, "anti_misoperation_of_the_screen_touch_enable"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mAntiMisOperationTouch:Landroid/support/v14/preference/SwitchPreference;

    .line 132
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mAntiMisOperationTouch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 133
    iget-object v4, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mAntiMisOperationTouch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 134
    const-string/jumbo v5, "oem_acc_anti_misoperation_screen"

    .line 133
    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 137
    new-array v1, v3, [I

    const/16 v4, 0x4c

    aput v4, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mAntiMisOperationTouch:Landroid/support/v14/preference/SwitchPreference;

    const v4, 0x7f0f04fc

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 141
    :cond_0
    const-string/jumbo v1, "user_enjoy_plan"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 142
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 143
    const-string/jumbo v1, "timer_shutdown_startup_settings"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mTimerShutdownPreference:Landroid/support/v7/preference/Preference;

    .line 144
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->checkIfNeedPasswordToPowerOn()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 145
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mTimerShutdownPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 146
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mTimerShutdownPreference:Landroid/support/v7/preference/Preference;

    const v4, 0x7f0f0352

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 150
    :goto_1
    const-string/jumbo v1, "op_multitasking_clean_way"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOPMultitaskingCleanWayPreference:Landroid/support/v7/preference/Preference;

    .line 151
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mTimerShutdownPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 153
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mAntiMisOperationTouch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 154
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOPMultitaskingCleanWayPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 157
    const-string/jumbo v1, "otg_read_enable"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOTGReadEnableSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 158
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOTGReadEnableSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    const-string/jumbo v1, "persist.sys.oem.otg_support"

    const-string/jumbo v4, "false"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "isOTGEnable":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 161
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOTGReadEnableSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 169
    :goto_2
    const-string/jumbo v1, "op_bluetooth_audio_codec"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/ListPreference;

    iput-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    .line 170
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v4, "oem.aptx.hd.support"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/settings/others/OPOthersSettings;->isSupportAptxHdSupport:Z

    .line 173
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 176
    const-string/jumbo v1, "quick_clipboard"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mQuickClipboardSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 177
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mQuickClipboardSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 178
    iget-object v4, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mQuickClipboardSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 179
    const-string/jumbo v5, "oem_quick_clipboard"

    .line 178
    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_9

    move v1, v3

    :goto_3
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 180
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.oneplus.clipboard"

    invoke-static {v1, v4}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mQuickClipboardSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_2

    .line 181
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mQuickClipboardSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 184
    :cond_2
    const-string/jumbo v1, "receive_notifications"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mReceiveNotificationsSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 185
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mReceiveNotificationsSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mReceiveNotificationsSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 187
    const-string/jumbo v5, "oem_receive_notifications"

    .line 186
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_a

    :goto_4
    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 188
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mReceiveNotificationsSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_3

    .line 189
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mReceiveNotificationsSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 192
    :cond_3
    const-string/jumbo v1, "switch"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mSwitchPreference:Landroid/support/v7/preference/Preference;

    .line 193
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mSwitchPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 194
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.oneplus.backuprestore"

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 195
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mSwitchPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 198
    :cond_4
    const-string/jumbo v1, "onepus_receive_notifications"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mReceiveNotificationsPreference:Landroid/support/v7/preference/Preference;

    .line 199
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "net.oneplus.push"

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 200
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mReceiveNotificationsPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 202
    :cond_5
    return-void

    .end local v0    # "isOTGEnable":Ljava/lang/String;
    :cond_6
    move v1, v3

    .line 134
    goto/16 :goto_0

    .line 148
    :cond_7
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mTimerShutdownPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 163
    .restart local v0    # "isOTGEnable":Ljava/lang/String;
    :cond_8
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOTGReadEnableSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_9
    move v1, v2

    .line 179
    goto/16 :goto_3

    :cond_a
    move v3, v2

    .line 187
    goto :goto_4
.end method


# virtual methods
.method public checkIfNeedPasswordToPowerOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 279
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "require_password_to_decrypt"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 275
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v0, 0x7f080063

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/others/OPOthersSettings;->addPreferencesFromResource(I)V

    .line 100
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mContext:Landroid/content/Context;

    .line 101
    invoke-direct {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->updateView()V

    .line 102
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 103
    const-string/jumbo v1, "oneplus_otg_auto_disable"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOTGContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 102
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 105
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 127
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOTGContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 128
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 232
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "anti_misoperation_of_the_screen_touch_enable"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 233
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 234
    .local v0, "enable":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 235
    const-string/jumbo v7, "oem_acc_anti_misoperation_screen"

    if-eqz v0, :cond_0

    move v4, v5

    .line 234
    :cond_0
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 236
    return v5

    .line 237
    .end local v0    # "enable":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "otg_read_enable"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 238
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 239
    .restart local v0    # "enable":Z
    const-string/jumbo v7, "persist.sys.oem.otg_support"

    if-eqz v0, :cond_3

    const-string/jumbo v6, "true"

    :goto_0
    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "oneplus_otg_auto_disable"

    if-eqz v0, :cond_2

    move v4, v5

    :cond_2
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 241
    return v5

    .line 239
    :cond_3
    const-string/jumbo v6, "false"

    goto :goto_0

    .line 242
    .end local v0    # "enable":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "op_bluetooth_audio_codec"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 243
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 244
    .local v3, "value":I
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "bluetooth_aptx_hd"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 245
    iget-object v4, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 246
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    aget-object v6, v1, v3

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 247
    return v5

    .line 248
    .end local v1    # "entries":[Ljava/lang/CharSequence;
    .end local v3    # "value":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "quick_clipboard"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 249
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 250
    .restart local v0    # "enable":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 251
    const-string/jumbo v8, "oem_quick_clipboard"

    if-eqz v0, :cond_6

    move v6, v5

    .line 250
    :goto_1
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    new-array v6, v5, [I

    aput v5, v6, v4

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 253
    const-string/jumbo v6, "oem_quick_clipboard"

    if-eqz v0, :cond_7

    const/4 v4, 0x4

    :goto_2
    invoke-static {v6, v4}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 257
    :goto_3
    return v5

    :cond_6
    move v6, v4

    .line 251
    goto :goto_1

    .line 253
    :cond_7
    const/4 v4, 0x3

    goto :goto_2

    .line 255
    :cond_8
    const-string/jumbo v6, "oem_quick_clipboard"

    if-eqz v0, :cond_9

    const/4 v4, 0x2

    :goto_4
    invoke-static {v6, v4}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    goto :goto_3

    :cond_9
    move v4, v5

    goto :goto_4

    .line 258
    .end local v0    # "enable":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_a
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "receive_notifications"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 259
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 260
    .restart local v0    # "enable":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 261
    const-string/jumbo v7, "oem_receive_notifications"

    if-eqz v0, :cond_b

    move v4, v5

    .line 260
    :cond_b
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 262
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "net.oneplus.push.action.SWITCH_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "net.oneplus.push"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string/jumbo v4, "oem_receive_notifications"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 265
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 267
    return v5

    .line 269
    .end local v0    # "enable":Z
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_c
    return v4
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 206
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "user_enjoy_plan"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "oem_join_user_plan_settings"

    .line 208
    iget-object v5, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 207
    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 209
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "INTENT_START_ODM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 218
    :goto_1
    return v2

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    move v1, v2

    .line 208
    goto :goto_0

    .line 214
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 215
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "INTENT_STOP_ODM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 219
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v3, "switch"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 220
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 221
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.oneplus.backuprestore"

    const-string/jumbo v3, "com.oneplus.backuprestore.activity.BootActivity"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 224
    return v2

    .line 226
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    return v1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 110
    iget-object v4, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v4, :cond_0

    .line 111
    iget-object v4, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 112
    const-string/jumbo v6, "oem_join_user_plan_settings"

    .line 111
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_2

    :goto_0
    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    if-eqz v2, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "bluetooth_aptx_hd"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 116
    .local v1, "value":I
    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 118
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 120
    .end local v0    # "entries":[Ljava/lang/CharSequence;
    .end local v1    # "value":I
    :cond_1
    return-void

    :cond_2
    move v2, v3

    .line 112
    goto :goto_0
.end method
