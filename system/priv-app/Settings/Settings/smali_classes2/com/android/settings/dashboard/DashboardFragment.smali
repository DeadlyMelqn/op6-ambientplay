.class public abstract Lcom/android/settings/dashboard/DashboardFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DashboardFragment.java"

# interfaces
.implements Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;


# static fields
.field private static final TAG:Ljava/lang/String; = "DashboardFragment"


# instance fields
.field protected mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private final mDashboardTilePrefKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListeningToCategoryChange:Z

.field private mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

.field private final mPreferenceControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field protected mProgressiveDisclosureMixin:Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;

.field private mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    .line 58
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Ljava/util/Set;

    .line 51
    return-void
.end method

.method private displayResourceTiles()V
    .locals 6

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreenResId()I

    move-result v3

    .line 234
    .local v3, "resId":I
    if-gtz v3, :cond_0

    .line 235
    return-void

    .line 237
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/dashboard/DashboardFragment;->addPreferencesFromResource(I)V

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    .line 239
    .local v4, "screen":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 240
    .local v2, "controllers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings/core/PreferenceController;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "controller$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/PreferenceController;

    .line 241
    .local v0, "controller":Lcom/android/settings/core/PreferenceController;
    invoke-virtual {v0, v4}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    goto :goto_0

    .line 243
    .end local v0    # "controller":Lcom/android/settings/core/PreferenceController;
    :cond_1
    return-void
.end method

