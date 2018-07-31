.class public Lcom/android/settings/accessibility/ShortcutServicePickerFragment;
.super Lcom/android/settings/applications/DefaultAppPickerFragment;
.source "ShortcutServicePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/accessibility/ShortcutServicePickerFragment;
    .param p1, "serviceKey"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->onServiceConfirmed(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAppPickerFragment;-><init>()V

    return-void
.end method

.method private onServiceConfirmed(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceKey"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->onRadioButtonConfirmed(Ljava/lang/String;)V

    .line 132
    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/settings/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    .line 80
    .local v6, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v10

    .line 81
    .local v10, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 83
    .local v11, "numInstalledServices":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .local v7, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/DefaultAppInfo;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v11, :cond_0

    .line 85
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 86
    .local v9, "installedServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    new-instance v0, Lcom/android/settings/applications/DefaultAppInfo;

    iget-object v1, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    .line 87
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 88
    invoke-virtual {v9}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 89
    iget-object v4, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-interface {v4}, Lcom/android/settings/applications/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 90
    const/4 v5, 0x1

    .line 86
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/DefaultAppInfo;-><init>(Lcom/android/settings/applications/PackageManagerWrapper;ILandroid/content/ComponentName;Ljava/lang/String;Z)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 93
    .end local v9    # "installedServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_0
    return-object v7
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 98
    invoke-static {v2, v3}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getShortcutTargetServiceComponentNameString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "shortcutServiceString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 101
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 102
    .local v0, "shortcutName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 106
    .end local v0    # "shortcutName":Landroid/content/ComponentName;
    :cond_0
    return-object v4
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x6

    return v0
.end method

.method public mayCheckOnlyRadioButton()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 60
    .local v1, "screen":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 61
    invoke-virtual {v1, v5}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 62
    .local v0, "onlyPref":Landroid/support/v7/preference/Preference;
    instance-of v3, v0, Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v3, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 64
    const-string/jumbo v4, "accessibility_shortcut_target_service"

    .line 63
    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "string":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    check-cast v0, Lcom/android/settings/widget/RadioButtonPreference;

    .end local v0    # "onlyPref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v0, v5}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 72
    .end local v2    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 68
    .restart local v0    # "onlyPref":Landroid/support/v7/preference/Preference;
    .restart local v2    # "string":Ljava/lang/String;
    :cond_1
    check-cast v0, Lcom/android/settings/widget/RadioButtonPreference;

    .end local v0    # "onlyPref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v0, v6}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 5
    .param p1, "selected"    # Lcom/android/settings/widget/RadioButtonPreference;

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "selectedKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 121
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    invoke-super {p0, p1}, Lcom/android/settings/applications/DefaultAppPickerFragment;->onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    if-eqz v0, :cond_0

    .line 124
    invoke-static {p0, v2}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->newInstance(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Ljava/lang/String;)Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;

    move-result-object v1

    .line 126
    .local v1, "fragment":Landroid/app/DialogFragment;
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "ConfirmationDialogFragment"

    invoke-virtual {v1, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 112
    const-string/jumbo v1, "accessibility_shortcut_target_service"

    .line 111
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    const/4 v0, 0x1

    return v0
.end method
