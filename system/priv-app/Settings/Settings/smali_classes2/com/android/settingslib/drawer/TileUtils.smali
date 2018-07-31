.class public Lcom/android/settingslib/drawer/TileUtils;
.super Ljava/lang/Object;
.source "TileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/drawer/TileUtils$1;,
        Lcom/android/settingslib/drawer/TileUtils$2;
    }
.end annotation


# static fields
.field private static final CATEGORY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEBUG_TIMING:Z = false

.field private static final EXTRA_CATEGORY_KEY:Ljava/lang/String; = "com.android.settings.category"

.field private static final EXTRA_PREFERENCE_ICON_PACKAGE:Ljava/lang/String; = "com.android.settings.icon_package"

.field private static final EXTRA_SETTINGS_ACTION:Ljava/lang/String; = "com.android.settings.action.EXTRA_SETTINGS"

.field private static final FRAGMENT_KEY:Ljava/lang/String; = "com.android.settings.FRAGMENT_CLASS"

.field private static final GOOGLE_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.gms"

.field private static final IA_SETTINGS_ACTION:Ljava/lang/String; = "com.android.settings.action.IA_SETTINGS"

.field private static final LOG_TAG:Ljava/lang/String; = "TileUtils"

.field private static final MANUFACTURER_DEFAULT_CATEGORY:Ljava/lang/String; = "com.android.settings.category.device"

.field private static final MANUFACTURER_SETTINGS:Ljava/lang/String; = "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

.field public static final META_DATA_PREFERENCE_ICON:Ljava/lang/String; = "com.android.settings.icon"

.field public static final META_DATA_PREFERENCE_ICON_URI:Ljava/lang/String; = "com.android.settings.icon_uri"

.field public static final META_DATA_PREFERENCE_KEYHINT:Ljava/lang/String; = "com.android.settings.keyhint"

.field public static final META_DATA_PREFERENCE_SUMMARY:Ljava/lang/String; = "com.android.settings.summary"

.field public static final META_DATA_PREFERENCE_SUMMARY_URI:Ljava/lang/String; = "com.android.settings.summary_uri"

.field public static final META_DATA_PREFERENCE_TITLE:Ljava/lang/String; = "com.android.settings.title"

.field public static final META_DATA_PREFERENCE_TITLE_RES_ID:Ljava/lang/String; = "com.android.settings.title.resid"

.field private static final ONEPLUS_SETUPWIZARD:Ljava/lang/String; = "com.oneplus.setupwizard"

.field private static final OPERATOR_DEFAULT_CATEGORY:Ljava/lang/String; = "com.android.settings.category.wireless"

.field private static final OPERATOR_SETTINGS:Ljava/lang/String; = "com.android.settings.OPERATOR_APPLICATION_SETTING"

.field private static final PRIVACYSETTINGS_VALUE:Ljava/lang/String; = "com.android.settings.PrivacySettings"

.field private static final SETTINGS_ACTION:Ljava/lang/String; = "com.android.settings.action.SETTINGS"

.field private static final SETTINGS_CUSTOM_CATAGORY:Ljava/lang/String; = "com.android.settings.category.custom"

.field public static final SETTING_PKG:Ljava/lang/String; = "com.android.settings"

.field public static final TILE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 633
    new-instance v0, Lcom/android/settingslib/drawer/TileUtils$1;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/TileUtils$1;-><init>()V

    .line 632
    sput-object v0, Lcom/android/settingslib/drawer/TileUtils;->TILE_COMPARATOR:Ljava/util/Comparator;

    .line 641
    new-instance v0, Lcom/android/settingslib/drawer/TileUtils$2;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/TileUtils$2;-><init>()V

    .line 640
    sput-object v0, Lcom/android/settingslib/drawer/TileUtils;->CATEGORY_COMPARATOR:Ljava/util/Comparator;

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

