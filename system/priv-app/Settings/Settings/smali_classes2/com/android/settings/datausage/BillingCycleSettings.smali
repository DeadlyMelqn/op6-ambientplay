.class public Lcom/android/settings/datausage/BillingCycleSettings;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/datausage/DataUsageEditController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;,
        Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;,
        Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;
    }
.end annotation


# static fields
.field private static final KEY_BILLING_CYCLE:Ljava/lang/String; = "billing_cycle"

.field private static final KEY_DATA_LIMIT:Ljava/lang/String; = "data_limit"

.field private static final KEY_DATA_WARNING:Ljava/lang/String; = "data_warning"

.field private static final KEY_SET_DATA_LIMIT:Ljava/lang/String; = "set_data_limit"

.field private static final KEY_SET_DATA_TIME_RANGE:Ljava/lang/String; = "set_data_time_range"

.field private static final KEY_SET_DATA_WARNING:Ljava/lang/String; = "set_data_warning"

.field private static final LOGD:Z = false

.field public static final PREF_FILE:Ljava/lang/String; = "data_usage"

.field public static final PREF_SHOW_DATA_USAGE:Ljava/lang/String; = "show_data_usage"

.field private static final TAG:Ljava/lang/String; = "BillingCycleSettings"

.field private static final TAG_CONFIRM_LIMIT:Ljava/lang/String; = "confirmLimit"

.field private static final TAG_CYCLE_EDITOR:Ljava/lang/String; = "cycleEditor"

.field private static final TAG_WARNING_EDITOR:Ljava/lang/String; = "warningEditor"


# instance fields
.field private mBillingCycle:Landroid/support/v7/preference/Preference;

.field private mDataLimit:Landroid/support/v7/preference/Preference;

.field private mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataWarning:Landroid/support/v7/preference/Preference;

.field private mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

.field private mEnableDataTimeRange:Landroid/support/v14/preference/SwitchPreference;

.field private mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

.field private mNetworkTemplate:Landroid/net/NetworkTemplate;

.field private mShowDataUsage:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/net/NetworkTemplate;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/datausage/BillingCycleSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/datausage/BillingCycleSettings;J)V
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/datausage/BillingCycleSettings;
    .param p1, "limitBytes"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyLimitBytes(J)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mShowDataUsage:Z

    .line 51
    return-void
.end method

.method public static isDataSelectionEnable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 449
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isShowDataUsage(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 444
    const-string/jumbo v1, "data_usage"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 445
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "show_data_usage"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private setPolicyLimitBytes(J)V
    .locals 3
    .param p1, "limitBytes"    # J

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 194
    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    .line 195
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 3
    .param p1, "warningBytes"    # J

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 200
    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    .line 201
    return-void
.end method

.method private updatePrefs()V
    .locals 14

    .prologue
    const-wide/16 v12, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 114
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v6, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v6}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result v0

    .line 115
    .local v0, "cycleDay":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/Preference;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f0f1126

    invoke-virtual {p0, v7, v6}, Lcom/android/settings/datausage/BillingCycleSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v6, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v6}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v4

    .line 121
    .local v4, "warningBytes":J
    cmp-long v1, v4, v12

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4, v5}, Lcom/oneplus/settings/utils/OPUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v9}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 124
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 130
    :goto_1
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v6, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v6}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v2

    .line 131
    .local v2, "limitBytes":J
    cmp-long v1, v2, v12

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2, v3}, Lcom/oneplus/settings/utils/OPUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v9}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 134
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 140
    :goto_2
    return-void

    .line 118
    .end local v2    # "limitBytes":J
    .end local v4    # "warningBytes":J
    :cond_0
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 126
    .restart local v4    # "warningBytes":J
    :cond_1
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v8}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 128
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v8}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 136
    .restart local v2    # "limitBytes":J
    :cond_2
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v8}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 138
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v8}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 188
    const/16 v0, 0x156

    return v0
.end method

.method public getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    return-object v0
.end method

.method public getNetworkTemplate()Landroid/net/NetworkTemplate;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 86
    new-instance v2, Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "network_template"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    .line 91
    const v2, 0x7f080019

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->addPreferencesFromResource(I)V

    .line 92
    const-string/jumbo v2, "billing_cycle"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/Preference;

    .line 93
    const-string/jumbo v2, "set_data_warning"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    .line 94
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    const-string/jumbo v2, "data_warning"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    .line 96
    const-string/jumbo v2, "set_data_limit"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    .line 97
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    const-string/jumbo v2, "data_limit"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    .line 99
    const-string/jumbo v2, "set_data_time_range"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataTimeRange:Landroid/support/v14/preference/SwitchPreference;

    .line 100
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataTimeRange:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 103
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->isShowDataUsage(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mShowDataUsage:Z

    .line 104
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataTimeRange:Landroid/support/v14/preference/SwitchPreference;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->isDataSelectionEnable(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 105
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 159
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    if-ne v2, p1, :cond_1

    .line 160
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 161
    .local v0, "enabled":Z
    if-eqz v0, :cond_0

    .line 162
    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;)V

    .line 166
    :goto_0
    return v5

    .line 164
    :cond_0
    invoke-direct {p0, v6, v7}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyLimitBytes(J)V

    goto :goto_0

    .line 167
    .end local v0    # "enabled":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataTimeRange:Landroid/support/v14/preference/SwitchPreference;

    if-ne v2, p1, :cond_2

    .line 168
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 169
    .restart local v0    # "enabled":Z
    iget-boolean v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mShowDataUsage:Z

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mShowDataUsage:Z

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "data_usage"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 172
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "show_data_usage"

    iget-boolean v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mShowDataUsage:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 173
    return v5

    .line 174
    .end local v0    # "enabled":Z
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    if-ne v2, p1, :cond_4

    .line 175
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 176
    .restart local v0    # "enabled":Z
    if-eqz v0, :cond_3

    .line 177
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v2}, Lcom/android/settingslib/net/DataUsageController;->getDefaultWarningLevel()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyWarningBytes(J)V

    .line 181
    :goto_1
    return v5

    .line 179
    :cond_3
    invoke-direct {p0, v6, v7}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyWarningBytes(J)V

    goto :goto_1

    .line 183
    .end local v0    # "enabled":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    return v4
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 144
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 145
    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;)V

    .line 146
    return v1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 148
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Lcom/android/settings/datausage/DataUsageEditController;Z)V

    .line 149
    return v1

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 151
    invoke-static {p0, v1}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Lcom/android/settings/datausage/DataUsageEditController;Z)V

    .line 152
    return v1

    .line 154
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    .line 110
    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    .line 111
    return-void
.end method

.method public updateDataUsage()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    .line 216
    return-void
.end method
