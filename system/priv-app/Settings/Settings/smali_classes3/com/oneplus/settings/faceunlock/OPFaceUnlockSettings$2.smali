.class Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$2;
.super Landroid/os/Handler;
.source "OPFaceUnlockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$2;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    .line 72
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$2;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    invoke-static {v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->-wrap1(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