.method private static createCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "categoryKey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 212
    new-instance v0, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/DashboardCategory;-><init>()V

    .line 213
    .local v0, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iput-object p1, v0, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 215
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 216
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 217
    const/4 v5, 0x0

    return-object v5

    .line 219
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "resolved$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 220
    .local v2, "resolved":Landroid/content/pm/ResolveInfo;
    iget-boolean v5, v2, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v5, :cond_1

    .line 224
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    .line 225
    const-string/jumbo v5, "com.android.settings"

    .line 226
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 225
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 226
    iget v5, v2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 225
    :goto_1
    iput v5, v0, Lcom/android/settingslib/drawer/DashboardCategory;->priority:I

    goto :goto_0

    :cond_2
    move v5, v6

    .line 226
    goto :goto_1

    .line 230
    .end local v2    # "resolved":Landroid/content/pm/ResolveInfo;
    :cond_3
    return-object v0
.end method

.method private static createCategory(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "categoryKey"    # Ljava/lang/String;
    .param p2, "categoryDefinedInManifest"    # Z

    .prologue
    const/4 v6, 0x0

    .line 243
    new-instance v0, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/DashboardCategory;-><init>()V

    .line 244
    .local v0, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iput-object p1, v0, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    .line 245
    if-nez p2, :cond_0

    .line 246
    return-object v0

    .line 248
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 249
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 250
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 251
    const/4 v5, 0x0

    return-object v5

    .line 253
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "resolved$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 254
    .local v2, "resolved":Landroid/content/pm/ResolveInfo;
    iget-boolean v5, v2, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v5, :cond_2

    .line 258
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    .line 259
    const-string/jumbo v5, "com.android.settings"

    .line 260
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 259
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 260
    iget v5, v2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 259
    :goto_1
    iput v5, v0, Lcom/android/settingslib/drawer/DashboardCategory;->priority:I

    goto :goto_0

    :cond_3
    move v5, v6

    .line 260
    goto :goto_1

    .line 264
    .end local v2    # "resolved":Landroid/content/pm/ResolveInfo;
    :cond_4
    return-object v0
.end method

.method private static getBundleFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/os/Bundle;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uriString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/IContentProvider;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .local p2, "providerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/IContentProvider;>;"
    const/4 v6, 0x0

    .line 586
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 587
    return-object v6

    .line 589
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 590
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/settingslib/drawer/TileUtils;->getMethodFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, "method":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 592
    return-object v6

    .line 594
    :cond_1
    invoke-static {p0, v3, p2}, Lcom/android/settingslib/drawer/TileUtils;->getProviderFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 595
    .local v2, "provider":Landroid/content/IContentProvider;
    if-nez v2, :cond_2

    .line 596
    return-object v6

    .line 599
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v4, v1, p1, v5}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Landroid/os/RemoteException;
    return-object v6
.end method

