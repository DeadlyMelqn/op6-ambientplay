.class Lcom/android/server/audio/AudioService$2;
.super Landroid/app/IUidObserver$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    .line 718
    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    .line 1
    return-void
.end method

.method private disableAudioForUid(ZI)V
    .locals 7
    .param p1, "disable"    # Z
    .param p2, "uid"    # I

    .prologue
    const/4 v6, 0x0

    .line 738
    iget-object v0, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get9(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    .line 739
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 738
    :goto_0
    const/16 v2, 0x68

    .line 740
    const/4 v5, 0x0

    move v4, p2

    .line 738
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-wrap33(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 741
    return-void

    :cond_0
    move v3, v6

    .line 739
    goto :goto_0
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 728
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "cached"    # Z

    .prologue
    .line 734
    invoke-direct {p0, p2, p1}, Lcom/android/server/audio/AudioService$2;->disableAudioForUid(ZI)V

    .line 735
    return-void
.end method

.method public onUidGone(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 724
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService$2;->disableAudioForUid(ZI)V

    .line 725
    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 731
    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J

    .prologue
    .line 720
    return-void
.end method
