.class public Lcom/android/settingslib/drawer/CategoryManager;
.super Ljava/lang/Object;
.source "CategoryManager.java"


# static fields
.field private static sInstance:Lcom/android/settingslib/drawer/CategoryManager;


# instance fields
.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mCategoryByKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraAction:Ljava/lang/String;

.field private final mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field private final mTileByComponentCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    .line 68
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    .line 69
    new-instance v0, Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 70
    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    .line 71
    iput-object p2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mExtraAction:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/settingslib/drawer/CategoryManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settingslib/drawer/CategoryManager;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/CategoryManager;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/CategoryManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-object v0, Lcom/android/settingslib/drawer/CategoryManager;->sInstance:Lcom/android/settingslib/drawer/CategoryManager;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/android/settingslib/drawer/CategoryManager;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/drawer/CategoryManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settingslib/drawer/CategoryManager;->sInstance:Lcom/android/settingslib/drawer/CategoryManager;

    .line 63
    :cond_0
    sget-object v0, Lcom/android/settingslib/drawer/CategoryManager;->sInstance:Lcom/android/settingslib/drawer/CategoryManager;

    return-object v0
.end method

.method static synthetic lambda$-com_android_settingslib_drawer_CategoryManager_9560(Ljava/lang/String;Lcom/android/settingslib/drawer/Tile;Lcom/android/settingslib/drawer/Tile;)I
    .locals 6
    .param p0, "skipPackageName"    # Ljava/lang/String;
    .param p1, "tile1"    # Lcom/android/settingslib/drawer/Tile;
    .param p2, "tile2"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 241
    iget-object v4, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "package1":Ljava/lang/String;
    iget-object v4, p2, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "package2":Ljava/lang/String;
    sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-interface {v4, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 245
    .local v2, "packageCompare":I
    iget v4, p2, Lcom/android/settingslib/drawer/Tile;->priority:I

    iget v5, p1, Lcom/android/settingslib/drawer/Tile;->priority:I

    sub-int v3, v4, v5

    .line 246
    .local v3, "priorityCompare":I
    if-eqz v3, :cond_0

    .line 247
    return v3

    .line 250
    :cond_0
    if-eqz v2, :cond_2

    .line 251
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 252
    const/4 v4, -0x1

    return v4

    .line 254
    :cond_1
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 255
    const/4 v4, 0x1

    return v4

    .line 258
    :cond_2
    return v2
.end method

.method private declared-synchronized sortCategoriesForExternalTiles(Landroid/content/Context;Lcom/android/settingslib/drawer/DashboardCategory;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dashboardCategory"    # Lcom/android/settingslib/drawer/DashboardCategory;

    .prologue
    monitor-enter p0

    .line 237
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "skipPackageName":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    new-instance v2, Lcom/android/settingslib/drawer/-$Lambda$fie9DrpofQitFBkgTwa4lEr0wug;

    invoke-direct {v2, v0}, Lcom/android/settingslib/drawer/-$Lambda$fie9DrpofQitFBkgTwa4lEr0wug;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 260
    return-void

    .end local v0    # "skipPackageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized tryInitCategories(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forceClearCache"    # Z
    .param p3, "settingPkg"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    if-nez v2, :cond_2

    .line 125
    if-eqz p2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 129
    iget-object v2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    .line 130
    iget-object v3, p0, Lcom/android/settingslib/drawer/CategoryManager;->mExtraAction:Ljava/lang/String;

    const/4 v4, 0x0

    .line 129
    invoke-static {p1, v2, v4, v3, p3}, Lcom/android/settingslib/drawer/TileUtils;->getCategories(Landroid/content/Context;Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    .line 131
    iget-object v2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "category$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 132
    .local v0, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iget-object v2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    iget-object v3, v0, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v1    # "category$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 134
    .restart local v1    # "category$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-virtual {p0, v2, v3}, Lcom/android/settingslib/drawer/CategoryManager;->backwardCompatCleanupForCategory(Ljava/util/Map;Ljava/util/Map;)V

    .line 135
    iget-object v2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-virtual {p0, p1, v2}, Lcom/android/settingslib/drawer/CategoryManager;->sortCategories(Landroid/content/Context;Ljava/util/Map;)V

    .line 136
    iget-object v2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-virtual {p0, v2}, Lcom/android/settingslib/drawer/CategoryManager;->filterDuplicateTiles(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "category$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    .line 138
    return-void
.end method


# virtual methods
.method declared-synchronized backwardCompatCleanupForCategory(Ljava/util/Map;Ljava/util/Map;)V
    .locals 16
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "tileByComponentCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    .local p2, "categoryByKeyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    monitor-enter p0

    .line 149
    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v6, "packageToTileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "tileEntry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 151
    .local v9, "tileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    iget-object v5, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 152
    .local v5, "packageName":Ljava/lang/String;
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 153
    .local v11, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    if-nez v11, :cond_0

    .line 154
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .restart local v11    # "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    invoke-interface {v6, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_0
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settingslib/drawer/Tile;

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "packageToTileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;>;"
    .end local v9    # "tileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    .end local v10    # "tileEntry$iterator":Ljava/util/Iterator;
    .end local v11    # "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 160
    .restart local v6    # "packageToTileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;>;"
    .restart local v10    # "tileEntry$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 161
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 163
    .restart local v11    # "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    const/4 v12, 0x0

    .line 164
    .local v12, "useNewKey":Z
    const/4 v13, 0x0

    .line 165
    .local v13, "useOldKey":Z
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "tile$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/drawer/Tile;

    .line 166
    .local v7, "tile":Lcom/android/settingslib/drawer/Tile;
    sget-object v14, Lcom/android/settingslib/drawer/CategoryKey;->KEY_COMPAT_MAP:Ljava/util/Map;

    iget-object v15, v7, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-interface {v14, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 167
    const/4 v13, 0x1

    goto :goto_1

    .line 169
    :cond_3
    const/4 v12, 0x1

    .line 174
    .end local v7    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_4
    if-eqz v13, :cond_2

    xor-int/lit8 v14, v12, 0x1

    if-eqz v14, :cond_2

    .line 175
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/drawer/Tile;

    .line 176
    .restart local v7    # "tile":Lcom/android/settingslib/drawer/Tile;
    sget-object v14, Lcom/android/settingslib/drawer/CategoryKey;->KEY_COMPAT_MAP:Ljava/util/Map;

    iget-object v15, v7, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 177
    .local v4, "newCategoryKey":Ljava/lang/String;
    iput-object v4, v7, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    .line 179
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 180
    .local v3, "newCategory":Lcom/android/settingslib/drawer/DashboardCategory;
    if-nez v3, :cond_5

    .line 181
    new-instance v3, Lcom/android/settingslib/drawer/DashboardCategory;

    .end local v3    # "newCategory":Lcom/android/settingslib/drawer/DashboardCategory;
    invoke-direct {v3}, Lcom/android/settingslib/drawer/DashboardCategory;-><init>()V

    .line 182
    .restart local v3    # "newCategory":Lcom/android/settingslib/drawer/DashboardCategory;
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_5
    iget-object v14, v3, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;>;"
    .end local v3    # "newCategory":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v4    # "newCategoryKey":Ljava/lang/String;
    .end local v7    # "tile":Lcom/android/settingslib/drawer/Tile;
    .end local v8    # "tile$iterator":Ljava/util/Iterator;
    .end local v11    # "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    .end local v12    # "useNewKey":Z
    .end local v13    # "useOldKey":Z
    :cond_6
    monitor-exit p0

    .line 188
    return-void
.end method

.method declared-synchronized filterDuplicateTiles(Ljava/util/Map;)V
    .locals 9
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "categoryByKeyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    monitor-enter p0

    .line 211
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "categoryEntry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 212
    .local v1, "categoryEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 213
    .local v0, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iget-object v8, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .line 214
    .local v4, "count":I
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 215
    .local v3, "components":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_0

    .line 216
    iget-object v8, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/drawer/Tile;

    .line 217
    .local v6, "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v8, v6, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-nez v8, :cond_1

    .line 215
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 220
    :cond_1
    iget-object v8, v6, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 221
    .local v7, "tileComponent":Landroid/content/ComponentName;
    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 222
    iget-object v8, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v0    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v1    # "categoryEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    .end local v2    # "categoryEntry$iterator":Ljava/util/Iterator;
    .end local v3    # "components":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v4    # "count":I
    .end local v5    # "i":I
    .end local v6    # "tile":Lcom/android/settingslib/drawer/Tile;
    .end local v7    # "tileComponent":Landroid/content/ComponentName;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 224
    .restart local v0    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .restart local v1    # "categoryEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    .restart local v2    # "categoryEntry$iterator":Ljava/util/Iterator;
    .restart local v3    # "components":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v4    # "count":I
    .restart local v5    # "i":I
    .restart local v6    # "tile":Lcom/android/settingslib/drawer/Tile;
    .restart local v7    # "tileComponent":Landroid/content/ComponentName;
    :cond_2
    :try_start_1
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v1    # "categoryEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    .end local v3    # "components":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v4    # "count":I
    .end local v5    # "i":I
    .end local v6    # "tile":Lcom/android/settingslib/drawer/Tile;
    .end local v7    # "tileComponent":Landroid/content/ComponentName;
    :cond_3
    monitor-exit p0

    .line 228
    return-void
.end method

.method public declared-synchronized reloadAllCategories(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingPkg"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/drawer/CategoryManager;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 95
    invoke-virtual {v1, v2}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 97
    .local v0, "forceClearCache":Z
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    .line 98
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settingslib/drawer/CategoryManager;->tryInitCategories(Landroid/content/Context;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 99
    return-void

    .end local v0    # "forceClearCache":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized sortCategories(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "categoryByKeyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    monitor-enter p0

    .line 200
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "categoryEntry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 201
    .local v0, "categoryEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {p0, p1, v2}, Lcom/android/settingslib/drawer/CategoryManager;->sortCategoriesForExternalTiles(Landroid/content/Context;Lcom/android/settingslib/drawer/DashboardCategory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "categoryEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    .end local v1    # "categoryEntry$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "categoryEntry$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    .line 203
    return-void
.end method

.method public declared-synchronized updateCategoryFromBlacklist(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "tileBlacklist":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v5, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    if-nez v5, :cond_0

    .line 103
    const-string/jumbo v5, "CategoryManager"

    const-string/jumbo v6, "Category is null, skipping blacklist update"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 106
    iget-object v5, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 107
    .local v0, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    const/4 v2, 0x0

    .local v2, "j":I
    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    :goto_1
    iget-object v5, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 108
    iget-object v5, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    .line 109
    .local v4, "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v5, v4, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 110
    iget-object v5, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    add-int/lit8 v2, v3, -0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_1

    .line 105
    .end local v4    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v3    # "j":I
    :cond_2
    monitor-exit p0

    .line 114
    return-void

    .end local v1    # "i":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .restart local v0    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_3
    move v2, v3

    .end local v3    # "j":I
    .restart local v2    # "j":I
    goto :goto_2
.end method
