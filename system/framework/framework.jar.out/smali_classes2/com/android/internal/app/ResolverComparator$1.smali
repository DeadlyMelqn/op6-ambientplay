.class Lcom/android/internal/app/ResolverComparator$1;
.super Landroid/os/Handler;
.source "ResolverComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverComparator;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverComparator;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverComparator;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    .line 113
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 115
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 159
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 120
    :pswitch_0
    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v5}, Lcom/android/internal/app/ResolverComparator;->-get1(Lcom/android/internal/app/ResolverComparator;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_5

    .line 123
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .line 124
    .local v3, "receivedTargets":Ljava/util/List;, "Ljava/util/List<Landroid/service/resolver/ResolverTarget;>;"
    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v5}, Lcom/android/internal/app/ResolverComparator;->-get4(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 125
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v6}, Lcom/android/internal/app/ResolverComparator;->-get4(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 126
    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v5}, Lcom/android/internal/app/ResolverComparator;->-get4(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 127
    .local v4, "size":I
    const/4 v1, 0x0

    .line 128
    .local v1, "isUpdated":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 130
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v5}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v2

    .line 131
    .local v2, "predictedProb":F
    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v5}, Lcom/android/internal/app/ResolverComparator;->-get4(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v5}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v5

    cmpl-float v5, v2, v5

    if-eqz v5, :cond_1

    .line 132
    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v5}, Lcom/android/internal/app/ResolverComparator;->-get4(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v5, v2}, Landroid/service/resolver/ResolverTarget;->setSelectProbability(F)V

    .line 133
    const/4 v1, 0x1

    .line 128
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    .end local v2    # "predictedProb":F
    :cond_2
    if-eqz v1, :cond_3

    .line 137
    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    iget-object v6, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v6}, Lcom/android/internal/app/ResolverComparator;->-get3(Lcom/android/internal/app/ResolverComparator;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/app/ResolverComparator;->-set1(Lcom/android/internal/app/ResolverComparator;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 145
    .end local v0    # "i":I
    .end local v1    # "isUpdated":Z
    .end local v3    # "receivedTargets":Ljava/util/List;, "Ljava/util/List<Landroid/service/resolver/ResolverTarget;>;"
    .end local v4    # "size":I
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v5}, Lcom/android/internal/app/ResolverComparator;->-get1(Lcom/android/internal/app/ResolverComparator;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 146
    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v5}, Lcom/android/internal/app/ResolverComparator;->-get0(Lcom/android/internal/app/ResolverComparator;)Lcom/android/internal/app/ResolverComparator$AfterCompute;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/app/ResolverComparator$AfterCompute;->afterCompute()V

    goto/16 :goto_0

    .line 140
    .restart local v3    # "receivedTargets":Ljava/util/List;, "Ljava/util/List<Landroid/service/resolver/ResolverTarget;>;"
    :cond_4
    const-string/jumbo v5, "ResolverComparator"

    const-string/jumbo v6, "Sizes of sent and received ResolverTargets diff."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 143
    .end local v3    # "receivedTargets":Ljava/util/List;, "Ljava/util/List<Landroid/service/resolver/ResolverTarget;>;"
    :cond_5
    const-string/jumbo v5, "ResolverComparator"

    const-string/jumbo v6, "Receiving null prediction results."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 154
    :pswitch_1
    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v5}, Lcom/android/internal/app/ResolverComparator;->-get1(Lcom/android/internal/app/ResolverComparator;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v5}, Lcom/android/internal/app/ResolverComparator;->-get0(Lcom/android/internal/app/ResolverComparator;)Lcom/android/internal/app/ResolverComparator$AfterCompute;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/app/ResolverComparator$AfterCompute;->afterCompute()V

    goto/16 :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
