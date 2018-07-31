.class Lcom/android/server/notification/NotificationManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1080
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1083
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    .line 1084
    .local v14, "action":Ljava/lang/String;
    if-nez v14, :cond_0

    .line 1085
    return-void

    .line 1088
    :cond_0
    const/16 v22, 0x0

    .line 1089
    .local v22, "queryRestart":Z
    const/16 v21, 0x0

    .line 1090
    .local v21, "queryRemove":Z
    const/16 v19, 0x0

    .line 1091
    .local v19, "packageChanged":Z
    const/4 v15, 0x1

    .line 1092
    .local v15, "cancelNotifications":Z
    const/4 v12, 0x5

    .line 1094
    .local v12, "reason":I
    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1095
    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 1094
    .local v21, "queryRemove":Z
    if-nez v21, :cond_1

    .line 1096
    const-string/jumbo v3, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1094
    if-nez v3, :cond_1

    .line 1097
    const-string/jumbo v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 1094
    .local v19, "packageChanged":Z
    if-nez v19, :cond_1

    .line 1098
    const-string/jumbo v3, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 1094
    .local v22, "queryRestart":Z
    if-nez v22, :cond_1

    .line 1099
    const-string/jumbo v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1094
    if-nez v3, :cond_1

    .line 1100
    const-string/jumbo v3, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1094
    if-eqz v3, :cond_e

    .line 1101
    .end local v19    # "packageChanged":Z
    .end local v21    # "queryRemove":Z
    .end local v22    # "queryRestart":Z
    :cond_1
    const-string/jumbo v3, "android.intent.extra.user_handle"

    .line 1102
    const/4 v4, -0x1

    .line 1101
    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 1103
    .local v11, "changeUserId":I
    const/16 v20, 0x0

    .line 1104
    .local v20, "pkgList":[Ljava/lang/String;
    const/16 v24, 0x0

    .line 1105
    .local v24, "uidList":[I
    if-eqz v21, :cond_4

    .line 1106
    const-string/jumbo v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    xor-int/lit8 v23, v3, 0x1

    .line 1107
    :goto_0
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " removing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_2
    const-string/jumbo v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1109
    const-string/jumbo v3, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1110
    .local v20, "pkgList":[Ljava/lang/String;
    const-string/jumbo v3, "android.intent.extra.changed_uid_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v24

    .line 1150
    .end local v24    # "uidList":[I
    :goto_1
    if-eqz v20, :cond_d

    move-object/from16 v0, v20

    array-length v3, v0

    if-lez v3, :cond_d

    .line 1151
    const/4 v3, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v26, v3

    :goto_2
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_d

    aget-object v6, v20, v26

    .line 1152
    .local v6, "pkgName":Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 1153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-get3()I

    move-result v4

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-get2()I

    move-result v5

    .line 1154
    xor-int/lit8 v10, v22, 0x1

    .line 1153
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1154
    const/4 v13, 0x0

    .line 1153
    invoke-virtual/range {v3 .. v13}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 1151
    :cond_3
    add-int/lit8 v3, v26, 0x1

    move/from16 v26, v3

    goto :goto_2

    .line 1105
    .end local v6    # "pkgName":Ljava/lang/String;
    .local v20, "pkgList":[Ljava/lang/String;
    .restart local v24    # "uidList":[I
    :cond_4
    const/16 v23, 0x0

    .local v23, "removingPackage":Z
    goto :goto_0

    .line 1111
    .end local v23    # "removingPackage":Z
    :cond_5
    const-string/jumbo v3, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1112
    const-string/jumbo v3, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1113
    .local v20, "pkgList":[Ljava/lang/String;
    const/16 v12, 0xe

    goto :goto_1

    .line 1114
    .local v20, "pkgList":[Ljava/lang/String;
    :cond_6
    if-eqz v22, :cond_7

    .line 1115
    const-string/jumbo v3, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1116
    .local v20, "pkgList":[Ljava/lang/String;
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v24, v0

    .end local v24    # "uidList":[I
    const-string/jumbo v3, "android.intent.extra.UID"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v24, v4

    .local v24, "uidList":[I
    goto :goto_1

    .line 1118
    .local v20, "pkgList":[Ljava/lang/String;
    .local v24, "uidList":[I
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v25

    .line 1119
    .local v25, "uri":Landroid/net/Uri;
    if-nez v25, :cond_8

    .line 1120
    return-void

    .line 1122
    :cond_8
    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 1123
    .restart local v6    # "pkgName":Ljava/lang/String;
    if-nez v6, :cond_9

    .line 1124
    return-void

    .line 1126
    :cond_9
    if-eqz v19, :cond_b

    .line 1129
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get28(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 1131
    const/4 v3, -0x1

    if-eq v11, v3, :cond_c

    move v3, v11

    .line 1129
    :goto_3
    invoke-interface {v4, v6, v3}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v18

    .line 1133
    .local v18, "enabled":I
    const/4 v3, 0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_a

    .line 1134
    if-nez v18, :cond_b

    .line 1135
    :cond_a
    const/4 v15, 0x0

    .line 1147
    .end local v18    # "enabled":I
    :cond_b
    :goto_4
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v20, v0

    .end local v20    # "pkgList":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v6, v20, v3

    .line 1148
    .local v20, "pkgList":[Ljava/lang/String;
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v24, v0

    .end local v24    # "uidList":[I
    const-string/jumbo v3, "android.intent.extra.UID"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v24, v4

    .local v24, "uidList":[I
    goto/16 :goto_1

    .line 1132
    .local v20, "pkgList":[Ljava/lang/String;
    .local v24, "uidList":[I
    :cond_c
    const/4 v3, 0x0

    goto :goto_3

    .line 1137
    :catch_0
    move-exception v17

    .line 1140
    .local v17, "e":Ljava/lang/IllegalArgumentException;
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v3, :cond_b

    .line 1141
    const-string/jumbo v3, "NotificationService"

    const-string/jumbo v4, "Exception trying to look up app enabled setting"

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1158
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v17    # "e":Ljava/lang/IllegalArgumentException;
    .end local v24    # "uidList":[I
    .end local v25    # "uri":Landroid/net/Uri;
    .local v20, "pkgList":[Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get22(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    move/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get9(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v3

    move/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get12(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v3

    move/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get31(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v3

    move/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    invoke-virtual {v3, v0, v11, v1, v2}, Lcom/android/server/notification/RankingHelper;->onPackagesChanged(ZI[Ljava/lang/String;[I)V

    .line 1162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    .line 1164
    .end local v11    # "changeUserId":I
    .end local v20    # "pkgList":[Ljava/lang/String;
    :cond_e
    return-void

    .line 1143
    .restart local v6    # "pkgName":Ljava/lang/String;
    .restart local v11    # "changeUserId":I
    .local v20, "pkgList":[Ljava/lang/String;
    .restart local v24    # "uidList":[I
    .restart local v25    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v16

    .local v16, "e":Landroid/os/RemoteException;
    goto :goto_4
.end method
