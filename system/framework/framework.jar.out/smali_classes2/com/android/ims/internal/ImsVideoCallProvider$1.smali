.class Lcom/android/ims/internal/ImsVideoCallProvider$1;
.super Landroid/os/Handler;
.source "ImsVideoCallProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/internal/ImsVideoCallProvider;


# direct methods
.method constructor <init>(Lcom/android/ims/internal/ImsVideoCallProvider;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/internal/ImsVideoCallProvider;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    .line 54
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-static {v4, v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->-set0(Lcom/android/ims/internal/ImsVideoCallProvider;Lcom/android/ims/internal/IImsVideoCallCallback;)Lcom/android/ims/internal/IImsVideoCallCallback;

    goto :goto_0

    .line 63
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 65
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetCamera(Ljava/lang/String;)V

    .line 66
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-virtual {v4, v3, v5}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetCamera(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v3

    .line 68
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 67
    throw v3

    .line 73
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/Surface;

    invoke-virtual {v4, v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 76
    :pswitch_3
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/Surface;

    invoke-virtual {v4, v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetDisplaySurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 79
    :pswitch_4
    iget-object v3, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetDeviceOrientation(I)V

    goto :goto_0

    .line 82
    :pswitch_5
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetZoom(F)V

    goto :goto_0

    .line 85
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 87
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    .line 88
    .local v1, "fromProfile":Landroid/telecom/VideoProfile;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 90
    .local v2, "toProfile":Landroid/telecom/VideoProfile;
    iget-object v3, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-virtual {v3, v1, v2}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 91
    .end local v1    # "fromProfile":Landroid/telecom/VideoProfile;
    .end local v2    # "toProfile":Landroid/telecom/VideoProfile;
    :catchall_1
    move-exception v3

    .line 92
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 91
    throw v3

    .line 97
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/VideoProfile;

    invoke-virtual {v4, v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 100
    :pswitch_8
    iget-object v3, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-virtual {v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->onRequestCameraCapabilities()V

    goto :goto_0

    .line 103
    :pswitch_9
    iget-object v3, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-virtual {v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->onRequestCallDataUsage()V

    goto/16 :goto_0

    .line 106
    :pswitch_a
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v4, v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetPauseImage(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
