.class Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MasterSyncStateClickListener"
.end annotation


# instance fields
.field private final mUserHandle:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/settings/accounts/AccountSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/accounts/AccountSettings;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/accounts/AccountSettings;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 724
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    iput-object p2, p0, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;->mUserHandle:Landroid/os/UserHandle;

    .line 726
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 730
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    const-string/jumbo v0, "AccountSettings"

    const-string/jumbo v1, "ignoring monkey\'s attempt to flip sync state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 734
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;->mUserHandle:Landroid/os/UserHandle;

    .line 733
    invoke-static {v0, v1, v2}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->show(Lcom/android/settings/accounts/AccountSettings;ZLandroid/os/UserHandle;)V

    goto :goto_0
.end method
