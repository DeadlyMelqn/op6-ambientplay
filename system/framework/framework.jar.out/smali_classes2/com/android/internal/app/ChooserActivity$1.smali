.class Lcom/android/internal/app/ChooserActivity$1;
.super Landroid/os/Handler;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 135
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 138
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 173
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 141
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;

    .line 143
    .local v0, "sri":Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-get6(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    const-string/jumbo v1, "ChooserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ChooserTargetServiceConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 145
    const-string/jumbo v3, " returned after being removed from active connections."

    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 146
    const-string/jumbo v3, " Have you considered returning results faster?"

    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_1
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-get1(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 151
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    .line 150
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->addServiceResults(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Ljava/util/List;)V

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 154
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->destroy()V

    .line 155
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-get6(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 156
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-get6(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-get0(Lcom/android/internal/app/ChooserActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->sendVoiceChoicesIfNeeded()V

    .line 159
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-get1(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->setShowServiceTargets(Z)V

    goto/16 :goto_0

    .line 167
    .end local v0    # "sri":Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->unbindRemainingServices()V

    .line 168
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->sendVoiceChoicesIfNeeded()V

    .line 169
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-get1(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->setShowServiceTargets(Z)V

    goto/16 :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
