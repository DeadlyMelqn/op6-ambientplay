.class public Lcom/android/settingslib/drawer/SettingsDrawerActivity;
.super Landroid/app/Activity;
.source "SettingsDrawerActivity.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$1;,
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;,
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;,
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final STATUS_BAR_OVERLAY_COLOR:I

.field private static final STATUS_BAR_OVERLAY_TRANSLUCENT_COLOR:I

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


# virtual methods
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
