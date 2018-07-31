.class public abstract Lcom/android/internal/content/PackageHelper$TestableInterface;
.super Ljava/lang/Object;
.source "PackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/PackageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TestableInterface"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fitsOnInternalStorage(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageHelper$TestableInterface;->getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    .line 362
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Lcom/android/internal/content/PackageHelper$TestableInterface;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v1

    .line 363
    .local v1, "target":Ljava/util/UUID;
    iget-wide v2, p2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 364
    iget v4, p2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {v4}, Lcom/android/internal/content/PackageHelper;->translateAllocateFlags(I)I

    move-result v4

    .line 363
    invoke-virtual {v0, v1, v4}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public abstract getAllow3rdPartyOnInternalConfig(Landroid/content/Context;)Z
.end method

.method public abstract getDataDirectory()Ljava/io/File;
.end method

.method public abstract getExistingAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getForceAllowOnExternalSetting(Landroid/content/Context;)Z
.end method

.method public abstract getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;
.end method
