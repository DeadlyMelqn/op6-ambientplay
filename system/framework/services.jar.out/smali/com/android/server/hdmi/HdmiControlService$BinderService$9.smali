.class Lcom/android/server/hdmi/HdmiControlService$BinderService$9;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->setArcMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 1499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1502
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    .line 1503
    .local v0, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    if-nez v0, :cond_0

    .line 1504
    const-string/jumbo v1, "HdmiControlService"

    const-string/jumbo v2, "Local tv device not available to change arc mode."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    return-void

    .line 1507
    :cond_0
    return-void
.end method
