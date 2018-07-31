.class public Lcom/android/settingslib/RestrictedLockUtils;
.super Ljava/lang/Object;
.source "RestrictedLockUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;,
        Lcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;,
        Lcom/android/settingslib/RestrictedLockUtils$Proxy;
    }
.end annotation


# static fields
.field static sProxy:Lcom/android/settingslib/RestrictedLockUtils$Proxy;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 783
    new-instance v0, Lcom/android/settingslib/RestrictedLockUtils$Proxy;

    invoke-direct {v0}, Lcom/android/settingslib/RestrictedLockUtils$Proxy;-><init>()V

    sput-object v0, Lcom/android/settingslib/RestrictedLockUtils;->sProxy:Lcom/android/settingslib/RestrictedLockUtils$Proxy;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkForLockSetting(Landroid/content/Context;ILcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "check"    # Lcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;

    .prologue
    const/4 v11, 0x0

    .line 497
    const-string/jumbo v10, "device_policy"

    .line 496
    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 498
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v3, :cond_0

    .line 499
    return-object v11

    .line 501
    :cond_0
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 502
    .local v6, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v4, 0x0

    .line 505
    .local v4, "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v4    # "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .local v9, "userInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 506
    .local v8, "userInfo":Landroid/content/pm/UserInfo;
    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v10}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v2

    .line 507
    .local v2, "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v2, :cond_1

    .line 511
    sget-object v10, Lcom/android/settingslib/RestrictedLockUtils;->sProxy:Lcom/android/settingslib/RestrictedLockUtils$Proxy;

    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v6, v11}, Lcom/android/settingslib/RestrictedLockUtils$Proxy;->isSeparateProfileChallengeEnabled(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v5

    .line 512
    .local v5, "isSeparateProfileChallengeEnabled":Z
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 513
    .local v0, "admin":Landroid/content/ComponentName;
    if-nez v5, :cond_4

    .line 514
    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {p2, v3, v0, v10}, Lcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;->isEnforcing(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 515
    if-nez v4, :cond_3

    .line 516
    new-instance v4, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v4, v0, v10}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    .local v4, "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    goto :goto_0

    .line 518
    .end local v4    # "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_3
    sget-object v10, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v10

    .line 527
    :cond_4
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 530
    sget-object v10, Lcom/android/settingslib/RestrictedLockUtils;->sProxy:Lcom/android/settingslib/RestrictedLockUtils$Proxy;

    invoke-virtual {v10, v3, v8}, Lcom/android/settingslib/RestrictedLockUtils$Proxy;->getParentProfileInstance(Landroid/app/admin/DevicePolicyManager;Landroid/content/pm/UserInfo;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    .line 531
    .local v7, "parentDpm":Landroid/app/admin/DevicePolicyManager;
    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {p2, v7, v0, v10}, Lcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;->isEnforcing(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 532
    if-nez v4, :cond_5

    .line 533
    new-instance v4, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v4, v0, v10}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    .restart local v4    # "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    goto :goto_0

    .line 535
    .end local v4    # "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_5
    sget-object v10, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v10

    .line 541
    .end local v0    # "admin":Landroid/content/ComponentName;
    .end local v1    # "admin$iterator":Ljava/util/Iterator;
    .end local v2    # "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v5    # "isSeparateProfileChallengeEnabled":Z
    .end local v7    # "parentDpm":Landroid/app/admin/DevicePolicyManager;
    .end local v8    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    return-object v4
.end method

.method public static checkIfAccessibilityServiceDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v7, 0x0

    .line 292
    const-string/jumbo v6, "device_policy"

    .line 291
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 293
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v1, :cond_0

    .line 294
    return-object v7

    .line 296
    :cond_0
    invoke-static {p0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 297
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    const/4 v3, 0x1

    .line 298
    .local v3, "permitted":Z
    if-eqz v0, :cond_1

    .line 299
    iget-object v6, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v6, p1, p2}, Landroid/app/admin/DevicePolicyManager;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    .line 302
    .end local v3    # "permitted":Z
    :cond_1
    invoke-static {p0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->getManagedProfileId(Landroid/content/Context;I)I

    move-result v2

    .line 303
    .local v2, "managedProfileId":I
    invoke-static {p0, v2}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v5

    .line 304
    .local v5, "profileAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    const/4 v4, 0x1

    .line 305
    .local v4, "permittedByProfileAdmin":Z
    if-eqz v5, :cond_2

    .line 307
    iget-object v6, v5, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 306
    invoke-virtual {v1, v6, p1, v2}, Landroid/app/admin/DevicePolicyManager;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v4

    .line 309
    .end local v4    # "permittedByProfileAdmin":Z
    :cond_2
    if-nez v3, :cond_3

    xor-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_3

    .line 310
    sget-object v6, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v6

    .line 311
    :cond_3
    if-nez v3, :cond_4

    .line 312
    return-object v0

    .line 313
    :cond_4
    if-nez v4, :cond_5

    .line 314
    return-object v5

    .line 316
    :cond_5
    return-object v7
.end method

.method public static checkIfAccountManagementDisabled(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v7, 0x0

    .line 343
    if-nez p1, :cond_0

    .line 344
    return-object v7

    .line 347
    :cond_0
    const-string/jumbo v4, "device_policy"

    .line 346
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 348
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v1, :cond_1

    .line 349
    return-object v7

    .line 351
    :cond_1
    const/4 v2, 0x0

    .line 352
    .local v2, "isAccountTypeDisabled":Z
    invoke-virtual {v1, p2}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "disabledTypes":[Ljava/lang/String;
    const/4 v4, 0x0

    array-length v5, v0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v3, v0, v4

    .line 354
    .local v3, "type":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 355
    const/4 v2, 0x1

    .line 359
    .end local v3    # "type":Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_4

    .line 360
    return-object v7

    .line 353
    .restart local v3    # "type":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 362
    .end local v3    # "type":Ljava/lang/String;
    :cond_4
    invoke-static {p0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    return-object v4
.end method

.method public static checkIfApplicationIsSuspended(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 225
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 227
    .local v1, "ipm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    invoke-static {p0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 230
    :catch_0
    move-exception v0

    .line 233
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public static checkIfAutoTimeRequired(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 374
    const-string/jumbo v2, "device_policy"

    .line 373
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 375
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeRequired()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 376
    :cond_0
    return-object v3

    .line 378
    :cond_1
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object v0

    .line 379
    .local v0, "adminComponent":Landroid/content/ComponentName;
    new-instance v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    return-object v2
.end method

.method public static checkIfInputMethodDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v7, 0x0

    .line 239
    const-string/jumbo v6, "device_policy"

    .line 238
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 240
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v1, :cond_0

    .line 241
    return-object v7

    .line 243
    :cond_0
    invoke-static {p0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 244
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    const/4 v3, 0x1

    .line 245
    .local v3, "permitted":Z
    if-eqz v0, :cond_1

    .line 246
    iget-object v6, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v6, p1, p2}, Landroid/app/admin/DevicePolicyManager;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    .line 249
    .end local v3    # "permitted":Z
    :cond_1
    invoke-static {p0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->getManagedProfileId(Landroid/content/Context;I)I

    move-result v2

    .line 250
    .local v2, "managedProfileId":I
    invoke-static {p0, v2}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v5

    .line 251
    .local v5, "profileAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    const/4 v4, 0x1

    .line 252
    .local v4, "permittedByProfileAdmin":Z
    if-eqz v5, :cond_2

    .line 253
    iget-object v6, v5, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v6, p1, v2}, Landroid/app/admin/DevicePolicyManager;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v4

    .line 256
    .end local v4    # "permittedByProfileAdmin":Z
    :cond_2
    if-nez v3, :cond_3

    xor-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_3

    .line 257
    sget-object v6, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v6

    .line 258
    :cond_3
    if-nez v3, :cond_4

    .line 259
    return-object v0

    .line 260
    :cond_4
    if-nez v4, :cond_5

    .line 261
    return-object v5

    .line 263
    :cond_5
    return-object v7
.end method

.method public static checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyguardFeatures"    # I
    .param p2, "userId"    # I

    .prologue
    .line 146
    new-instance v0, Lcom/android/settingslib/-$Lambda$NV-IKznc2IoM3gM5Bb4rreqsmlg$1;

    invoke-direct {v0, p2, p1}, Lcom/android/settingslib/-$Lambda$NV-IKznc2IoM3gM5Bb4rreqsmlg$1;-><init>(II)V

    .line 153
    .local v0, "check":Lcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    const-string/jumbo v2, "device_policy"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 156
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1, p2}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1, p2, v0}, Lcom/android/settingslib/RestrictedLockUtils;->findEnforcedAdmin(Ljava/util/List;Landroid/app/admin/DevicePolicyManager;ILcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    return-object v2

    .line 158
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_0
    invoke-static {p0, p2, v0}, Lcom/android/settingslib/RestrictedLockUtils;->checkForLockSetting(Landroid/content/Context;ILcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    return-object v2
.end method

.method public static checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 436
    const-string/jumbo v14, "device_policy"

    .line 435
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    .line 437
    .local v5, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v5, :cond_0

    .line 438
    const/4 v14, 0x0

    return-object v14

    .line 440
    :cond_0
    const/4 v6, 0x0

    .line 441
    .local v6, "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    .line 442
    .local v12, "userId":I
    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v11

    .line 443
    .local v11, "um":Landroid/os/UserManager;
    invoke-virtual {v11, v12}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v9

    .line 444
    .local v9, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 448
    .local v10, "profilesSize":I
    const/4 v7, 0x0

    .end local v6    # "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .local v7, "i":I
    :goto_0
    if-ge v7, v10, :cond_7

    .line 449
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/UserInfo;

    .line 450
    .local v13, "userInfo":Landroid/content/pm/UserInfo;
    iget v14, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v14}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v4

    .line 451
    .local v4, "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-nez v4, :cond_2

    .line 448
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 454
    :cond_2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "admin$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 455
    .local v2, "admin":Landroid/content/ComponentName;
    iget v14, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v2, v14}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_5

    .line 456
    if-nez v6, :cond_4

    .line 457
    new-instance v6, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget v14, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v6, v2, v14}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    .local v6, "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    goto :goto_1

    .line 459
    .end local v6    # "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_4
    sget-object v14, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v14

    .line 467
    :cond_5
    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 470
    sget-object v14, Lcom/android/settingslib/RestrictedLockUtils;->sProxy:Lcom/android/settingslib/RestrictedLockUtils$Proxy;

    invoke-virtual {v14, v5, v13}, Lcom/android/settingslib/RestrictedLockUtils$Proxy;->getParentProfileInstance(Landroid/app/admin/DevicePolicyManager;Landroid/content/pm/UserInfo;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    .line 471
    .local v8, "parentDpm":Landroid/app/admin/DevicePolicyManager;
    iget v14, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v2, v14}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    .line 472
    if-nez v6, :cond_6

    .line 473
    new-instance v6, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget v14, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v6, v2, v14}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    .restart local v6    # "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    goto :goto_1

    .line 475
    .end local v6    # "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_6
    sget-object v14, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v14

    .line 481
    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v3    # "admin$iterator":Ljava/util/Iterator;
    .end local v4    # "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v8    # "parentDpm":Landroid/app/admin/DevicePolicyManager;
    .end local v13    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_7
    return-object v6
.end method

.method public static checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v8, 0x0

    .line 392
    sget-object v3, Lcom/android/settingslib/-$Lambda$NV-IKznc2IoM3gM5Bb4rreqsmlg;->$INST$0:Lcom/android/settingslib/-$Lambda$NV-IKznc2IoM3gM5Bb4rreqsmlg;

    .line 398
    .local v3, "check":Lcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;
    const-string/jumbo v7, "device_policy"

    .line 397
    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 399
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v4, :cond_0

    .line 400
    return-object v8

    .line 403
    :cond_0
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 404
    .local v6, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    sget-object v7, Lcom/android/settingslib/RestrictedLockUtils;->sProxy:Lcom/android/settingslib/RestrictedLockUtils$Proxy;

    invoke-virtual {v7, v6, p1}, Lcom/android/settingslib/RestrictedLockUtils$Proxy;->isSeparateProfileChallengeEnabled(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 407
    invoke-virtual {v4, p1}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v2

    .line 408
    .local v2, "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-nez v2, :cond_1

    .line 409
    return-object v8

    .line 411
    :cond_1
    const/4 v5, 0x0

    .line 412
    .local v5, "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v5    # "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 413
    .local v0, "admin":Landroid/content/ComponentName;
    invoke-interface {v3, v4, v0, p1}, Lcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;->isEnforcing(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 414
    if-nez v5, :cond_3

    .line 415
    new-instance v5, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v5, v0, p1}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    .local v5, "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    goto :goto_0

    .line 417
    .end local v5    # "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_3
    sget-object v7, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v7

    .line 421
    .end local v0    # "admin":Landroid/content/ComponentName;
    :cond_4
    return-object v5

    .line 423
    .end local v1    # "admin$iterator":Ljava/util/Iterator;
    .end local v2    # "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_5
    invoke-static {p0, p1, v3}, Lcom/android/settingslib/RestrictedLockUtils;->checkForLockSetting(Landroid/content/Context;ILcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v7

    return-object v7
.end method

.method public static checkIfRemoteContactSearchDisallowed(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 273
    const-string/jumbo v3, "device_policy"

    .line 272
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 274
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v1, :cond_0

    .line 275
    return-object v4

    .line 277
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 278
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-nez v0, :cond_1

    .line 279
    return-object v4

    .line 281
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 282
    .local v2, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileContactsSearchDisabled(Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 283
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileCallerIdDisabled(Landroid/os/UserHandle;)Z

    move-result v3

    .line 282
    if-eqz v3, :cond_2

    .line 284
    return-object v0

    .line 286
    :cond_2
    return-object v4
.end method

.method public static checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userRestriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 80
    const-string/jumbo v7, "device_policy"

    .line 79
    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 81
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 82
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v7, "android.software.device_admin"

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez v1, :cond_1

    .line 83
    :cond_0
    return-object v9

    .line 86
    :cond_1
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    .line 88
    .local v6, "um":Landroid/os/UserManager;
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroid/os/UserManager;->getUserRestrictionSources(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 90
    .local v2, "enforcingUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 92
    return-object v9

    .line 93
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    .line 94
    sget-object v7, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v7

    .line 97
    :cond_3
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v7}, Landroid/os/UserManager$EnforcingUser;->getUserRestrictionSource()I

    move-result v5

    .line 98
    .local v5, "restrictionSource":I
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v7}, Landroid/os/UserManager$EnforcingUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 100
    .local v0, "adminUserId":I
    const/4 v7, 0x4

    if-ne v5, v7, :cond_6

    .line 102
    if-ne v0, p2, :cond_4

    .line 103
    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v7

    return-object v7

    .line 107
    :cond_4
    invoke-virtual {v6, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 108
    .local v3, "parentUser":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_5

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v7, p2, :cond_5

    .line 109
    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v7

    .line 108
    :goto_0
    return-object v7

    .line 110
    :cond_5
    sget-object v7, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    goto :goto_0

    .line 112
    .end local v3    # "parentUser":Landroid/content/pm/UserInfo;
    :cond_6
    const/4 v7, 0x2

    if-ne v5, v7, :cond_8

    .line 115
    if-ne v0, p2, :cond_7

    .line 116
    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v7

    .line 115
    :goto_1
    return-object v7

    .line 116
    :cond_7
    sget-object v7, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    goto :goto_1

    .line 120
    :cond_8
    return-object v9
.end method

.method public static checkIfUninstallBlocked(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 197
    const-string/jumbo v4, "no_control_apps"

    .line 196
    invoke-static {p0, v4, p2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 198
    .local v0, "allAppsControlDisallowedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    .line 199
    return-object v0

    .line 202
    :cond_0
    const-string/jumbo v4, "no_uninstall_apps"

    .line 201
    invoke-static {p0, v4, p2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 203
    .local v1, "allAppsUninstallDisallowedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v1, :cond_1

    .line 204
    return-object v1

    .line 206
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 208
    .local v3, "ipm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-interface {v3, p1, p2}, Landroid/content/pm/IPackageManager;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 209
    invoke-static {p0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 211
    :catch_0
    move-exception v2

    .line 214
    :cond_2
    return-object v5
.end method

.method private static findEnforcedAdmin(Ljava/util/List;Landroid/app/admin/DevicePolicyManager;ILcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 4
    .param p1, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p2, "userId"    # I
    .param p3, "check"    # Lcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Landroid/app/admin/DevicePolicyManager;",
            "I",
            "Lcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;",
            ")",
            "Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;"
        }
    .end annotation

    .prologue
    .local p0, "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v3, 0x0

    .line 178
    if-nez p0, :cond_0

    .line 179
    return-object v3

    .line 181
    :cond_0
    const/4 v2, 0x0

    .line 182
    .local v2, "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 183
    .local v0, "admin":Landroid/content/ComponentName;
    invoke-interface {p3, p1, v0, p2}, Lcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;->isEnforcing(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    if-nez v2, :cond_2

    .line 185
    new-instance v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v2, v0, p2}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    .local v2, "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    goto :goto_0

    .line 187
    .end local v2    # "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_2
    sget-object v3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v3

    .line 191
    .end local v0    # "admin":Landroid/content/ComponentName;
    :cond_3
    return-object v2
.end method

.method public static getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 568
    const-string/jumbo v2, "device_policy"

    .line 567
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 569
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v1, :cond_0

    .line 570
    return-object v3

    .line 572
    :cond_0
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0

    .line 573
    .local v0, "adminComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 574
    new-instance v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    return-object v2

    .line 576
    :cond_1
    return-object v3
.end method

.method private static getManagedProfileId(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 320
    const-string/jumbo v4, "user"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 321
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 322
    .local v3, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "uInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 323
    .local v0, "uInfo":Landroid/content/pm/UserInfo;
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    if-eq v4, p1, :cond_0

    .line 326
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    return v4

    .line 330
    .end local v0    # "uInfo":Landroid/content/pm/UserInfo;
    :cond_1
    const/16 v4, -0x2710

    return v4
.end method

.method public static getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 545
    const/16 v2, -0x2710

    if-ne p1, v2, :cond_0

    .line 546
    return-object v3

    .line 549
    :cond_0
    const-string/jumbo v2, "device_policy"

    .line 548
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 550
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v1, :cond_1

    .line 551
    return-object v3

    .line 553
    :cond_1
    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 554
    .local v0, "adminComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    .line 555
    new-instance v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v2, v0, p1}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    return-object v2

    .line 557
    :cond_2
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v2

    if-ne v2, p1, :cond_3

    .line 558
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_3

    .line 560
    new-instance v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v2, v0, p1}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    return-object v2

    .line 563
    :cond_3
    return-object v3
.end method

.method private static getProfileOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 580
    const/16 v2, -0x2710

    if-ne p1, v2, :cond_0

    .line 581
    return-object v3

    .line 584
    :cond_0
    const-string/jumbo v2, "device_policy"

    .line 583
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 585
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v1, :cond_1

    .line 586
    return-object v3

    .line 588
    :cond_1
    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 589
    .local v0, "adminComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    .line 590
    new-instance v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v2, v0, p1}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    return-object v2

    .line 592
    :cond_2
    return-object v3
.end method

.method public static getRestrictedPadlock(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 59
    sget v2, Lcom/android/settingslib/R$drawable;->ic_info:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 60
    .local v1, "restrictedPadlock":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 61
    sget v3, Lcom/android/settingslib/R$dimen;->restricted_icon_size:I

    .line 60
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 62
    .local v0, "iconSize":I
    invoke-virtual {v1, v4, v4, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 63
    return-object v1
.end method

.method public static getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "admin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .prologue
    .line 657
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.SHOW_ADMIN_SUPPORT_DETAILS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 658
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_2

    .line 659
    iget-object v2, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 660
    const-string/jumbo v2, "android.app.extra.DEVICE_ADMIN"

    iget-object v3, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 662
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 663
    .local v0, "adminUserId":I
    iget v2, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_1

    .line 664
    iget v0, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 666
    :cond_1
    const-string/jumbo v2, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 668
    .end local v0    # "adminUserId":I
    :cond_2
    return-object v1
.end method

.method public static hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userRestriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 125
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 126
    .local v0, "um":Landroid/os/UserManager;
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method public static isAdminInCurrentUserOrProfile(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 683
    const-string/jumbo v4, "device_policy"

    .line 682
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 684
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 685
    .local v1, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 686
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, p1, v4}, Landroid/app/admin/DevicePolicyManager;->isAdminActiveAsUser(Landroid/content/ComponentName;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 687
    const/4 v4, 0x1

    return v4

    .line 690
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public static isCurrentUserOrProfile(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 672
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 673
    .local v0, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 674
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, p1, :cond_0

    .line 675
    const/4 v3, 0x1

    return v3

    .line 678
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method static synthetic lambda$-com_android_settingslib_RestrictedLockUtils_16936(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z
    .locals 2
    .param p0, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "checkUser"    # I

    .prologue
    const/4 v0, 0x0

    .line 394
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic lambda$-com_android_settingslib_RestrictedLockUtils_6537(IILandroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z
    .locals 3
    .param p0, "userId"    # I
    .param p1, "keyguardFeatures"    # I
    .param p2, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p3, "admin"    # Landroid/content/ComponentName;
    .param p4, "checkUser"    # I

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-virtual {p2, p3, p4}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    .line 148
    .local v0, "effectiveFeatures":I
    if-eq p4, p0, :cond_0

    .line 149
    and-int/lit8 v0, v0, 0x30

    .line 151
    :cond_0
    and-int v2, v0, p1

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static removeExistingRestrictedSpans(Landroid/text/SpannableStringBuilder;)V
    .locals 10
    .param p0, "sb"    # Landroid/text/SpannableStringBuilder;

    .prologue
    const/4 v7, 0x0

    .line 628
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 629
    .local v3, "length":I
    add-int/lit8 v8, v3, -0x1

    .line 630
    const-class v9, Lcom/android/settingslib/RestrictedLockImageSpan;

    .line 629
    invoke-virtual {p0, v8, v3, v9}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/settingslib/RestrictedLockImageSpan;

    .line 631
    .local v2, "imageSpans":[Lcom/android/settingslib/RestrictedLockImageSpan;
    array-length v9, v2

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v5, v2, v8

    .line 632
    .local v5, "span":Landroid/text/style/ImageSpan;
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 633
    .local v6, "start":I
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 634
    .local v1, "end":I
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 635
    invoke-virtual {p0, v6, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 631
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 637
    .end local v1    # "end":I
    .end local v5    # "span":Landroid/text/style/ImageSpan;
    .end local v6    # "start":I
    :cond_0
    const-class v8, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v7, v3, v8}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ForegroundColorSpan;

    .line 638
    .local v0, "colorSpans":[Landroid/text/style/ForegroundColorSpan;
    array-length v8, v0

    :goto_1
    if-ge v7, v8, :cond_1

    aget-object v4, v0, v7

    .line 639
    .local v4, "span":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 638
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 641
    .end local v4    # "span":Landroid/text/style/ForegroundColorSpan;
    :cond_1
    return-void
.end method

.method public static sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "admin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .prologue
    .line 647
    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object v0

    .line 648
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 649
    .local v1, "targetUserId":I
    if-eqz p1, :cond_0

    iget v2, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_0

    .line 650
    iget v2, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    invoke-static {p0, v2}, Lcom/android/settingslib/RestrictedLockUtils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result v2

    .line 649
    if-eqz v2, :cond_0

    .line 651
    iget v1, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 653
    :cond_0
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 654
    return-void
.end method

.method public static setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "admin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x21

    .line 604
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 605
    .local v2, "sb":Landroid/text/SpannableStringBuilder;
    invoke-static {v2}, Lcom/android/settingslib/RestrictedLockUtils;->removeExistingRestrictedSpans(Landroid/text/SpannableStringBuilder;)V

    .line 607
    if-eqz p2, :cond_0

    .line 608
    sget v3, Lcom/android/settingslib/R$color;->disabled_text_color:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 609
    .local v0, "disabledColor":I
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 611
    new-instance v1, Lcom/android/settingslib/RestrictedLockImageSpan;

    invoke-direct {v1, p0}, Lcom/android/settingslib/RestrictedLockImageSpan;-><init>(Landroid/content/Context;)V

    .line 612
    .local v1, "image":Landroid/text/style/ImageSpan;
    const-string/jumbo v3, " "

    invoke-virtual {v2, v3, v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 614
    new-instance v3, Lcom/android/settingslib/RestrictedLockUtils$1;

    invoke-direct {v3, p0, p2}, Lcom/android/settingslib/RestrictedLockUtils$1;-><init>(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 624
    .end local v0    # "disabledColor":I
    .end local v1    # "image":Landroid/text/style/ImageSpan;
    :goto_0
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 625
    return-void

    .line 622
    :cond_0
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static setTextViewAsDisabledByAdmin(Landroid/content/Context;Landroid/widget/TextView;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "disabled"    # Z

    .prologue
    const/4 v6, 0x0

    .line 711
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 712
    .local v1, "sb":Landroid/text/SpannableStringBuilder;
    invoke-static {v1}, Lcom/android/settingslib/RestrictedLockUtils;->removeExistingRestrictedSpans(Landroid/text/SpannableStringBuilder;)V

    .line 713
    if-eqz p2, :cond_0

    .line 714
    sget v2, Lcom/android/settingslib/R$color;->disabled_text_color:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 715
    .local v0, "disabledColor":I
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    .line 716
    const/16 v5, 0x21

    .line 715
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 717
    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtils;->getRestrictedPadlock(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v6, v6, v2, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 718
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 719
    sget v3, Lcom/android/settingslib/R$dimen;->restricted_icon_padding:I

    .line 718
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 723
    .end local v0    # "disabledColor":I
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    return-void

    .line 721
    :cond_0
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static setTextViewPadlock(Landroid/content/Context;Landroid/widget/TextView;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "showPadlock"    # Z

    .prologue
    .line 695
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 696
    .local v1, "sb":Landroid/text/SpannableStringBuilder;
    invoke-static {v1}, Lcom/android/settingslib/RestrictedLockUtils;->removeExistingRestrictedSpans(Landroid/text/SpannableStringBuilder;)V

    .line 697
    if-eqz p2, :cond_0

    .line 698
    new-instance v0, Lcom/android/settingslib/RestrictedLockImageSpan;

    invoke-direct {v0, p0}, Lcom/android/settingslib/RestrictedLockImageSpan;-><init>(Landroid/content/Context;)V

    .line 699
    .local v0, "image":Landroid/text/style/ImageSpan;
    const-string/jumbo v2, " "

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 701
    .end local v0    # "image":Landroid/text/style/ImageSpan;
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    return-void
.end method
