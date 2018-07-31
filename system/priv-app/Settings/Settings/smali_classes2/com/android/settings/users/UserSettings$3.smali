.class Lcom/android/settings/users/UserSettings$3;
.super Landroid/telephony/PhoneStateListener;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/users/UserSettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$3;->this$0:Lcom/android/settings/users/UserSettings;

    .line 279
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 285
    iget-object v2, p0, Lcom/android/settings/users/UserSettings$3;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v2}, Lcom/android/settings/users/UserSettings;->-get7(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v0

    .line 286
    .local v0, "canSwitchUsers":Z
    iget-object v2, p0, Lcom/android/settings/users/UserSettings$3;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v2}, Lcom/android/settings/users/UserSettings;->-get7(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v1

    .line 287
    .local v1, "moreUsers":Z
    iget-object v2, p0, Lcom/android/settings/users/UserSettings$3;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v2}, Lcom/android/settings/users/UserSettings;->-get0(Lcom/android/settings/users/UserSettings;)Lcom/android/settings/DimmableIconPreference;

    move-result-object v2

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/settings/users/UserSettings$3;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v3}, Lcom/android/settings/users/UserSettings;->-get2(Lcom/android/settings/users/UserSettings;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .end local v0    # "canSwitchUsers":Z
    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/settings/DimmableIconPreference;->setEnabled(Z)V

    .line 288
    return-void

    .line 287
    .restart local v0    # "canSwitchUsers":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
