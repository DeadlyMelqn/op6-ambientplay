.class public Lcom/android/settings/notification/ZenModePrioritySettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModePrioritySettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModePrioritySettings$1;,
        Lcom/android/settings/notification/ZenModePrioritySettings$PrefSettingsObserver;
    }
.end annotation


# static fields
.field private static final KEY_ALARMS_SUMMARY:Ljava/lang/String; = "alarms_summary"

.field private static final KEY_CALLS:Ljava/lang/String; = "calls"

.field private static final KEY_EVENTS:Ljava/lang/String; = "events"

.field private static final KEY_FAVOURITE_CONTACTS:Ljava/lang/String; = "favourite_contacts_settings"

.field private static final KEY_LED_SWITCH:Ljava/lang/String; = "led_switch"

.field private static final KEY_MESSAGES:Ljava/lang/String; = "messages"

.field private static final KEY_REMINDERS:Ljava/lang/String; = "reminders"

.field private static final KEY_REPEAT_CALLERS:Ljava/lang/String; = "repeat_callers"

.field private static final OEM_FAVORITES_PEOPLE:Ljava/lang/String; = "com.oneplus.contacts.action.FAVORITES_PEOPLE"

.field private static final PREFS:[Lcom/android/settings/notification/SettingPref;

.field private static final PREF_LED_LIGHT_SETTING:Lcom/android/settings/notification/SettingPref;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final SOURCE_NONE:I = -0x1


# instance fields
.field private mAlarmsSummaryPreference:Landroid/support/v7/preference/Preference;

.field private mCalls:Landroid/support/v7/preference/DropDownPreference;

.field private mDisableListeners:Z

.field private mEvents:Landroid/support/v14/preference/SwitchPreference;

.field private mFavouritePreference:Landroid/support/v7/preference/Preference;

.field private mLedSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mMessages:Landroid/support/v7/preference/DropDownPreference;

.field private mNotifyLightEnable:I

.field private mPolicy:Landroid/app/NotificationManager$Policy;

.field private mPrefSettingsObserver:Lcom/android/settings/notification/ZenModePrioritySettings$PrefSettingsObserver;

.field private mReminders:Landroid/support/v14/preference/SwitchPreference;

.field private mRepeatCallers:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0()[Lcom/android/settings/notification/SettingPref;
    .locals 1

    sget-object v0, Lcom/android/settings/notification/ZenModePrioritySettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/notification/ZenModePrioritySettings;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/ZenModePrioritySettings;

    .prologue
    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/notification/ZenModePrioritySettings;)Landroid/app/NotificationManager$Policy;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/ZenModePrioritySettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/ZenModePrioritySettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/ZenModePrioritySettings;

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModePrioritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/notification/ZenModePrioritySettings;ZI)I
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/ZenModePrioritySettings;
    .param p1, "allow"    # Z
    .param p2, "categoryType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/ZenModePrioritySettings;->getNewPriorityCategories(ZI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/notification/ZenModePrioritySettings;IIII)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/notification/ZenModePrioritySettings;
    .param p1, "priorityCategories"    # I
    .param p2, "priorityCallSenders"    # I
    .param p3, "priorityMessageSenders"    # I
    .param p4, "suppressedVisualEffects"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/notification/ZenModePrioritySettings;->savePolicy(IIII)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 85
    new-instance v0, Lcom/android/settings/notification/SettingPref;

    .line 86
    const-string/jumbo v2, "led_switch"

    const-string/jumbo v3, "oem_allow_led_light"

    .line 85
    new-array v5, v4, [I

    .line 86
    const/4 v1, 0x2

    .line 85
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/ZenModePrioritySettings;->PREF_LED_LIGHT_SETTING:Lcom/android/settings/notification/SettingPref;

    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/settings/notification/SettingPref;

    .line 88
    sget-object v1, Lcom/android/settings/notification/ZenModePrioritySettings;->PREF_LED_LIGHT_SETTING:Lcom/android/settings/notification/SettingPref;

    aput-object v1, v0, v4

    .line 87
    sput-object v0, Lcom/android/settings/notification/ZenModePrioritySettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    .line 345
    new-instance v0, Lcom/android/settings/notification/ZenModePrioritySettings$1;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModePrioritySettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModePrioritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    .line 83
    new-instance v0, Lcom/android/settings/notification/ZenModePrioritySettings$PrefSettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenModePrioritySettings$PrefSettingsObserver;-><init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mPrefSettingsObserver:Lcom/android/settings/notification/ZenModePrioritySettings$PrefSettingsObserver;

    .line 55
    return-void
.end method

.method private static addSources(Landroid/support/v7/preference/DropDownPreference;)V
    .locals 8
    .param p0, "pref"    # Landroid/support/v7/preference/DropDownPreference;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 309
    new-array v0, v7, [Ljava/lang/CharSequence;

    .line 310
    invoke-virtual {p0}, Landroid/support/v7/preference/DropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0fd7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 311
    invoke-virtual {p0}, Landroid/support/v7/preference/DropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0fd8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 312
    invoke-virtual {p0}, Landroid/support/v7/preference/DropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0fd9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 313
    invoke-virtual {p0}, Landroid/support/v7/preference/DropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0fda

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 309
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 315
    new-array v0, v7, [Ljava/lang/CharSequence;

    .line 316
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 317
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 318
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 319
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 315
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 321
    return-void
.end method

.method private getNewPriorityCategories(ZI)I
    .locals 2
    .param p1, "allow"    # Z
    .param p2, "categoryType"    # I

    .prologue
    .line 328
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 329
    .local v0, "priorityCategories":I
    if-eqz p1, :cond_0

    .line 330
    or-int/2addr v0, p2

    .line 334
    :goto_0
    return v0

    .line 332
    :cond_0
    not-int v1, p2

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method private isPriorityCategoryEnabled(I)Z
    .locals 2
    .param p1, "categoryType"    # I

    .prologue
    const/4 v0, 0x0

    .line 324
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private savePolicy(IIII)V
    .locals 2
    .param p1, "priorityCategories"    # I
    .param p2, "priorityCallSenders"    # I
    .param p3, "priorityMessageSenders"    # I
    .param p4, "suppressedVisualEffects"    # I

    .prologue
    .line 339
    new-instance v0, Landroid/app/NotificationManager$Policy;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 341
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 342
    return-void
.end method

.method private updateControls()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 238
    iput-boolean v2, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mDisableListeners:Z

    .line 239
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mCalls:Landroid/support/v7/preference/DropDownPreference;

    if-eqz v0, :cond_0

    .line 240
    iget-object v4, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mCalls:Landroid/support/v7/preference/DropDownPreference;

    .line 241
    invoke-direct {p0, v5}, Lcom/android/settings/notification/ZenModePrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 240
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mMessages:Landroid/support/v7/preference/DropDownPreference;

    .line 245
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/android/settings/notification/ZenModePrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 246
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 244
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mReminders:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0, v2}, Lcom/android/settings/notification/ZenModePrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mEvents:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings/notification/ZenModePrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/support/v14/preference/SwitchPreference;

    .line 250
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/settings/notification/ZenModePrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v1

    .line 249
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 251
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0, v5}, Lcom/android/settings/notification/ZenModePrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-eqz v0, :cond_4

    move v0, v2

    .line 251
    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 254
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mEvents:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 256
    iput-boolean v3, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mDisableListeners:Z

    .line 257
    return-void

    :cond_2
    move v0, v1

    .line 242
    goto :goto_0

    :cond_3
    move v0, v2

    .line 251
    goto :goto_1

    :cond_4
    move v0, v3

    .line 252
    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 305
    const/16 v0, 0x8d

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v1, 0x7f0800cb

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModePrioritySettings;->addPreferencesFromResource(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModePrioritySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 97
    .local v0, "root":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 99
    const-string/jumbo v1, "alarms_summary"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mAlarmsSummaryPreference:Landroid/support/v7/preference/Preference;

    .line 100
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mAlarmsSummaryPreference:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSocTriState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mAlarmsSummaryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 104
    :cond_0
    const-string/jumbo v1, "reminders"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mReminders:Landroid/support/v14/preference/SwitchPreference;

    .line 105
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mReminders:Landroid/support/v14/preference/SwitchPreference;

    new-instance v4, Lcom/android/settings/notification/ZenModePrioritySettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModePrioritySettings$2;-><init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 124
    const-string/jumbo v1, "events"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mEvents:Landroid/support/v14/preference/SwitchPreference;

    .line 125
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mEvents:Landroid/support/v14/preference/SwitchPreference;

    new-instance v4, Lcom/android/settings/notification/ZenModePrioritySettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModePrioritySettings$3;-><init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    const-string/jumbo v1, "favourite_contacts_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModePrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mFavouritePreference:Landroid/support/v7/preference/Preference;

    .line 140
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mFavouritePreference:Landroid/support/v7/preference/Preference;

    .line 141
    new-instance v4, Lcom/android/settings/notification/ZenModePrioritySettings$4;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModePrioritySettings$4;-><init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V

    .line 140
    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 157
    const-string/jumbo v1, "messages"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/DropDownPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mMessages:Landroid/support/v7/preference/DropDownPreference;

    .line 158
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mMessages:Landroid/support/v7/preference/DropDownPreference;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModePrioritySettings;->addSources(Landroid/support/v7/preference/DropDownPreference;)V

    .line 159
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mMessages:Landroid/support/v7/preference/DropDownPreference;

    new-instance v4, Lcom/android/settings/notification/ZenModePrioritySettings$5;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModePrioritySettings$5;-><init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 178
    const-string/jumbo v1, "calls"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/DropDownPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mCalls:Landroid/support/v7/preference/DropDownPreference;

    .line 179
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mCalls:Landroid/support/v7/preference/DropDownPreference;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModePrioritySettings;->addSources(Landroid/support/v7/preference/DropDownPreference;)V

    .line 180
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mCalls:Landroid/support/v7/preference/DropDownPreference;

    new-instance v4, Lcom/android/settings/notification/ZenModePrioritySettings$6;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModePrioritySettings$6;-><init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 197
    const-string/jumbo v1, "repeat_callers"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/support/v14/preference/SwitchPreference;

    .line 198
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/support/v14/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    new-array v5, v2, [Ljava/lang/Object;

    .line 199
    iget-object v6, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00cd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    .line 198
    const v6, 0x7f0f0fe1

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/support/v14/preference/SwitchPreference;

    new-instance v4, Lcom/android/settings/notification/ZenModePrioritySettings$7;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModePrioritySettings$7;-><init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 216
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModePrioritySettings;->updateControls()V

    .line 218
    const-string/jumbo v1, "led_switch"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mLedSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModePrioritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "oem_acc_breath_light"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mNotifyLightEnable:I

    .line 220
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mLedSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 221
    iget-object v4, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mLedSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mNotifyLightEnable:I

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 224
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 221
    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mPrefSettingsObserver:Lcom/android/settings/notification/ZenModePrioritySettings$PrefSettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModePrioritySettings$PrefSettingsObserver;->register(Z)V

    .line 271
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onPause()V

    .line 272
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 261
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    .line 262
    sget-object v2, Lcom/android/settings/notification/ZenModePrioritySettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 263
    .local v0, "pref":Lcom/android/settings/notification/SettingPref;
    invoke-virtual {v0, p0}, Lcom/android/settings/notification/SettingPref;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/support/v7/preference/Preference;

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    .end local v0    # "pref":Lcom/android/settings/notification/SettingPref;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mPrefSettingsObserver:Lcom/android/settings/notification/ZenModePrioritySettings$PrefSettingsObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModePrioritySettings$PrefSettingsObserver;->register(Z)V

    .line 266
    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 234
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModePrioritySettings;->updateControls()V

    .line 235
    return-void
.end method
