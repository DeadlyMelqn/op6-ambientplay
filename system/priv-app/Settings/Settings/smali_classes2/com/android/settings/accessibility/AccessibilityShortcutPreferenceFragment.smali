.class public Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "AccessibilityShortcutPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$1;
    }
.end annotation


# static fields
.field public static final ON_LOCK_SCREEN_KEY:Ljava/lang/String; = "accessibility_shortcut_on_lock_screen"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SHORTCUT_SERVICE_KEY:Ljava/lang/String; = "accessibility_shortcut_service"


# instance fields
.field private mOnLockScreenSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mServicePreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$1;

    invoke-direct {v0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$1;-><init>()V

    .line 129
    sput-object v0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method

.method public static getServiceName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 119
    invoke-static {p0, v2}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getShortcutTargetServiceComponentNameString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 121
    .local v1, "shortcutServiceName":Landroid/content/ComponentName;
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    .line 123
    .local v0, "shortcutServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 126
    :cond_0
    const v2, 0x7f0f1216

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private updatePreferences()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 93
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v3, "accessibility_shortcut_enabled"

    .line 92
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    .line 94
    .local v1, "isEnabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/ToggleSwitch;->setChecked(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getServiceName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 96
    .local v2, "serviceName":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mServicePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mOnLockScreenSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 98
    const-string/jumbo v3, "accessibility_shortcut_on_lock_screen"

    .line 97
    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 99
    const v3, 0x7f0f1216

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/ToggleSwitch;->setChecked(Z)V

    .line 103
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/ToggleSwitch;->setEnabled(Z)V

    .line 104
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 109
    :goto_2
    return-void

    .line 92
    .end local v1    # "isEnabled":Z
    .end local v2    # "serviceName":Ljava/lang/CharSequence;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isEnabled":Z
    goto :goto_0

    .restart local v2    # "serviceName":Ljava/lang/CharSequence;
    :cond_1
    move v3, v5

    .line 97
    goto :goto_1

    .line 106
    :cond_2
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/ToggleSwitch;->setEnabled(Z)V

    .line 107
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x6

    return v0
.end method

.method synthetic lambda$-com_android_settings_accessibility_AccessibilityShortcutPreferenceFragment_2426(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "p"    # Landroid/support/v7/preference/Preference;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 63
    const-string/jumbo v3, "accessibility_shortcut_on_lock_screen"

    .line 64
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 62
    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 65
    return v1

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-com_android_settings_accessibility_AccessibilityShortcutPreferenceFragment_3074(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "enabled"    # Z

    .prologue
    .line 81
    const-string/jumbo v0, "accessibility_shortcut_enabled"

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->addPreferencesFromResource(I)V

    .line 59
    const-string/jumbo v0, "accessibility_shortcut_service"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mServicePreference:Landroid/support/v7/preference/Preference;

    .line 60
    const-string/jumbo v0, "accessibility_shortcut_on_lock_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mOnLockScreenSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 61
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mOnLockScreenSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    new-instance v1, Lcom/android/settings/accessibility/-$Lambda$byDoq-e6vn5DvI2TdWW6qdHyPOc;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/-$Lambda$byDoq-e6vn5DvI2TdWW6qdHyPOc;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 80
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v1, Lcom/android/settings/accessibility/-$Lambda$byDoq-e6vn5DvI2TdWW6qdHyPOc$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/-$Lambda$byDoq-e6vn5DvI2TdWW6qdHyPOc$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 83
    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onResume()V

    .line 74
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->updatePreferences()V

    .line 75
    return-void
.end method
