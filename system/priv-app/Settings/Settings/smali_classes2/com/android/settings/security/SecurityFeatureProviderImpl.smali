.class public Lcom/android/settings/security/SecurityFeatureProviderImpl;
.super Ljava/lang/Object;
.source "SecurityFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/security/SecurityFeatureProvider;


# static fields
.field static final DEFAULT_ICON:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static sIconCache:Ljava/util/Map;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field static sSummaryCache:Ljava/util/Map;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

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


# instance fields
.field private mTrustAgentManager:Lcom/android/settings/trustagent/TrustAgentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/settings/security/SecurityFeatureProviderImpl;->sIconCache:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/settings/security/SecurityFeatureProviderImpl;->sSummaryCache:Ljava/util/Map;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initPreferences(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Lcom/android/settingslib/drawer/DashboardCategory;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferenceScreen"    # Landroid/support/v7/preference/PreferenceScreen;
    .param p2, "dashboardCategory"    # Lcom/android/settingslib/drawer/DashboardCategory;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 86
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v9

    .line 87
    .local v9, "tilesCount":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v9, :cond_5

    .line 88
    invoke-virtual {p2, v2}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v8

    .line 90
    .local v8, "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v10, v8, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, v8, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    if-nez v10, :cond_2

    .line 87
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 86
    .end local v2    # "i":I
    .end local v8    # "tile":Lcom/android/settingslib/drawer/Tile;
    .end local v9    # "tilesCount":I
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "tilesCount":I
    goto :goto_0

    .line 93
    .restart local v2    # "i":I
    .restart local v8    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_2
    iget-object v10, v8, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 95
    .local v5, "matchingPref":Landroid/support/v7/preference/Preference;
    if-eqz v5, :cond_0

    .line 102
    iget-object v10, v8, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v11, "com.android.settings.icon_uri"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "iconUri":Ljava/lang/String;
    sget-object v0, Lcom/android/settings/security/SecurityFeatureProviderImpl;->DEFAULT_ICON:Landroid/graphics/drawable/Drawable;

    .line 104
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    sget-object v10, Lcom/android/settings/security/SecurityFeatureProviderImpl;->sIconCache:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 105
    sget-object v10, Lcom/android/settings/security/SecurityFeatureProviderImpl;->sIconCache:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 107
    .local v3, "icon":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 108
    iget-object v10, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 107
    invoke-virtual {v11, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    .line 109
    iget-object v10, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v12

    .line 107
    invoke-virtual {v11, v10, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    .end local v3    # "icon":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    :goto_3
    invoke-virtual {v5, v0}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object v10, v8, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v11, "com.android.settings.summary_uri"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 120
    .local v7, "summaryUri":Ljava/lang/String;
    const v10, 0x7f0f123b

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, "summary":Ljava/lang/String;
    if-eqz v7, :cond_4

    sget-object v10, Lcom/android/settings/security/SecurityFeatureProviderImpl;->sSummaryCache:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 122
    sget-object v10, Lcom/android/settings/security/SecurityFeatureProviderImpl;->sSummaryCache:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "summary":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 124
    .restart local v6    # "summary":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 126
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "iconUri":Ljava/lang/String;
    .end local v5    # "matchingPref":Landroid/support/v7/preference/Preference;
    .end local v6    # "summary":Ljava/lang/String;
    .end local v7    # "summaryUri":Ljava/lang/String;
    .end local v8    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_5
    return-void

    .line 111
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "icon":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v4    # "iconUri":Ljava/lang/String;
    .restart local v5    # "matchingPref":Landroid/support/v7/preference/Preference;
    .restart local v8    # "tile":Lcom/android/settingslib/drawer/Tile;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_3
.end method


# virtual methods
.method public getTrustAgentManager()Lcom/android/settings/trustagent/TrustAgentManager;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl;->mTrustAgentManager:Lcom/android/settings/trustagent/TrustAgentManager;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lcom/android/settings/trustagent/TrustAgentManagerImpl;

    invoke-direct {v0}, Lcom/android/settings/trustagent/TrustAgentManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl;->mTrustAgentManager:Lcom/android/settings/trustagent/TrustAgentManager;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl;->mTrustAgentManager:Lcom/android/settings/trustagent/TrustAgentManager;

    return-object v0
.end method

.method public updatePreferences(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Lcom/android/settingslib/drawer/DashboardCategory;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceScreen"    # Landroid/support/v7/preference/PreferenceScreen;
    .param p3, "dashboardCategory"    # Lcom/android/settingslib/drawer/DashboardCategory;

    .prologue
    .line 63
    if-nez p2, :cond_0

    .line 64
    return-void

    .line 66
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v0

    .line 67
    .local v0, "tilesCount":I
    :goto_0
    if-nez v0, :cond_2

    .line 68
    return-void

    .line 66
    .end local v0    # "tilesCount":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "tilesCount":I
    goto :goto_0

    .line 71
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/android/settings/security/SecurityFeatureProviderImpl;->initPreferences(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Lcom/android/settingslib/drawer/DashboardCategory;)V

    .line 75
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/android/settings/security/SecurityFeatureProviderImpl$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/settings/security/SecurityFeatureProviderImpl$1;-><init>(Lcom/android/settings/security/SecurityFeatureProviderImpl;Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Lcom/android/settingslib/drawer/DashboardCategory;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method updatePreferencesToRunOnWorkerThread(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Lcom/android/settingslib/drawer/DashboardCategory;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceScreen"    # Landroid/support/v7/preference/PreferenceScreen;
    .param p3, "dashboardCategory"    # Lcom/android/settingslib/drawer/DashboardCategory;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 132
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v15

    .line 133
    .local v15, "tilesCount":I
    :goto_0
    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    .line 134
    .local v12, "providerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/IContentProvider;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v15, :cond_6

    .line 135
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v5

    .line 137
    .local v5, "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v2, v5, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v5, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_2

    .line 134
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 132
    .end local v5    # "tile":Lcom/android/settingslib/drawer/Tile;
    .end local v8    # "i":I
    .end local v12    # "providerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/IContentProvider;>;"
    .end local v15    # "tilesCount":I
    :cond_1
    const/4 v15, 0x0

    .restart local v15    # "tilesCount":I
    goto :goto_0

    .line 149
    .restart local v5    # "tile":Lcom/android/settingslib/drawer/Tile;
    .restart local v8    # "i":I
    .restart local v12    # "providerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/IContentProvider;>;"
    :cond_2
    iget-object v2, v5, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.icon_uri"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 151
    .local v9, "iconUri":Ljava/lang/String;
    iget-object v2, v5, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.summary_uri"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 152
    .local v14, "summaryUri":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 153
    const/4 v11, 0x0

    .line 154
    .local v11, "packageName":Ljava/lang/String;
    iget-object v2, v5, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 155
    iget-object v10, v5, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 156
    .local v10, "intent":Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 157
    invoke-virtual {v10}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v11

    .line 163
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_3
    :goto_3
    move-object/from16 v0, p1

    invoke-static {v0, v11, v9, v12}, Lcom/android/settingslib/drawer/TileUtils;->getIconFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v7

    .line 164
    .local v7, "icon":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v7, :cond_4

    .line 165
    sget-object v2, Lcom/android/settings/security/SecurityFeatureProviderImpl;->sIconCache:Ljava/util/Map;

    invoke-interface {v2, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v16, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/settings/security/SecurityFeatureProviderImpl$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/security/SecurityFeatureProviderImpl$2;-><init>(Lcom/android/settings/security/SecurityFeatureProviderImpl;Landroid/support/v7/preference/PreferenceScreen;Lcom/android/settingslib/drawer/Tile;Landroid/content/Context;Landroid/util/Pair;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    .end local v7    # "icon":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    const-string/jumbo v2, "com.android.settings.summary"

    .line 193
    move-object/from16 v0, p1

    invoke-static {v0, v14, v12, v2}, Lcom/android/settingslib/drawer/TileUtils;->getTextFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 195
    .local v13, "summary":Ljava/lang/String;
    sget-object v2, Lcom/android/settings/security/SecurityFeatureProviderImpl;->sSummaryCache:Ljava/util/Map;

    invoke-interface {v2, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1, v5, v13}, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;-><init>(Lcom/android/settings/security/SecurityFeatureProviderImpl;Landroid/support/v7/preference/PreferenceScreen;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 158
    .end local v13    # "summary":Ljava/lang/String;
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v11    # "packageName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 159
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .local v11, "packageName":Ljava/lang/String;
    goto :goto_3

    .line 219
    .end local v5    # "tile":Lcom/android/settingslib/drawer/Tile;
    .end local v9    # "iconUri":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v14    # "summaryUri":Ljava/lang/String;
    :cond_6
    return-void
.end method
