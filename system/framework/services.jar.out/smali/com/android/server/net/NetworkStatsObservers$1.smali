.class Lcom/android/server/net/NetworkStatsObservers$1;
.super Ljava/lang/Object;
.source "NetworkStatsObservers.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsObservers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsObservers;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsObservers;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkStatsObservers;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsObservers$1;->this$0:Lcom/android/server/net/NetworkStatsObservers;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 151
    const/4 v0, 0x0

    return v0

    .line 139
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers$1;->this$0:Lcom/android/server/net/NetworkStatsObservers;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;

    invoke-static {v1, v0}, Lcom/android/server/net/NetworkStatsObservers;->-wrap0(Lcom/android/server/net/NetworkStatsObservers;Lcom/android/server/net/NetworkStatsObservers$RequestInfo;)V

    .line 140
    return v3

    .line 143
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers$1;->this$0:Lcom/android/server/net/NetworkStatsObservers;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/DataUsageRequest;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/server/net/NetworkStatsObservers;->-wrap1(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;I)V

    .line 144
    return v3

    .line 147
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers$1;->this$0:Lcom/android/server/net/NetworkStatsObservers;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/net/NetworkStatsObservers$StatsContext;

    invoke-static {v1, v0}, Lcom/android/server/net/NetworkStatsObservers;->-wrap2(Lcom/android/server/net/NetworkStatsObservers;Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V

    .line 148
    return v3

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
