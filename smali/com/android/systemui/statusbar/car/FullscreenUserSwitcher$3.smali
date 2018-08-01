.class Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher$3;
.super Landroid/os/CountDownTimer;
.source "FullscreenUserSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;
    .param p2, "$anonymous0"    # J
    .param p4, "$anonymous1"    # J

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher$3;->this$0:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    .line 137
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 1
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher$3;->this$0:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->-get1(Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher$3;->this$0:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    invoke-static {v1}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->-get0(Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher$3;->this$0:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->-wrap0(Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;)V

    .line 148
    return-void
.end method

.method public onTick(J)V
    .locals 3
    .param p1, "msUntilFinished"    # J

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher$3;->this$0:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    invoke-static {v1}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->-get0(Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;)I

    move-result v1

    long-to-int v2, p1

    sub-int v0, v1, v2

    .line 141
    .local v0, "elapsed":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher$3;->this$0:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    invoke-static {v1}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->-get1(Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 142
    return-void
.end method
