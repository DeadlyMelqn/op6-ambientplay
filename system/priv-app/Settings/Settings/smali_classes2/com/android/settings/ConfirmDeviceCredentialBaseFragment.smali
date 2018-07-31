.class public abstract Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;
.super Lcom/android/settings/OptionsMenuFragment;
.source "ConfirmDeviceCredentialBaseFragment.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$1;
    }
.end annotation


# static fields
.field public static final ALLOW_FP_AUTHENTICATION:Ljava/lang/String; = "com.android.settings.ConfirmCredentials.allowFpAuthentication"

.field public static final DARK_THEME:Ljava/lang/String; = "com.android.settings.ConfirmCredentials.darkTheme"

.field public static final DETAILS_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmCredentials.details"

.field public static final HEADER_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmCredentials.header"

.field public static final PACKAGE:Ljava/lang/String; = "com.android.settings"

.field public static final SHOW_CANCEL_BUTTON:Ljava/lang/String; = "com.android.settings.ConfirmCredentials.showCancelButton"

.field public static final SHOW_WHEN_LOCKED:Ljava/lang/String; = "com.android.settings.ConfirmCredentials.showWhenLocked"

.field public static final TITLE_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmCredentials.title"


# instance fields
.field private mAllowFpAuthentication:Z

.field protected mCancelButton:Landroid/widget/Button;

.field protected mEffectiveUserId:I

.field protected mErrorTextView:Landroid/widget/TextView;

.field private mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

.field protected mFingerprintIcon:Landroid/widget/ImageView;

.field protected mFrp:Z

.field private mFrpAlternateButtonText:Ljava/lang/CharSequence;

.field protected final mHandler:Landroid/os/Handler;

.field protected mIsStrongAuthRequired:Z

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mResetErrorRunnable:Ljava/lang/Runnable;

.field protected mReturnCredentials:Z

.field protected mUserId:I

