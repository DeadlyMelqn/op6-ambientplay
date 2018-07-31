.class Lcom/ice/box/helpers/RestartSystemUI$1;
.super Ljava/lang/Thread;
.source "RestartSystemUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/helpers/RestartSystemUI;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/helpers/RestartSystemUI;


# direct methods
.method constructor <init>(Lcom/ice/box/helpers/RestartSystemUI;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/ice/box/helpers/RestartSystemUI$1;->this$0:Lcom/ice/box/helpers/RestartSystemUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "busybox killall com.android.systemui"

    .line 11
    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "pkill com.android.systemui"

    .line 12
    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    iget-object p0, p0, Lcom/ice/box/helpers/RestartSystemUI$1;->this$0:Lcom/ice/box/helpers/RestartSystemUI;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/RestartSystemUI;->finish()V

    return-void
.end method
