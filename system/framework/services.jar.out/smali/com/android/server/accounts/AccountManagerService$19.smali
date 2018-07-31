.class Lcom/android/server/accounts/AccountManagerService$19;
.super Landroid/accounts/IAccountManagerResponse$Stub;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->getAccountByTypeAndFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$opPackageName:Ljava/lang/String;

.field final synthetic val$response:Landroid/accounts/IAccountManagerResponse;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$19;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$19;->val$response:Landroid/accounts/IAccountManagerResponse;

    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService$19;->val$opPackageName:Ljava/lang/String;

    .line 4569
    invoke-direct {p0}, Landroid/accounts/IAccountManagerResponse$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4586
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "value"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4573
    const-string/jumbo v3, "accounts"

    .line 4572
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 4574
    .local v2, "parcelables":[Landroid/os/Parcelable;
    array-length v3, v2

    new-array v0, v3, [Landroid/accounts/Account;

    .line 4575
    .local v0, "accounts":[Landroid/accounts/Account;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 4576
    aget-object v3, v2, v1

    check-cast v3, Landroid/accounts/Account;

    aput-object v3, v0, v1

    .line 4575
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4578
    :cond_0
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$19;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 4579
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$19;->val$response:Landroid/accounts/IAccountManagerResponse;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$19;->val$opPackageName:Ljava/lang/String;

    .line 4578
    invoke-static {v3, v4, v0, v5}, Lcom/android/server/accounts/AccountManagerService;->-wrap17(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V

    .line 4580
    return-void
.end method
