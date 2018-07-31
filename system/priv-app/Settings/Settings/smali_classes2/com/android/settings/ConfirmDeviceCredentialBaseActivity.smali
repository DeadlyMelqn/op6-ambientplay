.class public abstract Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;
.super Lcom/android/settings/SettingsActivity;
.source "ConfirmDeviceCredentialBaseActivity.java"


# static fields
.field private static final STATE_IS_KEYGUARD_LOCKED:Ljava/lang/String; = "STATE_IS_KEYGUARD_LOCKED"


# instance fields
.field private mDark:Z

.field private mEnterAnimationPending:Z

.field private mFirstTimeVisible:Z

.field private mIsKeyguardLocked:Z

.field private mRestoring:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    .line 26
    return-void
.end method

.method private getFragment()Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a032b

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 100
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;

    if-eqz v1, :cond_0

    .line 101
    check-cast v0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    return-object v0

    .line 103
    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_0
    return-object v3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v2

    .line 38
    invoke-static {p0, v2}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;I)I

    move-result v0

    .line 40
    .local v0, "credentialOwnerUserId":I
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 41
    const v2, 0x7f100451

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->setTheme(I)V

    .line 47
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v5, 0x2000

    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    .line 51
    if-nez p1, :cond_4

    .line 52
    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    .line 51
    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    .line 59
    iget-boolean v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 60
    const-string/jumbo v5, "com.android.settings.ConfirmCredentials.showWhenLocked"

    .line 59
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v5, 0x80000

    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 64
    const-string/jumbo v5, "com.android.settings.ConfirmCredentials.title"

    .line 63
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 70
    :cond_2
    if-eqz p1, :cond_5

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    .line 71
    return-void

    .line 42
    .end local v1    # "msg":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 43
    const-string/jumbo v5, "com.android.settings.ConfirmCredentials.darkTheme"

    .line 42
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    const v2, 0x7f100450

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->setTheme(I)V

    .line 45
    iput-boolean v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mDark:Z

    goto :goto_0

    .line 53
    :cond_4
    const-string/jumbo v2, "STATE_IS_KEYGUARD_LOCKED"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_1

    .restart local v1    # "msg":Ljava/lang/CharSequence;
    :cond_5
    move v2, v4

    .line 70
    goto :goto_2
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onEnterAnimationComplete()V

    .line 109
    iget-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->startEnterAnimation()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    .line 113
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->finish()V

    .line 83
    const/4 v0, 0x1

    return v0

    .line 85
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onResume()V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mDark:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->prepareEnterAnimation()V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    .line 96
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 76
    const-string/jumbo v0, "STATE_IS_KEYGUARD_LOCKED"

    iget-boolean v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getFragment()Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    .line 117
    return-void
.end method

.method public startEnterAnimation()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getFragment()Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    .line 121
    return-void
.end method
