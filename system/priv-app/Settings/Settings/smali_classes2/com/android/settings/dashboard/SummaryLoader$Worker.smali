.class Lcom/android/settings/dashboard/SummaryLoader$Worker;
.super Landroid/os/Handler;
.source "SummaryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SummaryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# static fields
.field private static final MSG_GET_PROVIDER:I = 0x1

.field private static final MSG_SET_LISTENING:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/SummaryLoader;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/SummaryLoader;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/settings/dashboard/SummaryLoader$Worker;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    .line 280
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 281
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 285
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 295
    :goto_0
    return-void

    .line 287
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    .line 288
    .local v1, "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v2, p0, Lcom/android/settings/dashboard/SummaryLoader$Worker;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v2, v1}, Lcom/android/settings/dashboard/SummaryLoader;->-wrap0(Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settingslib/drawer/Tile;)V

    goto :goto_0

    .line 291
    .end local v1    # "tile":Lcom/android/settingslib/drawer/Tile;
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 292
    .local v0, "listening":Z
    :goto_1
    iget-object v2, p0, Lcom/android/settings/dashboard/SummaryLoader$Worker;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v2, v0}, Lcom/android/settings/dashboard/SummaryLoader;->-wrap1(Lcom/android/settings/dashboard/SummaryLoader;Z)V

    goto :goto_0

    .line 291
    .end local v0    # "listening":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "listening":Z
    goto :goto_1

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
