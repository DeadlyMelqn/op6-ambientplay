.class Landroid/accounts/AccountManager$21;
.super Landroid/accounts/AccountManager$AmsTask;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->startAddAccountSession(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$accountType:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$optionsIn:Landroid/os/Bundle;

.field final synthetic val$requiredFeatures:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accounts/AccountManager;
    .param p2, "this$0_1"    # Landroid/accounts/AccountManager;
    .param p3, "$anonymous0"    # Landroid/app/Activity;
    .param p4, "$anonymous1"    # Landroid/os/Handler;

    .prologue
    .line 1
    .local p5, "$anonymous2":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iput-object p2, p0, Landroid/accounts/AccountManager$21;->this$0:Landroid/accounts/AccountManager;

    iput-object p6, p0, Landroid/accounts/AccountManager$21;->val$accountType:Ljava/lang/String;

    iput-object p7, p0, Landroid/accounts/AccountManager$21;->val$authTokenType:Ljava/lang/String;

    iput-object p8, p0, Landroid/accounts/AccountManager$21;->val$requiredFeatures:[Ljava/lang/String;

    iput-object p9, p0, Landroid/accounts/AccountManager$21;->val$activity:Landroid/app/Activity;

    iput-object p10, p0, Landroid/accounts/AccountManager$21;->val$optionsIn:Landroid/os/Bundle;

    .line 3075
    invoke-direct {p0, p1, p3, p4, p5}, Landroid/accounts/AccountManager$AmsTask;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    .line 1
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3078
    iget-object v0, p0, Landroid/accounts/AccountManager$21;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v0}, Landroid/accounts/AccountManager;->-get4(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    move-result-object v0

    .line 3079
    iget-object v1, p0, Landroid/accounts/AccountManager$21;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 3080
    iget-object v2, p0, Landroid/accounts/AccountManager$21;->val$accountType:Ljava/lang/String;

    .line 3081
    iget-object v3, p0, Landroid/accounts/AccountManager$21;->val$authTokenType:Ljava/lang/String;

    .line 3082
    iget-object v4, p0, Landroid/accounts/AccountManager$21;->val$requiredFeatures:[Ljava/lang/String;

    .line 3083
    iget-object v5, p0, Landroid/accounts/AccountManager$21;->val$activity:Landroid/app/Activity;

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    .line 3084
    :goto_0
    iget-object v6, p0, Landroid/accounts/AccountManager$21;->val$optionsIn:Landroid/os/Bundle;

    .line 3078
    invoke-interface/range {v0 .. v6}, Landroid/accounts/IAccountManager;->startAddAccountSession(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 3085
    return-void

    .line 3083
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
