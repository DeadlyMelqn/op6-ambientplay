.class Landroid/content/pm/LauncherApps$1;
.super Landroid/content/pm/IOnAppsChangedListener$Stub;
.source "LauncherApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LauncherApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/LauncherApps;


# direct methods
.method constructor <init>(Landroid/content/pm/LauncherApps;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/pm/LauncherApps;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    .line 1060
    invoke-direct {p0}, Landroid/content/pm/IOnAppsChangedListener$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1092
    iget-object v3, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v3

    .line 1093
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {v2}, Landroid/content/pm/LauncherApps;->-get0(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    .line 1094
    .local v0, "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    invoke-virtual {v0, p2, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1092
    .end local v0    # "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 1097
    return-void
.end method

.method public onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1080
    iget-object v3, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v3

    .line 1081
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {v2}, Landroid/content/pm/LauncherApps;->-get0(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    .line 1082
    .local v0, "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    invoke-virtual {v0, p2, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1080
    .end local v0    # "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 1085
    return-void
.end method

.method public onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1068
    iget-object v3, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v3

    .line 1069
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {v2}, Landroid/content/pm/LauncherApps;->-get0(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    .line 1070
    .local v0, "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    invoke-virtual {v0, p2, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1068
    .end local v0    # "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 1073
    return-void
.end method

.method public onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "replacing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1105
    iget-object v3, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v3

    .line 1106
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {v2}, Landroid/content/pm/LauncherApps;->-get0(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    .line 1107
    .local v0, "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    invoke-virtual {v0, p2, p1, p3}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1105
    .end local v0    # "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 1110
    return-void
.end method

.method public onPackagesSuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1131
    iget-object v3, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v3

    .line 1132
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {v2}, Landroid/content/pm/LauncherApps;->-get0(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    .line 1133
    .local v0, "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    invoke-virtual {v0, p2, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1131
    .end local v0    # "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 1136
    return-void
.end method

.method public onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "replacing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1118
    iget-object v3, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v3

    .line 1119
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {v2}, Landroid/content/pm/LauncherApps;->-get0(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    .line 1120
    .local v0, "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    invoke-virtual {v0, p2, p1, p3}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1118
    .end local v0    # "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 1123
    return-void
.end method

.method public onPackagesUnsuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1144
    iget-object v3, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v3

    .line 1145
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {v2}, Landroid/content/pm/LauncherApps;->-get0(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    .line 1146
    .local v0, "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    invoke-virtual {v0, p2, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1144
    .end local v0    # "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 1149
    return-void
.end method

.method public onShortcutChanged(Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "shortcuts"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    .line 1157
    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    .line 1158
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v4, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v4

    .line 1159
    :try_start_0
    iget-object v3, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {v3}, Landroid/content/pm/LauncherApps;->-get0(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    .line 1160
    .local v0, "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    invoke-virtual {v0, p2, p1, v2}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnShortcutChanged(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1158
    .end local v0    # "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v4

    .line 1163
    return-void
.end method
