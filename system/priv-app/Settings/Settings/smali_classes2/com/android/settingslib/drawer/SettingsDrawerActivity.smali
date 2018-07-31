.class public Lcom/android/settingslib/drawer/SettingsDrawerActivity;
.super Landroid/app/Activity;
.source "SettingsDrawerActivity.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$1;,
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;,
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;,
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;,
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field protected static final DEBUG_TIMING:Z = false

.field public static final EXTRA_SHOW_MENU:Ljava/lang/String; = "show_drawer_menu"

.field private static final REFRESH_DRAWER_UI:I = 0x1

.field private static final REFRESH_UI:I = 0x0

.field private static final REFRESH_UI_DELAY:I = 0x64

.field private static final STATUS_BAR_OVERLAY_COLOR:I

.field private static final STATUS_BAR_OVERLAY_TRANSLUCENT_COLOR:I

.field private static final TAG:Ljava/lang/String; = "SettingsDrawerActivity"

.field private static sConfigTracker:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field private static sDashboardCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static sTileBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static sTileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
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


# instance fields
.field private mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private final mCategoryListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContentHeaderContainer:Landroid/widget/FrameLayout;

.field private mDrawerAdapter:Lcom/android/settingslib/drawer/SettingsDrawerAdapter;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mDrawerListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

.field private mHandler:Landroid/os/Handler;

.field private final mPackageReceiver:Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

.field private mShowingMenu:Z

.field private mUserManager:Landroid/os/UserManager;

.field private mWindow:Landroid/view/Window;


# direct methods
.method static synthetic -get0()Lcom/android/settingslib/applications/InterestingConfigChanges;
    .locals 1

    sget-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sConfigTracker:Lcom/android/settingslib/applications/InterestingConfigChanges;

    return-object v0
.end method

.method static synthetic -get1()Landroid/util/ArraySet;
    .locals 1

    sget-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get2()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -set0(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "-value"    # Ljava/util/List;

    .prologue
    sput-object p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sDashboardCategories:Ljava/util/List;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    .prologue
    invoke-direct {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->delayInitDrawer()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    const-string/jumbo v0, "SettingsDrawerActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->DEBUG:Z

    .line 79
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    .line 112
    const-string/jumbo v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->STATUS_BAR_OVERLAY_COLOR:I

    .line 113
    const-string/jumbo v0, "#15000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->STATUS_BAR_OVERLAY_TRANSLUCENT_COLOR:I

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    new-instance v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;)V

    iput-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    .line 94
    new-instance v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$1;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)V

    iput-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mHandler:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method private delayInitDrawer()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method private isTopLevelTile(Landroid/content/Intent;)Z
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 237
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 238
    .local v3, "componentName":Landroid/content/ComponentName;
    if-nez v3, :cond_0

    .line 239
    return v9

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v0

    .line 243
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "category$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 244
    .local v1, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iget-object v6, v1, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "tile$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    .line 245
    .local v4, "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v6, v4, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 246
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 245
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 247
    sget-boolean v6, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 248
    const-string/jumbo v6, "SettingsDrawerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "intent is for top level tile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_3
    const/4 v6, 0x1

    return v6

    .line 254
    .end local v1    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v4    # "tile":Lcom/android/settingslib/drawer/Tile;
    .end local v5    # "tile$iterator":Ljava/util/Iterator;
    :cond_4
    sget-boolean v6, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 255
    const-string/jumbo v6, "SettingsDrawerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Intent is not for top level settings "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_5
    return v9
.end method

.method private updateUserHandlesIfNeeded(Lcom/android/settingslib/drawer/Tile;)V
    .locals 5
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 460
    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    .line 462
    .local v1, "userHandles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 463
    iget-object v3, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mUserManager:Landroid/os/UserManager;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 464
    sget-boolean v2, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 465
    const-string/jumbo v3, "SettingsDrawerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Delete the user: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 462
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 470
    :cond_2
    return-void
.end method


# virtual methods
.method public addCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    return-void
.end method

.method public closeDrawer()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 290
    return-void
.end method

