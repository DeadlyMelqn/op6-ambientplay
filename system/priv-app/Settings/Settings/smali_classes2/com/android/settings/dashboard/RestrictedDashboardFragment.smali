.class public abstract Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "RestrictedDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/RestrictedDashboardFragment$1;
    }
.end annotation


# static fields
.field private static final KEY_CHALLENGE_REQUESTED:Ljava/lang/String; = "chrq"

.field private static final KEY_CHALLENGE_SUCCEEDED:Ljava/lang/String; = "chsc"

.field private static final REQUEST_PIN_CHALLENGE:I = 0x3015

.field protected static final RESTRICT_IF_OVERRIDABLE:Ljava/lang/String; = "restrict_if_overridable"


# instance fields
.field private mAdminSupportDetails:Landroid/view/View;

.field private mChallengeRequested:Z

.field private mChallengeSucceeded:Z

.field private mEmptyTextView:Landroid/widget/TextView;

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mIsAdminUser:Z

.field private mOnlyAvailableForAdmins:Z

.field private final mRestrictionKey:Ljava/lang/String;

.field private mRestrictionsManager:Landroid/content/RestrictionsManager;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/dashboard/RestrictedDashboardFragment;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/dashboard/RestrictedDashboardFragment;

    .prologue
    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeRequested:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/dashboard/RestrictedDashboardFragment;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/dashboard/RestrictedDashboardFragment;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeRequested:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/dashboard/RestrictedDashboardFragment;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/dashboard/RestrictedDashboardFragment;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeSucceeded:Z

    return p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "restrictionKey"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mOnlyAvailableForAdmins:Z

    .line 80
    new-instance v0, Lcom/android/settings/dashboard/RestrictedDashboardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment$1;-><init>(Lcom/android/settings/dashboard/RestrictedDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    iput-object p1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionKey:Ljava/lang/String;

    .line 98
    return-void
.end method

.method private ensurePin()V
    .locals 5

    .prologue
    .line 166
    iget-boolean v2, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeSucceeded:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeRequested:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    invoke-virtual {v2}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v2

    .line 166
    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    invoke-virtual {v2}, Landroid/content/RestrictionsManager;->createLocalApprovalIntent()Landroid/content/Intent;

    move-result-object v0

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 170
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeRequested:Z

    .line 171
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeSucceeded:Z

    .line 172
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 173
    .local v1, "request":Landroid/os/PersistableBundle;
    const-string/jumbo v2, "android.request.mesg"

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0ff7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string/jumbo v2, "android.content.extra.REQUEST_BUNDLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 176
    const/16 v2, 0x3015

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 179
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "request":Landroid/os/PersistableBundle;
    :cond_0
    return-void
.end method

.method private initAdminSupportDetailsView()Landroid/view/View;
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a00a9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getEmptyTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEmptyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRestrictionEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 219
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 221
    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget v0, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v0
.end method

.method protected hasChallengeSucceeded()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeRequested:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeSucceeded:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeRequested:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected initEmptyTextView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 215
    .local v0, "emptyView":Landroid/widget/TextView;
    return-object v0
.end method

.method protected isRestrictedAndNotProviderProtected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 186
    iget-object v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "restrict_if_overridable"

    iget-object v2, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    :cond_0
    return v0

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 189
    :cond_2
    return v0
.end method

.method protected isUiRestricted()Z
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isRestrictedAndNotProviderProtected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->hasChallengeSucceeded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 254
    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mIsAdminUser:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mOnlyAvailableForAdmins:Z

    .line 253
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 254
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isUiRestrictedByOnlyAdmin()Z
    .locals 3

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionKey:Ljava/lang/String;

    .line 259
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 259
    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mIsAdminUser:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mOnlyAvailableForAdmins:Z

    xor-int/lit8 v0, v0, 0x1

    .line 258
    :goto_0
    return v0

    .line 259
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 258
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 121
    invoke-direct {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->initAdminSupportDetailsView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mAdminSupportDetails:Landroid/view/View;

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->initEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEmptyTextView:Landroid/widget/TextView;

    .line 123
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 152
    const/16 v0, 0x3015

    if-ne p1, v0, :cond_1

    .line 153
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeSucceeded:Z

    .line 155
    iput-boolean v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeRequested:Z

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeSucceeded:Z

    goto :goto_0

    .line 162
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 163
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const-string/jumbo v1, "restrictions"

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/RestrictionsManager;

    iput-object v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    .line 105
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mUserManager:Landroid/os/UserManager;

    .line 106
    iget-object v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mIsAdminUser:Z

    .line 108
    if-eqz p1, :cond_0

    .line 109
    const-string/jumbo v1, "chsc"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeSucceeded:Z

    .line 110
    const-string/jumbo v1, "chrq"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeRequested:Z

    .line 113
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "offFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    return-void
.end method

.method protected onDataSetChanged()V
    .locals 4

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->highlightPreferenceIfNeeded()V

    .line 234
    iget-object v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mAdminSupportDetails:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getRestrictionEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 236
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 237
    iget-object v2, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mAdminSupportDetails:Landroid/view/View;

    const/4 v3, 0x0

    .line 236
    invoke-static {v1, v2, v0, v3}, Lcom/android/settings/ShowAdminSupportDetailsDialog;->setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Z)V

    .line 238
    iget-object v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mAdminSupportDetails:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->setEmptyView(Landroid/view/View;)V

    .line 242
    .end local v0    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDataSetChanged()V

    .line 243
    return-void

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEmptyTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 147
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    .line 148
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 139
    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->shouldBeProviderProtected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->ensurePin()V

    .line 142
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-string/jumbo v0, "chrq"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeRequested:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    const-string/jumbo v0, "chsc"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeSucceeded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    :cond_0
    return-void
.end method

.method public setIfOnlyAvailableForAdmins(Z)V
    .locals 0
    .param p1, "onlyForAdmins"    # Z

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mOnlyAvailableForAdmins:Z

    .line 247
    return-void
.end method

.method protected shouldBeProviderProtected(Ljava/lang/String;)Z
    .locals 4
    .param p1, "restrictionKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 201
    if-nez p1, :cond_0

    .line 202
    return v1

    .line 204
    :cond_0
    const-string/jumbo v2, "restrict_if_overridable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 205
    iget-object v2, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    .line 206
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    invoke-virtual {v1}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v1

    :cond_1
    return v1

    .line 204
    :cond_2
    const/4 v0, 0x1

    .local v0, "restricted":Z
    goto :goto_0
.end method
