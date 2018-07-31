.class public Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;
.super Ljava/lang/Object;
.source "EnterprisePrivacyFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$EnterprisePrivacySpan;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private final mCm:Lcom/android/settings/vpn2/ConnectivityManagerWrapper;

.field private final mContext:Landroid/content/Context;

.field private final mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

.field private final mPm:Lcom/android/settings/applications/PackageManagerWrapper;

.field private final mResources:Landroid/content/res/Resources;

.field private final mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;Lcom/android/settings/applications/PackageManagerWrapper;Landroid/os/UserManager;Lcom/android/settings/vpn2/ConnectivityManagerWrapper;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dpm"    # Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;
    .param p3, "pm"    # Lcom/android/settings/applications/PackageManagerWrapper;
    .param p4, "um"    # Landroid/os/UserManager;
    .param p5, "cm"    # Lcom/android/settings/vpn2/ConnectivityManagerWrapper;
    .param p6, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    .line 56
    iput-object p3, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    .line 57
    iput-object p4, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    .line 58
    iput-object p5, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mCm:Lcom/android/settings/vpn2/ConnectivityManagerWrapper;

    .line 59
    iput-object p6, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mResources:Landroid/content/res/Resources;

    .line 60
    return-void
.end method

.method private getManagedProfileUserId()I
    .locals 4

    .prologue
    .line 71
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    sget v3, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 72
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    return v2

    .line 76
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    const/16 v2, -0x2710

    return v2
.end method


# virtual methods
.method public getDeviceOwnerDisclosure()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->hasDeviceOwner()Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    return-object v3

    .line 100
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 101
    .local v0, "disclosure":Landroid/text/SpannableStringBuilder;
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    invoke-interface {v2}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 102
    .local v1, "organizationName":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 103
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mResources:Landroid/content/res/Resources;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 104
    aput-object v1, v3, v5

    .line 103
    const v4, 0x7f0f1298

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 108
    :goto_0
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0f1299

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 109
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0f129a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 110
    new-instance v3, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$EnterprisePrivacySpan;

    iget-object v4, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$EnterprisePrivacySpan;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {v0, v2, v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 111
    return-object v0

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0f1297

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method public getDeviceOwnerOrganizationName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    invoke-interface {v1}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 87
    .local v0, "organizationName":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 88
    return-object v2

    .line 90
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getImeLabelIfOwnerSet()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 183
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    invoke-interface {v2}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->isCurrentInputMethodSetByOwner()Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    return-object v5

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 187
    const-string/jumbo v3, "default_input_method"

    sget v4, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    .line 186
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 189
    return-object v5

    .line 192
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    sget v3, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4, v3}, Lcom/android/settings/applications/PackageManagerWrapper;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 193
    iget-object v3, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-interface {v3}, Lcom/android/settings/applications/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 192
    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v5
.end method

.method public getLastBugReportRequestTime()Ljava/util/Date;
    .locals 4

    .prologue
    .line 122
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    invoke-interface {v2}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getLastBugReportRequestTime()J

    move-result-wide v0

    .line 123
    .local v0, "timestamp":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public getLastNetworkLogRetrievalTime()Ljava/util/Date;
    .locals 4

    .prologue
    .line 128
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    invoke-interface {v2}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getLastNetworkLogRetrievalTime()J

    move-result-wide v0

    .line 129
    .local v0, "timestamp":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public getLastSecurityLogRetrievalTime()Ljava/util/Date;
    .locals 4

    .prologue
    .line 116
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    invoke-interface {v2}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getLastSecurityLogRetrievalTime()J

    move-result-wide v0

    .line 117
    .local v0, "timestamp":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public getMaximumFailedPasswordsBeforeWipeInCurrentUser()I
    .locals 3

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    sget v2, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-interface {v1, v2}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 162
    .local v0, "profileOwner":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 163
    const/4 v1, 0x0

    return v1

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    sget v2, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-interface {v1, v0, v2}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v1

    return v1
.end method

.method public getMaximumFailedPasswordsBeforeWipeInManagedProfile()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 170
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->getManagedProfileUserId()I

    move-result v1

    .line 171
    .local v1, "userId":I
    const/16 v2, -0x2710

    if-ne v1, v2, :cond_0

    .line 172
    return v3

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    invoke-interface {v2, v1}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 175
    .local v0, "profileOwner":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 176
    return v3

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    invoke-interface {v2, v0, v1}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v2

    return v2
.end method

.method public getNumberOfActiveDeviceAdminsForCurrentUserAndManagedProfile()I
    .locals 6

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "activeAdmins":I
    iget-object v4, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    sget v5, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 221
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v4, v5}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v1

    .line 222
    .local v1, "activeAdminsForUser":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v1, :cond_0

    .line 223
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 226
    .end local v1    # "activeAdminsForUser":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    return v0
.end method

.method public getNumberOfOwnerInstalledCaCertsForCurrentUserAndManagedProfile()I
    .locals 6

    .prologue
    .line 201
    const/4 v1, 0x0

    .line 202
    .local v1, "num":I
    iget-object v3, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    new-instance v4, Landroid/os/UserHandle;

    sget v5, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v3, v4}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 203
    .local v0, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, 0x0

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->getManagedProfileUserId()I

    move-result v2

    .line 207
    .local v2, "userId":I
    const/16 v3, -0x2710

    if-eq v2, v3, :cond_1

    .line 208
    iget-object v3, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v3, v4}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_1

    .line 210
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 213
    :cond_1
    return v1
.end method

.method public hasDeviceOwner()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 64
    iget-object v1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    const-string/jumbo v2, "android.software.device_admin"

    invoke-interface {v1, v2}, Lcom/android/settings/applications/PackageManagerWrapper;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    return v0

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    invoke-interface {v1}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isAlwaysOnVpnSetInCurrentUser()Z
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mCm:Lcom/android/settings/vpn2/ConnectivityManagerWrapper;

    sget v1, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-static {v0, v1}, Lcom/android/settings/vpn2/VpnUtils;->isAlwaysOnVpnSet(Lcom/android/settings/vpn2/ConnectivityManagerWrapper;I)Z

    move-result v0

    return v0
.end method

.method public isAlwaysOnVpnSetInManagedProfile()Z
    .locals 2

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->getManagedProfileUserId()I

    move-result v0

    .line 150
    .local v0, "managedProfileUserId":I
    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mCm:Lcom/android/settings/vpn2/ConnectivityManagerWrapper;

    invoke-static {v1, v0}, Lcom/android/settings/vpn2/VpnUtils;->isAlwaysOnVpnSet(Lcom/android/settings/vpn2/ConnectivityManagerWrapper;I)Z

    move-result v1

    .line 150
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGlobalHttpProxySet()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mCm:Lcom/android/settings/vpn2/ConnectivityManagerWrapper;

    invoke-interface {v0}, Lcom/android/settings/vpn2/ConnectivityManagerWrapper;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInCompMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->hasDeviceOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->getManagedProfileUserId()I

    move-result v1

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isNetworkLoggingEnabled()Z
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isSecurityLoggingEnabled()Z
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method
