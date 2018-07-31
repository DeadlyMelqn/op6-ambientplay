.class public Lcom/android/settings/accessibility/AccessibilitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/AccessibilitySettings$1;,
        Lcom/android/settings/accessibility/AccessibilitySettings$2;,
        Lcom/android/settings/accessibility/AccessibilitySettings$3;,
        Lcom/android/settings/accessibility/AccessibilitySettings$4;,
        Lcom/android/settings/accessibility/AccessibilitySettings$5;,
        Lcom/android/settings/accessibility/AccessibilitySettings$6;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_SHORTCUT_PREFERENCE:Ljava/lang/String; = "accessibility_shortcut_preference"

.field private static final AUTOCLICK_PREFERENCE_SCREEN:Ljava/lang/String; = "autoclick_preference_screen"

.field private static final CAPTIONING_PREFERENCE_SCREEN:Ljava/lang/String; = "captioning_preference_screen"

.field private static final CATEGORIES:[Ljava/lang/String;

.field private static final CATEGORY_AUDIO_AND_CAPTIONS:Ljava/lang/String; = "audio_and_captions_category"

.field private static final CATEGORY_DISPLAY:Ljava/lang/String; = "display_category"

.field private static final CATEGORY_DOWNLOADED_SERVICES:Ljava/lang/String; = "user_installed_services_category"

.field private static final CATEGORY_EXPERIMENTAL:Ljava/lang/String; = "experimental_category"

.field private static final CATEGORY_INTERACTION_CONTROL:Ljava/lang/String; = "interaction_control_category"

.field private static final CATEGORY_SCREEN_READER:Ljava/lang/String; = "screen_reader_category"

.field private static final DELAY_UPDATE_SERVICES_MILLIS:J = 0x3e8L

.field private static final DISPLAY_DALTONIZER_PREFERENCE_SCREEN:Ljava/lang/String; = "daltonizer_preference_screen"

.field private static final DISPLAY_MAGNIFICATION_PREFERENCE_SCREEN:Ljava/lang/String; = "magnification_preference_screen"

.field static final EXTRA_CHECKED:Ljava/lang/String; = "checked"

.field static final EXTRA_COMPONENT_NAME:Ljava/lang/String; = "component_name"

.field static final EXTRA_LAUNCHED_FROM_SUW:Ljava/lang/String; = "from_suw"

.field static final EXTRA_PREFERENCE_KEY:Ljava/lang/String; = "preference_key"

.field static final EXTRA_SETTINGS_COMPONENT_NAME:Ljava/lang/String; = "settings_component_name"

.field static final EXTRA_SETTINGS_TITLE:Ljava/lang/String; = "settings_title"

.field static final EXTRA_SUMMARY:Ljava/lang/String; = "summary"

.field static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field static final EXTRA_VIDEO_RAW_RESOURCE_ID:Ljava/lang/String; = "video_resource"

.field private static final FIRST_PREFERENCE_IN_CATEGORY_INDEX:I = -0x1

.field private static final FONT_SIZE_PREFERENCE_SCREEN:Ljava/lang/String; = "font_size_preference_screen"

.field private static final HEARING_AID_ENABLED:Ljava/lang/String; = "hac_enabled=true"

.field private static final HEARING_AID_KEY:Ljava/lang/String; = "hearing_aid"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final SELECT_LONG_PRESS_TIMEOUT_PREFERENCE:Ljava/lang/String; = "select_long_press_timeout_preference"

.field private static final TOGGLE_HIGH_TEXT_CONTRAST_PREFERENCE:Ljava/lang/String; = "toggle_high_text_contrast_preference"

.field private static final TOGGLE_INVERSION_PREFERENCE:Ljava/lang/String; = "toggle_inversion_preference"

.field private static final TOGGLE_LARGE_POINTER_ICON:Ljava/lang/String; = "toggle_large_pointer_icon"

.field private static final TOGGLE_LOCK_SCREEN_ROTATION_PREFERENCE:Ljava/lang/String; = "toggle_lock_screen_rotation_preference"

.field private static final TOGGLE_MASTER_MONO:Ljava/lang/String; = "toggle_master_mono"

.field private static final TOGGLE_POWER_BUTTON_ENDS_CALL_PREFERENCE:Ljava/lang/String; = "toggle_power_button_ends_call_preference"


# instance fields
.field private mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/Preference;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoclickPreferenceScreen:Landroid/support/v7/preference/Preference;

.field private mCaptioningPreferenceScreen:Landroid/support/v7/preference/Preference;

.field private final mCategoryToPrefCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayDaltonizerPreferenceScreen:Landroid/support/v7/preference/Preference;

.field private mDisplayMagnificationPreferenceScreen:Landroid/support/v7/preference/Preference;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFontSizePreferenceScreen:Landroid/support/v7/preference/Preference;

.field private final mHandler:Landroid/os/Handler;

.field private mHearingAidPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mLongPressTimeoutDefault:I

.field private final mLongPressTimeoutValueToTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoServicesMessagePreference:Landroid/support/v7/preference/Preference;

.field private final mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/support/v7/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

.field private final mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v7/preference/Preference;",
            "Landroid/support/v7/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mToggleHighTextContrastPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mToggleInversionObserver:Landroid/database/ContentObserver;

.field private mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mToggleMasterMonoPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateServicePreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 88
    const-string/jumbo v1, "screen_reader_category"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "audio_and_captions_category"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "display_category"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 89
    const-string/jumbo v1, "interaction_control_category"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "experimental_category"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "user_installed_services_category"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 87
    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->CATEGORIES:[Ljava/lang/String;

    .line 778
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$6;

    invoke-direct {v0}, Lcom/android/settings/accessibility/AccessibilitySettings$6;-><init>()V

    .line 777
    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValueToTitleMap:Ljava/util/Map;

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 145
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$1;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 154
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 181
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$3;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$3;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    .line 180
    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    .line 188
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$4;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 196
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 195
    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    .line 198
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 197
    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    .line 200
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 199
    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    .line 233
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$5;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionObserver:Landroid/database/ContentObserver;

    .line 73
    return-void
.end method

.method private static configureMagnificationPreferenceIfNeeded(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p0, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 768
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 769
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->isApplicable(Landroid/content/res/Resources;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 770
    const-class v2, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 772
    .local v1, "extras":Landroid/os/Bundle;
    invoke-static {v1, v0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 775
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 2

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 358
    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 360
    return-void
.end method

.method private handleLongPressTimeoutPreferenceChange(Ljava/lang/String;)V
    .locals 3
    .param p1, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 312
    const-string/jumbo v1, "long_press_timeout"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 311
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 313
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    .line 314
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValueToTitleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 313
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 315
    return-void
.end method

.method private handleToggleInversionPreferenceChange(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 319
    const-string/jumbo v2, "accessibility_display_inversion_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 318
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 320
    return-void

    .line 319
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleToggleLargePointerIconPreferenceClick()V
    .locals 3

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 364
    const-string/jumbo v2, "accessibility_large_pointer_icon"

    .line 365
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 363
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 366
    return-void

    .line 365
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleToggleMasterMonoPreferenceClick()V
    .locals 4

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "master_mono"

    .line 370
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleMasterMonoPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, -0x2

    .line 369
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 371
    return-void

    .line 370
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 351
    const-string/jumbo v2, "incall_power_button_behavior"

    .line 352
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    const/4 v0, 0x2

    .line 350
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 355
    return-void

    .line 354
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleToggleTextContrastPreferenceClick()V
    .locals 3

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 345
    const-string/jumbo v2, "high_text_contrast_enabled"

    .line 346
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 344
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 347
    return-void

    .line 346
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeAllPreferences()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 374
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v5, Lcom/android/settings/accessibility/AccessibilitySettings;->CATEGORIES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 375
    sget-object v5, Lcom/android/settings/accessibility/AccessibilitySettings;->CATEGORIES:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    .line 376
    .local v1, "prefCategory":Landroid/support/v7/preference/PreferenceCategory;
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    sget-object v6, Lcom/android/settings/accessibility/AccessibilitySettings;->CATEGORIES:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    .end local v1    # "prefCategory":Landroid/support/v7/preference/PreferenceCategory;
    :cond_0
    const-string/jumbo v5, "toggle_high_text_contrast_preference"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SwitchPreference;

    .line 380
    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 384
    const-string/jumbo v5, "toggle_inversion_preference"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 385
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 388
    const-string/jumbo v5, "hearing_aid"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHearingAidPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 389
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHearingAidPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 390
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportHearingAid()Z

    move-result v5

    if-nez v5, :cond_1

    .line 391
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHearingAidPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 397
    :cond_1
    const-string/jumbo v5, "toggle_power_button_ends_call_preference"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SwitchPreference;

    .line 396
    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 398
    const/16 v5, 0x1a

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 399
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 398
    if-eqz v5, :cond_3

    .line 400
    :cond_2
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    const-string/jumbo v6, "interaction_control_category"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/PreferenceCategory;

    .line 401
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 400
    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 406
    :cond_3
    const-string/jumbo v5, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SwitchPreference;

    .line 405
    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 408
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    const-string/jumbo v6, "interaction_control_category"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/PreferenceCategory;

    .line 409
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 408
    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 414
    :cond_4
    const-string/jumbo v5, "toggle_large_pointer_icon"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SwitchPreference;

    .line 413
    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 418
    const-string/jumbo v5, "toggle_master_mono"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SwitchPreference;

    .line 417
    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleMasterMonoPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 422
    const-string/jumbo v5, "select_long_press_timeout_preference"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/ListPreference;

    .line 421
    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    .line 423
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 424
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValueToTitleMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 426
    const v6, 0x7f0b0072

    .line 425
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 427
    .local v4, "timeoutValues":[Ljava/lang/String;
    aget-object v5, v4, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 429
    const v6, 0x7f0b0071

    .line 428
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 430
    .local v2, "timeoutTitles":[Ljava/lang/String;
    array-length v3, v4

    .line 431
    .local v3, "timeoutValueCount":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_5

    .line 432
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValueToTitleMap:Ljava/util/Map;

    aget-object v6, v4, v0

    aget-object v7, v2, v0

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 437
    .end local v2    # "timeoutTitles":[Ljava/lang/String;
    .end local v3    # "timeoutValueCount":I
    .end local v4    # "timeoutValues":[Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, "captioning_preference_screen"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/support/v7/preference/Preference;

    .line 441
    const-string/jumbo v5, "magnification_preference_screen"

    .line 440
    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/support/v7/preference/Preference;

    .line 442
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-static {v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->configureMagnificationPreferenceIfNeeded(Landroid/support/v7/preference/Preference;)V

    .line 445
    const-string/jumbo v5, "font_size_preference_screen"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFontSizePreferenceScreen:Landroid/support/v7/preference/Preference;

    .line 448
    const-string/jumbo v5, "autoclick_preference_screen"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAutoclickPreferenceScreen:Landroid/support/v7/preference/Preference;

    .line 451
    const-string/jumbo v5, "daltonizer_preference_screen"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroid/support/v7/preference/Preference;

    .line 454
    const-string/jumbo v5, "accessibility_shortcut_preference"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/Preference;

    .line 455
    return-void
.end method

.method private initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V
    .locals 5
    .param p1, "categoryKey"    # Ljava/lang/String;
    .param p2, "key"    # I

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 602
    .local v3, "services":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    .line 603
    .local v0, "category":Landroid/support/v7/preference/PreferenceCategory;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 604
    aget-object v4, v3, v2

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 605
    .local v1, "component":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 607
    .end local v1    # "component":Landroid/content/ComponentName;
    :cond_0
    return-void
.end method

.method private isColorTransformAccelerated(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 678
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 679
    const v1, 0x1120094

    .line 678
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private updateAccessibilityShortcut(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 750
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/Preference;

    .line 751
    const v3, 0x7f0f0c37

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 750
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 752
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 762
    :goto_0
    return-void

    .line 754
    :cond_0
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/Preference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 756
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->isShortcutEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 757
    .local v0, "shortcutEnabled":Z
    if-eqz v0, :cond_1

    .line 758
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getServiceName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 760
    .local v1, "summary":Ljava/lang/CharSequence;
    :goto_1
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 759
    .end local v1    # "summary":Ljava/lang/CharSequence;
    :cond_1
    const v2, 0x7f0f0c0b

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "summary":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method private updateAllPreferences()V
    .locals 3

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateSystemPreferences()V

    .line 459
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateServicePreferences()V

    .line 461
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHearingAidPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "hac_enabled"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "hacvalue":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHearingAidPreference:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v1, "hac_enabled=true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 464
    const/4 v1, 0x1

    .line 463
    :goto_0
    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 467
    .end local v0    # "hacvalue":Ljava/lang/String;
    :cond_0
    return-void

    .line 464
    .restart local v0    # "hacvalue":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateAutoclickSummary(Landroid/support/v7/preference/Preference;)V
    .locals 5
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accessibility_autoclick_enabled"

    const/4 v4, 0x0

    .line 708
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 709
    const/4 v3, 0x1

    .line 708
    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 710
    .local v1, "enabled":Z
    :goto_0
    if-nez v1, :cond_1

    .line 711
    const v2, 0x7f0f0c0b

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 712
    return-void

    .line 708
    .end local v1    # "enabled":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto :goto_0

    .line 715
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accessibility_autoclick_delay"

    .line 716
    const/16 v4, 0x258

    .line 714
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 718
    .local v0, "delay":I
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 717
    invoke-static {v2, v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getAutoclickPreferenceSummary(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 719
    return-void
.end method

.method private updateFeatureSummary(Ljava/lang/String;Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 703
    .local v0, "enabled":Z
    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x7f0f0c0a

    :goto_1
    invoke-virtual {p2, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 705
    return-void

    .line 702
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 704
    :cond_1
    const v1, 0x7f0f0c0b

    goto :goto_1
.end method

.method private updateFontSizeSummary(Landroid/support/v7/preference/Preference;)V
    .locals 8
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 723
    const-string/jumbo v6, "font_scale"

    const/high16 v7, 0x3f800000    # 1.0f

    .line 722
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 724
    .local v0, "currentScale":F
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 725
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x7f0b0049

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 726
    .local v1, "entries":[Ljava/lang/String;
    const v5, 0x7f0b004a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 727
    .local v4, "strEntryValues":[Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result v2

    .line 729
    .local v2, "index":I
    aget-object v5, v1, v2

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 730
    return-void
.end method

.method private updateLockScreenRotationCheckbox()V
    .locals 3

    .prologue
    .line 733
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 734
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 735
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 736
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 735
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 738
    :cond_0
    return-void
.end method

.method private updateMagnificationSummary(Landroid/support/v7/preference/Preference;)V
    .locals 7
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 683
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 684
    const-string/jumbo v4, "accessibility_display_magnification_enabled"

    .line 683
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_0

    const/4 v2, 0x1

    .line 685
    .local v2, "tripleTapEnabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 686
    const-string/jumbo v4, "accessibility_display_magnification_navbar_enabled"

    .line 685
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_1

    const/4 v0, 0x1

    .line 688
    .local v0, "buttonEnabled":Z
    :goto_1
    const/4 v1, 0x0

    .line 689
    .local v1, "summaryResId":I
    if-nez v2, :cond_2

    xor-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    .line 690
    const v1, 0x7f0f0c0b

    .line 698
    :goto_2
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 699
    return-void

    .line 683
    .end local v0    # "buttonEnabled":Z
    .end local v1    # "summaryResId":I
    .end local v2    # "tripleTapEnabled":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "tripleTapEnabled":Z
    goto :goto_0

    .line 685
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "buttonEnabled":Z
    goto :goto_1

    .line 691
    .restart local v1    # "summaryResId":I
    :cond_2
    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 692
    const v1, 0x7f0f120f

    goto :goto_2

    .line 693
    :cond_3
    if-eqz v2, :cond_4

    xor-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_4

    .line 694
    const v1, 0x7f0f1210

    goto :goto_2

    .line 696
    :cond_4
    const v1, 0x7f0f1211

    goto :goto_2
.end method

.method private updateMasterMono()V
    .locals 5

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "master_mono"

    .line 743
    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 741
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 743
    const/4 v2, 0x1

    .line 741
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 744
    .local v0, "masterMono":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleMasterMonoPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 745
    return-void

    .line 741
    .end local v0    # "masterMono":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "masterMono":Z
    goto :goto_0
.end method

.method private updateServicePreferences()V
    .locals 36

    .prologue
    .line 476
    new-instance v27, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 477
    .local v27, "servicePreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/preference/Preference;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v33

    if-ge v14, v0, :cond_0

    .line 478
    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/support/v7/preference/Preference;

    .line 479
    .local v23, "service":Landroid/support/v7/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceCategory;

    .line 480
    .local v6, "category":Landroid/support/v7/preference/PreferenceCategory;
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 477
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 483
    .end local v6    # "category":Landroid/support/v7/preference/PreferenceCategory;
    .end local v23    # "service":Landroid/support/v7/preference/Preference;
    :cond_0
    const-string/jumbo v33, "screen_reader_category"

    .line 484
    const v34, 0x7f0b0097

    .line 483
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 485
    const-string/jumbo v33, "audio_and_captions_category"

    .line 486
    const v34, 0x7f0b0098

    .line 485
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 487
    const-string/jumbo v33, "display_category"

    .line 488
    const v34, 0x7f0b0099

    .line 487
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 489
    const-string/jumbo v33, "interaction_control_category"

    .line 490
    const v34, 0x7f0b009a

    .line 489
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    .line 495
    .local v4, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v17

    .line 497
    .local v17, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    .line 496
    invoke-static/range {v33 .. v33}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v12

    .line 498
    .local v12, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v33, v0

    .line 499
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v34

    .line 498
    invoke-virtual/range {v33 .. v34}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v19

    .line 500
    .local v19, "permittedServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    .line 501
    const-string/jumbo v34, "accessibility_enabled"

    const/16 v35, 0x0

    .line 500
    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    .line 501
    const/16 v34, 0x1

    .line 500
    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_5

    const/4 v3, 0x1

    .line 504
    .local v3, "accessibilityEnabled":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    move-object/from16 v33, v0

    const-string/jumbo v34, "user_installed_services_category"

    invoke-interface/range {v33 .. v34}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v7/preference/PreferenceCategory;

    .line 506
    .local v11, "downloadedServicesCategory":Landroid/support/v7/preference/PreferenceCategory;
    const-string/jumbo v33, "user_installed_services_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v33

    if-nez v33, :cond_1

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 510
    :cond_1
    const/4 v14, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "count":I
    :goto_2
    if-ge v14, v9, :cond_d

    .line 511
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 514
    .local v16, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    new-instance v21, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v11}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 515
    .local v21, "preference":Lcom/android/settingslib/RestrictedPreference;
    invoke-virtual/range {v16 .. v16}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v32

    .line 518
    .local v32, "title":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v33

    if-nez v33, :cond_6

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v33

    const/high16 v34, 0x7f030000

    invoke-static/range {v33 .. v34}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 524
    .local v15, "icon":Landroid/graphics/drawable/Drawable;
    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v26, v0

    .line 525
    .local v26, "serviceInfo":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 526
    .local v18, "packageName":Ljava/lang/String;
    new-instance v7, Landroid/content/ComponentName;

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    .local v7, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    .line 529
    .local v8, "componentNameKey":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setKey(Ljava/lang/String;)V

    .line 531
    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 533
    if-eqz v3, :cond_7

    .line 534
    invoke-interface {v12, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v25

    .line 535
    :goto_4
    if-eqz v25, :cond_8

    .line 536
    const v33, 0x7f0f120c

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 538
    .local v28, "serviceState":Ljava/lang/String;
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v33

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v29

    .line 539
    .local v29, "serviceSummary":Ljava/lang/CharSequence;
    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    .line 541
    const/16 v34, 0x0

    aput-object v28, v33, v34

    const/16 v34, 0x1

    aput-object v29, v33, v34

    .line 540
    const v34, 0x7f0f120b

    .line 539
    move-object/from16 v0, p0

    move/from16 v1, v34

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 542
    .local v31, "stateSummaryCombo":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_9

    .end local v28    # "serviceState":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 547
    if-eqz v19, :cond_a

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v24

    .line 548
    :goto_7
    if-nez v24, :cond_c

    xor-int/lit8 v33, v25, 0x1

    if-eqz v33, :cond_c

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v34

    .line 549
    move-object/from16 v0, v33

    move-object/from16 v1, v18

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfAccessibilityServiceDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v5

    .line 551
    .local v5, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v5, :cond_b

    .line 552
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 560
    .end local v5    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :goto_8
    const-class v33, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setFragment(Ljava/lang/String;)V

    .line 561
    const/16 v33, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setPersistent(Z)V

    .line 563
    invoke-virtual/range {v21 .. v21}, Lcom/android/settingslib/RestrictedPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 564
    .local v13, "extras":Landroid/os/Bundle;
    const-string/jumbo v33, "preference_key"

    invoke-virtual/range {v21 .. v21}, Lcom/android/settingslib/RestrictedPreference;->getKey()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string/jumbo v33, "checked"

    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 566
    const-string/jumbo v33, "title"

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v33

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v10

    .line 569
    .local v10, "description":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_2

    .line 570
    const v33, 0x7f0f0c38

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 572
    :cond_2
    const-string/jumbo v33, "summary"

    move-object/from16 v0, v33

    invoke-virtual {v13, v0, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-virtual/range {v16 .. v16}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v30

    .line 575
    .local v30, "settingsClassName":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_3

    .line 576
    const-string/jumbo v33, "settings_title"

    .line 577
    const v34, 0x7f0f0c09

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 576
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string/jumbo v33, "settings_component_name"

    .line 579
    new-instance v34, Landroid/content/ComponentName;

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v34

    .line 578
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_3
    const-string/jumbo v33, "component_name"

    move-object/from16 v0, v33

    invoke-virtual {v13, v0, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 583
    move-object/from16 v20, v11

    .line 585
    .local v20, "prefCategory":Landroid/support/v7/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_4

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "prefCategory":Landroid/support/v7/preference/PreferenceCategory;
    check-cast v20, Landroid/support/v7/preference/PreferenceCategory;

    .line 588
    .restart local v20    # "prefCategory":Landroid/support/v7/preference/PreferenceCategory;
    :cond_4
    const/16 v33, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    .line 589
    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 500
    .end local v3    # "accessibilityEnabled":Z
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "componentNameKey":Ljava/lang/String;
    .end local v9    # "count":I
    .end local v10    # "description":Ljava/lang/String;
    .end local v11    # "downloadedServicesCategory":Landroid/support/v7/preference/PreferenceCategory;
    .end local v13    # "extras":Landroid/os/Bundle;
    .end local v15    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v16    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v18    # "packageName":Ljava/lang/String;
    .end local v20    # "prefCategory":Landroid/support/v7/preference/PreferenceCategory;
    .end local v21    # "preference":Lcom/android/settingslib/RestrictedPreference;
    .end local v26    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v29    # "serviceSummary":Ljava/lang/CharSequence;
    .end local v30    # "settingsClassName":Ljava/lang/String;
    .end local v31    # "stateSummaryCombo":Ljava/lang/String;
    .end local v32    # "title":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "accessibilityEnabled":Z
    goto/16 :goto_1

    .line 521
    .restart local v9    # "count":I
    .restart local v11    # "downloadedServicesCategory":Landroid/support/v7/preference/PreferenceCategory;
    .restart local v16    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local v21    # "preference":Lcom/android/settingslib/RestrictedPreference;
    .restart local v32    # "title":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v16 .. v16}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .restart local v15    # "icon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 533
    .restart local v7    # "componentName":Landroid/content/ComponentName;
    .restart local v8    # "componentNameKey":Ljava/lang/String;
    .restart local v18    # "packageName":Ljava/lang/String;
    .restart local v26    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_7
    const/16 v25, 0x0

    .local v25, "serviceEnabled":Z
    goto/16 :goto_4

    .line 537
    .end local v25    # "serviceEnabled":Z
    :cond_8
    const v33, 0x7f0f120d

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "serviceState":Ljava/lang/String;
    goto/16 :goto_5

    .restart local v29    # "serviceSummary":Ljava/lang/CharSequence;
    .restart local v31    # "stateSummaryCombo":Ljava/lang/String;
    :cond_9
    move-object/from16 v28, v31

    .line 543
    goto/16 :goto_6

    .line 547
    .end local v28    # "serviceState":Ljava/lang/String;
    :cond_a
    const/16 v24, 0x1

    .local v24, "serviceAllowed":Z
    goto/16 :goto_7

    .line 554
    .end local v24    # "serviceAllowed":Z
    .restart local v5    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_b
    const/16 v33, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto/16 :goto_8

    .line 557
    .end local v5    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_c
    const/16 v33, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto/16 :goto_8

    .line 594
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "componentNameKey":Ljava/lang/String;
    .end local v15    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v16    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v18    # "packageName":Ljava/lang/String;
    .end local v21    # "preference":Lcom/android/settingslib/RestrictedPreference;
    .end local v26    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v29    # "serviceSummary":Ljava/lang/CharSequence;
    .end local v31    # "stateSummaryCombo":Ljava/lang/String;
    .end local v32    # "title":Ljava/lang/String;
    :cond_d
    invoke-virtual {v11}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v33

    if-nez v33, :cond_e

    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v22

    .line 596
    .local v22, "screen":Landroid/support/v7/preference/PreferenceScreen;
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 598
    .end local v22    # "screen":Landroid/support/v7/preference/PreferenceScreen;
    :cond_e
    return-void
.end method

.method private updateSystemPreferences()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 612
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->isColorTransformAccelerated(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 614
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    const-string/jumbo v9, "experimental_category"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    .line 616
    .local v1, "experimentalCategory":Landroid/support/v7/preference/PreferenceCategory;
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    const-string/jumbo v9, "display_category"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    .line 617
    .local v0, "displayCategory":Landroid/support/v7/preference/PreferenceCategory;
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 618
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 619
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v9, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9}, Landroid/support/v14/preference/SwitchPreference;->getOrder()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/support/v14/preference/SwitchPreference;->setOrder(I)V

    .line 620
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroid/support/v7/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9}, Landroid/support/v14/preference/SwitchPreference;->getOrder()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 621
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    const v9, 0x7f0f120e

    invoke-virtual {v6, v9}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 622
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 623
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 627
    .end local v0    # "displayCategory":Landroid/support/v7/preference/PreferenceCategory;
    .end local v1    # "experimentalCategory":Landroid/support/v7/preference/PreferenceCategory;
    :cond_0
    iget-object v9, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 628
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 629
    const-string/jumbo v10, "high_text_contrast_enabled"

    .line 628
    invoke-static {v6, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_2

    move v6, v7

    .line 627
    :goto_0
    invoke-virtual {v9, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 632
    iget-object v9, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 633
    const-string/jumbo v10, "accessibility_display_inversion_enabled"

    .line 632
    invoke-static {v6, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_3

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 636
    const/16 v6, 0x1a

    invoke-static {v6}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 637
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    .line 636
    if-eqz v6, :cond_1

    .line 638
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 639
    const-string/jumbo v9, "incall_power_button_behavior"

    .line 638
    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 642
    .local v2, "incallPowerBehavior":I
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    const/4 v4, 0x1

    .line 643
    .local v4, "powerButtonEndsCall":Z
    :goto_2
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 647
    .end local v2    # "incallPowerBehavior":I
    .end local v4    # "powerButtonEndsCall":Z
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    .line 650
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 651
    const-string/jumbo v10, "accessibility_large_pointer_icon"

    .line 650
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_5

    :goto_3
    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 654
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateMasterMono()V

    .line 657
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 658
    const-string/jumbo v7, "long_press_timeout"

    iget v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    .line 657
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 659
    .local v3, "longPressTimeout":I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 660
    .local v5, "value":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 661
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValueToTitleMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 663
    const-string/jumbo v6, "accessibility_captioning_enabled"

    .line 664
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/support/v7/preference/Preference;

    .line 663
    invoke-direct {p0, v6, v7}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateFeatureSummary(Ljava/lang/String;Landroid/support/v7/preference/Preference;)V

    .line 665
    const-string/jumbo v6, "accessibility_display_daltonizer_enabled"

    .line 666
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroid/support/v7/preference/Preference;

    .line 665
    invoke-direct {p0, v6, v7}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateFeatureSummary(Ljava/lang/String;Landroid/support/v7/preference/Preference;)V

    .line 668
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateMagnificationSummary(Landroid/support/v7/preference/Preference;)V

    .line 670
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFontSizePreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateFontSizeSummary(Landroid/support/v7/preference/Preference;)V

    .line 672
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAutoclickPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAutoclickSummary(Landroid/support/v7/preference/Preference;)V

    .line 674
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAccessibilityShortcut(Landroid/support/v7/preference/Preference;)V

    .line 675
    return-void

    .end local v3    # "longPressTimeout":I
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    move v6, v8

    .line 628
    goto/16 :goto_0

    :cond_3
    move v6, v8

    .line 632
    goto/16 :goto_1

    .line 642
    .restart local v2    # "incallPowerBehavior":I
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "powerButtonEndsCall":Z
    goto :goto_2

    .end local v2    # "incallPowerBehavior":I
    .end local v4    # "powerButtonEndsCall":Z
    :cond_5
    move v7, v8

    .line 650
    goto :goto_3
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 246
    const v0, 0x7f0f0eb1

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x2

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 251
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 252
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->addPreferencesFromResource(I)V

    .line 253
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializeAllPreferences()V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 255
    const-string/jumbo v1, "device_policy"

    .line 254
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAudioManager:Landroid/media/AudioManager;

    .line 259
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 282
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 284
    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 290
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 291
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 295
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    if-ne v0, p1, :cond_0

    .line 296
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleLongPressTimeoutPreferenceChange(Ljava/lang/String;)V

    .line 297
    return v2

    .line 298
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_1

    .line 299
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleInversionPreferenceChange(Z)V

    .line 300
    return v2

    .line 302
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHearingAidPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_3

    .line 303
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAudioManager:Landroid/media/AudioManager;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "hac_enabled=true"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 304
    return v2

    .line 303
    :cond_2
    const-string/jumbo v0, "hac_enabled=false"

    goto :goto_0

    .line 307
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 324
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_0

    .line 325
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleTextContrastPreferenceClick()V

    .line 326
    return v1

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_1

    .line 328
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    .line 329
    return v1

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_2

    .line 331
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleLockScreenRotationPreferenceClick()V

    .line 332
    return v1

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_3

    .line 334
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleLargePointerIconPreferenceClick()V

    .line 335
    return v1

    .line 336
    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleMasterMonoPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_4

    .line 337
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleMasterMonoPreferenceClick()V

    .line 338
    return v1

    .line 340
    :cond_4
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 263
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 264
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    .line 266
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 267
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 269
    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 274
    const-string/jumbo v1, "accessibility_display_inversion_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 275
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 273
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 277
    return-void
.end method
