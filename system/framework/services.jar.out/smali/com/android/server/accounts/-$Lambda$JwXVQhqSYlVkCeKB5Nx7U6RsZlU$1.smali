.class final synthetic Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$1;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    iget-object v1, p0, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$1;->-$f2:Ljava/lang/Object;

    check-cast v1, Landroid/accounts/Account;

    iget v2, p0, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$1;->-$f0:I

    invoke-static {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->lambda$-com_android_server_accounts_AccountManagerService_256573(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$1;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/accounts/AccountManagerService;

    iget-object v1, p0, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$1;->-$f2:Ljava/lang/Object;

    check-cast v1, Landroid/accounts/Account;

    iget v2, p0, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$1;->-$f0:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->lambda$-com_android_server_accounts_AccountManagerService_106518(Landroid/accounts/Account;I)V

    return-void
.end method

.method private final synthetic $m$2()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$1;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    iget-object v1, p0, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$1;->-$f2:Ljava/lang/Object;

    check-cast v1, Landroid/accounts/Account;

    iget v2, p0, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$1;->-$f0:I

    invoke-static {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->lambda$-com_android_server_accounts_AccountManagerService_258400(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V

    return-void
.end method

.method public synthetic constructor <init>(BILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$1;->$id:B

    iput p2, p0, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$1;->-$f0:I

    iput-object p3, p0, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$1;->-$f1:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$1;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$1;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$1;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$1;->$m$1()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$1;->$m$2()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
