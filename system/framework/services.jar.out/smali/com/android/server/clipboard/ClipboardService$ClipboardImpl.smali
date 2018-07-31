.class Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;
.super Landroid/content/IClipboard$Stub;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboard/ClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClipboardImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboard/ClipboardService;


# direct methods
.method private constructor <init>(Lcom/android/server/clipboard/ClipboardService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/clipboard/ClipboardService;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {p0}, Landroid/content/IClipboard$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/clipboard/ClipboardService;
    .param p2, "-this1"    # Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    return-void
.end method


# virtual methods
.method public addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;)V
    .locals 4
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 342
    monitor-enter p0

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->-wrap2(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    .line 344
    new-instance v1, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v1, v2, v3, p2}, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V

    .line 343
    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 346
    return-void

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 306
    monitor-enter p0

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 308
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 307
    const/16 v2, 0x1d

    invoke-static {v0, v2, p1, v1}, Lcom/android/server/clipboard/ClipboardService;->-wrap0(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->-wrap1(Lcom/android/server/clipboard/ClipboardService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 307
    if-eqz v0, :cond_1

    .line 309
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 311
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/server/clipboard/ClipboardService;->-wrap4(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->-wrap2(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPrimaryClipDescription(Ljava/lang/String;)Landroid/content/ClipDescription;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 318
    monitor-enter p0

    .line 319
    :try_start_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 320
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 319
    const/16 v4, 0x1d

    invoke-static {v2, v4, p1, v3}, Lcom/android/server/clipboard/ClipboardService;->-wrap0(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2}, Lcom/android/server/clipboard/ClipboardService;->-wrap1(Lcom/android/server/clipboard/ClipboardService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 319
    if-eqz v2, :cond_1

    :cond_0
    monitor-exit p0

    .line 321
    return-object v1

    .line 323
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2}, Lcom/android/server/clipboard/ClipboardService;->-wrap2(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 324
    .local v0, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v2, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v2, :cond_2

    iget-object v1, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :cond_2
    monitor-exit p0

    return-object v1

    .line 318
    .end local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public hasClipboardText(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 357
    monitor-enter p0

    .line 358
    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 359
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 358
    const/16 v5, 0x1d

    invoke-static {v3, v5, p1, v4}, Lcom/android/server/clipboard/ClipboardService;->-wrap0(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 359
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3}, Lcom/android/server/clipboard/ClipboardService;->-wrap1(Lcom/android/server/clipboard/ClipboardService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 358
    if-eqz v3, :cond_1

    :cond_0
    monitor-exit p0

    .line 360
    return v2

    .line 362
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3}, Lcom/android/server/clipboard/ClipboardService;->-wrap2(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 363
    .local v0, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v3, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v3, :cond_3

    .line 364
    iget-object v3, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 365
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-lez v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    monitor-exit p0

    return v2

    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_3
    monitor-exit p0

    .line 367
    return v2

    .line 357
    .end local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public hasPrimaryClip(Ljava/lang/String;)Z
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 330
    monitor-enter p0

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 332
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 331
    const/16 v3, 0x1d

    invoke-static {v1, v3, p1, v2}, Lcom/android/server/clipboard/ClipboardService;->-wrap0(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->-wrap1(Lcom/android/server/clipboard/ClipboardService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 331
    if-eqz v1, :cond_1

    :cond_0
    monitor-exit p0

    .line 333
    return v0

    .line 335
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->-wrap2(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    monitor-exit p0

    return v0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 236
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IClipboard$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 239
    const-string/jumbo v1, "clipboard"

    const-string/jumbo v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    :cond_0
    throw v0
.end method

.method public removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;

    .prologue
    .line 350
    monitor-enter p0

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->-wrap2(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 353
    return-void

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V
    .locals 13
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 248
    monitor-enter p0

    .line 249
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v10

    if-gtz v10, :cond_0

    .line 250
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "No items"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .end local p1    # "clip":Landroid/content/ClipData;
    :catchall_0
    move-exception v10

    :goto_0
    monitor-exit p0

    throw v10

    .line 252
    .restart local p1    # "clip":Landroid/content/ClipData;
    :cond_0
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {p1, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 253
    iget-object v10, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v10}, Lcom/android/server/clipboard/ClipboardService;->-get1(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/HostClipboardMonitor;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 254
    iget-object v10, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v10}, Lcom/android/server/clipboard/ClipboardService;->-get1(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/HostClipboardMonitor;

    move-result-object v10

    .line 255
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 254
    invoke-virtual {v10, v11}, Lcom/android/server/clipboard/HostClipboardMonitor;->setHostClipboard(Ljava/lang/String;)V

    .line 257
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 258
    .local v0, "callingUid":I
    iget-object v10, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v11, 0x1e

    invoke-static {v10, v11, p2, v0}, Lcom/android/server/clipboard/ClipboardService;->-wrap0(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-nez v10, :cond_2

    monitor-exit p0

    .line 260
    return-void

    .line 262
    :cond_2
    :try_start_2
    iget-object v10, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v10, p1, v0}, Lcom/android/server/clipboard/ClipboardService;->-wrap5(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;I)V

    .line 263
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 264
    .local v9, "userId":I
    iget-object v10, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v10, v9}, Lcom/android/server/clipboard/ClipboardService;->-wrap3(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v3

    .line 265
    .local v3, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v10, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v10, v3}, Lcom/android/server/clipboard/ClipboardService;->-wrap6(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    .line 266
    iget-object v10, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v10, v3, p1}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;)V

    .line 267
    iget-object v10, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v10, v9}, Lcom/android/server/clipboard/ClipboardService;->getRelatedProfiles(I)Ljava/util/List;

    move-result-object v7

    .line 268
    .local v7, "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v7, :cond_6

    .line 269
    invoke-interface {v7}, Ljava/util/List;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    .line 270
    .local v8, "size":I
    const/4 v10, 0x1

    if-le v8, v10, :cond_6

    .line 271
    const/4 v1, 0x0

    .line 273
    .local v1, "canCopy":Z
    :try_start_3
    iget-object v10, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v10}, Lcom/android/server/clipboard/ClipboardService;->-get2(Lcom/android/server/clipboard/ClipboardService;)Landroid/os/IUserManager;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v10

    .line 274
    const-string/jumbo v11, "no_cross_profile_copy_paste"

    .line 273
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v10

    xor-int/lit8 v1, v10, 0x1

    .line 280
    .end local v1    # "canCopy":Z
    :goto_1
    if-nez v1, :cond_4

    .line 281
    const/4 p1, 0x0

    .line 293
    .end local p1    # "clip":Landroid/content/ClipData;
    :goto_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v8, :cond_6

    .line 294
    :try_start_4
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    iget v6, v10, Landroid/content/pm/UserInfo;->id:I

    .line 295
    .local v6, "id":I
    if-eq v6, v9, :cond_3

    .line 296
    iget-object v10, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    iget-object v11, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v11, v6}, Lcom/android/server/clipboard/ClipboardService;->-wrap3(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v11

    invoke-virtual {v10, v11, p1}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;)V

    .line 293
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 275
    .end local v5    # "i":I
    .end local v6    # "id":I
    .restart local v1    # "canCopy":Z
    .restart local p1    # "clip":Landroid/content/ClipData;
    :catch_0
    move-exception v4

    .line 276
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v10, "ClipboardService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Remote Exception calling UserManager: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 287
    .end local v1    # "canCopy":Z
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_4
    new-instance v2, Landroid/content/ClipData;

    invoke-direct {v2, p1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 288
    .end local p1    # "clip":Landroid/content/ClipData;
    .local v2, "clip":Landroid/content/ClipData;
    :try_start_5
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v10

    add-int/lit8 v5, v10, -0x1

    .restart local v5    # "i":I
    :goto_4
    if-ltz v5, :cond_5

    .line 289
    new-instance v10, Landroid/content/ClipData$Item;

    invoke-virtual {v2, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/ClipData$Item;-><init>(Landroid/content/ClipData$Item;)V

    invoke-virtual {v2, v5, v10}, Landroid/content/ClipData;->setItemAt(ILandroid/content/ClipData$Item;)V

    .line 288
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 291
    :cond_5
    invoke-virtual {v2, v9}, Landroid/content/ClipData;->fixUrisLight(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object p1, v2

    .end local v2    # "clip":Landroid/content/ClipData;
    .restart local p1    # "clip":Landroid/content/ClipData;
    goto :goto_2

    .end local v5    # "i":I
    .end local v8    # "size":I
    .end local p1    # "clip":Landroid/content/ClipData;
    :cond_6
    monitor-exit p0

    .line 302
    return-void

    .line 248
    .restart local v2    # "clip":Landroid/content/ClipData;
    .restart local v8    # "size":I
    :catchall_1
    move-exception v10

    move-object p1, v2

    .end local v2    # "clip":Landroid/content/ClipData;
    .restart local p1    # "clip":Landroid/content/ClipData;
    goto/16 :goto_0
.end method
