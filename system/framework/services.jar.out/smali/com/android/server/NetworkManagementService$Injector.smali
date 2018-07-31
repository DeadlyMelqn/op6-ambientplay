.class Lcom/android/server/NetworkManagementService$Injector;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Injector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    .line 2801
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2827
    iget-object v3, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->-get4(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2828
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/server/NetworkManagementService$Injector;->setDataSaverMode(Z)V

    .line 2830
    const/4 v4, 0x1

    .line 2831
    const/4 v5, 0x2

    .line 2832
    const/4 v6, 0x3

    .line 2829
    filled-new-array {v4, v5, v6}, [I

    move-result-object v1

    .line 2834
    .local v1, "chains":[I
    array-length v4, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget v0, v1, v2

    .line 2835
    .local v0, "chain":I
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5}, Lcom/android/server/NetworkManagementService$Injector;->setFirewallChainState(IZ)V

    .line 2836
    iget-object v5, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v5, v0}, Lcom/android/server/NetworkManagementService;->-wrap0(Lcom/android/server/NetworkManagementService;I)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 2834
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2838
    .end local v0    # "chain":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v2}, Lcom/android/server/NetworkManagementService;->-get5(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2839
    iget-object v2, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v2}, Lcom/android/server/NetworkManagementService;->-get6(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 2841
    return-void

    .line 2827
    .end local v1    # "chains":[I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method setDataSaverMode(Z)V
    .locals 1
    .param p1, "dataSaverMode"    # Z

    .prologue
    .line 2803
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->-set1(Lcom/android/server/NetworkManagementService;Z)Z

    .line 2804
    return-void
.end method

.method setFirewallChainState(IZ)V
    .locals 1
    .param p1, "chain"    # I
    .param p2, "state"    # Z

    .prologue
    .line 2807
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1, p2}, Lcom/android/server/NetworkManagementService;->-wrap14(Lcom/android/server/NetworkManagementService;IZ)V

    .line 2808
    return-void
.end method

.method setFirewallRule(III)V
    .locals 2
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .prologue
    .line 2811
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get4(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2812
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->-wrap0(Lcom/android/server/NetworkManagementService;I)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2814
    return-void

    .line 2811
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setUidOnMeteredNetworkList(ZIZ)V
    .locals 2
    .param p1, "blacklist"    # Z
    .param p2, "uid"    # I
    .param p3, "enable"    # Z

    .prologue
    .line 2817
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get4(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2818
    if-eqz p1, :cond_0

    .line 2819
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get6(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 2824
    return-void

    .line 2821
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get5(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2817
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