.method public getDashboardCategories()Ljava/util/List;
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
    .line 386
    sget-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sDashboardCategories:Ljava/util/List;

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileCache:Ljava/util/HashMap;

    .line 388
    new-instance v0, Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>()V

    sput-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sConfigTracker:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 390
    sget-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sConfigTracker:Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    .line 391
    sget-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileCache:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/android/settingslib/drawer/TileUtils;->getCategories(Landroid/content/Context;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sDashboardCategories:Ljava/util/List;

    .line 393
    :cond_0
    sget-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sDashboardCategories:Ljava/util/List;

    return-object v0
.end method

.method public getEarlyDashboardCategories()Ljava/util/List;
    .locals 1
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
    .line 381
    sget-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sDashboardCategories:Ljava/util/List;

    return-object v0
.end method

.method public getSettingPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    const-string/jumbo v0, "com.android.settings"

    return-object v0
.end method

.method public getTileCache()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
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

    .prologue
    .line 479
    sget-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getDashboardCategories()Ljava/util/List;

    .line 482
    :cond_0
    sget-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileCache:Ljava/util/HashMap;

    return-object v0
.end method

.method protected onCategoriesChanged()V
    .locals 3

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->updateDrawer()V

    .line 398
    iget-object v2, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 399
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 400
    iget-object v2, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;

    invoke-interface {v2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;->onCategoriesChanged()V

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/16 v7, 0x26

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 125
    .local v0, "startTime":J
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget-object v5, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 126
    .local v2, "theme":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mWindow:Landroid/view/Window;

    .line 127
    invoke-virtual {v2, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    invoke-virtual {p0, v6}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->requestWindowFeature(I)Z

    .line 137
    :cond_0
    sget v4, Lcom/android/settingslib/R$layout;->settings_with_drawer:I

    invoke-super {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 138
    sget v4, Lcom/android/settingslib/R$id;->content_header_container:I

    invoke-virtual {p0, v4}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mContentHeaderContainer:Landroid/widget/FrameLayout;

    .line 139
    sget v4, Lcom/android/settingslib/R$id;->drawer_layout:I

    invoke-virtual {p0, v4}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout;

    iput-object v4, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 140
    iget-object v4, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-nez v4, :cond_1

    .line 141
    return-void

    .line 144
    :cond_1
    iget-object v4, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v4, p0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 145
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v4, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 147
    sget v4, Lcom/android/settingslib/R$id;->action_bar:I

    invoke-virtual {p0, v4}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Toolbar;

    .line 148
    .local v3, "toolbar":Landroid/widget/Toolbar;
    invoke-virtual {v2, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 149
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Toolbar;->setVisibility(I)V

    .line 150
    iget-object v4, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v4, v6}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 151
    iput-object v9, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 152
    return-void

    .line 154
    :cond_2
    sget v4, Lcom/android/settingslib/R$style;->Settings_TextAppearance_Material_Widget_ActionBar_Title:I

    invoke-virtual {v3, p0, v4}, Landroid/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 155
    invoke-virtual {p0, v3}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 156
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mUserManager:Landroid/os/UserManager;

    .line 157
    new-instance v4, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;

    invoke-direct {v4, p0}, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)V

    iput-object v4, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerAdapter:Lcom/android/settingslib/drawer/SettingsDrawerAdapter;

    .line 158
    iget-object v4, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 162
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    .line 366
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    .line 359
    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 0
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 352
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    .line 343
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 233
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 234
    return-void
.end method

.method public onProfileTileOpen()V
    .locals 0

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->finish()V

    .line 487
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 207
    iget-object v1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v1, :cond_0

    .line 208
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 215
    sget-object v1, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sDashboardCategories:Ljava/util/List;

    if-nez v1, :cond_2

    .line 216
    iget-object v1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 222
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "show_drawer_menu"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->showMenuIcon()V

    .line 225
    :cond_1
    return-void

    .line 218
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    new-instance v1, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onTileClicked(Lcom/android/settingslib/drawer/Tile;)V
    .locals 1
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 473
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->openTile(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->finish()V

    .line 476
    :cond_0
    return-void
.end method

.method public openDrawer()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 284
    return-void
.end method

.method public openTile(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 12
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    const/4 v11, 0x0

    const v9, 0x8000

    const/4 v10, 0x1

    .line 413
    if-nez p1, :cond_0

    .line 414
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "android.settings.SETTINGS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->startActivity(Landroid/content/Intent;)V

    .line 416
    return v10

    .line 419
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->updateUserHandlesIfNeeded(Lcom/android/settingslib/drawer/Tile;)V

    .line 421
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Landroid/os/UserManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 422
    .local v6, "userManager":Landroid/os/UserManager;
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 423
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v3, 0x0

    .line 424
    .local v3, "showProfilesDialog":Z
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "userInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 425
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    const/16 v8, 0x3e7

    if-eq v7, v8, :cond_1

    .line 426
    const/4 v3, 0x1

    .line 430
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    iget-object v7, p1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 431
    .local v1, "numUserHandles":I
    if-le v1, v10, :cond_4

    .line 432
    if-eqz v3, :cond_3

    .line 433
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/android/settingslib/drawer/ProfileSelectDialog;->show(Landroid/app/FragmentManager;Lcom/android/settingslib/drawer/Tile;)V

    .line 440
    :goto_0
    return v11

    .line 436
    :cond_3
    iget-object v7, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    const-string/jumbo v8, "show_drawer_menu"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 437
    iget-object v7, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    const v8, 0x8000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 438
    iget-object v8, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    iget-object v7, p1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    invoke-virtual {p0, v8, v7}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 453
    .end local v1    # "numUserHandles":I
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "showProfilesDialog":Z
    .end local v5    # "userInfo$iterator":Ljava/util/Iterator;
    .end local v6    # "userManager":Landroid/os/UserManager;
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v7, "SettingsDrawerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Couldn\'t find tile "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    return v10

    .line 441
    .restart local v1    # "numUserHandles":I
    .restart local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v3    # "showProfilesDialog":Z
    .restart local v5    # "userInfo$iterator":Ljava/util/Iterator;
    .restart local v6    # "userManager":Landroid/os/UserManager;
    :cond_4
    if-ne v1, v10, :cond_5

    .line 443
    :try_start_1
    iget-object v7, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    const-string/jumbo v8, "show_drawer_menu"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 444
    iget-object v7, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    const v8, 0x8000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 445
    iget-object v8, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    iget-object v7, p1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    invoke-virtual {p0, v8, v7}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 448
    :cond_5
    iget-object v7, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    const-string/jumbo v8, "show_drawer_menu"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 449
    iget-object v7, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    const v8, 0x8000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 450
    iget-object v7, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v7}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public remCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method public setContentHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "headerView"    # Landroid/view/View;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mContentHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 300
    if-eqz p1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mContentHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 303
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .param p1, "layoutResID"    # I

    .prologue
    .line 307
    sget v1, Lcom/android/settingslib/R$id;->content_frame:I

    invoke-virtual {p0, v1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 308
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 311
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 312
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 316
    sget v0, Lcom/android/settingslib/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 317
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 321
    sget v0, Lcom/android/settingslib/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    return-void
.end method

.method public setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    .line 295
    return-void
.end method

.method public setIsDrawerPresent(Z)V
    .locals 3
    .param p1, "isPresent"    # Z

    .prologue
    const/4 v2, 0x0

    .line 269
    if-eqz p1, :cond_1

    .line 270
    sget v0, Lcom/android/settingslib/R$id;->drawer_layout:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 271
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->updateDrawer()V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 275
    iput-object v2, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    goto :goto_0
.end method

.method public setTileEnabled(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 490
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 491
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    .line 492
    .local v2, "state":I
    if-ne v2, v4, :cond_2

    const/4 v0, 0x1

    .line 493
    .local v0, "isEnabled":Z
    :goto_0
    if-ne v0, p2, :cond_0

    if-nez v2, :cond_1

    .line 494
    :cond_0
    if-eqz p2, :cond_3

    .line 495
    sget-object v3, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 499
    :goto_1
    if-eqz p2, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {v1, p1, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 503
    new-instance v3, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;)V

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 505
    :cond_1
    return-void

    .line 492
    .end local v0    # "isEnabled":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isEnabled":Z
    goto :goto_0

    .line 497
    :cond_3
    sget-object v3, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 501
    :cond_4
    const/4 v3, 0x2

    goto :goto_2
.end method

.method public showMenuIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 370
    iput-boolean v2, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mShowingMenu:Z

    .line 371
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->content_description_menu_button:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 375
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 377
    :cond_0
    return-void
.end method

.method public updateCategories()V
    .locals 2

    .prologue
    .line 547
    new-instance v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;

    invoke-direct {v0, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 548
    return-void
.end method

.method public updateDrawer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 325
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerAdapter:Lcom/android/settingslib/drawer/SettingsDrawerAdapter;

    if-nez v0, :cond_1

    .line 326
    :cond_0
    return-void

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerAdapter:Lcom/android/settingslib/drawer/SettingsDrawerAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->updateCategories()V

    .line 330
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerAdapter:Lcom/android/settingslib/drawer/SettingsDrawerAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    goto :goto_0
.end method
