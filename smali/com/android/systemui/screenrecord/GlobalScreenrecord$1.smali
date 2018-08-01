.class Lcom/android/systemui/screenrecord/GlobalScreenrecord$1;
.super Landroid/os/Handler;
.source "GlobalScreenrecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenrecord/GlobalScreenrecord;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenrecord/GlobalScreenrecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$1;->this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    .line 199
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 201
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$1;->this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->stopScreenrecord()V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$1;->this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->-set0(Lcom/android/systemui/screenrecord/GlobalScreenrecord;Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;)Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;

    .line 207
    iget-object v0, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$1;->this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    invoke-static {v0}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->-get2(Lcom/android/systemui/screenrecord/GlobalScreenrecord;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
