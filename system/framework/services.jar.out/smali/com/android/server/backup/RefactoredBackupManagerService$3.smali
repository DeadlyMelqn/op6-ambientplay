.class Lcom/android/server/backup/RefactoredBackupManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "RefactoredBackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/RefactoredBackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/RefactoredBackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/RefactoredBackupManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    .line 1183
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_server_backup_RefactoredBackupManagerService$3_49338(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "components"    # [Ljava/lang/String;

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get11(Lcom/android/server/backup/RefactoredBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->onPackageChanged(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$-com_android_server_backup_RefactoredBackupManagerService$3_52086(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get11(Lcom/android/server/backup/RefactoredBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->onPackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$-com_android_server_backup_RefactoredBackupManagerService$3_53299(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get11(Lcom/android/server/backup/RefactoredBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->onPackageRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1187
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1188
    .local v4, "action":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1189
    .local v16, "replacing":Z
    const/4 v5, 0x0

    .line 1190
    .local v5, "added":Z
    const/4 v7, 0x0

    .line 1191
    .local v7, "changed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 1192
    .local v10, "extras":Landroid/os/Bundle;
    const/4 v14, 0x0

    .line 1193
    .local v14, "pkgList":[Ljava/lang/String;
    const-string/jumbo v19, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 1194
    const-string/jumbo v19, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 1193
    if-nez v19, :cond_0

    .line 1195
    const-string/jumbo v19, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 1193
    if-eqz v19, :cond_6

    .line 1196
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    .line 1197
    .local v18, "uri":Landroid/net/Uri;
    if-nez v18, :cond_1

    .line 1198
    return-void

    .line 1200
    :cond_1
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v15

    .line 1201
    .local v15, "pkgName":Ljava/lang/String;
    if-eqz v15, :cond_2

    .line 1202
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v14, v0, [Ljava/lang/String;

    .end local v14    # "pkgList":[Ljava/lang/String;
    const/16 v19, 0x0

    aput-object v15, v14, v19

    .line 1204
    :cond_2
    const-string/jumbo v19, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1207
    .local v7, "changed":Z
    if-eqz v7, :cond_3

    .line 1209
    const-string/jumbo v19, "android.intent.extra.changed_component_name_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1218
    .local v8, "components":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get1(Lcom/android/server/backup/RefactoredBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v19

    .line 1219
    new-instance v20, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$2;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v15, v8}, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$2;-><init>(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1218
    invoke-virtual/range {v19 .. v20}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1220
    return-void

    .line 1223
    .end local v8    # "components":[Ljava/lang/String;
    :cond_3
    const-string/jumbo v19, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1224
    .local v5, "added":Z
    const-string/jumbo v19, "android.intent.extra.REPLACING"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 1233
    .end local v5    # "added":Z
    .end local v7    # "changed":Z
    .end local v15    # "pkgName":Ljava/lang/String;
    .end local v16    # "replacing":Z
    .end local v18    # "uri":Landroid/net/Uri;
    :cond_4
    :goto_0
    if-eqz v14, :cond_5

    array-length v0, v14

    move/from16 v19, v0

    if-nez v19, :cond_8

    .line 1234
    :cond_5
    return-void

    .line 1225
    .local v5, "added":Z
    .local v7, "changed":Z
    .restart local v14    # "pkgList":[Ljava/lang/String;
    .restart local v16    # "replacing":Z
    :cond_6
    const-string/jumbo v19, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1226
    const/4 v5, 0x1

    .line 1227
    const-string/jumbo v19, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .local v14, "pkgList":[Ljava/lang/String;
    goto :goto_0

    .line 1228
    .local v14, "pkgList":[Ljava/lang/String;
    :cond_7
    const-string/jumbo v19, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1229
    const/4 v5, 0x0

    .line 1230
    const-string/jumbo v19, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .local v14, "pkgList":[Ljava/lang/String;
    goto :goto_0

    .line 1237
    .end local v5    # "added":Z
    .end local v7    # "changed":Z
    .end local v14    # "pkgList":[Ljava/lang/String;
    .end local v16    # "replacing":Z
    :cond_8
    const-string/jumbo v19, "android.intent.extra.UID"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 1238
    .local v17, "uid":I
    if-eqz v5, :cond_d

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get2(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/util/SparseArray;

    move-result-object v20

    monitor-enter v20

    .line 1240
    if-eqz v16, :cond_9

    .line 1245
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-static {v0, v14, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->-wrap5(Lcom/android/server/backup/RefactoredBackupManagerService;[Ljava/lang/String;I)V

    .line 1247
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v14}, Lcom/android/server/backup/RefactoredBackupManagerService;->-wrap2(Lcom/android/server/backup/RefactoredBackupManagerService;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v20

    .line 1250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1251
    .local v12, "now":J
    const/16 v19, 0x0

    array-length v0, v14

    move/from16 v21, v0

    move/from16 v20, v19

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    aget-object v11, v14, v20

    .line 1253
    .local v11, "packageName":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get7(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v19

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 1254
    .local v6, "app":Landroid/content/pm/PackageInfo;
    invoke-static {v6}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1256
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    .line 1255
    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v19

    .line 1254
    if-eqz v19, :cond_a

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v12, v13}, Lcom/android/server/backup/RefactoredBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 1269
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get1(Lcom/android/server/backup/RefactoredBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v19

    .line 1270
    new-instance v22, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;

    const/16 v23, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v11}, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    .line 1269
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1251
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    :goto_3
    add-int/lit8 v19, v20, 0x1

    move/from16 v20, v19

    goto :goto_1

    .line 1239
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "now":J
    :catchall_0
    move-exception v19

    monitor-exit v20

    throw v19

    .line 1263
    .restart local v6    # "app":Landroid/content/pm/PackageInfo;
    .restart local v11    # "packageName":Ljava/lang/String;
    .restart local v12    # "now":J
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get9(Lcom/android/server/backup/RefactoredBackupManagerService;)Ljava/lang/Object;

    move-result-object v22

    monitor-enter v22
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1264
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Lcom/android/server/backup/RefactoredBackupManagerService;->-wrap4(Lcom/android/server/backup/RefactoredBackupManagerService;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v22

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/RefactoredBackupManagerService;->-wrap7(Lcom/android/server/backup/RefactoredBackupManagerService;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 1272
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v9

    .line 1275
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v19, "BackupManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Can\'t resolve new app "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1263
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "app":Landroid/content/pm/PackageInfo;
    :catchall_1
    move-exception v19

    :try_start_5
    monitor-exit v22

    throw v19
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1282
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    const-string/jumbo v20, "@pm@"

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/backup/RefactoredBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 1299
    .end local v12    # "now":J
    :cond_c
    return-void

    .line 1284
    :cond_d
    if-eqz v16, :cond_e

    .line 1294
    :goto_4
    const/16 v19, 0x0

    array-length v0, v14

    move/from16 v20, v0

    :goto_5
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    aget-object v15, v14, v19

    .line 1295
    .restart local v15    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get1(Lcom/android/server/backup/RefactoredBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v21

    .line 1296
    new-instance v22, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;

    const/16 v23, 0x3

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    .line 1295
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1294
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 1290
    .end local v15    # "pkgName":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get2(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/util/SparseArray;

    move-result-object v20

    monitor-enter v20

    .line 1291
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-static {v0, v14, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->-wrap5(Lcom/android/server/backup/RefactoredBackupManagerService;[Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit v20

    goto :goto_4

    .line 1290
    :catchall_2
    move-exception v19

    monitor-exit v20

    throw v19
.end method
