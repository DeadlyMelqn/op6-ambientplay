.class public Lcom/android/settings/network/NetworkScorerPicker;
.super Lcom/android/settings/InstrumentedPreferenceFragment;
.source "NetworkScorerPicker.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;


# instance fields
.field private mNetworkScoreManager:Lcom/android/settings/network/NetworkScoreManagerWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/InstrumentedPreferenceFragment;-><init>()V

    return-void
.end method

.method private getActiveScorerPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/network/NetworkScorerPicker;->mNetworkScoreManager:Lcom/android/settings/network/NetworkScoreManagerWrapper;

    invoke-virtual {v0}, Lcom/android/settings/network/NetworkScoreManagerWrapper;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setActiveScorer(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/settings/network/NetworkScorerPicker;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings/network/NetworkScorerPicker;->mNetworkScoreManager:Lcom/android/settings/network/NetworkScoreManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/android/settings/network/NetworkScoreManagerWrapper;->setActiveScorer(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateCheckedState(Ljava/lang/String;)V
    .locals 6
    .param p1, "selectedKey"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkScorerPicker;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    .line 127
    .local v4, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 128
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 129
    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 130
    .local v2, "pref":Landroid/support/v7/preference/Preference;
    instance-of v5, v2, Lcom/android/settings/ui/RadioButtonPreference;

    if-eqz v5, :cond_0

    move-object v3, v2

    .line 131
    check-cast v3, Lcom/android/settings/ui/RadioButtonPreference;

    .line 132
    .local v3, "radioPref":Lcom/android/settings/ui/RadioButtonPreference;
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 128
    .end local v3    # "radioPref":Lcom/android/settings/ui/RadioButtonPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v2    # "pref":Landroid/support/v7/preference/Preference;
    :cond_1
    return-void
.end method


# virtual methods
.method createNetworkScorerManagerWrapper(Landroid/content/Context;)Lcom/android/settings/network/NetworkScoreManagerWrapper;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 139
    new-instance v1, Lcom/android/settings/network/NetworkScoreManagerWrapper;

    const-class v0, Landroid/net/NetworkScoreManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    invoke-direct {v1, v0}, Lcom/android/settings/network/NetworkScoreManagerWrapper;-><init>(Landroid/net/NetworkScoreManager;)V

    return-object v1
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x35d

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkScorerPicker;->createNetworkScorerManagerWrapper(Landroid/content/Context;)Lcom/android/settings/network/NetworkScoreManagerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/NetworkScorerPicker;->mNetworkScoreManager:Lcom/android/settings/network/NetworkScoreManagerWrapper;

    .line 62
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/android/settings/InstrumentedPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 54
    const v0, 0x7f080048

    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkScorerPicker;->addPreferencesFromResource(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkScorerPicker;->updateCandidates()V

    .line 56
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/InstrumentedPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/network/NetworkScorerPicker;->setHasOptionsMenu(Z)V

    .line 70
    return-object v0
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 2
    .param p1, "selected"    # Lcom/android/settings/ui/RadioButtonPreference;

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/android/settings/ui/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "selectedKey":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings/network/NetworkScorerPicker;->setActiveScorer(Ljava/lang/String;)Z

    move-result v1

    .line 120
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 121
    invoke-direct {p0, v0}, Lcom/android/settings/network/NetworkScorerPicker;->updateCheckedState(Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method public updateCandidates()V
    .locals 10
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkScorerPicker;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    .line 76
    .local v8, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v8}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 78
    iget-object v9, p0, Lcom/android/settings/network/NetworkScorerPicker;->mNetworkScoreManager:Lcom/android/settings/network/NetworkScoreManagerWrapper;

    invoke-virtual {v9}, Lcom/android/settings/network/NetworkScoreManagerWrapper;->getAllValidScorers()Ljava/util/List;

    move-result-object v7

    .line 79
    .local v7, "scorers":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkScorerAppData;>;"
    invoke-direct {p0}, Lcom/android/settings/network/NetworkScorerPicker;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "defaultAppKey":Ljava/lang/String;
    new-instance v4, Lcom/android/settings/ui/RadioButtonPreference;

    sget-object v9, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v9}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/android/settings/ui/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 82
    .local v4, "nonePref":Lcom/android/settings/ui/RadioButtonPreference;
    const v9, 0x7f0f123a

    invoke-virtual {v4, v9}, Lcom/android/settings/ui/RadioButtonPreference;->setTitle(I)V

    .line 83
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 84
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 90
    :goto_0
    invoke-virtual {v8, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 92
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 93
    .local v5, "numScorers":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_1

    .line 94
    new-instance v6, Lcom/android/settings/ui/RadioButtonPreference;

    sget-object v9, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v9}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/android/settings/ui/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 95
    .local v6, "pref":Lcom/android/settings/ui/RadioButtonPreference;
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScorerAppData;

    .line 96
    .local v0, "appData":Landroid/net/NetworkScorerAppData;
    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "appKey":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/settings/ui/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {v6, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 99
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 100
    invoke-virtual {v6, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 101
    invoke-virtual {v8, v6}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 86
    .end local v0    # "appData":Landroid/net/NetworkScorerAppData;
    .end local v1    # "appKey":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "numScorers":I
    .end local v6    # "pref":Lcom/android/settings/ui/RadioButtonPreference;
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/android/settings/ui/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 87
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-virtual {v4, v9}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 88
    invoke-virtual {v4, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    goto :goto_0

    .line 103
    .restart local v3    # "i":I
    .restart local v5    # "numScorers":I
    :cond_1
    return-void
.end method
