.class Landroid/media/midi/MidiDeviceServer$2;
.super Ljava/lang/Object;
.source "MidiDeviceServer.java"

# interfaces
.implements Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiDeviceServer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/midi/MidiDeviceServer;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer$2;->this$0:Landroid/media/midi/MidiDeviceServer;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceiverFailure(Landroid/media/midi/MidiReceiver;Ljava/io/IOException;)V
    .locals 3
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;
    .param p2, "failure"    # Ljava/io/IOException;

    .prologue
    .line 359
    const-string/jumbo v1, "MidiDeviceServer"

    const-string/jumbo v2, "MidiInputPort failed to send data"

    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "client":Landroid/media/midi/MidiDeviceServer$PortClient;
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$2;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-get2(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 362
    :try_start_0
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$2;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-get2(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "client":Landroid/media/midi/MidiDeviceServer$PortClient;
    check-cast v0, Landroid/media/midi/MidiDeviceServer$PortClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "client":Landroid/media/midi/MidiDeviceServer$PortClient;
    monitor-exit v2

    .line 364
    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer$PortClient;->close()V

    .line 367
    :cond_0
    return-void

    .line 361
    .end local v0    # "client":Landroid/media/midi/MidiDeviceServer$PortClient;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