.field protected mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/OptionsMenuFragment;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mHandler:Landroid/os/Handler;

    .line 344
    new-instance v0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$1;-><init>(Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    .line 57
    return-void
.end method

.method private isFingerprintAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 163
    iget-boolean v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    if-nez v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.android.settings.ConfirmCredentials.allowFpAuthentication"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 163
    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isStrongAuthRequired()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 163
    if-eqz v1, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isFingerprintDisabledByAdmin()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 163
    :cond_0
    return v0
.end method

.method private isFingerprintDisabledByAdmin()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 147
    const-string/jumbo v4, "device_policy"

    .line 146
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 148
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    .line 149
    .local v0, "disabledFeatures":I
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private setWorkChallengeBackground(Landroid/view/View;I)V
    .locals 8
    .param p1, "baseView"    # Landroid/view/View;
    .param p2, "userId"    # I

    .prologue
    const/4 v7, 0x0

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a032b

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 267
    .local v3, "mainContent":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 269
    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 273
    const-string/jumbo v6, "device_policy"

    .line 272
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 274
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManager;->getOrganizationColorForUser(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 275
    const v5, 0x7f0a010d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 276
    .local v2, "imageView":Landroid/widget/ImageView;
    if-eqz v2, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02047d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 279
    .local v1, "image":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c033b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 280
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    .line 278
    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 281
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 283
    .local v4, "screenSize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 284
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 286
    iget v6, v4, Landroid/graphics/Point;->y:I

    .line 285
    const/4 v7, -0x1

    .line 284
    invoke-direct {v5, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    .end local v1    # "image":Landroid/graphics/drawable/Drawable;
    .end local v4    # "screenSize":Landroid/graphics/Point;
    :cond_1
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "buttonString"    # I
    .param p4, "dismiss"    # Z

    .prologue
    .line 367
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 370
    new-instance v2, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$3;

    invoke-direct {v2, p0, p4}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$3;-><init>(Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;Z)V

    .line 367
    invoke-virtual {v1, p3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 379
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 380
    return-void
.end method


# virtual methods
.method protected abstract authenticationSucceeded()V
.end method

.method protected checkForPendingIntent()V
    .locals 12

    .prologue
    const/4 v3, -0x1

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "android.intent.extra.TASK_ID"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 243
    .local v11, "taskId":I
    if-eq v11, v3, :cond_0

    .line 245
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    .line 246
    .local v7, "activityManager":Landroid/app/IActivityManager;
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v10

    .line 247
    .local v10, "options":Landroid/app/ActivityOptions;
    const/4 v0, -0x1

    invoke-virtual {v10, v0}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    .line 248
    invoke-virtual {v10}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v7, v11, v0}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    return-void

    .line 250
    .end local v7    # "activityManager":Landroid/app/IActivityManager;
    .end local v10    # "options":Landroid/app/ActivityOptions;
    :catch_0
    move-exception v9

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 255
    const-string/jumbo v2, "android.intent.extra.INTENT"

    .line 254
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    .line 256
    .local v1, "intentSender":Landroid/content/IntentSender;
    if-eqz v1, :cond_1

    .line 258
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 263
    :cond_1
    :goto_0
    return-void

    .line 259
    :catch_1
    move-exception v8

    .local v8, "e":Landroid/content/IntentSender$SendIntentException;
    goto :goto_0
.end method

.method protected abstract getLastTryErrorMessage()I
.end method

.method protected isProfileChallenge()Z
    .locals 3

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 293
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 294
    const/4 v1, 0x0

    return v1

    .line 296
    :cond_0
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v1

    return v1
.end method

.method protected isStrongAuthRequired()Z
    .locals 2

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFingerprintAllowedForUser(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 157
    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAuthenticated()V
    .locals 3

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "trust"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    .line 222
    .local v0, "trustManager":Landroid/app/trust/TrustManager;
    iget v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->authenticationSucceeded()V

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->authenticationSucceeded()V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->checkForPendingIntent()V

    .line 227
    .end local v0    # "trustManager":Landroid/app/trust/TrustManager;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/OptionsMenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 91
    const-string/jumbo v3, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    .line 90
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFrpAlternateButtonText:Ljava/lang/CharSequence;

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 93
    const-string/jumbo v3, "com.android.settings.ConfirmCredentials.allowFpAuthentication"

    .line 92
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mAllowFpAuthentication:Z

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 95
    const-string/jumbo v3, "return_credentials"

    .line 94
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    .line 99
    iget v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    const/16 v3, -0x270f

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    .line 101
    iget-object v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    .line 102
    const-string/jumbo v1, "CredentialBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mEUI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isStrongAuthRequired()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mIsStrongAuthRequired:Z

    .line 107
    return-void
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 233
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Lcom/android/settings/OptionsMenuFragment;->onPause()V

    .line 211
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->isListening()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->stopListening()V

    .line 214
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Lcom/android/settings/OptionsMenuFragment;->onResume()V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->refreshLockScreen()V

    .line 173
    return-void
.end method

.method protected abstract onShowError()V
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 111
    invoke-super {p0, p1, p2}, Lcom/android/settings/OptionsMenuFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 112
    const v3, 0x7f0a010f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    .line 113
    const v3, 0x7f0a0110

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    .line 114
    new-instance v5, Lcom/android/settings/fingerprint/FingerprintUiHelper;

    .line 115
    iget-object v6, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    .line 116
    const v3, 0x7f0a0111

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget v7, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    .line 114
    invoke-direct {v5, v6, v3, p0, v7}, Lcom/android/settings/fingerprint/FingerprintUiHelper;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;I)V

    iput-object v5, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 118
    const-string/jumbo v5, "com.android.settings.ConfirmCredentials.showCancelButton"

    .line 117
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 120
    .local v2, "showCancelButton":Z
    iget-boolean v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFrpAlternateButtonText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v1, v3, 0x1

    .line 121
    :goto_0
    iget-object v5, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    if-nez v2, :cond_0

    if-eqz v1, :cond_4

    :cond_0
    move v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 123
    if-eqz v1, :cond_1

    .line 124
    iget-object v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFrpAlternateButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_1
    iget-object v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$2;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$2;-><init>(Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;Z)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 137
    invoke-static {v4, v5}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v4

    .line 135
    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;I)I

    move-result v0

    .line 140
    .local v0, "credentialOwnerUserId":I
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    invoke-direct {p0, p1, v0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->setWorkChallengeBackground(Landroid/view/View;I)V

    .line 143
    :cond_2
    return-void

    .line 120
    .end local v0    # "credentialOwnerUserId":I
    :cond_3
    const/4 v1, 0x0

    .local v1, "hasAlternateButton":Z
    goto :goto_0

    .line 122
    .end local v1    # "hasAlternateButton":Z
    :cond_4
    const/16 v3, 0x8

    goto :goto_1
.end method

.method public prepareEnterAnimation()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method protected refreshLockScreen()V
    .locals 4

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isFingerprintAllowed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    iget-object v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 180
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->startListening()V

    .line 189
    .end local v0    # "deadline":J
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isProfileChallenge()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    iget-object v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 191
    iget v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    .line 190
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->updateErrorMessage(I)V

    .line 193
    :cond_1
    return-void

    .line 185
    :cond_2
    iget-object v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->isListening()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->stopListening()V

    goto :goto_0
.end method

.method protected reportFailedAttempt()V
    .locals 2

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isProfileChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 312
    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->updateErrorMessage(I)V

    .line 314
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    .line 316
    :cond_0
    return-void
.end method

.method protected reportSuccessfullAttempt()V
    .locals 2

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isProfileChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 305
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    .line 307
    :cond_0
    return-void
.end method

.method protected setAccessibilityTitle(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "supplementalText"    # Ljava/lang/CharSequence;

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 196
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 198
    const-string/jumbo v3, "com.android.settings.ConfirmCredentials.title"

    .line 197
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 199
    .local v2, "titleText":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 200
    :cond_0
    return-void

    .line 203
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "accessibilityTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    .end local v0    # "accessibilityTitle":Ljava/lang/String;
    .end local v2    # "titleText":Ljava/lang/CharSequence;
    :cond_2
    return-void
.end method

.method protected showError(IJ)V
    .locals 2
    .param p1, "msg"    # I
    .param p2, "timeout"    # J

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->showError(Ljava/lang/CharSequence;J)V

    .line 364
    return-void
.end method

.method protected showError(Ljava/lang/CharSequence;J)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "timeout"    # J

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->onShowError()V

    .line 354
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 355
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 358
    :cond_0
    return-void
.end method

.method public startEnterAnimation()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method protected updateErrorMessage(I)V
    .locals 9
    .param p1, "numAttempts"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 320
    iget-object v4, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getMaximumFailedPasswordsForWipe(I)I

    move-result v0

    .line 321
    .local v0, "maxAttempts":I
    if-lez v0, :cond_1

    if-lez p1, :cond_1

    .line 322
    sub-int v2, v0, p1

    .line 323
    .local v2, "remainingAttempts":I
    if-ne v2, v8, :cond_2

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 326
    const v5, 0x7f0f0791

    .line 325
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getLastTryErrorMessage()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "message":Ljava/lang/String;
    const v4, 0x104000a

    invoke-direct {p0, v3, v1, v4, v7}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->showDialog(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 334
    .end local v1    # "message":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mErrorTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 336
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 335
    const v6, 0x7f0f0790

    invoke-virtual {v4, v6, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 337
    .restart local v1    # "message":Ljava/lang/String;
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->showError(Ljava/lang/CharSequence;J)V

    .line 340
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "remainingAttempts":I
    :cond_1
    return-void

    .line 329
    .restart local v2    # "remainingAttempts":I
    :cond_2
    if-gtz v2, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0f0795

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 332
    .restart local v1    # "message":Ljava/lang/String;
    const v4, 0x7f0f0796

    invoke-direct {p0, v6, v1, v4, v8}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->showDialog(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0
.end method
