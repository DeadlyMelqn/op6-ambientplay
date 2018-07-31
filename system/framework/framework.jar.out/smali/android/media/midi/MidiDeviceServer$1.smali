.class Landroid/media/midi/MidiDeviceServer$1;
.super Landroid/media/midi/IMidiDeviceServer$Stub;
.source "MidiDeviceServer.java"


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
    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    .line 184
    invoke-direct {p0}, Landroid/media/midi/IMidiDeviceServer$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public closeDevice()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-get0(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceServer$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-get0(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceServer$Callback;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/midi/MidiDeviceServer$Callback;->onClose()V

    .line 291
    :cond_0
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 292
    return-void
.end method

.method public closePort(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 271
    const/4 v1, 0x0

    .line 272
    .local v1, "inputPort":Landroid/media/midi/MidiInputPort;
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-get11(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 273
    :try_start_0
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-get11(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/midi/MidiDeviceServer$PortClient;

    .line 274
    .local v0, "client":Landroid/media/midi/MidiDeviceServer$PortClient;
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer$PortClient;->getInputPort()Landroid/media/midi/MidiInputPort;

    move-result-object v1

    .line 276
    .local v1, "inputPort":Landroid/media/midi/MidiInputPort;
    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer$PortClient;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "inputPort":Landroid/media/midi/MidiInputPort;
    :cond_0
    monitor-exit v3

    .line 279
    if-eqz v1, :cond_1

    .line 280
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-get2(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 281
    :try_start_1
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-get2(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    .line 284
    :cond_1
    return-void

    .line 272
    .end local v0    # "client":Landroid/media/midi/MidiDeviceServer$PortClient;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 280
    .restart local v0    # "client":Landroid/media/midi/MidiDeviceServer$PortClient;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public connectPorts(Landroid/os/IBinder;Ljava/io/FileDescriptor;I)I
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "outputPortNumber"    # I

    .prologue
    .line 297
    new-instance v2, Landroid/media/midi/MidiInputPort;

    invoke-direct {v2, p2, p3}, Landroid/media/midi/MidiInputPort;-><init>(Ljava/io/FileDescriptor;I)V

    .line 298
    .local v2, "inputPort":Landroid/media/midi/MidiInputPort;
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get9(Landroid/media/midi/MidiDeviceServer;)[Lcom/android/internal/midi/MidiDispatcher;

    move-result-object v4

    aget-object v1, v4, p3

    .line 299
    .local v1, "dispatcher":Lcom/android/internal/midi/MidiDispatcher;
    monitor-enter v1

    .line 300
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/midi/MidiDispatcher;->getSender()Landroid/media/midi/MidiSender;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/media/midi/MidiSender;->connect(Landroid/media/midi/MidiReceiver;)V

    .line 301
    invoke-virtual {v1}, Lcom/android/internal/midi/MidiDispatcher;->getReceiverCount()I

    move-result v3

    .line 302
    .local v3, "openCount":I
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get10(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v4

    aput v3, v4, p3

    .line 303
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-wrap1(Landroid/media/midi/MidiDeviceServer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 306
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get7(Landroid/media/midi/MidiDeviceServer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    new-instance v0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;

    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {v0, v4, p1, v2}, Landroid/media/midi/MidiDeviceServer$OutputPortClient;-><init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V

    .line 308
    .local v0, "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get11(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 309
    :try_start_1
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get11(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v5

    .line 311
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get2(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 312
    :try_start_2
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get2(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v5

    .line 314
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    return v4

    .line 299
    .end local v0    # "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    .end local v3    # "openCount":I
    :catchall_0
    move-exception v4

    monitor-exit v1

    throw v4

    .line 308
    .restart local v0    # "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    .restart local v3    # "openCount":I
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 311
    :catchall_2
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-get1(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public openInputPort(Landroid/os/IBinder;I)Ljava/io/FileDescriptor;
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "portNumber"    # I

    .prologue
    const/4 v8, 0x0

    .line 188
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get1(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/midi/MidiDeviceInfo;->isPrivate()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 190
    new-instance v4, Ljava/lang/SecurityException;

    const-string/jumbo v5, "Can\'t access private device from different UID"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 194
    :cond_0
    if-ltz p2, :cond_1

    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get3(Landroid/media/midi/MidiDeviceServer;)I

    move-result v4

    if-lt p2, v4, :cond_2

    .line 195
    :cond_1
    const-string/jumbo v4, "MidiDeviceServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "portNumber out of range in openInputPort: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-object v8

    .line 199
    :cond_2
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get5(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;

    move-result-object v5

    monitor-enter v5

    .line 200
    :try_start_0
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get5(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;

    move-result-object v4

    aget-object v4, v4, p2

    if-eqz v4, :cond_3

    .line 201
    const-string/jumbo v4, "MidiDeviceServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " already open"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v5

    .line 202
    return-object v8

    .line 206
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/media/midi/MidiDeviceServer;->-wrap0()[Ljava/io/FileDescriptor;

    move-result-object v3

    .line 207
    .local v3, "pair":[Ljava/io/FileDescriptor;
    new-instance v2, Landroid/media/midi/MidiOutputPort;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-direct {v2, v4, p2}, Landroid/media/midi/MidiOutputPort;-><init>(Ljava/io/FileDescriptor;I)V

    .line 208
    .local v2, "outputPort":Landroid/media/midi/MidiOutputPort;
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get5(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;

    move-result-object v4

    aput-object v2, v4, p2

    .line 209
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get6(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiReceiver;

    move-result-object v4

    aget-object v4, v4, p2

    invoke-virtual {v2, v4}, Landroid/media/midi/MidiOutputPort;->connect(Landroid/media/midi/MidiReceiver;)V

    .line 210
    new-instance v0, Landroid/media/midi/MidiDeviceServer$InputPortClient;

    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {v0, v4, p1, v2}, Landroid/media/midi/MidiDeviceServer$InputPortClient;-><init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;Landroid/media/midi/MidiOutputPort;)V

    .line 211
    .local v0, "client":Landroid/media/midi/MidiDeviceServer$InputPortClient;
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get11(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v6

    monitor-enter v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 212
    :try_start_2
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get11(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v6

    .line 214
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get4(Landroid/media/midi/MidiDeviceServer;)[Z

    move-result-object v4

    const/4 v6, 0x1

    aput-boolean v6, v4, p2

    .line 215
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-wrap1(Landroid/media/midi/MidiDeviceServer;)V

    .line 216
    const/4 v4, 0x1

    aget-object v4, v3, v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v5

    return-object v4

    .line 211
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v6

    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 217
    .end local v0    # "client":Landroid/media/midi/MidiDeviceServer$InputPortClient;
    .end local v2    # "outputPort":Landroid/media/midi/MidiOutputPort;
    .end local v3    # "pair":[Ljava/io/FileDescriptor;
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v4, "MidiDeviceServer"

    const-string/jumbo v6, "unable to create FileDescriptors in openInputPort"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v5

    .line 219
    return-object v8

    .line 199
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public openOutputPort(Landroid/os/IBinder;I)Ljava/io/FileDescriptor;
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "portNumber"    # I

    .prologue
    const/4 v9, 0x0

    .line 226
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v6}, Landroid/media/midi/MidiDeviceServer;->-get1(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/midi/MidiDeviceInfo;->isPrivate()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 227
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 228
    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "Can\'t access private device from different UID"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 232
    :cond_0
    if-ltz p2, :cond_1

    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v6}, Landroid/media/midi/MidiDeviceServer;->-get8(Landroid/media/midi/MidiDeviceServer;)I

    move-result v6

    if-lt p2, v6, :cond_2

    .line 233
    :cond_1
    const-string/jumbo v6, "MidiDeviceServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "portNumber out of range in openOutputPort: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-object v9

    .line 238
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/media/midi/MidiDeviceServer;->-wrap0()[Ljava/io/FileDescriptor;

    move-result-object v5

    .line 239
    .local v5, "pair":[Ljava/io/FileDescriptor;
    new-instance v3, Landroid/media/midi/MidiInputPort;

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-direct {v3, v6, p2}, Landroid/media/midi/MidiInputPort;-><init>(Ljava/io/FileDescriptor;I)V

    .line 243
    .local v3, "inputPort":Landroid/media/midi/MidiInputPort;
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v6}, Landroid/media/midi/MidiDeviceServer;->-get1(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/midi/MidiDeviceInfo;->getType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    .line 244
    const/4 v6, 0x0

    aget-object v6, v5, v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 246
    :cond_3
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v6}, Landroid/media/midi/MidiDeviceServer;->-get9(Landroid/media/midi/MidiDeviceServer;)[Lcom/android/internal/midi/MidiDispatcher;

    move-result-object v6

    aget-object v1, v6, p2

    .line 247
    .local v1, "dispatcher":Lcom/android/internal/midi/MidiDispatcher;
    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/midi/MidiDispatcher;->getSender()Landroid/media/midi/MidiSender;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/media/midi/MidiSender;->connect(Landroid/media/midi/MidiReceiver;)V

    .line 249
    invoke-virtual {v1}, Lcom/android/internal/midi/MidiDispatcher;->getReceiverCount()I

    move-result v4

    .line 250
    .local v4, "openCount":I
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v6}, Landroid/media/midi/MidiDeviceServer;->-get10(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v6

    aput v4, v6, p2

    .line 251
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v6}, Landroid/media/midi/MidiDeviceServer;->-wrap1(Landroid/media/midi/MidiDeviceServer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    .line 254
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v6}, Landroid/media/midi/MidiDeviceServer;->-get7(Landroid/media/midi/MidiDeviceServer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;

    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {v0, v6, p1, v3}, Landroid/media/midi/MidiDeviceServer$OutputPortClient;-><init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V

    .line 256
    .local v0, "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v6}, Landroid/media/midi/MidiDeviceServer;->-get11(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 257
    :try_start_3
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v6}, Landroid/media/midi/MidiDeviceServer;->-get11(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v7

    .line 259
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v6}, Landroid/media/midi/MidiDeviceServer;->-get2(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 260
    :try_start_5
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v6}, Landroid/media/midi/MidiDeviceServer;->-get2(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    monitor-exit v7

    .line 262
    const/4 v6, 0x1

    aget-object v6, v5, v6

    return-object v6

    .line 247
    .end local v0    # "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    .end local v4    # "openCount":I
    :catchall_0
    move-exception v6

    monitor-exit v1

    throw v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 263
    .end local v1    # "dispatcher":Lcom/android/internal/midi/MidiDispatcher;
    .end local v3    # "inputPort":Landroid/media/midi/MidiInputPort;
    .end local v5    # "pair":[Ljava/io/FileDescriptor;
    :catch_0
    move-exception v2

    .line 264
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v6, "MidiDeviceServer"

    const-string/jumbo v7, "unable to create FileDescriptors in openOutputPort"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-object v9

    .line 256
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    .restart local v1    # "dispatcher":Lcom/android/internal/midi/MidiDispatcher;
    .restart local v3    # "inputPort":Landroid/media/midi/MidiInputPort;
    .restart local v4    # "openCount":I
    .restart local v5    # "pair":[Ljava/io/FileDescriptor;
    :catchall_1
    move-exception v6

    :try_start_7
    monitor-exit v7

    throw v6

    .line 259
    :catchall_2
    move-exception v6

    monitor-exit v7

    throw v6
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
.end method

.method public setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 2
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;

    .prologue
    .line 324
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 325
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "setDeviceInfo should only be called by MidiService"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_0
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-get1(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 328
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDeviceInfo should only be called once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_1
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0, p1}, Landroid/media/midi/MidiDeviceServer;->-set0(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceInfo;)Landroid/media/midi/MidiDeviceInfo;

    .line 331
    return-void
.end method
