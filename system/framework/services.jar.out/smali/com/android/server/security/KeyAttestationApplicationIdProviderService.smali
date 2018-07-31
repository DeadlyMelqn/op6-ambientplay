.class public Lcom/android/server/security/KeyAttestationApplicationIdProviderService;
.super Landroid/security/keymaster/IKeyAttestationApplicationIdProvider$Stub;
.source "KeyAttestationApplicationIdProviderService.java"


# instance fields
.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/security/keymaster/IKeyAttestationApplicationIdProvider$Stub;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 43
    return-void
.end method


# virtual methods
.method public getKeyAttestationApplicationId(I)Landroid/security/keymaster/KeyAttestationApplicationId;
    .locals 12
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/16 v9, 0x3f9

    if-eq v8, v9, :cond_0

    .line 50
    new-instance v8, Ljava/lang/SecurityException;

    const-string/jumbo v9, "This service can only be used by Keystore"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 52
    :cond_0
    const/4 v1, 0x0

    .line 53
    .local v1, "keyAttestationPackageInfos":[Landroid/security/keymaster/KeyAttestationPackageInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 55
    .local v6, "token":J
    :try_start_0
    iget-object v8, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "packageNames":[Ljava/lang/String;
    if-nez v4, :cond_1

    .line 57
    new-instance v8, Landroid/os/RemoteException;

    const-string/jumbo v9, "No packages for uid"

    invoke-direct {v8, v9}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v1    # "keyAttestationPackageInfos":[Landroid/security/keymaster/KeyAttestationPackageInfo;
    .end local v4    # "packageNames":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 69
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v8, Landroid/os/RemoteException;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .end local v2    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v8

    .line 71
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    throw v8

    .line 59
    .restart local v1    # "keyAttestationPackageInfos":[Landroid/security/keymaster/KeyAttestationPackageInfo;
    .restart local v4    # "packageNames":[Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 60
    .local v5, "userId":I
    array-length v8, v4

    new-array v1, v8, [Landroid/security/keymaster/KeyAttestationPackageInfo;

    .line 62
    .local v1, "keyAttestationPackageInfos":[Landroid/security/keymaster/KeyAttestationPackageInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v8, v4

    if-ge v0, v8, :cond_2

    .line 63
    iget-object v8, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    aget-object v9, v4, v0

    .line 64
    const/16 v10, 0x40

    .line 63
    invoke-virtual {v8, v9, v10, v5}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 65
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v8, Landroid/security/keymaster/KeyAttestationPackageInfo;

    aget-object v9, v4, v0

    .line 66
    iget v10, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v11, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 65
    invoke-direct {v8, v9, v10, v11}, Landroid/security/keymaster/KeyAttestationPackageInfo;-><init>(Ljava/lang/String;I[Landroid/content/pm/Signature;)V

    aput-object v8, v1, v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    new-instance v8, Landroid/security/keymaster/KeyAttestationApplicationId;

    invoke-direct {v8, v1}, Landroid/security/keymaster/KeyAttestationApplicationId;-><init>([Landroid/security/keymaster/KeyAttestationPackageInfo;)V

    return-object v8
.end method
