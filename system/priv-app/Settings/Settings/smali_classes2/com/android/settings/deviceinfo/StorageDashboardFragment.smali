.class public Lcom/android/settings/deviceinfo/StorageDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "StorageDashboardFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;,
        Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;,
        Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/dashboard/DashboardFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/util/SparseArray",
        "<",
        "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final ICON_JOB_ID:I = 0x1

.field private static final OPTIONS_MENU_MIGRATE_DATA:I = 0x64

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final STORAGE_JOB_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "StorageDashboardFrag"

.field private static final VOLUME_SIZE_JOB_ID:I = 0x2


# instance fields
.field private mAppsResult:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionMenuController:Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;

.field private mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

.field private mSecondaryUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

.field private mSummaryController:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;

.field private mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method static synthetic -get0(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)Landroid/os/storage/VolumeInfo;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .prologue
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/deviceinfo/StorageDashboardFragment;Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/deviceinfo/StorageDashboardFragment;
    .param p1, "-value"    # Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    .prologue
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->onReceivedSizes()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;-><init>()V

    .line 208
    sput-object v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private onReceivedSizes()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 120
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    if-nez v6, :cond_1

    .line 121
    :cond_0
    return-void

    .line 124
    :cond_1
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v6, v6, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    iget-object v8, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v8, v8, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    sub-long v2, v6, v8

    .line 125
    .local v2, "privateUsedBytes":J
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSummaryController:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;

    iget-object v7, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v8, v7, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    invoke-virtual {v6, v2, v3, v8, v9}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->updateBytes(JJ)V

    .line 126
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v7, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6, v7}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setVolume(Landroid/os/storage/VolumeInfo;)V

    .line 127
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    invoke-virtual {v6, v2, v3}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setUsedSize(J)V

    .line 128
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v7, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v8, v7, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    invoke-virtual {v6, v8, v9}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setTotalSize(J)V

    .line 129
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSecondaryUsers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 130
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSecondaryUsers:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/PreferenceController;

    .line 131
    .local v0, "controller":Lcom/android/settings/core/PreferenceController;
    instance-of v6, v0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;

    if-eqz v6, :cond_2

    move-object v5, v0

    .line 132
    check-cast v5, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;

    .line 133
    .local v5, "userController":Lcom/android/settings/deviceinfo/storage/SecondaryUserController;
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v6, v6, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->setTotalSize(J)V

    .line 129
    .end local v5    # "userController":Lcom/android/settings/deviceinfo/storage/SecondaryUserController;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "controller":Lcom/android/settings/core/PreferenceController;
    :cond_3
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v7, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->onLoadFinished(Landroid/util/SparseArray;I)V

    .line 138
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSecondaryUsers:Ljava/util/List;

    iget-object v7, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    invoke-direct {p0, v6, v7}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->updateSecondaryUserControllers(Ljava/util/List;Landroid/util/SparseArray;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a01af

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 142
    const/4 v6, 0x1

    invoke-virtual {p0, v10, v6}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->setLoading(ZZ)V

    .line 144
    :cond_4
    return-void
.end method

.method private updateSecondaryUserControllers(Ljava/util/List;Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/core/PreferenceController;>;"
    .local p2, "stats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 196
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/PreferenceController;

    .line 197
    .local v0, "controller":Lcom/android/settings/core/PreferenceController;
    instance-of v4, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;

    if-eqz v4, :cond_0

    move-object v3, v0

    .line 199
    check-cast v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;

    .line 200
    .local v3, "userController":Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;
    invoke-interface {v3, p2}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;->handleResult(Landroid/util/SparseArray;)V

    .line 195
    .end local v3    # "userController":Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v0    # "controller":Lcom/android/settings/core/PreferenceController;
    :cond_1
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string/jumbo v0, "StorageDashboardFrag"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 148
    const/16 v0, 0x2e9

    return v0
.end method

.method protected getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
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

    .prologue
    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/core/PreferenceController;>;"
    new-instance v3, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;

    invoke-direct {v3, p1}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSummaryController:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;

    .line 165
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSummaryController:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 168
    .local v1, "sm":Landroid/os/storage/StorageManager;
    new-instance v3, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    .line 169
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    new-instance v5, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-direct {v5, v1}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    .line 168
    invoke-direct {v3, p1, p0, v4, v5}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)V

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    .line 170
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v2, Lcom/android/settings/applications/UserManagerWrapperImpl;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-direct {v2, v3}, Lcom/android/settings/applications/UserManagerWrapperImpl;-><init>(Landroid/os/UserManager;)V

    .line 174
    .local v2, "userManager":Lcom/android/settings/applications/UserManagerWrapper;
    invoke-static {p1, v2}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->getSecondaryUserControllers(Landroid/content/Context;Lcom/android/settings/applications/UserManagerWrapper;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSecondaryUsers:Ljava/util/List;

    .line 175
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSecondaryUsers:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .prologue
    .line 158
    const v0, 0x7f0800a6

    return v0
.end method

.method initializeOptionsMenu(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;

    .line 99
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    new-instance v2, Lcom/android/settings/applications/PackageManagerWrapperImpl;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/applications/PackageManagerWrapperImpl;-><init>(Landroid/content/pm/PackageManager;)V

    .line 98
    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Lcom/android/settings/applications/PackageManagerWrapper;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mOptionMenuController:Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mOptionMenuController:Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;

    invoke-virtual {v0, v1}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->setHasOptionsMenu(Z)V

    .line 102
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 103
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 86
    .local v0, "activity":Landroid/app/Activity;
    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 87
    .local v1, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->maybeInitializeVolume(Landroid/os/storage/StorageManager;Landroid/os/Bundle;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 88
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v2, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 90
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->initializeOptionsMenu(Landroid/app/Activity;)V

    .line 94
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 238
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;

    .line 239
    new-instance v2, Lcom/android/settings/applications/UserManagerWrapperImpl;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-direct {v2, v3}, Lcom/android/settings/applications/UserManagerWrapperImpl;-><init>(Landroid/os/UserManager;)V

    .line 240
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v3, v3, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 241
    new-instance v4, Lcom/android/settingslib/applications/StorageStatsSource;

    invoke-direct {v4, v1}, Lcom/android/settingslib/applications/StorageStatsSource;-><init>(Landroid/content/Context;)V

    .line 242
    new-instance v5, Lcom/android/settings/applications/PackageManagerWrapperImpl;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/applications/PackageManagerWrapperImpl;-><init>(Landroid/content/pm/PackageManager;)V

    .line 238
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;-><init>(Landroid/content/Context;Lcom/android/settings/applications/UserManagerWrapper;Ljava/lang/String;Lcom/android/settingslib/applications/StorageStatsSource;Lcom/android/settings/applications/PackageManagerWrapper;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;>;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/util/SparseArray<Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;>;>;"
    .local p2, "data":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;>;"
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    .line 249
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->onReceivedSizes()V

    .line 250
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 245
    check-cast p2, Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->onLoadFinished(Landroid/content/Loader;Landroid/util/SparseArray;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/util/SparseArray<Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;>;>;"
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 113
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    new-instance v2, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;-><init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    new-instance v2, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;-><init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 117
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 108
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->setLoading(ZZ)V

    .line 109
    return-void
.end method

.method protected setVolume(Landroid/os/storage/VolumeInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/os/storage/VolumeInfo;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 188
    return-void
.end method
