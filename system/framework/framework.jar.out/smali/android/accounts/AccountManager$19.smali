.class Landroid/accounts/AccountManager$19;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->postToHandler(Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$accountsCopy:[Landroid/accounts/Account;

.field final synthetic val$listener:Landroid/accounts/OnAccountsUpdateListener;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accounts/AccountManager;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/accounts/AccountManager$19;->this$0:Landroid/accounts/AccountManager;

    iput-object p2, p0, Landroid/accounts/AccountManager$19;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    iput-object p3, p0, Landroid/accounts/AccountManager$19;->val$accountsCopy:[Landroid/accounts/Account;

    .line 2216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 2219
    iget-object v4, p0, Landroid/accounts/AccountManager$19;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v4}, Landroid/accounts/AccountManager;->-get0(Landroid/accounts/AccountManager;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 2221
    :try_start_0
    iget-object v4, p0, Landroid/accounts/AccountManager$19;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v4}, Landroid/accounts/AccountManager;->-get0(Landroid/accounts/AccountManager;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v6, p0, Landroid/accounts/AccountManager$19;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2222
    iget-object v4, p0, Landroid/accounts/AccountManager$19;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v4}, Landroid/accounts/AccountManager;->-get1(Landroid/accounts/AccountManager;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v6, p0, Landroid/accounts/AccountManager$19;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 2223
    .local v3, "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_3

    .line 2225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2226
    .local v2, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    iget-object v6, p0, Landroid/accounts/AccountManager$19;->val$accountsCopy:[Landroid/accounts/Account;

    const/4 v4, 0x0

    array-length v7, v6

    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v0, v6, v4

    .line 2227
    .local v0, "account":Landroid/accounts/Account;
    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2228
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2226
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2231
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_1
    iget-object v6, p0, Landroid/accounts/AccountManager$19;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    .line 2232
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/accounts/Account;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/accounts/Account;

    .line 2231
    invoke-interface {v6, v4}, Landroid/accounts/OnAccountsUpdateListener;->onAccountsUpdated([Landroid/accounts/Account;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .end local v3    # "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    monitor-exit v5

    .line 2243
    return-void

    .line 2234
    .restart local v3    # "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    iget-object v4, p0, Landroid/accounts/AccountManager$19;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    iget-object v6, p0, Landroid/accounts/AccountManager$19;->val$accountsCopy:[Landroid/accounts/Account;

    invoke-interface {v4, v6}, Landroid/accounts/OnAccountsUpdateListener;->onAccountsUpdated([Landroid/accounts/Account;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2237
    .end local v3    # "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 2240
    .local v1, "e":Landroid/database/SQLException;
    :try_start_2
    const-string/jumbo v4, "AccountManager"

    const-string/jumbo v6, "Can\'t update accounts"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2219
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
