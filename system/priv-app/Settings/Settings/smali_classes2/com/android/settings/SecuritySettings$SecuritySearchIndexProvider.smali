.class Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecuritySearchIndexProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1185
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;)V
    .locals 0
    .param p1, "-this0"    # Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;-><init>()V

    return-void
.end method

.method private getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlResId"    # I

    .prologue
    .line 1245
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1246
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    iput p2, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1247
    return-object v0
.end method

.method private isPasswordManaged(ILandroid/content/Context;Landroid/app/admin/DevicePolicyManager;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "dpm"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    const/4 v1, 0x0

    .line 1251
    invoke-static {p2, p1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 1253
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {p3, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v2

    .line 1254
    const/high16 v3, 0x80000

    .line 1253
    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1351
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1354
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 1355
    .local v3, "um":Landroid/os/UserManager;
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1356
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 1357
    :cond_0
    const-string/jumbo v4, "sim_lock"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1359
    :cond_1
    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1360
    const-string/jumbo v4, "oneplus_app_locker"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1361
    const-string/jumbo v4, "oneplus_quick_pay"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1364
    :cond_2
    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->isSurportFaceUnlock(Landroid/content/Context;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    .line 1365
    :cond_3
    const-string/jumbo v4, "oneplus_face_unlock"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1368
    :cond_4
    const-string/jumbo v4, "no_config_credentials"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1369
    const-string/jumbo v4, "credentials_management"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1373
    :cond_5
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1374
    const-string/jumbo v4, "trust_agent"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1375
    const-string/jumbo v4, "manage_trust_agents"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1377
    :cond_6
    const-string/jumbo v4, "toggle_install_applications"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1378
    return-object v0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1259
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1260
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1263
    .local v7, "res":Landroid/content/res/Resources;
    const v12, 0x7f0f047a

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1266
    .local v10, "screenTitle":Ljava/lang/String;
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1267
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    iput-object v10, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1268
    iput-object v10, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1269
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1271
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v11

    .line 1272
    .local v11, "um":Landroid/os/UserManager;
    invoke-virtual {v11}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1273
    invoke-virtual {v11}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1274
    const v8, 0x7f0f06fe

    .line 1276
    .local v8, "resId":I
    :goto_0
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1277
    .restart local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1278
    iput-object v10, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1279
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1284
    .end local v8    # "resId":I
    :cond_0
    const-string/jumbo v12, "fingerprint"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    .line 1285
    .local v3, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1287
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1288
    .restart local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const v12, 0x7f0f0707

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1289
    iput-object v10, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1290
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1292
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1293
    .restart local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const v12, 0x7f0f0708

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1294
    iput-object v10, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1295
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1298
    :cond_1
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1299
    .local v5, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v6

    .line 1300
    .local v6, "profileUserId":I
    const/16 v12, -0x2710

    if-eq v6, v12, :cond_2

    .line 1301
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v12

    .line 1300
    if-eqz v12, :cond_2

    .line 1302
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v12

    .line 1303
    const/high16 v13, 0x10000

    .line 1302
    if-lt v12, v13, :cond_2

    .line 1304
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowedToUnify(I)Z

    move-result v12

    .line 1302
    if-eqz v12, :cond_2

    .line 1306
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1307
    .restart local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const v12, 0x7f0f0ae6

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1308
    iput-object v10, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1309
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1332
    :cond_2
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v12

    invoke-virtual {v5, v12}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1335
    const-class v12, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/admin/DevicePolicyManager;

    .line 1334
    invoke-static {p1, v5, v12}, Lcom/android/settings/SecuritySettings;->-wrap1(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1336
    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_4

    .line 1337
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    .line 1338
    .local v0, "agent":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1339
    .restart local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    iget-object v12, v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    iput-object v12, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1340
    iput-object v10, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1341
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1336
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1274
    .end local v0    # "agent":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v1    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .end local v3    # "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    .end local v4    # "i":I
    .end local v5    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v6    # "profileUserId":I
    :cond_3
    const v8, 0x7f0f06fc

    .restart local v8    # "resId":I
    goto/16 :goto_0

    .line 1344
    .end local v8    # "resId":I
    .restart local v3    # "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    .restart local v5    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v6    # "profileUserId":I
    :cond_4
    return-object v9
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v9, -0x2710

    .line 1190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1192
    .local v1, "index":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1194
    .local v2, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v8

    invoke-static {p1, v8}, Lcom/android/settings/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/ManagedLockPasswordProvider;

    move-result-object v3

    .line 1196
    .local v3, "managedPasswordProvider":Lcom/android/settings/ManagedLockPasswordProvider;
    const-string/jumbo v8, "device_policy"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1195
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1197
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    .line 1198
    .local v7, "um":Landroid/os/UserManager;
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v4

    .line 1202
    .local v4, "profileUserId":I
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v8

    invoke-direct {p0, v8, p1, v0}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->isPasswordManaged(ILandroid/content/Context;Landroid/app/admin/DevicePolicyManager;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1203
    if-eq v4, v9, :cond_0

    .line 1204
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v8

    .line 1203
    if-nez v8, :cond_0

    .line 1205
    invoke-direct {p0, v4, p1, v0}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->isPasswordManaged(ILandroid/content/Context;Landroid/app/admin/DevicePolicyManager;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .line 1202
    if-eqz v8, :cond_1

    .line 1208
    :cond_0
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v8

    .line 1207
    invoke-static {p1, v2, v3, v8}, Lcom/android/settings/SecuritySettings;->-wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I

    move-result v5

    .line 1209
    .local v5, "resId":I
    invoke-direct {p0, p1, v5}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1212
    .end local v5    # "resId":I
    :cond_1
    if-eq v4, v9, :cond_2

    .line 1213
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v8

    .line 1212
    if-eqz v8, :cond_2

    .line 1214
    invoke-direct {p0, v4, p1, v0}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->isPasswordManaged(ILandroid/content/Context;Landroid/app/admin/DevicePolicyManager;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .line 1212
    if-eqz v8, :cond_2

    .line 1215
    invoke-static {p1, v2, v3, v4}, Lcom/android/settings/SecuritySettings;->-wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I

    move-result v8

    invoke-direct {p0, p1, v8}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1219
    :cond_2
    invoke-virtual {v7}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1220
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1233
    :cond_3
    :goto_0
    :pswitch_0
    invoke-static {p1, v2, v3}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->-wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;)I

    move-result v8

    .line 1232
    invoke-direct {p0, p1, v8}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;

    move-result-object v6

    .line 1235
    .local v6, "sir":Landroid/provider/SearchIndexableResource;
    const-class v8, Lcom/android/settings/SecuritySettings$SecuritySubSettings;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 1236
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1239
    const v8, 0x7f08008f

    invoke-direct {p0, p1, v8}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1241
    return-object v1

    .line 1223
    .end local v6    # "sir":Landroid/provider/SearchIndexableResource;
    :pswitch_1
    const v8, 0x7f08008a

    invoke-direct {p0, p1, v8}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1227
    :pswitch_2
    const v8, 0x7f08009d

    invoke-direct {p0, p1, v8}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
