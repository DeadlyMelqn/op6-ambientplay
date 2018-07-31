.class Lcom/oneplus/aod/NotificationManager$1;
.super Lcom/oneplus/aod/AodUpdateMonitorCallback;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/NotificationManager;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/NotificationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/NotificationManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    .line 107
    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onStartDozing()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onStartDozing()V

    .line 111
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->-get3(Lcom/oneplus/aod/NotificationManager;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 112
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->-wrap0(Lcom/oneplus/aod/NotificationManager;)V

    .line 113
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->-wrap1(Lcom/oneplus/aod/NotificationManager;)V

    .line 114
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->-wrap2(Lcom/oneplus/aod/NotificationManager;)V

    .line 115
    return-void
.end method

.method public onStopDozing()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onStopDozing()V

    .line 120
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onUserSwitchComplete(I)V

    .line 125
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0, p1}, Lcom/oneplus/aod/NotificationManager;->-set0(Lcom/oneplus/aod/NotificationManager;I)I

    .line 126
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->-get3(Lcom/oneplus/aod/NotificationManager;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 127
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->-wrap0(Lcom/oneplus/aod/NotificationManager;)V

    .line 128
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->-wrap1(Lcom/oneplus/aod/NotificationManager;)V

    .line 129
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->-wrap2(Lcom/oneplus/aod/NotificationManager;)V

    .line 130
    return-void
.end method