.method public static getCategories(Landroid/content/Context;Ljava/util/Map;)Ljava/util/List;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "cache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 167
    .local v14, "startTime":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "device_provisioned"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v13, 0x1

    .line 169
    .local v13, "setup":Z
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v7, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v19

    .line 171
    .local v19, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v19 .. v19}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 173
    .local v3, "user":Landroid/os/UserHandle;
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 175
    const-string/jumbo v4, "com.android.settings.action.SETTINGS"

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-static/range {v2 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 177
    const-string/jumbo v4, "com.android.settings.category.custom"

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-static/range {v2 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 179
    const-string/jumbo v4, "com.android.settings.OPERATOR_APPLICATION_SETTING"

    .line 180
    const-string/jumbo v6, "com.android.settings.category.wireless"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    .line 179
    invoke-static/range {v2 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 181
    const-string/jumbo v4, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    .line 182
    const-string/jumbo v6, "com.android.settings.category.device"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    .line 181
    invoke-static/range {v2 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 184
    :cond_1
    if-eqz v13, :cond_0

    .line 185
    const-string/jumbo v4, "com.android.settings.action.EXTRA_SETTINGS"

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-static/range {v2 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    goto :goto_1

    .line 167
    .end local v3    # "user":Landroid/os/UserHandle;
    .end local v7    # "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    .end local v13    # "setup":Z
    .end local v18    # "user$iterator":Ljava/util/Iterator;
    .end local v19    # "userManager":Landroid/os/UserManager;
    :cond_2
    const/4 v13, 0x0

    .restart local v13    # "setup":Z
    goto :goto_0

    .line 188
    .restart local v7    # "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    .restart local v18    # "user$iterator":Ljava/util/Iterator;
    .restart local v19    # "userManager":Landroid/os/UserManager;
    :cond_3
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 189
    .local v12, "categoryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "tile$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/settingslib/drawer/Tile;

    .line 190
    .local v16, "tile":Lcom/android/settingslib/drawer/Tile;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 191
    .local v10, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    if-nez v10, :cond_5

    .line 192
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/settingslib/drawer/TileUtils;->createCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v10

    .line 193
    if-nez v10, :cond_4

    .line 194
    const-string/jumbo v2, "TileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t find category "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 197
    :cond_4
    iget-object v2, v10, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {v12, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto :goto_2

    .line 201
    .end local v10    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v16    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 202
    .local v9, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "category$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 203
    .restart local v10    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iget-object v2, v10, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    sget-object v4, Lcom/android/settingslib/drawer/TileUtils;->TILE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3

    .line 205
    .end local v10    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    :cond_7
    sget-object v2, Lcom/android/settingslib/drawer/TileUtils;->CATEGORY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v9, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 208
    return-object v9
.end method

.method public static getCategories(Landroid/content/Context;Ljava/util/Map;Z)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "categoryDefinedInManifest"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "cache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    const-string/jumbo v0, "com.android.settings"

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/android/settingslib/drawer/TileUtils;->getCategories(Landroid/content/Context;Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getCategories(Landroid/content/Context;Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "categoryDefinedInManifest"    # Z
    .param p3, "extraAction"    # Ljava/lang/String;
    .param p4, "settingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "cache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 288
    .local v16, "startTime":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "device_provisioned"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v15, 0x1

    .line 290
    .local v15, "setup":Z
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v7, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    const-string/jumbo v2, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/UserManager;

    .line 292
    .local v21, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v21 .. v21}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 294
    .local v3, "user":Landroid/os/UserHandle;
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 296
    const-string/jumbo v4, "com.android.settings.action.SETTINGS"

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p4

    invoke-static/range {v2 .. v9}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V

    .line 298
    const-string/jumbo v4, "com.android.settings.OPERATOR_APPLICATION_SETTING"

    .line 299
    const-string/jumbo v6, "com.android.settings.category.wireless"

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v10, p4

    .line 298
    invoke-static/range {v2 .. v10}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZZLjava/lang/String;)V

    .line 300
    const-string/jumbo v4, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    .line 301
    const-string/jumbo v6, "com.android.settings.category.device"

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v10, p4

    .line 300
    invoke-static/range {v2 .. v10}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZZLjava/lang/String;)V

    .line 303
    :cond_1
    if-eqz v15, :cond_0

    .line 304
    const-string/jumbo v4, "com.android.settings.action.EXTRA_SETTINGS"

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p4

    invoke-static/range {v2 .. v9}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V

    .line 306
    if-nez p2, :cond_0

    .line 307
    const-string/jumbo v4, "com.android.settings.action.IA_SETTINGS"

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p4

    invoke-static/range {v2 .. v9}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V

    .line 309
    if-eqz p3, :cond_0

    .line 310
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    move-object/from16 v9, p4

    invoke-static/range {v2 .. v9}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V

    goto :goto_1

    .line 288
    .end local v3    # "user":Landroid/os/UserHandle;
    .end local v7    # "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    .end local v15    # "setup":Z
    .end local v20    # "user$iterator":Ljava/util/Iterator;
    .end local v21    # "userManager":Landroid/os/UserManager;
    :cond_2
    const/4 v15, 0x0

    .restart local v15    # "setup":Z
    goto/16 :goto_0

    .line 317
    .restart local v7    # "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    .restart local v20    # "user$iterator":Ljava/util/Iterator;
    .restart local v21    # "userManager":Landroid/os/UserManager;
    :cond_3
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 318
    .local v14, "categoryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "tile$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settingslib/drawer/Tile;

    .line 319
    .local v18, "tile":Lcom/android/settingslib/drawer/Tile;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 320
    .local v12, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    if-nez v12, :cond_5

    .line 321
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/drawer/TileUtils;->createCategory(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v12

    .line 322
    if-nez v12, :cond_4

    .line 323
    const-string/jumbo v2, "TileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t find category "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 326
    :cond_4
    iget-object v2, v12, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {v14, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto :goto_2

    .line 330
    .end local v12    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v18    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_6
    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 331
    .local v11, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "category$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 332
    .restart local v12    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iget-object v2, v12, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    sget-object v4, Lcom/android/settingslib/drawer/TileUtils;->TILE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3

    .line 334
    .end local v12    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    :cond_7
    sget-object v2, Lcom/android/settingslib/drawer/TileUtils;->CATEGORY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v11, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 337
    return-object v11
.end method

.method private static getCategory(Ljava/util/List;Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 3
    .param p1, "categoryKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/settingslib/drawer/DashboardCategory;"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "category$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 426
    .local v0, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iget-object v2, v0, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    return-object v0

    .line 430
    .end local v0    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getIconFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uriString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/IContentProvider;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p3, "providerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/IContentProvider;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 550
    invoke-static {p0, p2, p3}, Lcom/android/settingslib/drawer/TileUtils;->getBundleFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    .line 551
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 552
    return-object v4

    .line 554
    :cond_0
    const-string/jumbo v3, "com.android.settings.icon_package"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 555
    .local v1, "iconPackageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 556
    return-object v4

    .line 558
    :cond_1
    const-string/jumbo v3, "com.android.settings.icon"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 559
    .local v2, "resId":I
    if-nez v2, :cond_2

    .line 560
    return-object v4

    .line 563
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 564
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 563
    if-eqz v3, :cond_4

    .line 565
    :cond_3
    const-string/jumbo v3, "com.android.settings.icon"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3

    .line 567
    :cond_4
    return-object v4
.end method

.method static getMethodFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 622
    if-nez p0, :cond_0

    .line 623
    return-object v2

    .line 625
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 626
    .local v0, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 627
    :cond_1
    return-object v2

    .line 629
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private static getProviderFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Landroid/content/IContentProvider;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/IContentProvider;",
            ">;)",
            "Landroid/content/IContentProvider;"
        }
    .end annotation

    .prologue
    .local p2, "providerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/IContentProvider;>;"
    const/4 v2, 0x0

    .line 607
    if-nez p1, :cond_0

    .line 608
    return-object v2

    .line 610
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "authority":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 612
    return-object v2

    .line 614
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 615
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    :cond_2
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IContentProvider;

    return-object v1
.end method

.method public static getTextFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uriString"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/IContentProvider;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "providerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/IContentProvider;>;"
    const/4 v1, 0x0

    .line 580
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/drawer/TileUtils;->getBundleFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    .line 581
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private static getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "action"    # Ljava/lang/String;
    .param p4, "defaultCategory"    # Ljava/lang/String;
    .param p6, "requireSettings"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 343
    .local p3, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    .local p5, "outTiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p6, :cond_0

    .line 345
    const-string/jumbo v0, "com.android.settings"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    :cond_0
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 347
    invoke-static/range {v0 .. v7}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 349
    return-void
.end method

.method private static getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "action"    # Ljava/lang/String;
    .param p4, "defaultCategory"    # Ljava/lang/String;
    .param p6, "requireSettings"    # Z
    .param p7, "settingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    .local p5, "outTiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p6

    move-object/from16 v8, p7

    .line 367
    invoke-static/range {v0 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZZLjava/lang/String;)V

    .line 369
    return-void
.end method

.method private static getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZZLjava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "action"    # Ljava/lang/String;
    .param p4, "defaultCategory"    # Ljava/lang/String;
    .param p6, "requireSettings"    # Z
    .param p7, "usePriority"    # Z
    .param p8, "settingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;ZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 355
    .local p3, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    .local p5, "outTiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .local v3, "intent":Landroid/content/Intent;
    if-eqz p6, :cond_0

    .line 357
    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    :cond_0
    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p7

    .line 359
    invoke-static/range {v1 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 361
    return-void
.end method

.method public static getTilesForIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p4, "defaultCategory"    # Ljava/lang/String;
    .param p6, "usePriority"    # Z
    .param p7, "checkCategory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Landroid/content/Intent;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 373
    .local p3, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    .local p5, "outTiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 375
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    const/16 v11, 0x80

    .line 374
    invoke-virtual {v5, p2, v11, v10}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v8

    .line 376
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "resolved$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 378
    .local v6, "resolved":Landroid/content/pm/ResolveInfo;
    const-string/jumbo v10, "com.oneplus.setupwizard"

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 382
    iget-boolean v10, v6, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v10, :cond_0

    .line 386
    iget-object v1, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 387
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 388
    .local v4, "metaData":Landroid/os/Bundle;
    move-object/from16 v2, p4

    .line 389
    .local v2, "categoryKey":Ljava/lang/String;
    if-eqz p7, :cond_3

    if-eqz v4, :cond_1

    const-string/jumbo v10, "com.android.settings.category"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_3

    .line 390
    :cond_1
    if-nez p4, :cond_3

    .line 391
    const-string/jumbo v11, "TileUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Found "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " for intent "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 392
    const-string/jumbo v12, " missing metadata "

    .line 391
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 393
    if-nez v4, :cond_2

    const-string/jumbo v10, ""

    .line 391
    :goto_1
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 393
    :cond_2
    const-string/jumbo v10, "com.android.settings.category"

    goto :goto_1

    .line 396
    :cond_3
    const-string/jumbo v10, "com.android.settings.category"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 398
    new-instance v3, Landroid/util/Pair;

    iget-object v10, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 399
    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 398
    invoke-direct {v3, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 400
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settingslib/drawer/Tile;

    .line 401
    .local v9, "tile":Lcom/android/settingslib/drawer/Tile;
    if-nez v9, :cond_4

    .line 402
    new-instance v9, Lcom/android/settingslib/drawer/Tile;

    .end local v9    # "tile":Lcom/android/settingslib/drawer/Tile;
    invoke-direct {v9}, Lcom/android/settingslib/drawer/Tile;-><init>()V

    .line 403
    .restart local v9    # "tile":Lcom/android/settingslib/drawer/Tile;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 404
    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 403
    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    iput-object v10, v9, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 405
    iput-object v2, v9, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    .line 406
    if-eqz p6, :cond_6

    iget v10, v6, Landroid/content/pm/ResolveInfo;->priority:I

    :goto_2
    iput v10, v9, Lcom/android/settingslib/drawer/Tile;->priority:I

    .line 407
    iget-object v10, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    iput-object v10, v9, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    .line 408
    iget-object v10, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, v9, v1, v10, v5}, Lcom/android/settingslib/drawer/TileUtils;->updateTileData(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    .line 412
    move-object/from16 v0, p3

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :cond_4
    iget-object v10, v9, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 415
    iget-object v10, v9, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_5
    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 418
    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 406
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 421
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "categoryKey":Ljava/lang/String;
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "metaData":Landroid/os/Bundle;
    .end local v6    # "resolved":Landroid/content/pm/ResolveInfo;
    .end local v9    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_7
    return-void
.end method

.method private static updateTileData(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 435
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 436
    const/4 v3, 0x0

    .line 437
    .local v3, "icon":I
    const/4 v4, 0x0

    .line 438
    .local v4, "iconFromUri":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .line 439
    .local v11, "title":Ljava/lang/CharSequence;
    const/4 v10, 0x0

    .line 440
    .local v10, "summary":Ljava/lang/String;
    const/4 v6, 0x0

    .line 441
    .local v6, "keyHint":Ljava/lang/String;
    const/4 v12, 0x0

    .line 443
    .local v12, "uri":Landroid/net/Uri;
    const/4 v5, 0x0

    .line 449
    .local v5, "key":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p3

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 448
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 450
    .local v8, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 451
    .local v7, "metaData":Landroid/os/Bundle;
    const-string/jumbo v13, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 453
    .local v5, "key":Ljava/lang/String;
    if-eqz v8, :cond_5

    if-eqz v7, :cond_5

    .line 454
    const-string/jumbo v13, "com.android.settings.icon"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 455
    const-string/jumbo v13, "com.android.settings.icon"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 457
    :cond_0
    const/4 v9, 0x0

    .line 458
    .local v9, "resId":I
    const-string/jumbo v13, "com.android.settings.title.resid"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 459
    const-string/jumbo v13, "com.android.settings.title.resid"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 460
    if-eqz v9, :cond_1

    .line 461
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 466
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_1
    if-nez v9, :cond_2

    const-string/jumbo v13, "com.android.settings.title"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 467
    const-string/jumbo v13, "com.android.settings.title"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Ljava/lang/Integer;

    if-eqz v13, :cond_9

    .line 468
    const-string/jumbo v13, "com.android.settings.title"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 473
    :cond_2
    :goto_0
    const-string/jumbo v13, "com.android.settings.summary"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 474
    const-string/jumbo v13, "com.android.settings.summary"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Ljava/lang/Integer;

    if-eqz v13, :cond_a

    .line 475
    const-string/jumbo v13, "com.android.settings.summary"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 480
    .end local v10    # "summary":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string/jumbo v13, "com.android.settings.keyhint"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 481
    const-string/jumbo v13, "com.android.settings.keyhint"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Ljava/lang/Integer;

    if-eqz v13, :cond_b

    .line 482
    const-string/jumbo v13, "com.android.settings.keyhint"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 488
    .end local v6    # "keyHint":Ljava/lang/String;
    :cond_4
    :goto_2
    const-string/jumbo v13, "com.android.settings.PrivacySettings"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x1

    const/4 v15, 0x0

    aput v14, v13, v15

    invoke-static {v13}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_5

    .line 489
    const v13, 0x1040545

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 499
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "metaData":Landroid/os/Bundle;
    .end local v8    # "res":Landroid/content/res/Resources;
    .end local v9    # "resId":I
    :cond_5
    :goto_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 500
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 507
    :cond_6
    if-nez v3, :cond_7

    .line 508
    move-object/from16 v0, p2

    iget v3, v0, Landroid/content/pm/ActivityInfo;->icon:I

    .line 511
    :cond_7
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    if-eqz v13, :cond_8

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    const-string/jumbo v14, "com.android.settings.category.ia"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_8

    .line 512
    const-string/jumbo v13, "com.google.android.gms"

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    .line 513
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v13, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v13

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    .line 517
    :goto_4
    const-string/jumbo v13, "com.android.settings.PrivacySettings"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x1

    const/4 v15, 0x0

    aput v14, v13, v15

    invoke-static {v13}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_8

    .line 518
    sget v13, Lcom/android/settingslib/R$drawable;->op_ic_settings_factory_reset:I

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v13

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    .line 525
    :cond_8
    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    .line 526
    move-object/from16 v0, p1

    iput-object v10, v0, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    .line 528
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 529
    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 528
    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 531
    move-object/from16 v0, p1

    iput-object v6, v0, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    .line 533
    const/4 v13, 0x1

    return v13

    .line 470
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "keyHint":Ljava/lang/String;
    .restart local v7    # "metaData":Landroid/os/Bundle;
    .restart local v8    # "res":Landroid/content/res/Resources;
    .restart local v9    # "resId":I
    .restart local v10    # "summary":Ljava/lang/String;
    :cond_9
    :try_start_1
    const-string/jumbo v13, "com.android.settings.title"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "title":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 477
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_a
    const-string/jumbo v13, "com.android.settings.summary"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "summary":Ljava/lang/String;
    goto/16 :goto_1

    .line 484
    .end local v10    # "summary":Ljava/lang/String;
    :cond_b
    const-string/jumbo v13, "com.android.settings.keyhint"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .local v6, "keyHint":Ljava/lang/String;
    goto/16 :goto_2

    .line 515
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "keyHint":Ljava/lang/String;
    .end local v7    # "metaData":Landroid/os/Bundle;
    .end local v8    # "res":Landroid/content/res/Resources;
    .end local v9    # "resId":I
    :cond_c
    sget v13, Lcom/android/settingslib/R$drawable;->op_ic_google:I

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v13

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    goto :goto_4

    .line 536
    .end local v3    # "icon":I
    .end local v4    # "iconFromUri":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_d
    const/4 v13, 0x0

    return v13

    .line 493
    .restart local v3    # "icon":I
    .restart local v4    # "iconFromUri":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v12    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto/16 :goto_3
.end method
