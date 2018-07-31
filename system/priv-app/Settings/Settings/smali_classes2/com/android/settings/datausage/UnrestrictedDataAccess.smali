.class public Lcom/android/settings/datausage/UnrestrictedDataAccess;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UnrestrictedDataAccess.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;
    }
.end annotation


# static fields
.field private static final EXTRA_SHOW_SYSTEM:Ljava/lang/String; = "show_system"

.field private static final MENU_SHOW_SYSTEM:I = 0x2b


# instance fields
.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

.field private mExtraLoaded:Z

.field private mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mShowSystem:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/datausage/UnrestrictedDataAccess;

    .prologue
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/android/settings/datausage/DataSaverBackend;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/datausage/UnrestrictedDataAccess;

    .prologue
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private rebuild()V
    .locals 4

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 144
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->onRebuildComplete(Ljava/util/ArrayList;)V

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 139
    const v0, 0x7f0f0eb8

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 220
    const/16 v0, 0x15d

    return v0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->setAnimationAllowed(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 64
    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 66
    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 67
    new-instance v0, Lcom/android/settings/datausage/AppStateDataUsageBridge;

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings/datausage/AppStateDataUsageBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Lcom/android/settings/datausage/DataSaverBackend;)V

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    .line 68
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 69
    if-eqz p1, :cond_0

    const-string/jumbo v0, "show_system"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    .line 70
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    :goto_1
    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 72
    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->setHasOptionsMenu(Z)V

    .line 73
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    :cond_1
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0f0cd4

    .line 77
    :goto_0
    const/16 v1, 0x2b

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 79
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 80
    return-void

    .line 78
    :cond_0
    const v0, 0x7f0f0cd3

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 127
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->release()V

    .line 128
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;->release()V

    .line 129
    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mExtraLoaded:Z

    .line 134
    invoke-direct {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->rebuild()V

    .line 135
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 84
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 95
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 86
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    .line 87
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0f0cd4

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 88
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    :goto_2
    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 90
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mExtraLoaded:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->rebuild()V

    goto :goto_0

    .line 87
    :cond_1
    const v0, 0x7f0f0cd3

    goto :goto_1

    .line 89
    :cond_2
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    goto :goto_2

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
    .end packed-switch
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 201
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 120
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;->pause()V

    .line 121
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->pause()V

    .line 122
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 225
    instance-of v2, p1, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 226
    check-cast v0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    .line 227
    .local v0, "accessPreference":Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p2, v2, :cond_1

    const/4 v1, 0x1

    .line 229
    .local v1, "whitelisted":Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->-get1(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->-get0(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 231
    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->-get0(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 230
    invoke-virtual {v2, v3, v4, v1}, Lcom/android/settings/datausage/DataSaverBackend;->setIsWhitelisted(ILjava/lang/String;Z)V

    .line 232
    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->-get1(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    move-result-object v2

    iput-boolean v1, v2, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    .line 234
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 227
    .end local v1    # "whitelisted":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "whitelisted":Z
    goto :goto_0

    .line 236
    .end local v0    # "accessPreference":Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;
    .end local v1    # "whitelisted":Z
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 163
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 164
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 165
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 167
    .local v1, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->shouldAddPreference(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 164
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    .line 173
    .local v4, "preference":Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;
    if-nez v4, :cond_2

    .line 174
    new-instance v4, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    .end local v4    # "preference":Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5, v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 175
    .restart local v4    # "preference":Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;
    invoke-virtual {v4, v3}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setKey(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v4, p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 181
    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setOrder(I)V

    goto :goto_1

    .line 179
    :cond_2
    invoke-virtual {v4}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->reuse()V

    goto :goto_2

    .line 183
    .end local v1    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "preference":Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;
    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->setLoading(ZZ)V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 185
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 113
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->resume()V

    .line 114
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;->resume()V

    .line 115
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 152
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 101
    const-string/jumbo v0, "show_system"

    iget-boolean v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 107
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->setLoading(ZZ)V

    .line 108
    return-void
.end method

.method shouldAddPreference(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 189
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
