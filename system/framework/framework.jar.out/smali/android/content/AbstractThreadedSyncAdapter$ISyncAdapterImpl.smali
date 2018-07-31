.class Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;
.super Landroid/content/ISyncAdapter$Stub;
.source "AbstractThreadedSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AbstractThreadedSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISyncAdapterImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/AbstractThreadedSyncAdapter;


# direct methods
.method private constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/AbstractThreadedSyncAdapter;

    .prologue
    .line 167
    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-direct {p0}, Landroid/content/ISyncAdapter$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/AbstractThreadedSyncAdapter;
    .param p2, "-this1"    # Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;-><init>(Landroid/content/AbstractThreadedSyncAdapter;)V

    return-void
.end method


# virtual methods
.method public cancelSync(Landroid/content/ISyncContext;)V
    .locals 7
    .param p1, "syncContext"    # Landroid/content/ISyncContext;

    .prologue
    .line 235
    const/4 v2, 0x0

    .line 236
    .local v2, "info":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    :try_start_0
    iget-object v4, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v4}, Landroid/content/AbstractThreadedSyncAdapter;->-get5(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    :try_start_1
    iget-object v4, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v4}, Landroid/content/AbstractThreadedSyncAdapter;->-get6(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "current$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    .line 238
    .local v0, "current":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->-get2(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/content/SyncContext;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/SyncContext;->getSyncContextBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/content/ISyncContext;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    if-ne v4, v6, :cond_0

    .line 239
    move-object v2, v0

    .end local v0    # "current":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    .end local v2    # "info":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    :cond_1
    :try_start_2
    monitor-exit v5

    .line 244
    if-eqz v2, :cond_8

    .line 245
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 246
    const-string/jumbo v4, "SyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cancelSync() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->-get1(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->-get0(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/accounts/Account;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_2
    iget-object v4, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v4}, Landroid/content/AbstractThreadedSyncAdapter;->-get1(Landroid/content/AbstractThreadedSyncAdapter;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 249
    iget-object v4, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-virtual {v4, v2}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled(Ljava/lang/Thread;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 264
    :cond_3
    :goto_0
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 265
    const-string/jumbo v4, "SyncAdapter"

    const-string/jumbo v5, "cancelSync() finishing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_4
    return-void

    .line 236
    .end local v1    # "current$iterator":Ljava/util/Iterator;
    .restart local v2    # "info":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5

    throw v4
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 258
    .end local v2    # "info":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    :catch_0
    move-exception v3

    .line 259
    .local v3, "th":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 260
    const-string/jumbo v4, "SyncAdapter"

    const-string/jumbo v5, "cancelSync() caught exception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    :cond_5
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 263
    .end local v3    # "th":Ljava/lang/Throwable;
    :catchall_1
    move-exception v4

    .line 264
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 265
    const-string/jumbo v5, "SyncAdapter"

    const-string/jumbo v6, "cancelSync() finishing"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_6
    throw v4

    .line 251
    .restart local v1    # "current$iterator":Ljava/util/Iterator;
    :cond_7
    :try_start_5
    iget-object v4, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-virtual {v4}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled()V

    goto :goto_0

    .line 254
    :cond_8
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 255
    const-string/jumbo v4, "SyncAdapter"

    const-string/jumbo v5, "cancelSync() unknown context"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "syncContext"    # Landroid/content/ISyncContext;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    if-eqz p4, :cond_0

    .line 173
    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->size()I

    .line 175
    :cond_0
    const-string/jumbo v2, "SyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startSync() start "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_1
    :try_start_0
    new-instance v4, Landroid/content/SyncContext;

    invoke-direct {v4, p1}, Landroid/content/SyncContext;-><init>(Landroid/content/ISyncContext;)V

    .line 183
    .local v4, "syncContextClient":Landroid/content/SyncContext;
    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Landroid/content/AbstractThreadedSyncAdapter;->-wrap0(Landroid/content/AbstractThreadedSyncAdapter;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v11

    .line 184
    .local v11, "threadsKey":Landroid/accounts/Account;
    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter;->-get5(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 185
    :try_start_1
    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter;->-get6(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 186
    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter;->-get2(Landroid/content/AbstractThreadedSyncAdapter;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 187
    if-eqz p4, :cond_6

    .line 189
    const-string/jumbo v2, "initialize"

    const/4 v3, 0x0

    .line 188
    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 186
    if-eqz v2, :cond_6

    .line 191
    :try_start_2
    move-object/from16 v0, p3

    invoke-static {v0, p2}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    .line 192
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-static {v0, p2, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    :cond_2
    :try_start_3
    new-instance v2, Landroid/content/SyncResult;

    invoke-direct {v2}, Landroid/content/SyncResult;-><init>()V

    invoke-virtual {v4, v2}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 224
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 225
    const-string/jumbo v2, "SyncAdapter"

    const-string/jumbo v3, "startSync() finishing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_3
    return-void

    .line 194
    :catchall_0
    move-exception v2

    .line 195
    :try_start_5
    new-instance v3, Landroid/content/SyncResult;

    invoke-direct {v3}, Landroid/content/SyncResult;-><init>()V

    invoke-virtual {v4, v3}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    .line 194
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 184
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v12

    throw v2
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 218
    .end local v4    # "syncContextClient":Landroid/content/SyncContext;
    .end local v11    # "threadsKey":Landroid/accounts/Account;
    :catch_0
    move-exception v10

    .line 219
    .local v10, "th":Ljava/lang/Throwable;
    :try_start_7
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 220
    const-string/jumbo v2, "SyncAdapter"

    const-string/jumbo v3, "startSync() caught exception"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    :cond_4
    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 223
    .end local v10    # "th":Ljava/lang/Throwable;
    :catchall_2
    move-exception v2

    .line 224
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 225
    const-string/jumbo v3, "SyncAdapter"

    const-string/jumbo v5, "startSync() finishing"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_5
    throw v2

    .line 199
    .restart local v4    # "syncContextClient":Landroid/content/SyncContext;
    .restart local v11    # "threadsKey":Landroid/accounts/Account;
    :cond_6
    :try_start_8
    new-instance v1, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SyncAdapterThread-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v5}, Landroid/content/AbstractThreadedSyncAdapter;->-get4(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 199
    const/4 v8, 0x0

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v8}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;-><init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)V

    .line 202
    .local v1, "syncThread":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter;->-get6(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-virtual {v1}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->start()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 204
    const/4 v9, 0x0

    .end local v1    # "syncThread":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    .local v9, "alreadyInProgress":Z
    :goto_0
    :try_start_9
    monitor-exit v12

    .line 215
    if-eqz v9, :cond_7

    .line 216
    sget-object v2, Landroid/content/SyncResult;->ALREADY_IN_PROGRESS:Landroid/content/SyncResult;

    invoke-virtual {v4, v2}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 224
    :cond_7
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 225
    const-string/jumbo v2, "SyncAdapter"

    const-string/jumbo v3, "startSync() finishing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_8
    return-void

    .line 206
    .end local v9    # "alreadyInProgress":Z
    :cond_9
    :try_start_a
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 207
    const-string/jumbo v2, "SyncAdapter"

    const-string/jumbo v3, "  alreadyInProgress"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 209
    :cond_a
    const/4 v9, 0x1

    .restart local v9    # "alreadyInProgress":Z
    goto :goto_0
.end method
