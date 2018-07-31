.class Lcom/android/server/am/Uterus$3;
.super Lcom/oneplus/embryo/IEmbryoController$Stub;
.source "Uterus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Uterus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/Uterus;


# direct methods
.method constructor <init>(Lcom/android/server/am/Uterus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/Uterus;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    .line 749
    invoke-direct {p0}, Lcom/oneplus/embryo/IEmbryoController$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public notifyPreloadStatus(IZ)V
    .locals 5
    .param p1, "pid"    # I
    .param p2, "complete"    # Z

    .prologue
    .line 752
    const-string/jumbo v2, "Embryo_Uterus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get preload status from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", success="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v0, 0x0

    .line 754
    .local v0, "newbie":Lcom/android/server/am/Embryo;
    iget-object v2, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v2}, Lcom/android/server/am/Uterus;->-get8(Lcom/android/server/am/Uterus;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 755
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v2}, Lcom/android/server/am/Uterus;->-get8(Lcom/android/server/am/Uterus;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "newbie":Lcom/android/server/am/Embryo;
    check-cast v0, Lcom/android/server/am/Embryo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "newbie":Lcom/android/server/am/Embryo;
    monitor-exit v3

    .line 757
    if-nez v0, :cond_0

    .line 758
    return-void

    .line 754
    .end local v0    # "newbie":Lcom/android/server/am/Embryo;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 760
    .restart local v0    # "newbie":Lcom/android/server/am/Embryo;
    :cond_0
    if-nez p2, :cond_1

    .line 761
    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->destroy()V

    .line 762
    return-void

    .line 765
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->getUid()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/Uterus;->findSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v1

    .line 766
    .local v1, "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    if-nez v1, :cond_2

    .line 767
    return-void

    .line 769
    :cond_2
    monitor-enter v1

    .line 770
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/android/server/am/EmbryoSupervisor;->attach(Lcom/android/server/am/Embryo;)V

    .line 771
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/EmbryoSupervisor;->setWaitingForFork(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    .line 774
    iget-object v2, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v2}, Lcom/android/server/am/Uterus;->-get6(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 775
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v2}, Lcom/android/server/am/Uterus;->-get6(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 776
    iget-object v2, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v2}, Lcom/android/server/am/Uterus;->-get6(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    monitor-exit v3

    .line 778
    return-void

    .line 769
    :catchall_1
    move-exception v2

    monitor-exit v1

    throw v2

    .line 774
    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2
.end method
