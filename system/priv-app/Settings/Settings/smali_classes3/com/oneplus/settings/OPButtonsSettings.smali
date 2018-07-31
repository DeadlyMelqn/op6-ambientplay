.class public Lcom/oneplus/settings/OPButtonsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPButtonsSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPButtonsSettings$ButtonsSearchIndexProvider;,
        Lcom/oneplus/settings/OPButtonsSettings$Helper;,
        Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;,
        Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final BACKLIGHT_PREF:Ljava/lang/String; = "pre_navbar_button_backlight"

.field public static final GSM_PACKAGE:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final KEY_BACK_DOUBLE_TAP:Ljava/lang/String; = "hardware_keys_back_double_tap"

.field private static final KEY_BACK_LONG_PRESS:Ljava/lang/String; = "hardware_keys_back_long_press"

.field private static final KEY_BUTTONS_BRIGHTNESS:Ljava/lang/String; = "buttons_brightness"

.field private static final KEY_BUTTONS_ENABLE_ON_SCREEN_NAVKEYS:Ljava/lang/String; = "buttons_enable_on_screen_navkeys"

.field private static final KEY_BUTTONS_FORCE_HOME:Ljava/lang/String; = "buttons_force_home"

.field private static final KEY_BUTTONS_SWAP_NAVKEYS:Ljava/lang/String; = "buttons_swap_navkeys"

.field private static final KEY_CAMERA_DOUBLE_TAP_POWER_GESTURE:Ljava/lang/String; = "camera_double_tap_power_gesture"

.field private static final KEY_CATEGORY_BACK:Ljava/lang/String; = "back_key"

.field private static final KEY_CATEGORY_HOME:Ljava/lang/String; = "home_key"

.field private static final KEY_CATEGORY_MENU:Ljava/lang/String; = "menu_key"

.field private static final KEY_FINGEPRINT_LONG_PRESS:Ljava/lang/String; = "op_fingerprint_long_press_action"

.field private static final KEY_HIDE_NAVKEYS:Ljava/lang/String; = "hide_navkeys"

.field private static final KEY_HOME_DOUBLE_TAP:Ljava/lang/String; = "hardware_keys_home_double_tap"

.field private static final KEY_HOME_LONG_PRESS:Ljava/lang/String; = "hardware_keys_home_long_press"

.field private static final KEY_LOCK_MODE_FOOT:I = 0x4

.field private static final KEY_LOCK_MODE_HOME:I = 0x3

.field private static final KEY_LOCK_MODE_POWER_HOME:I = 0x2

.field private static final KEY_MENU_DOUBLE_TAP:Ljava/lang/String; = "hardware_keys_menu_double_tap"

.field private static final KEY_MENU_LONG_PRESS:Ljava/lang/String; = "hardware_keys_menu_long_press"

.field private static final KEY_NAVIGATION_BAR_TYPE:Ljava/lang/String; = "key_navigation_bar_type"

.field public static final QUICKPAY_VALUE:Ljava/lang/String; = "11"

.field private static final REFRESH_PREPERENCE:I = 0x1

.field private static final REQUEST_CODE_FOR_GESTURE_GUIDE:I = 0x64

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "SystemSettings"


# instance fields
.field private mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

.field private mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

.field private mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

.field private mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

.field private mFingerprintLongPressAction:Landroid/support/v7/preference/ListPreference;

.field private mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

.field private mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

.field private mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

.field private mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

.field private mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

.field private final mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

.field private mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

