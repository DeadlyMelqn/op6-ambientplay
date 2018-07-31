.class public Lcom/android/systemui/keyguard/WorkLockActivity;
.super Landroid/app/Activity;
.source "WorkLockActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/WorkLockActivity$1;
    }
.end annotation


# instance fields
.field private mKgm:Landroid/app/KeyguardManager;

.field private final mLockEventReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/keyguard/WorkLockActivity;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/keyguard/WorkLockActivity;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 122
    new-instance v0, Lcom/android/systemui/keyguard/WorkLockActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/WorkLockActivity$1;-><init>(Lcom/android/systemui/keyguard/WorkLockActivity;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mLockEventReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    return-void
.end method

.method private getChallengeOptions()Landroid/app/ActivityOptions;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    return-object v1

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 173
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v0, v3, v3, v1, v2}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v1

    return-object v1
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mKgm:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 178
    const-string/jumbo v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mKgm:Landroid/app/KeyguardManager;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mKgm:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private showConfirmCredentialActivity()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getTargetUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 136
    :cond_0
    return-void

    .line 139
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getTargetUserId()I

    move-result v5

    .line 139
    invoke-virtual {v4, v6, v6, v5}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    .line 141
    .local v0, "credential":Landroid/content/Intent;
    if-nez v0, :cond_2

    .line 142
    return-void

    .line 145
    :cond_2
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 146
    .local v2, "options":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getTaskId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 152
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 149
    const/4 v6, -0x1

    .line 150
    const/high16 v7, 0x54000000

    .line 149
    invoke-static {p0, v6, v4, v7, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 154
    .local v3, "target":Landroid/app/PendingIntent;
    const-string/jumbo v4, "android.intent.extra.INTENT"

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 156
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getChallengeOptions()Landroid/app/ActivityOptions;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 156
    invoke-interface {v4, v0, v5}, Landroid/app/IActivityManager;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WorkLockActivity"

    const-string/jumbo v5, "Failed to start confirm credential intent"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method final getPrimaryColor()I
    .locals 4

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "com.android.systemui.keyguard.extra.TASK_DESCRIPTION"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 192
    check-cast v1, Landroid/app/ActivityManager$TaskDescription;

    .line 194
    .local v1, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    .line 195
    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v2

    return v2

    .line 199
    :cond_0
    const-string/jumbo v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/WorkLockActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 198
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 200
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getTargetUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getOrganizationColorForUser(I)I

    move-result v2

    return v2
.end method

.method final getTargetUserId()I
    .locals 3

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    iget-object v1, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mLockEventReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 71
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.DEVICE_LOCKED_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v5, v4

    .line 70
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/keyguard/WorkLockActivity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getTargetUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->finish()V

    .line 78
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/WorkLockActivity;->setOverlayWithDecorCaptionEnabled(Z)V

    .line 86
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 87
    .local v6, "blankView":Landroid/view/View;
    const v0, 0x7f110068

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getPrimaryColor()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 89
    invoke-virtual {p0, v6}, Lcom/android/systemui/keyguard/WorkLockActivity;->setContentView(Landroid/view/View;)V

    .line 90
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mLockEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/WorkLockActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 109
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->showConfirmCredentialActivity()V

    .line 103
    :cond_0
    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 120
    return-void
.end method
