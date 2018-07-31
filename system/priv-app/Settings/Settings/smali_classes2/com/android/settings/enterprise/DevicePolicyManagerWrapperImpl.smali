.class public Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;
.super Ljava/lang/Object;
.source "DevicePolicyManagerWrapperImpl.java"

# interfaces
.implements Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;


# instance fields
.field private final mDpm:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .locals 0
    .param p1, "dpm"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 32
    return-void
.end method


# virtual methods
.method public getActiveAdminsAsUser(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getLastBugReportRequestTime()J
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getLastBugReportRequestTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastNetworkLogRetrievalTime()J
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getLastNetworkLogRetrievalTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSecurityLogRetrievalTime()J
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getLastSecurityLogRetrievalTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "userHandle"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/admin/DevicePolicyManager;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getProfileOwnerAsUser(I)Landroid/content/ComponentName;
    .locals 1
    .param p1, "userId"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public isCurrentInputMethodSetByOwner()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isCurrentInputMethodSetByOwner()Z

    move-result v0

    return v0
.end method

.method public isDeviceOwnerAppOnAnyUser(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnAnyUser(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isUninstallInQueue(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
