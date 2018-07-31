.class public Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;
.super Ljava/lang/Object;
.source "DashboardFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/dashboard/DashboardFeatureProvider;


# static fields
.field private static final DASHBOARD_TILE_PREF_KEY_PREFIX:Ljava/lang/String; = "dashboard_tile_pref_"

.field private static final META_DATA_KEY_INTENT_ACTION:Ljava/lang/String; = "com.android.settings.intent.action"

.field private static final TAG:Ljava/lang/String; = "DashboardFeatureImpl"


# instance fields
.field private final mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

.field protected final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->getExtraIntentAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settingslib/drawer/CategoryManager;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/CategoryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 65
    return-void
.end method

.method private isIntentResolvable(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 223
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private launchIntentOrSelectProfile(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "tile"    # Lcom/android/settingslib/drawer/Tile;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "sourceMetricCategory"    # I

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-direct {p0, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->isIntentResolvable(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    const-string/jumbo v0, "DashboardFeatureImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot resolve intent, skipping. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/settingslib/drawer/ProfileSelectDialog;->updateUserHandlesIfNeeded(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)V

    .line 211
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 213
    invoke-virtual {p1, p3, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 220
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 216
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {p1, p3, v2, v0}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    goto :goto_0

    .line 218
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settingslib/drawer/ProfileSelectDialog;->show(Landroid/app/FragmentManager;Lcom/android/settingslib/drawer/Tile;)V

    goto :goto_0
.end method


# virtual methods
.method public bindPreferenceToTile(Landroid/app/Activity;ILandroid/support/v7/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "sourceMetricsCategory"    # I
    .param p3, "pref"    # Landroid/support/v7/preference/Preference;
    .param p4, "tile"    # Lcom/android/settingslib/drawer/Tile;
    .param p5, "key"    # Ljava/lang/String;
    .param p6, "baseOrder"    # I

    .prologue
    .line 117
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {p3, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 119
    move-object/from16 v0, p5

    invoke-virtual {p3, v0}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 123
    :goto_0
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    if-eqz v1, :cond_7

    .line 124
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-virtual {p3, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 128
    :goto_1
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_0

    .line 129
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 131
    :cond_0
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    .line 132
    .local v9, "metadata":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 133
    .local v8, "clsName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 134
    .local v7, "action":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 135
    const-string/jumbo v1, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 136
    .local v8, "clsName":Ljava/lang/String;
    const-string/jumbo v1, "com.android.settings.intent.action"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 138
    .end local v7    # "action":Ljava/lang/String;
    .end local v8    # "clsName":Ljava/lang/String;
    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 139
    invoke-virtual {p3, v8}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 151
    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 155
    .local v11, "skipOffsetPackageName":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v1, v0, Lcom/android/settingslib/drawer/Tile;->priority:I

    if-eqz v1, :cond_5

    .line 156
    const/4 v10, 0x0

    .line 157
    .local v10, "shouldSkipBaseOrderOffset":Z
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 159
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {v11, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    .line 161
    .end local v10    # "shouldSkipBaseOrderOffset":Z
    :cond_3
    if-nez v10, :cond_4

    const v1, 0x7fffffff

    move/from16 v0, p6

    if-ne v0, v1, :cond_a

    .line 162
    :cond_4
    move-object/from16 v0, p4

    iget v1, v0, Lcom/android/settingslib/drawer/Tile;->priority:I

    neg-int v1, v1

    invoke-virtual {p3, v1}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 167
    :cond_5
    :goto_3
    return-void

    .line 121
    .end local v9    # "metadata":Landroid/os/Bundle;
    .end local v11    # "skipOffsetPackageName":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_7
    const v1, 0x7f0f123b

    invoke-virtual {p3, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 140
    .restart local v9    # "metadata":Landroid/os/Bundle;
    :cond_8
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 141
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 142
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v1, ":settings:source_metrics"

    invoke-virtual {v6, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    if-eqz v7, :cond_9

    .line 144
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    :cond_9
    new-instance v1, Lcom/android/settings/dashboard/-$Lambda$coOy44pyUcdO6tnc3O8BJbKy3bY;

    move v2, p2

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/dashboard/-$Lambda$coOy44pyUcdO6tnc3O8BJbKy3bY;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_2

    .line 164
    .end local v6    # "intent":Landroid/content/Intent;
    .restart local v11    # "skipOffsetPackageName":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p4

    iget v1, v0, Lcom/android/settingslib/drawer/Tile;->priority:I

    neg-int v1, v1

    add-int v1, v1, p6

    invoke-virtual {p3, v1}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    goto :goto_3
.end method

.method public getAllCategories()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/drawer/CategoryManager;->getCategories(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;
    .locals 4
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    const/4 v3, 0x0

    .line 102
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-nez v2, :cond_1

    .line 103
    :cond_0
    return-object v3

    .line 105
    :cond_1
    iget-object v2, p1, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 106
    iget-object v2, p1, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    return-object v2

    .line 108
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dashboard_tile_pref_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 110
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getExtraIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferencesForCategory(Landroid/app/Activity;Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "sourceMetricsCategory"    # I
    .param p4, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 75
    invoke-virtual {p0, p4}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v7

    .line 76
    .local v7, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    if-nez v7, :cond_0

    .line 77
    const-string/jumbo v0, "DashboardFeatureImpl"

    const-string/jumbo v1, "NO dashboard tiles for DashboardFeatureImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-object v5

    .line 80
    :cond_0
    iget-object v10, v7, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    .line 81
    .local v10, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    :cond_1
    const-string/jumbo v0, "DashboardFeatureImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tile list is empty, skipping category "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-object v5

    .line 85
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v8, "preferences":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "tile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    .line 87
    .local v4, "tile":Lcom/android/settingslib/drawer/Tile;
    new-instance v3, Landroid/support/v7/preference/Preference;

    invoke-direct {v3, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 89
    .local v3, "pref":Landroid/support/v7/preference/Preference;
    const v6, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    .line 88
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->bindPreferenceToTile(Landroid/app/Activity;ILandroid/support/v7/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)V

    .line 90
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    .end local v3    # "pref":Landroid/support/v7/preference/Preference;
    .end local v4    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_3
    return-object v8
.end method

.method public getProgressiveDisclosureMixin(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Landroid/os/Bundle;)Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/android/settings/dashboard/DashboardFragment;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "keepExpanded":Z
    if-eqz p3, :cond_0

    .line 174
    const-string/jumbo v1, ":settings:fragment_args_key"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 176
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;-><init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Z)V

    return-object v1

    .line 174
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/settingslib/drawer/CategoryManager;->getTilesByCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$-com_android_settings_dashboard_DashboardFeatureProviderImpl_5617(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;ILandroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "tile"    # Lcom/android/settingslib/drawer/Tile;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "sourceMetricsCategory"    # I
    .param p5, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->launchIntentOrSelectProfile(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;I)V

    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public openTileIntent(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    const v5, 0x8000

    const/16 v4, 0x23

    .line 186
    if-nez p2, :cond_0

    .line 187
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 189
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 190
    return-void

    .line 193
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p2, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-nez v1, :cond_1

    .line 194
    return-void

    .line 196
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p2, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 197
    const-string/jumbo v2, ":settings:source_metrics"

    .line 196
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 199
    const-string/jumbo v2, "show_drawer_menu"

    const/4 v3, 0x1

    .line 196
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 201
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-direct {p0, p1, p2, v0, v4}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->launchIntentOrSelectProfile(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;I)V

    .line 202
    return-void
.end method
