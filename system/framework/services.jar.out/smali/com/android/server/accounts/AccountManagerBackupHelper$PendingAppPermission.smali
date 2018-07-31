.class final Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;
.super Ljava/lang/Object;
.source "AccountManagerBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PendingAppPermission"
.end annotation


# instance fields
.field private final accountDigest:Ljava/lang/String;

.field private final certDigest:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

.field private final userId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;

    .prologue
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerBackupHelper;
    .param p2, "accountDigest"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "certDigest"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->accountDigest:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->packageName:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->certDigest:Ljava/lang/String;

    .line 98
    iput p5, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->userId:I

    .line 99
    return-void
.end method


# virtual methods
.method public apply(Landroid/content/pm/PackageManager;)Z
    .locals 17
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, "account":Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v11}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get1(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;

    move-result-object v11

    .line 104
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->userId:I

    .line 103
    invoke-virtual {v11, v12}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 105
    .local v3, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v12, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v12

    .line 106
    :try_start_0
    iget-object v13, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    :try_start_1
    iget-object v11, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v1    # "account":Landroid/accounts/Account;
    .local v5, "accountsPerType$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/accounts/Account;

    .line 108
    .local v4, "accountsPerType":[Landroid/accounts/Account;
    const/4 v11, 0x0

    array-length v14, v4

    :goto_0
    if-ge v11, v14, :cond_1

    aget-object v2, v4, v11

    .line 109
    .local v2, "accountPerType":Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->accountDigest:Ljava/lang/String;

    .line 110
    iget-object v0, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    .line 109
    invoke-static/range {v16 .. v16}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v15

    if-eqz v15, :cond_3

    .line 111
    move-object v1, v2

    .line 115
    .end local v2    # "accountPerType":Landroid/accounts/Account;
    :cond_1
    if-eqz v1, :cond_0

    .end local v4    # "accountsPerType":[Landroid/accounts/Account;
    :cond_2
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v12

    .line 121
    if-nez v1, :cond_4

    .line 122
    const/4 v11, 0x0

    return v11

    .line 108
    .restart local v2    # "accountPerType":Landroid/accounts/Account;
    .restart local v4    # "accountsPerType":[Landroid/accounts/Account;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 106
    .end local v2    # "accountPerType":Landroid/accounts/Account;
    .end local v4    # "accountsPerType":[Landroid/accounts/Account;
    .end local v5    # "accountsPerType$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v11

    :try_start_3
    monitor-exit v13

    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    :catchall_1
    move-exception v11

    monitor-exit v12

    throw v11

    .line 126
    .restart local v5    # "accountsPerType$iterator":Ljava/util/Iterator;
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->packageName:Ljava/lang/String;

    .line 127
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->userId:I

    const/16 v13, 0x40

    .line 126
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v13, v12}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v7

    .line 138
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v11, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 137
    invoke-static {v11}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v9

    .line 139
    .local v9, "signaturesSha256Digests":[Ljava/lang/String;
    invoke-static {v9}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 141
    .local v8, "signaturesSha256Digest":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->certDigest:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v11, v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_5

    .line 142
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->certDigest:Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    .line 141
    if-eqz v11, :cond_6

    .line 143
    :cond_5
    const/4 v11, 0x0

    return v11

    .line 128
    .end local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "signaturesSha256Digest":Ljava/lang/String;
    .end local v9    # "signaturesSha256Digests":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 129
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v11, 0x0

    return v11

    .line 145
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v8    # "signaturesSha256Digest":Ljava/lang/String;
    .restart local v9    # "signaturesSha256Digests":[Ljava/lang/String;
    :cond_6
    iget-object v11, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 146
    .local v10, "uid":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v11}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get0(Lcom/android/server/accounts/AccountManagerBackupHelper;)Landroid/accounts/AccountManagerInternal;

    move-result-object v11

    invoke-virtual {v11, v1, v10}, Landroid/accounts/AccountManagerInternal;->hasAccountAccess(Landroid/accounts/Account;I)Z

    move-result v11

    if-nez v11, :cond_7

    .line 147
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v11}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get1(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;

    move-result-object v11

    .line 148
    const-string/jumbo v12, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    .line 147
    invoke-virtual {v11, v1, v12, v10}, Lcom/android/server/accounts/AccountManagerService;->grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 150
    :cond_7
    const/4 v11, 0x1

    return v11
.end method
