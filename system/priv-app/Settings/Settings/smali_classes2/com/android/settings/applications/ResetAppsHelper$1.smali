.class Lcom/android/settings/applications/ResetAppsHelper$1;
.super Ljava/lang/Object;
.source "ResetAppsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ResetAppsHelper;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ResetAppsHelper;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ResetAppsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/ResetAppsHelper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 132
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v15}, Lcom/android/settings/applications/ResetAppsHelper;->-get5(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 133
    const/16 v16, 0x200

    .line 132
    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 134
    .local v3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    if-ge v9, v15, :cond_2

    .line 135
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 137
    .local v2, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v15}, Lcom/android/settings/applications/ResetAppsHelper;->-get3(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v15

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    const/16 v18, 0x1

    invoke-interface/range {v15 .. v18}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 139
    new-instance v4, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v4}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    .line 140
    .local v4, "backend":Lcom/android/settings/notification/NotificationBackend;
    iget-object v15, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v13

    .line 141
    .local v13, "showLegacyChannelConfig":Z
    iget-object v15, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v16, v0

    const-string/jumbo v17, "miscellaneous"

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v15, v0, v1}, Lcom/android/settings/notification/NotificationBackend;->getChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v5

    .line 142
    .local v5, "channel":Landroid/app/NotificationChannel;
    if-eqz v13, :cond_0

    if-eqz v5, :cond_0

    .line 143
    const/16 v15, -0x3e8

    invoke-virtual {v5, v15}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 144
    iget-object v15, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0, v5}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    .end local v4    # "backend":Lcom/android/settings/notification/NotificationBackend;
    .end local v5    # "channel":Landroid/app/NotificationChannel;
    .end local v13    # "showLegacyChannelConfig":Z
    :cond_0
    :goto_1
    iget-boolean v15, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v15, :cond_1

    .line 150
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v15}, Lcom/android/settings/applications/ResetAppsHelper;->-get5(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v15

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v15

    .line 151
    const/16 v16, 0x3

    .line 150
    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 152
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/android/settings/applications/ResetAppsHelper;->-wrap0(Lcom/android/settings/applications/ResetAppsHelper;Ljava/lang/String;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    .line 150
    if-eqz v15, :cond_1

    .line 153
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v15}, Lcom/android/settings/applications/ResetAppsHelper;->-get5(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v15

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 154
    const/16 v17, 0x0

    .line 155
    const/16 v18, 0x1

    .line 153
    invoke-virtual/range {v15 .. v18}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 134
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 160
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v15}, Lcom/android/settings/applications/ResetAppsHelper;->-get2(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/pm/IPackageManager;

    move-result-object v15

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v16

    invoke-interface/range {v15 .. v16}, Landroid/content/pm/IPackageManager;->resetApplicationPreferences(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v15}, Lcom/android/settings/applications/ResetAppsHelper;->-get0(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/app/AppOpsManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AppOpsManager;->resetAllModes()V

    .line 164
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v15}, Lcom/android/settings/applications/ResetAppsHelper;->-get4(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;

    move-result-object v15

    .line 165
    const/16 v16, 0x1

    .line 164
    invoke-virtual/range {v15 .. v16}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v12

    .line 166
    .local v12, "restrictedUids":[I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 167
    .local v6, "currentUserId":I
    const/4 v15, 0x0

    array-length v0, v12

    move/from16 v16, v0

    :goto_3
    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    aget v14, v12, v15

    .line 169
    .local v14, "uid":I
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v6, :cond_3

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/applications/ResetAppsHelper;->-get4(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 167
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 174
    .end local v14    # "uid":I
    :cond_4
    sget-boolean v11, Landroid/os/Build$VERSION;->IS_CTA_BUILD:Z

    .line 175
    .local v11, "isCtaVersion":Z
    if-eqz v11, :cond_5

    .line 176
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v15, "com.oneplus.cta.permission.RESET"

    invoke-direct {v10, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v15, "com.oneplus.permissionutil"

    const-string/jumbo v16, "com.oneplus.permissionutil.ResetReceiver"

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v15}, Lcom/android/settings/applications/ResetAppsHelper;->-get1(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 182
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/settings/applications/ResetAppsHelper;->-get1(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/settings/applications/ResetAppsHelper;->-wrap1(Lcom/android/settings/applications/ResetAppsHelper;Landroid/content/Context;)V

    .line 184
    return-void

    .line 161
    .end local v6    # "currentUserId":I
    .end local v11    # "isCtaVersion":Z
    .end local v12    # "restrictedUids":[I
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 147
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v8

    .local v8, "ex":Landroid/os/RemoteException;
    goto/16 :goto_1
.end method
