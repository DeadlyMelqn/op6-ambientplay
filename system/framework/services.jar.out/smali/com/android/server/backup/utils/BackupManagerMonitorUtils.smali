.class public Lcom/android/server/backup/utils/BackupManagerMonitorUtils;
.super Ljava/lang/Object;
.source "BackupManagerMonitorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;
    .locals 5
    .param p0, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p1, "id"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p3, "category"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 49
    if-eqz p0, :cond_2

    .line 51
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "android.app.backup.extra.LOG_EVENT_ID"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    const-string/jumbo v2, "android.app.backup.extra.LOG_EVENT_CATEGORY"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    if-eqz p2, :cond_0

    .line 55
    const-string/jumbo v2, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    .line 56
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string/jumbo v2, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    .line 58
    iget v3, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 57
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    :cond_0
    if-eqz p4, :cond_1

    .line 61
    invoke-virtual {v0, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 63
    :cond_1
    invoke-interface {p0, v0}, Landroid/app/backup/IBackupManagerMonitor;->onEvent(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-object p0

    .line 65
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "backup manager monitor went away"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    return-object v4
.end method

.method public static putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;
    .locals 0
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 101
    if-nez p0, :cond_0

    .line 102
    new-instance p0, Landroid/os/Bundle;

    .end local p0    # "extras":Landroid/os/Bundle;
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 104
    .restart local p0    # "extras":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 105
    return-object p0
.end method

.method public static putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 84
    if-nez p0, :cond_0

    .line 85
    new-instance p0, Landroid/os/Bundle;

    .end local p0    # "extras":Landroid/os/Bundle;
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .restart local p0    # "extras":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-object p0
.end method

.method public static putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 0
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 118
    if-nez p0, :cond_0

    .line 119
    new-instance p0, Landroid/os/Bundle;

    .end local p0    # "extras":Landroid/os/Bundle;
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 121
    .restart local p0    # "extras":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    return-object p0
.end method