.method private refreshAllPreferences(Ljava/lang/String;)V
    .locals 2
    .param p1, "TAG"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;->displayResourceTiles()V

    .line 280
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mProgressiveDisclosureMixin:Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->collapse(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->refreshDashboardTiles(Ljava/lang/String;)V

    .line 283
    return-void
.end method


# virtual methods
.method protected addPreferenceController(Lcom/android/settings/core/PreferenceController;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/settings/core/PreferenceController;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/settings/core/PreferenceController;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    return-void
.end method

.method protected displayTile(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 1
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public getCategoryKey()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .prologue
    .line 204
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getLogTag()Ljava/lang/String;
.end method

.method protected getPreferenceController(Ljava/lang/Class;)Lcom/android/settings/core/PreferenceController;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settings/core/PreferenceController;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/PreferenceController;

    .line 192
    .local v0, "controller":Lcom/android/settings/core/PreferenceController;
    return-object v0
.end method

.method protected abstract getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getPreferenceScreenResId()I
.end method

.method public notifySummaryChanged(Lcom/android/settingslib/drawer/Tile;)V
    .locals 7
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 141
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v2, p1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFragment;->mProgressiveDisclosureMixin:Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    .line 142
    invoke-virtual {v2, v3, v0}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->findPreference(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 144
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    if-nez v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    .line 146
    const-string/jumbo v3, "Can\'t find pref by key %s, skipping update summary %s/%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 147
    const/4 v5, 0x0

    aput-object v0, v4, v5

    iget-object v5, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, p1, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 146
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void

    .line 150
    :cond_0
    iget-object v2, p1, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 70
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v3

    .line 69
    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 71
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 71
    invoke-interface {v3, p1, p0, v4}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getProgressiveDisclosureMixin(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Landroid/os/Bundle;)Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardFragment;->mProgressiveDisclosureMixin:Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardFragment;->mProgressiveDisclosureMixin:Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;

    invoke-virtual {v3, v4}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 76
    .local v2, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/core/PreferenceController;>;"
    if-nez v2, :cond_0

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/core/PreferenceController;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .restart local v2    # "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/core/PreferenceController;>;"
    :cond_0
    new-instance v3, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    invoke-direct {v3, p1}, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;-><init>(Landroid/content/Context;)V

    .line 79
    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    .line 81
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "controller$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/PreferenceController;

    .line 83
    .local v0, "controller":Lcom/android/settings/core/PreferenceController;
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->addPreferenceController(Lcom/android/settings/core/PreferenceController;)V

    goto :goto_0

    .line 85
    .end local v0    # "controller":Lcom/android/settings/core/PreferenceController;
    :cond_1
    return-void
.end method

.method public onCategoriesChanged()V
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getCategoryKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    .line 108
    .local v0, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    if-nez v0, :cond_0

    .line 109
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->refreshDashboardTiles(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->refreshAllPreferences(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 161
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 166
    .local v2, "controllers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings/core/PreferenceController;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "controller$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/PreferenceController;

    .line 167
    .local v0, "controller":Lcom/android/settings/core/PreferenceController;
    invoke-virtual {v0, p1}, Lcom/android/settings/core/PreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    const/4 v3, 0x1

    return v3

    .line 171
    .end local v0    # "controller":Lcom/android/settings/core/PreferenceController;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v3

    return v3
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    .line 157
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 122
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 124
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getCategoryKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v1

    .line 125
    .local v1, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    if-nez v1, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v2, v4}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 133
    .local v0, "activity":Landroid/app/Activity;
    instance-of v2, v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    if-eqz v2, :cond_2

    .line 134
    iput-boolean v4, p0, Lcom/android/settings/dashboard/DashboardFragment;->mListeningToCategoryChange:Z

    .line 135
    check-cast v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->addCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V

    .line 137
    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 177
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    .line 181
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mListeningToCategoryChange:Z

    if-eqz v1, :cond_2

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 183
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    if-eqz v1, :cond_1

    .line 184
    check-cast v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->remCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V

    .line 186
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/dashboard/DashboardFragment;->mListeningToCategoryChange:Z

    .line 188
    :cond_2
    return-void
.end method

.method refreshDashboardTiles(Ljava/lang/String;)V
    .locals 24
    .param p1, "TAG"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .prologue
    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v20

    .line 293
    .local v20, "screen":Landroid/support/v7/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardFragment;->getCategoryKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v15

    .line 294
    .local v15, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    if-nez v15, :cond_0

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NO dashboard tiles for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void

    .line 298
    :cond_0
    iget-object v0, v15, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    move-object/from16 v22, v0

    .line 299
    .local v22, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    if-nez v22, :cond_1

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tile list is empty, skipping category "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v15, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void

    .line 304
    :cond_1
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Ljava/util/Set;

    move-object/from16 v0, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 307
    .local v19, "remove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    if-eqz v1, :cond_2

    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/SummaryLoader;->release()V

    .line 310
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v16

    .line 311
    .local v16, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardFragment;->getCategoryKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/settings/dashboard/SummaryLoader;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummaryConsumer(Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;)V

    .line 313
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 314
    const v2, 0x1010429

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 313
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 315
    .local v14, "a":Landroid/content/res/TypedArray;
    const v1, 0x106000b

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v14, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v23

    .line 316
    .local v23, "tintColor":I
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 317
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    .line 319
    .local v18, "pkgName":Ljava/lang/String;
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "tile$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/drawer/Tile;

    .line 320
    .local v5, "tile":Lcom/android/settingslib/drawer/Tile;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v1, v5}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v6

    .line 321
    .local v6, "key":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tile does not contain a key, skipping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 325
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/dashboard/DashboardFragment;->displayTile(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 328
    if-eqz v18, :cond_5

    iget-object v1, v5, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_5

    .line 329
    iget-object v1, v5, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 328
    if-eqz v1, :cond_5

    .line 331
    iget-object v1, v5, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    move/from16 v0, v23

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    .line 333
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Ljava/util/Set;

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/dashboard/DashboardFragment;->mProgressiveDisclosureMixin:Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;

    move-object/from16 v0, v20

    invoke-virtual {v1, v0, v6}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->findPreference(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    .line 337
    .local v4, "preference":Landroid/support/v7/preference/Preference;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardFragment;->getMetricsCategory()I

    move-result v3

    .line 338
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/dashboard/DashboardFragment;->mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    invoke-virtual {v7}, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;->getOrder()I

    move-result v7

    .line 337
    invoke-interface/range {v1 .. v7}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->bindPreferenceToTile(Landroid/app/Activity;ILandroid/support/v7/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)V

    .line 347
    .end local v4    # "preference":Landroid/support/v7/preference/Preference;
    :goto_1
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 341
    :cond_6
    new-instance v10, Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v10, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 342
    .local v10, "pref":Landroid/support/v7/preference/Preference;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardFragment;->getMetricsCategory()I

    move-result v9

    .line 343
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/dashboard/DashboardFragment;->mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;->getOrder()I

    move-result v13

    move-object v11, v5

    move-object v12, v6

    .line 342
    invoke-interface/range {v7 .. v13}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->bindPreferenceToTile(Landroid/app/Activity;ILandroid/support/v7/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/dashboard/DashboardFragment;->mProgressiveDisclosureMixin:Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;

    move-object/from16 v0, v20

    invoke-virtual {v1, v0, v10}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->addPreference(Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/Preference;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Ljava/util/Set;

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 350
    .end local v5    # "tile":Lcom/android/settingslib/drawer/Tile;
    .end local v6    # "key":Ljava/lang/String;
    .end local v10    # "pref":Landroid/support/v7/preference/Preference;
    :cond_7
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "key$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 351
    .restart local v6    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Ljava/util/Set;

    invoke-interface {v1, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/dashboard/DashboardFragment;->mProgressiveDisclosureMixin:Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;

    move-object/from16 v0, v20

    invoke-virtual {v1, v0, v6}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->removePreference(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V

    goto :goto_2

    .line 354
    .end local v6    # "key":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    .line 355
    return-void
.end method

.method protected updatePreferenceStates()V
    .locals 11

    .prologue
    .line 249
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 250
    .local v2, "controllers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings/core/PreferenceController;>;"
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    .line 251
    .local v5, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "controller$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/PreferenceController;

    .line 252
    .local v0, "controller":Lcom/android/settings/core/PreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/core/PreferenceController;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/android/settings/core/PreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardFragment;->mProgressiveDisclosureMixin:Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;

    invoke-virtual {v6, v5, v3}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->findPreference(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    .line 258
    .local v4, "preference":Landroid/support/v7/preference/Preference;
    if-nez v4, :cond_1

    .line 259
    const-string/jumbo v6, "DashboardFragment"

    const-string/jumbo v7, "Cannot find preference with key %s in Controller %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 260
    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-virtual {v0}, Lcom/android/settings/core/PreferenceController;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 259
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual {v0, v4}, Lcom/android/settings/core/PreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    goto :goto_0

    .line 265
    .end local v0    # "controller":Lcom/android/settings/core/PreferenceController;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "preference":Landroid/support/v7/preference/Preference;
    :cond_2
    return-void
.end method
