.class Lcom/android/settings/accounts/ManageAccountsSettings$1;
.super Landroid/os/Handler;
.source "ManageAccountsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/ManageAccountsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ManageAccountsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ManageAccountsSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/accounts/ManageAccountsSettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    .line 376
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 379
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 381
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/AccountPreference;

    .line 382
    .local v0, "accountPref":Lcom/android/settings/AccountPreference;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 383
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "status"

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 384
    .local v3, "status":I
    const-string/jumbo v6, "updateSummary"

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 385
    .local v5, "updateSummary":Z
    invoke-virtual {v0, v3, v5}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    .line 386
    const-string/jumbo v6, "summary"

    const-string/jumbo v7, ""

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 387
    .local v4, "timeString":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 388
    invoke-virtual {v0, v4}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 392
    .end local v0    # "accountPref":Lcom/android/settings/AccountPreference;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "status":I
    .end local v4    # "timeString":Ljava/lang/String;
    .end local v5    # "updateSummary":Z
    :pswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 393
    .local v1, "anySyncFailed":Z
    iget-object v6, p0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-static {v6}, Lcom/android/settings/accounts/ManageAccountsSettings;->-get0(Lcom/android/settings/accounts/ManageAccountsSettings;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v1, :cond_1

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v6, 0x8

    goto :goto_1

    .line 379
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
