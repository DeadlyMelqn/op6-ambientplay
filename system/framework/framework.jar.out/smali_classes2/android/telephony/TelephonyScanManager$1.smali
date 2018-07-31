.class Landroid/telephony/TelephonyScanManager$1;
.super Landroid/os/Handler;
.source "TelephonyScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyScanManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/TelephonyScanManager;


# direct methods
.method constructor <init>(Landroid/telephony/TelephonyScanManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/TelephonyScanManager;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    .line 100
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 103
    const-string/jumbo v7, "message cannot be null"

    invoke-static {p1, v7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v7, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v7}, Landroid/telephony/TelephonyScanManager;->-get0(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v8

    monitor-enter v8

    .line 106
    :try_start_0
    iget-object v7, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v7}, Landroid/telephony/TelephonyScanManager;->-get0(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v7

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v5, "nsi":Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
    monitor-exit v8

    .line 108
    if-nez v5, :cond_0

    .line 109
    new-instance v7, Ljava/lang/RuntimeException;

    .line 110
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to find NetworkScanInfo with id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 109
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 105
    .end local v5    # "nsi":Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 112
    .restart local v5    # "nsi":Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
    :cond_0
    invoke-static {v5}, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->-get0(Landroid/telephony/TelephonyScanManager$NetworkScanInfo;)Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    move-result-object v1

    .line 113
    .local v1, "callback":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    if-nez v1, :cond_1

    .line 114
    new-instance v7, Ljava/lang/RuntimeException;

    .line 115
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to find NetworkScanCallback with id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 114
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 118
    :cond_1
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 148
    const-string/jumbo v7, "TelephonyScanManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unhandled message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    return-void

    .line 121
    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 122
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v7, "scanResult"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v6

    .line 123
    .local v6, "parcelables":[Landroid/os/Parcelable;
    array-length v7, v6

    new-array v2, v7, [Landroid/telephony/CellInfo;

    .line 124
    .local v2, "ci":[Landroid/telephony/CellInfo;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v7, v6

    if-ge v4, v7, :cond_2

    .line 125
    aget-object v7, v6, v4

    check-cast v7, Landroid/telephony/CellInfo;

    aput-object v7, v2, v4

    .line 124
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 127
    :cond_2
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onResults(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 128
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "ci":[Landroid/telephony/CellInfo;
    .end local v4    # "i":I
    .end local v6    # "parcelables":[Landroid/os/Parcelable;
    :catch_0
    move-exception v3

    .line 129
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "TelephonyScanManager"

    const-string/jumbo v8, "Exception in networkscan callback onResults"

    invoke-static {v7, v8, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 134
    .end local v3    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_2
    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v7}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onError(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 135
    :catch_1
    move-exception v3

    .line 136
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "TelephonyScanManager"

    const-string/jumbo v8, "Exception in networkscan callback onError"

    invoke-static {v7, v8, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 141
    .end local v3    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_3
    invoke-virtual {v1}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onComplete()V

    .line 142
    iget-object v7, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v7}, Landroid/telephony/TelephonyScanManager;->-get0(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->remove(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 143
    :catch_2
    move-exception v3

    .line 144
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "TelephonyScanManager"

    const-string/jumbo v8, "Exception in networkscan callback onComplete"

    invoke-static {v7, v8, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
