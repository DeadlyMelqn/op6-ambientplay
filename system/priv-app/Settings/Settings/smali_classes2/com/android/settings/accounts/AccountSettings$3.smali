.class Lcom/android/settings/accounts/AccountSettings$3;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountSettings;->newAddOneplusAccountPreference(Landroid/content/Context;)Landroid/support/v7/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/accounts/AccountSettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSettings$3;->this$0:Lcom/android/settings/accounts/AccountSettings;

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 8
    .param p1, "arg0"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v3, 0x0

    .line 414
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$3;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v1}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.oneplus.account"

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$3;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v1}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 419
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 420
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "come_from"

    const-string/jumbo v2, "from_settings"

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string/jumbo v1, "com.oneplus.account"

    const-string/jumbo v2, ""

    iget-object v5, p0, Lcom/android/settings/accounts/AccountSettings$3;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v5}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 423
    .end local v0    # "accountManager":Landroid/accounts/AccountManager;
    .end local v4    # "bundle":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
