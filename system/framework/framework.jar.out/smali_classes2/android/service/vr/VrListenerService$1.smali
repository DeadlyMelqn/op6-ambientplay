.class Landroid/service/vr/VrListenerService$1;
.super Landroid/service/vr/IVrListener$Stub;
.source "VrListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/vr/VrListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/vr/VrListenerService;


# direct methods
.method constructor <init>(Landroid/service/vr/VrListenerService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/vr/VrListenerService;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/service/vr/VrListenerService$1;->this$0:Landroid/service/vr/VrListenerService;

    .line 71
    invoke-direct {p0}, Landroid/service/vr/IVrListener$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public focusedActivityChanged(Landroid/content/ComponentName;ZI)V
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "running2dInVr"    # Z
    .param p3, "pid"    # I

    .prologue
    const/4 v1, 0x1

    .line 75
    iget-object v0, p0, Landroid/service/vr/VrListenerService$1;->this$0:Landroid/service/vr/VrListenerService;

    invoke-static {v0}, Landroid/service/vr/VrListenerService;->-get0(Landroid/service/vr/VrListenerService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v1, v0, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 77
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
