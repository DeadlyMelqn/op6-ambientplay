.class Lcom/oneplus/aod/clock/DateTimeView$1;
.super Lcom/oneplus/aod/AodUpdateMonitorCallback;
.source "DateTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/clock/DateTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/clock/DateTimeView;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/clock/DateTimeView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/clock/DateTimeView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/aod/clock/DateTimeView$1;->this$0:Lcom/oneplus/aod/clock/DateTimeView;

    .line 67
    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onDreamingStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onDreamingStateChanged(I)V

    .line 94
    sget v0, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_IDLE:I

    if-ne p1, v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView$1;->this$0:Lcom/oneplus/aod/clock/DateTimeView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/aod/clock/DateTimeView;->-wrap2(Lcom/oneplus/aod/clock/DateTimeView;Z)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    sget v0, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_DOZING:I

    if-ne p1, v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView$1;->this$0:Lcom/oneplus/aod/clock/DateTimeView;

    invoke-static {v0}, Lcom/oneplus/aod/clock/DateTimeView;->-get0(Lcom/oneplus/aod/clock/DateTimeView;)Lcom/oneplus/aod/clock/ClockViewCtrl;

    move-result-object v0

    if-nez v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView$1;->this$0:Lcom/oneplus/aod/clock/DateTimeView;

    invoke-static {v0}, Lcom/oneplus/aod/clock/DateTimeView;->-wrap0(Lcom/oneplus/aod/clock/DateTimeView;)V

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView$1;->this$0:Lcom/oneplus/aod/clock/DateTimeView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/aod/clock/DateTimeView;->-wrap2(Lcom/oneplus/aod/clock/DateTimeView;Z)V

    goto :goto_0

    .line 101
    :cond_3
    sget v0, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_PULSING:I

    if-ne p1, v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView$1;->this$0:Lcom/oneplus/aod/clock/DateTimeView;

    invoke-static {v0}, Lcom/oneplus/aod/clock/DateTimeView;->-wrap1(Lcom/oneplus/aod/clock/DateTimeView;)V

    goto :goto_0
.end method

.method public onStartDozing()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onStartDozing()V

    .line 109
    const-string/jumbo v0, "DateTimeView"

    const-string/jumbo v1, "onStartDozing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView$1;->this$0:Lcom/oneplus/aod/clock/DateTimeView;

    invoke-static {v0}, Lcom/oneplus/aod/clock/DateTimeView;->-wrap1(Lcom/oneplus/aod/clock/DateTimeView;)V

    .line 111
    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView$1;->this$0:Lcom/oneplus/aod/clock/DateTimeView;

    invoke-static {v0}, Lcom/oneplus/aod/clock/DateTimeView;->-wrap3(Lcom/oneplus/aod/clock/DateTimeView;)V

    .line 112
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView$1;->this$0:Lcom/oneplus/aod/clock/DateTimeView;

    invoke-static {v0}, Lcom/oneplus/aod/clock/DateTimeView;->-wrap1(Lcom/oneplus/aod/clock/DateTimeView;)V

    .line 72
    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onUserInfoChanged(I)V

    .line 88
    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView$1;->this$0:Lcom/oneplus/aod/clock/DateTimeView;

    invoke-static {v0}, Lcom/oneplus/aod/clock/DateTimeView;->-wrap3(Lcom/oneplus/aod/clock/DateTimeView;)V

    .line 89
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView$1;->this$0:Lcom/oneplus/aod/clock/DateTimeView;

    invoke-static {v0}, Lcom/oneplus/aod/clock/DateTimeView;->-wrap1(Lcom/oneplus/aod/clock/DateTimeView;)V

    .line 77
    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView$1;->this$0:Lcom/oneplus/aod/clock/DateTimeView;

    invoke-static {v0}, Lcom/oneplus/aod/clock/DateTimeView;->-wrap3(Lcom/oneplus/aod/clock/DateTimeView;)V

    .line 78
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onUserSwitching(I)V

    .line 83
    return-void
.end method