.field private mWindow:Landroid/view/Window;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/OPButtonsSettings;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/OPButtonsSettings;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/OPButtonsSettings;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/OPButtonsSettings;

    .prologue
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()Z
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/OPButtonsSettings;->getNonVisibleKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/oneplus/settings/OPButtonsSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/OPButtonsSettings;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 786
    new-instance v0, Lcom/oneplus/settings/OPButtonsSettings$ButtonsSearchIndexProvider;

    invoke-direct {v0}, Lcom/oneplus/settings/OPButtonsSettings$ButtonsSearchIndexProvider;-><init>()V

    .line 785
    sput-object v0, Lcom/oneplus/settings/OPButtonsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 756
    new-instance v0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;-><init>(Lcom/oneplus/settings/OPButtonsSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    .line 71
    invoke-static {}, Lcom/android/settings/Utils;->a()V

    return-void
.end method

.method public static checkGMS(Landroid/content/Context;)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 203
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 204
    const-string/jumbo v3, "com.google.android.googlequicksearchbox"

    const/16 v4, 0x2000

    .line 203
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 205
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x1

    return v2

    .line 206
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return v2
.end method

.method private delayEnableHideNavkey()V
    .locals 4

    .prologue
    .line 646
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 647
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/OPButtonsSettings$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPButtonsSettings$2;-><init>(Lcom/oneplus/settings/OPButtonsSettings;)V

    .line 653
    const-wide/16 v2, 0x3e8

    .line 647
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 654
    return-void
.end method

.method private static getNonVisibleKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 862
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 863
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "buttons_enable_on_screen_navkeys"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    const-string/jumbo v1, "buttons_swap_navkeys"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    const-string/jumbo v1, "buttons_brightness"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    const-string/jumbo v1, "buttons_force_home"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    const-string/jumbo v1, "hardware_keys_home_long_press"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    const-string/jumbo v1, "hardware_keys_home_double_tap"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    const-string/jumbo v1, "hardware_keys_menu_long_press"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    const-string/jumbo v1, "hardware_keys_menu_double_tap"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    const-string/jumbo v1, "hardware_keys_back_long_press"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    const-string/jumbo v1, "hardware_keys_back_double_tap"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    const-string/jumbo v1, "home_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    const-string/jumbo v1, "menu_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    const-string/jumbo v1, "back_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    const-string/jumbo v1, "pre_navbar_button_backlight"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    return-object v0
.end method

.method private handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .param p1, "pref"    # Ljava/lang/Object;
    .param p2, "newValue"    # Ljava/lang/Object;
    .param p3, "setting"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 251
    instance-of v5, p1, Landroid/support/v7/preference/ListPreference;

    if-eqz v5, :cond_1

    move-object v1, p1

    .line 252
    check-cast v1, Landroid/support/v7/preference/ListPreference;

    .local v1, "listPref":Landroid/support/v7/preference/ListPreference;
    move-object v3, p2

    .line 253
    check-cast v3, Ljava/lang/String;

    .line 254
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 255
    .local v0, "index":I
    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 256
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, p3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 266
    .end local v0    # "index":I
    .end local v1    # "listPref":Landroid/support/v7/preference/ListPreference;
    .end local v3    # "value":Ljava/lang/String;
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 257
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    instance-of v5, p1, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v5, :cond_0

    .line 258
    const/4 v2, 0x0

    .line 259
    .local v2, "state":Z
    instance-of v5, p2, Ljava/lang/Boolean;

    if-eqz v5, :cond_4

    .line 260
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 264
    .end local v2    # "state":Z
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    :cond_3
    invoke-static {v5, p3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 261
    .restart local v2    # "state":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    instance-of v5, p2, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 262
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 244
    .local v0, "list":Landroid/support/v7/preference/ListPreference;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 247
    return-object v0
.end method

.method private initListViewPrefs()V
    .locals 15

    .prologue
    .line 322
    sget-object v13, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v13}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 324
    .local v12, "resolver":Landroid/content/ContentResolver;
    const v5, 0x0

    .line 327
    .local v5, "defaultLongPressOnFingerprintBehavior":I
    const-string/jumbo v13, "op_fingerprint_long_press_action"

    .line 326
    invoke-static {v12, v13, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 329
    .local v11, "longPressOnFingerprintBehavior":I
    const-string/jumbo v13, "op_fingerprint_long_press_action"

    invoke-direct {p0, v13, v11}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v13

    iput-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mFingerprintLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 325
    const v14, 0x10e004f

    .line 324
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 327
    .local v5, "defaultLongPressOnHomeBehavior":I
    const-string/jumbo v13, "key_home_long_press_action"

    .line 326
    invoke-static {v12, v13, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 329
    .local v11, "longPressOnHomeBehavior":I
    const-string/jumbo v13, "hardware_keys_home_long_press"

    invoke-direct {p0, v13, v11}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v13

    iput-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    .line 331
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 332
    const v14, 0x10e0039

    .line 331
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 334
    .local v2, "defaultDoubleTapOnHomeBehavior":I
    const-string/jumbo v13, "key_home_double_tap_action"

    .line 333
    invoke-static {v12, v13, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 336
    .local v8, "doubleTapOnHomeBehavior":I
    const-string/jumbo v13, "hardware_keys_home_double_tap"

    invoke-direct {p0, v13, v8}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v13

    iput-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    .line 354
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 355
    const v14, 0x50a0007

    .line 354
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 357
    .local v3, "defaultLongPressOnAppSwitchBehavior":I
    const-string/jumbo v13, "key_app_switch_long_press_action"

    .line 356
    invoke-static {v12, v13, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 359
    .local v9, "longPressOnAppSwitchBehavior":I
    const-string/jumbo v13, "hardware_keys_menu_long_press"

    invoke-direct {p0, v13, v9}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v13

    iput-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    .line 377
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 378
    const v14, 0x50a0003

    .line 377
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 380
    .local v0, "defaultDoubleTapOnAppSwitchBehavior":I
    const-string/jumbo v13, "key_app_switch_double_tap_action"

    .line 379
    invoke-static {v12, v13, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 382
    .local v6, "doubleTapOnAppSwitchBehavior":I
    const-string/jumbo v13, "hardware_keys_menu_double_tap"

    invoke-direct {p0, v13, v6}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v13

    iput-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    .line 385
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 386
    const v14, 0x50a0008

    .line 385
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 388
    .local v4, "defaultLongPressOnBackBehavior":I
    const-string/jumbo v13, "key_back_long_press_action"

    .line 387
    invoke-static {v12, v13, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 390
    .local v10, "longPressOnBackBehavior":I
    const-string/jumbo v13, "hardware_keys_back_long_press"

    invoke-direct {p0, v13, v10}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v13

    iput-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    .line 393
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 394
    const v14, 0x50a0004

    .line 393
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 396
    .local v1, "defaultDoubleTapOnBackBehavior":I
    const-string/jumbo v13, "key_back_double_tap_action"

    .line 395
    invoke-static {v12, v13, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 398
    .local v7, "doubleTapOnBackBehavior":I
    const-string/jumbo v13, "hardware_keys_back_double_tap"

    invoke-direct {p0, v13, v7}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v13

    iput-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    .line 399
    invoke-static {}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v13

    if-nez v13, :cond_6

    .line 400
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mFingerprintLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-eqz v13, :cond_0

    .line 401
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mFingerprintLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0b00a1

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 402
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mFingerprintLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0b00a2

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    :cond_0
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-eqz v13, :cond_1

    .line 401
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0b00a1

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 402
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0b00a2

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 404
    :cond_1
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-eqz v13, :cond_2

    .line 405
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0b00a1

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 406
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0b00a2

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 408
    :cond_2
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-eqz v13, :cond_3

    .line 409
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0b00a1

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 410
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0b00a2

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 412
    :cond_3
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-eqz v13, :cond_4

    .line 413
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0b00a1

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 414
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0b00a2

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 416
    :cond_4
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-eqz v13, :cond_5

    .line 417
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0b00a1

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 418
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0b00a2

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 420
    :cond_5
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-eqz v13, :cond_6

    .line 421
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0b00a1

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 422
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0b00a2

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 425
    :cond_6
    return-void
.end method

.method private initListViewPrefsnogms()V
    .locals 6

    .prologue
    const v5, 0x7f0b00a0

    const v4, 0x7f0b009f

    const v3, 0x7f0b00a6

    const v2, 0x7f0b00a5

    .line 275
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    invoke-static {}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 278
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 293
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 295
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 296
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 297
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 298
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 299
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 300
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 301
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 302
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 303
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 319
    :goto_1
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 281
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 284
    :cond_1
    invoke-static {}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f0b00c1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 286
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f0b00c2

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f0b00a7

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 289
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f0b00a8

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 306
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 307
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 308
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 309
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 310
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 311
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 312
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 313
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 314
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 315
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 316
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_1
.end method

.method private initPrefs()V
    .locals 2

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->initListViewPrefs()V

    .line 175
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsSettings;->checkGMS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->initListViewPrefsnogms()V

    .line 198
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 180
    invoke-static {}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f0b009d

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 182
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f0b009e

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f0b00a1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 185
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f0b00a2

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 188
    :cond_2
    invoke-static {}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 190
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f0b00c0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f0b00a3

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 193
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f0b00a4

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0
.end method

.method private static isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 214
    const v0, 0x112002a

    .line 213
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isSupportHardwareKeys()Z
    .locals 3

    .prologue
    .line 269
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 270
    .local v0, "SupportHardwareKeysValue":Z
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private loadPreferenceScreen()V
    .locals 20

    .prologue
    .line 428
    sget-object v17, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    if-eqz v17, :cond_4

    .line 429
    sget-object v17, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual/range {v17 .. v17}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 430
    .local v14, "resolver":Landroid/content/ContentResolver;
    sget-object v17, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual/range {v17 .. v17}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 431
    const v18, 0x7f110017

    .line 430
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 434
    .local v4, "defaultBrightness":I
    const-string/jumbo v17, "buttons_brightness"

    .line 433
    move-object/from16 v0, v17

    invoke-static {v14, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_5

    const/4 v3, 0x1

    .line 437
    .local v3, "buttonsBrightnessEnabled":Z
    :goto_0
    const-string/jumbo v17, "buttons_show_on_screen_navkeys"

    const/16 v18, 0x0

    .line 436
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_6

    const/4 v12, 0x1

    .line 440
    .local v12, "onScreenNavKeysEnabled":Z
    :goto_1
    const-string/jumbo v17, "buttons_force_home_enabled"

    const/16 v18, 0x0

    .line 439
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_7

    const/4 v6, 0x1

    .line 442
    .local v6, "forceHomeEnabled":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 443
    const-string/jumbo v18, "oem_acc_key_define"

    const/16 v19, 0x0

    .line 442
    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_8

    const/4 v15, 0x1

    .line 444
    .local v15, "swapNavkeysEnabled":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 453
    const-string/jumbo v17, "oem_acc_key_lock_mode"

    sget-object v18, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->NORMAL:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    invoke-virtual/range {v18 .. v18}, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->ordinal()I

    move-result v18

    .line 452
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 453
    sget-object v18, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->FOOT:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    invoke-virtual/range {v18 .. v18}, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->ordinal()I

    move-result v18

    .line 452
    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 453
    const/4 v5, 0x0

    .line 454
    .local v5, "enableOnScreenNavkeys":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v13

    .line 462
    .local v13, "prefScreen":Landroid/support/v7/preference/PreferenceScreen;
    const-string/jumbo v17, "home_key"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/PreferenceCategory;

    .line 464
    .local v7, "homeCategory":Landroid/support/v7/preference/PreferenceCategory;
    const-string/jumbo v17, "menu_key"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v7/preference/PreferenceCategory;

    .line 466
    .local v11, "menuCategory":Landroid/support/v7/preference/PreferenceCategory;
    const-string/jumbo v17, "back_key"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceCategory;

    .line 469
    .local v2, "backCategory":Landroid/support/v7/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v17, v0

    xor-int/lit8 v18, v12, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 472
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 476
    :cond_1
    if-eqz v7, :cond_2

    .line 477
    if-nez v6, :cond_a

    xor-int/lit8 v8, v12, 0x1

    .line 486
    :cond_2
    :goto_5
    const-string/jumbo v17, "hide_navkeys"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)V

    .line 509
    :cond_3
    :goto_6
    sget-object v17, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static/range {v17 .. v17}, Lcom/oneplus/settings/utils/OPUtils;->isSurportNavigationBarOnly(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 510
    const-string/jumbo v17, "buttons_enable_on_screen_navkeys"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)V

    .line 511
    const-string/jumbo v17, "hide_navkeys"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)V

    .line 516
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 517
    const-string/jumbo v18, "emergency_affordance_needed"

    const/16 v19, 0x0

    .line 516
    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_12

    const/4 v9, 0x1

    .line 518
    .local v9, "inEmergencyCall":Z
    :goto_8
    if-eqz v9, :cond_13

    .line 519
    const-string/jumbo v17, "camera_double_tap_power_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)V

    .line 525
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "camera_double_tap_power_gesture_disabled"

    const/16 v19, 0x0

    .line 526
    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 528
    .local v16, "value":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v18, v0

    if-nez v16, :cond_14

    const/16 v17, 0x1

    :goto_a
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 532
    .end local v2    # "backCategory":Landroid/support/v7/preference/PreferenceCategory;
    .end local v3    # "buttonsBrightnessEnabled":Z
    .end local v4    # "defaultBrightness":I
    .end local v5    # "enableOnScreenNavkeys":Z
    .end local v6    # "forceHomeEnabled":Z
    .end local v7    # "homeCategory":Landroid/support/v7/preference/PreferenceCategory;
    .end local v9    # "inEmergencyCall":Z
    .end local v11    # "menuCategory":Landroid/support/v7/preference/PreferenceCategory;
    .end local v12    # "onScreenNavKeysEnabled":Z
    .end local v13    # "prefScreen":Landroid/support/v7/preference/PreferenceScreen;
    .end local v14    # "resolver":Landroid/content/ContentResolver;
    .end local v15    # "swapNavkeysEnabled":Z
    .end local v16    # "value":I
    :cond_4
    return-void

    .line 433
    .restart local v4    # "defaultBrightness":I
    .restart local v14    # "resolver":Landroid/content/ContentResolver;
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "buttonsBrightnessEnabled":Z
    goto/16 :goto_0

    .line 436
    :cond_6
    const/4 v12, 0x0

    .restart local v12    # "onScreenNavKeysEnabled":Z
    goto/16 :goto_1

    .line 439
    :cond_7
    const/4 v6, 0x0

    .restart local v6    # "forceHomeEnabled":Z
    goto/16 :goto_2

    .line 442
    :cond_8
    const/4 v15, 0x0

    .restart local v15    # "swapNavkeysEnabled":Z
    goto/16 :goto_3

    .line 453
    :cond_9
    const/4 v5, 0x1

    .restart local v5    # "enableOnScreenNavkeys":Z
    goto/16 :goto_4

    .line 477
    .restart local v2    # "backCategory":Landroid/support/v7/preference/PreferenceCategory;
    .restart local v7    # "homeCategory":Landroid/support/v7/preference/PreferenceCategory;
    .restart local v11    # "menuCategory":Landroid/support/v7/preference/PreferenceCategory;
    .restart local v13    # "prefScreen":Landroid/support/v7/preference/PreferenceScreen;
    :cond_a
    move v8, v6

    .local v8, "homeEnabled":Z
    goto :goto_5

    .line 488
    .end local v8    # "homeEnabled":Z
    :cond_b
    const-string/jumbo v17, "buttons_brightness"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)V

    .line 489
    const-string/jumbo v17, "buttons_enable_on_screen_navkeys"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)V

    .line 490
    const-string/jumbo v17, "buttons_force_home"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "op_navigation_bar_type"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 494
    .restart local v16    # "value":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v18, v0

    if-eqz v16, :cond_f

    const/16 v17, 0x1

    :goto_b
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 495
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    const/4 v10, 0x1

    .line 496
    .local v10, "isGestureEnabled":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v17, v0

    xor-int/lit8 v18, v10, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 499
    :cond_c
    if-eqz v7, :cond_d

    .line 500
    xor-int/lit8 v17, v10, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    .line 502
    :cond_d
    if-eqz v11, :cond_e

    .line 503
    xor-int/lit8 v17, v10, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    .line 505
    :cond_e
    if-eqz v2, :cond_3

    .line 506
    xor-int/lit8 v17, v10, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    goto/16 :goto_6

    .line 494
    .end local v10    # "isGestureEnabled":Z
    :cond_f
    const/16 v17, 0x0

    goto :goto_b

    .line 495
    :cond_10
    const/4 v10, 0x0

    .restart local v10    # "isGestureEnabled":Z
    goto :goto_c

    .line 513
    .end local v10    # "isGestureEnabled":Z
    .end local v16    # "value":I
    :cond_11
    const-string/jumbo v17, "key_navigation_bar_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 516
    :cond_12
    const/4 v9, 0x0

    .restart local v9    # "inEmergencyCall":Z
    goto/16 :goto_8

    .line 521
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_9

    .line 528
    .restart local v16    # "value":I
    :cond_14
    const/16 v17, 0x0

    goto/16 :goto_a
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 135
    const/16 v0, 0x270f

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 227
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "op_gesture_guide_completed"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "op_gesture_button_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    const-string/jumbo v0, "op_fullscreen_gesture_enabled"

    invoke-static {v0, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Z)V

    .line 231
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->delayEnableHideNavkey()V

    .line 234
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mWindow:Landroid/view/Window;

    .line 142
    const v0, 0x7f080051

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->addPreferencesFromResource(I)V

    .line 144
    new-instance v0, Lcom/oneplus/settings/OPButtonsSettings$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPButtonsSettings$1;-><init>(Lcom/oneplus/settings/OPButtonsSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    .line 154
    const-string/jumbo v0, "buttons_enable_on_screen_navkeys"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    .line 155
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 156
    const-string/jumbo v0, "buttons_swap_navkeys"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    .line 157
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 158
    const-string/jumbo v0, "buttons_brightness"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

    .line 159
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 160
    const-string/jumbo v0, "buttons_force_home"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    .line 161
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 162
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsSettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string/jumbo v0, "camera_double_tap_power_gesture"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 163
    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 165
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 169
    :goto_0
    const-string/jumbo v0, "hide_navkeys"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

    .line 170
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    return-void

    .line 167
    :cond_0
    const-string/jumbo v0, "camera_double_tap_power_gesture"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 239
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->setListening(Z)V

    .line 240
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, "state":Z
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    move-object v3, p2

    .line 538
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 542
    .end local v0    # "state":Z
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_3

    .line 543
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    .line 545
    const-string/jumbo v4, "oem_acc_key_define"

    .line 543
    invoke-direct {p0, v3, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    return v5

    .line 539
    .restart local v0    # "state":Z
    :cond_1
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, p2

    .line 540
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 547
    .end local v0    # "state":Z
    :cond_3
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_5

    .line 548
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v4, "key_home_long_press_action"

    invoke-direct {p0, v3, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p2

    .line 552
    check-cast v1, Ljava/lang/String;

    .line 553
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v3, "11"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 554
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->gotoQuickPaySettingsPage(Landroid/content/Context;)V

    .line 557
    :cond_4
    return v5

    :cond_5
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mFingerprintLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_6

    .line 564
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mFingerprintLongPressAction:Landroid/support/v7/preference/ListPreference;

    .line 576
    const-string/jumbo v4, "op_fingerprint_long_press_action"

    .line 564
    invoke-direct {p0, v3, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    return v5

    .line 558
    .end local v1    # "value":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_7

    .line 559
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    .line 561
    const-string/jumbo v4, "key_home_double_tap_action"

    .line 559
    invoke-direct {p0, v3, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    return v5

    .line 563
    :cond_7
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_8

    .line 564
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    .line 576
    const-string/jumbo v4, "key_app_switch_long_press_action"

    .line 564
    invoke-direct {p0, v3, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    return v5

    .line 578
    :cond_8
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_9

    .line 579
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    .line 591
    const-string/jumbo v4, "key_app_switch_double_tap_action"

    .line 579
    invoke-direct {p0, v3, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    return v5

    .line 593
    :cond_9
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_a

    .line 594
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    .line 596
    const-string/jumbo v4, "key_back_long_press_action"

    .line 594
    invoke-direct {p0, v3, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    return v5

    .line 598
    :cond_a
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_b

    .line 599
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    .line 601
    const-string/jumbo v4, "key_back_double_tap_action"

    .line 599
    invoke-direct {p0, v3, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    return v5

    .line 603
    :cond_b
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_c

    .line 604
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v4}, Lcom/oneplus/settings/OPButtonsSettings$Helper;->setHWButtonsLightsState(Landroid/content/Context;ZZ)V

    .line 605
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    .line 606
    return v5

    .line 607
    :cond_c
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_d

    .line 608
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/oneplus/settings/OPButtonsSettings$Helper;->updateSettings(Landroid/content/Context;Z)V

    .line 609
    const-string/jumbo v3, "buttons_enable_on_screen_navkeys"

    invoke-static {v3, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Z)V

    .line 610
    return v5

    .line 611
    :cond_d
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_e

    .line 612
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    .line 614
    const-string/jumbo v4, "buttons_force_home_enabled"

    .line 612
    invoke-direct {p0, v3, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 615
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    .line 616
    return v5

    .line 617
    :cond_e
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_10

    .line 619
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 620
    .local v2, "value":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "camera_double_tap_power_gesture_disabled"

    .line 621
    if-eqz v2, :cond_f

    move v3, v4

    .line 620
    :goto_1
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 622
    return v5

    :cond_f
    move v3, v5

    .line 621
    goto :goto_1

    .line 624
    .end local v2    # "value":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_10
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_13

    .line 625
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "op_gesture_guide_completed"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_11

    .line 627
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "oneplus.intent.action.ONEPLUS_FULLSCREEN_GESTURE_GUIDE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/settings/OPButtonsSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 637
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_2
    return v5

    .line 629
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_11
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 632
    .restart local v2    # "value":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "op_gesture_button_enabled"

    .line 633
    if-eqz v2, :cond_12

    move v4, v5

    .line 632
    :cond_12
    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 634
    const-string/jumbo v3, "op_fullscreen_gesture_enabled"

    invoke-static {v3, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Z)V

    .line 635
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->delayEnableHideNavkey()V

    goto :goto_2

    .line 639
    .end local v2    # "value":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_13
    return v4
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 658
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_1

    .line 660
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mWindow:Landroid/view/Window;

    const-string/jumbo v1, "#FF000001"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 664
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/OPButtonsSettings$3;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPButtonsSettings$3;-><init>(Lcom/oneplus/settings/OPButtonsSettings;)V

    .line 669
    const-wide/16 v2, 0x3e8

    .line 664
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 671
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 220
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->initPrefs()V

    .line 221
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->setListening(Z)V

    .line 222
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    .line 223
    return-void
.end method
