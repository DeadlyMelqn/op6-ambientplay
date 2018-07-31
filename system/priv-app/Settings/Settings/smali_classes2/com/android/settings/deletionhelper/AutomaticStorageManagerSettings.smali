.class public Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AutomaticStorageManagerSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_DAYS:Ljava/lang/String; = "days"

.field private static final KEY_FREED:Ljava/lang/String; = "freed_bytes"

.field private static final STORAGE_MANAGER_ENABLED_BY_DEFAULT_PROPERTY:Ljava/lang/String; = "ro.storage_manager.enabled"


# instance fields
.field private mDaysToRetain:Landroid/support/v7/preference/DropDownPreference;

.field private mFreedBytes:Landroid/support/v7/preference/Preference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchController:Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private static daysValueToIndex(I[Ljava/lang/String;)I
    .locals 3
    .param p0, "value"    # I
    .param p1, "indices"    # [Ljava/lang/String;

    .prologue
    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 161
    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 162
    .local v1, "thisValue":I
    if-ne p0, v1, :cond_0

    .line 163
    return v0

    .line 160
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "thisValue":I
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method private initializeDaysToRetainPreference()V
    .locals 5

    .prologue
    .line 74
    const-string/jumbo v3, "days"

    invoke-virtual {p0, v3}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/DropDownPreference;

    iput-object v3, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDaysToRetain:Landroid/support/v7/preference/DropDownPreference;

    .line 75
    iget-object v3, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDaysToRetain:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v3, p0}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 79
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v3, "automatic_storage_manager_days_to_retain"

    .line 80
    const/16 v4, 0x5a

    .line 78
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 82
    .local v1, "photosDaysToRetain":I
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0095

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "stringValues":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDaysToRetain:Landroid/support/v7/preference/DropDownPreference;

    invoke-static {v1, v2}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->daysValueToIndex(I[Ljava/lang/String;)I

    move-result v4

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private initializeFreedBytesPreference()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 101
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v6, "freed_bytes"

    invoke-virtual {p0, v6}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mFreedBytes:Landroid/support/v7/preference/Preference;

    .line 103
    const-string/jumbo v6, "automatic_storage_manager_bytes_cleared"

    .line 102
    invoke-static {v1, v6, v8, v9}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 106
    .local v2, "freedBytes":J
    const-string/jumbo v6, "automatic_storage_manager_last_run"

    .line 105
    invoke-static {v1, v6, v8, v9}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 108
    .local v4, "lastRunMillis":J
    cmp-long v6, v2, v8

    if-eqz v6, :cond_0

    cmp-long v6, v4, v8

    if-nez v6, :cond_1

    .line 109
    :cond_0
    iget-object v6, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mFreedBytes:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6, v10}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 119
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 112
    .local v0, "activity":Landroid/app/Activity;
    iget-object v6, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mFreedBytes:Landroid/support/v7/preference/Preference;

    .line 113
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 115
    invoke-static {v0, v2, v3}, Lcom/oneplus/settings/utils/OPUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 117
    const/16 v8, 0x10

    .line 116
    invoke-static {v0, v4, v5, v8}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 114
    const v8, 0x7f0f11ff

    .line 113
    invoke-virtual {v0, v8, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 112
    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initializeSwitchBar()V
    .locals 6

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 88
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 89
    iget-object v1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 91
    new-instance v1, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 93
    iget-object v3, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 95
    iget-object v4, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDaysToRetain:Landroid/support/v7/preference/DropDownPreference;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    .line 91
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Landroid/support/v7/preference/Preference;Landroid/app/FragmentManager;)V

    .line 90
    iput-object v1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mSwitchController:Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;

    .line 97
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 156
    const v0, 0x7f0f0eb0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 151
    const/16 v0, 0x1ca

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->addPreferencesFromResource(I)V

    .line 59
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->initializeDaysToRetainPreference()V

    .line 67
    invoke-direct {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->initializeFreedBytesPreference()V

    .line 68
    invoke-direct {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->initializeSwitchBar()V

    .line 70
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 135
    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mSwitchController:Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;

    invoke-virtual {v0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->tearDown()V

    .line 136
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 140
    const-string/jumbo v0, "days"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 143
    const-string/jumbo v1, "automatic_storage_manager_days_to_retain"

    .line 144
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 141
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 123
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 126
    const-string/jumbo v2, "automatic_storage_manager_enabled"

    .line 125
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 127
    .local v0, "isStorageManagerChecked":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDaysToRetain:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/DropDownPreference;->setEnabled(Z)V

    .line 128
    return-void

    .line 125
    .end local v0    # "isStorageManagerChecked":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isStorageManagerChecked":Z
    goto :goto_0
.end method
