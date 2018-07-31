.class public Lcom/android/settings/deviceinfo/StorageProfileFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "StorageProfileFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/SettingsPreferenceFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/util/SparseArray",
        "<",
        "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final APPS_JOB_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "StorageProfileFragment"

.field public static final USER_ID_EXTRA:Ljava/lang/String; = "userId"


# instance fields
.field private mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

.field private mUserId:I

.field private mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private scrubAppsFromResult(Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;)Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;
    .locals 3
    .param p1, "result"    # Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 141
    if-nez p1, :cond_0

    .line 142
    return-object v2

    .line 146
    :cond_0
    iput-wide v0, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    .line 147
    iput-wide v0, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    .line 148
    iput-wide v0, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    .line 149
    iput-wide v0, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    .line 150
    return-object p1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 91
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, "args":Landroid/os/Bundle;
    const v3, 0x7f0800a7

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageProfileFragment;->addPreferencesFromResource(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 70
    .local v1, "context":Landroid/content/Context;
    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 71
    .local v2, "sm":Landroid/os/storage/StorageManager;
    invoke-static {v2, v0}, Lcom/android/settings/Utils;->maybeInitializeVolume(Landroid/os/storage/StorageManager;Landroid/os/Bundle;)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 72
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v3, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 74
    return-void

    .line 77
    :cond_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3, v4}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setVolume(Landroid/os/storage/VolumeInfo;)V

    .line 78
    const-string/jumbo v3, "userId"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mUserId:I

    .line 79
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget v4, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mUserId:I

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setUserId(Landroid/os/UserHandle;)V

    .line 80
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
    .line 116
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 117
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;

    .line 118
    new-instance v2, Lcom/android/settings/applications/UserManagerWrapperImpl;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-direct {v2, v3}, Lcom/android/settings/applications/UserManagerWrapperImpl;-><init>(Landroid/os/UserManager;)V

    .line 119
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v3, v3, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 120
    new-instance v4, Lcom/android/settingslib/applications/StorageStatsSource;

    invoke-direct {v4, v1}, Lcom/android/settingslib/applications/StorageStatsSource;-><init>(Landroid/content/Context;)V

    .line 121
    new-instance v5, Lcom/android/settings/applications/PackageManagerWrapperImpl;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/applications/PackageManagerWrapperImpl;-><init>(Landroid/content/pm/PackageManager;)V

    .line 117
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;-><init>(Landroid/content/Context;Lcom/android/settings/applications/UserManagerWrapper;Ljava/lang/String;Lcom/android/settingslib/applications/StorageStatsSource;Lcom/android/settings/applications/PackageManagerWrapper;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/util/SparseArray;)V
    .locals 2
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
    .line 127
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/util/SparseArray<Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;>;>;"
    .local p2, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;>;"
    iget v0, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mUserId:I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/StorageProfileFragment;->scrubAppsFromResult(Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;)Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    .line 128
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget v1, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mUserId:I

    invoke-virtual {v0, p2, v1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->onLoadFinished(Landroid/util/SparseArray;I)V

    .line 129
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 124
    check-cast p2, Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageProfileFragment;->onLoadFinished(Landroid/content/Loader;Landroid/util/SparseArray;)V

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
    .line 133
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/util/SparseArray<Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;>;>;"
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageProfileFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 86
    return-void
.end method

.method setPreferenceController(Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    .line 138
    return-void
.end method
