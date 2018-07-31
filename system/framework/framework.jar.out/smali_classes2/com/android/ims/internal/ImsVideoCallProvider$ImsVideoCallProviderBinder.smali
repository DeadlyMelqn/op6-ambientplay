.class final Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;
.super Lcom/android/ims/internal/IImsVideoCallProvider$Stub;
.source "ImsVideoCallProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImsVideoCallProviderBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/internal/ImsVideoCallProvider;


# direct methods
.method private constructor <init>(Lcom/android/ims/internal/ImsVideoCallProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/internal/ImsVideoCallProvider;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/internal/ImsVideoCallProvider;Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/internal/ImsVideoCallProvider;
    .param p2, "-this1"    # Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;-><init>(Lcom/android/ims/internal/ImsVideoCallProvider;)V

    return-void
.end method


# virtual methods
.method public requestCallDataUsage()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->-get0(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 163
    return-void
.end method

.method public requestCameraCapabilities()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->-get0(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 159
    return-void
.end method

.method public sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 146
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 147
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 148
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 149
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-static {v1}, Lcom/android/ims/internal/ImsVideoCallProvider;->-get0(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 150
    return-void
.end method

.method public sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->-get0(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    .line 154
    const/16 v1, 0x8

    .line 153
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 155
    return-void
.end method

.method public setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/ims/internal/IImsVideoCallCallback;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->-get0(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 120
    return-void
.end method

.method public setCamera(Ljava/lang/String;I)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 123
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 124
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 125
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 126
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-static {v1}, Lcom/android/ims/internal/ImsVideoCallProvider;->-get0(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 127
    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->-get0(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 139
    return-void
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->-get0(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    return-void
.end method

.method public setPauseImage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->-get0(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 167
    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->-get0(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 131
    return-void
.end method

.method public setZoom(F)V
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->-get0(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 143
    return-void
.end method
