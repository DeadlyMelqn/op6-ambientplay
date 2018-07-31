.class public Lcom/android/settings/ConfirmDeviceCredentialActivity;
.super Landroid/app/Activity;
.source "ConfirmDeviceCredentialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmDeviceCredentialActivity$InternalActivity;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/settings/ConfirmDeviceCredentialActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static createIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 3
    .param p0, "title"    # Ljava/lang/CharSequence;
    .param p1, "details"    # Ljava/lang/CharSequence;

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    .line 44
    const-class v2, Lcom/android/settings/ConfirmDeviceCredentialActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string/jumbo v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 46
    const-string/jumbo v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 47
    return-object v0
.end method

.method public static createIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Landroid/content/Intent;
    .locals 4
    .param p0, "title"    # Ljava/lang/CharSequence;
    .param p1, "details"    # Ljava/lang/CharSequence;
    .param p2, "challenge"    # J

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    .line 53
    const-class v2, Lcom/android/settings/ConfirmDeviceCredentialActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string/jumbo v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 55
    const-string/jumbo v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 56
    const-string/jumbo v1, "challenge"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 57
    const-string/jumbo v1, "has_challenge"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    return-object v0
.end method

.method private getTitleFromOrganizationName(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 117
    const-string/jumbo v3, "device_policy"

    .line 116
    invoke-virtual {p0, v3}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 118
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 120
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2

    .line 119
    :cond_1
    const/4 v1, 0x0

    .local v1, "organizationNameForUser":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private isInternalActivity()Z
    .locals 1

    .prologue
    .line 112
    instance-of v0, p0, Lcom/android/settings/ConfirmDeviceCredentialActivity$InternalActivity;

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 66
    .local v13, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.app.extra.TITLE"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "title":Ljava/lang/String;
    const-string/jumbo v3, "android.app.extra.DESCRIPTION"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "details":Ljava/lang/String;
    const-string/jumbo v3, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    .line 68
    invoke-virtual {v13, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 70
    .local v11, "alternateButton":Ljava/lang/String;
    const-string/jumbo v3, "android.app.action.CONFIRM_FRP_CREDENTIAL"

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 71
    .local v12, "frp":Z
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;)I

    move-result v10

    .line 72
    .local v10, "userId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    :try_start_0
    invoke-virtual {v13}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 79
    :cond_0
    :goto_0
    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-static {v3, v10}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v14

    .line 82
    .local v14, "isManagedProfile":Z
    if-nez v5, :cond_1

    if-eqz v14, :cond_1

    .line 83
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->getTitleFromOrganizationName(I)Ljava/lang/String;

    move-result-object v5

    .line 85
    :cond_1
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 86
    .local v2, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    new-instance v16, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 91
    .local v16, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    if-eqz v12, :cond_3

    .line 92
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5, v6, v11}, Lcom/android/settings/ChooseLockSettingsHelper;->launchFrpConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    .line 104
    .local v15, "launched":Z
    :goto_1
    if-nez v15, :cond_2

    .line 105
    sget-object v3, Lcom/android/settings/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "No pattern, password or PIN set."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->setResult(I)V

    .line 108
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->finish()V

    .line 109
    return-void

    .line 75
    .end local v2    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    .end local v14    # "isManagedProfile":Z
    .end local v15    # "launched":Z
    .end local v16    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :catch_0
    move-exception v17

    .line 76
    .local v17, "se":Ljava/lang/SecurityException;
    sget-object v3, Lcom/android/settings/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Invalid intent extra"

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 93
    .end local v17    # "se":Ljava/lang/SecurityException;
    .restart local v2    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    .restart local v14    # "isManagedProfile":Z
    .restart local v16    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_3
    if-eqz v14, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 94
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 93
    if-eqz v3, :cond_4

    .line 98
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 99
    const-wide/16 v8, 0x0

    .line 97
    invoke-virtual/range {v2 .. v10}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivityWithExternalAndChallenge(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZJI)Z

    move-result v15

    .restart local v15    # "launched":Z
    goto :goto_1

    .line 101
    .end local v15    # "launched":Z
    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 102
    const/4 v7, 0x0

    const/4 v8, 0x1

    move v9, v10

    .line 101
    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZI)Z

    move-result v15

    .restart local v15    # "launched":Z
    goto :goto_1
.end method
