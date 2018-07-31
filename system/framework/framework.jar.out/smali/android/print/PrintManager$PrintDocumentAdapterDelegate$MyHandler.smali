.class final Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;
.super Landroid/os/Handler;
.source "PrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_ON_FINISH:I = 0x4

.field public static final MSG_ON_KILL:I = 0x5

.field public static final MSG_ON_LAYOUT:I = 0x2

.field public static final MSG_ON_START:I = 0x1

.field public static final MSG_ON_WRITE:I = 0x3


# instance fields
.field final synthetic this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;


# direct methods
.method public constructor <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$1"    # Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1019
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    .line 1020
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1021
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1025
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    .line 1103
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unknown message: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1104
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    .line 1103
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1027
    :pswitch_0
    invoke-static {}, Landroid/print/PrintManager;->-get0()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1028
    const-string/jumbo v13, "PrintManager"

    const-string/jumbo v14, "onStart()"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_0
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/print/PrintDocumentAdapter;

    invoke-virtual {v13}, Landroid/print/PrintDocumentAdapter;->onStart()V

    .line 1107
    :goto_0
    return-void

    .line 1035
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 1036
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrintDocumentAdapter;

    .line 1037
    .local v1, "adapter":Landroid/print/PrintDocumentAdapter;
    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/print/PrintAttributes;

    .line 1038
    .local v2, "oldAttributes":Landroid/print/PrintAttributes;
    iget-object v3, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/print/PrintAttributes;

    .line 1039
    .local v3, "newAttributes":Landroid/print/PrintAttributes;
    iget-object v4, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v4, Landroid/os/CancellationSignal;

    .line 1040
    .local v4, "cancellation":Landroid/os/CancellationSignal;
    iget-object v5, v7, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v5, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    .line 1041
    .local v5, "callback":Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    iget-object v6, v7, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    .line 1042
    .local v6, "metadata":Landroid/os/Bundle;
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1044
    invoke-static {}, Landroid/print/PrintManager;->-get0()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1045
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1046
    .local v8, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v13, "PrintDocumentAdapter#onLayout() {\n"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    const-string/jumbo v13, "\n  oldAttributes:"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1048
    const-string/jumbo v13, "\n  newAttributes:"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1049
    const-string/jumbo v13, "\n  preview:"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1050
    const-string/jumbo v14, "EXTRA_PRINT_PREVIEW"

    .line 1049
    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1051
    const-string/jumbo v13, "\n}"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    const-string/jumbo v13, "PrintManager"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual/range {v1 .. v6}, Landroid/print/PrintDocumentAdapter;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1060
    .end local v1    # "adapter":Landroid/print/PrintDocumentAdapter;
    .end local v2    # "oldAttributes":Landroid/print/PrintAttributes;
    .end local v3    # "newAttributes":Landroid/print/PrintAttributes;
    .end local v4    # "cancellation":Landroid/os/CancellationSignal;
    .end local v5    # "callback":Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .end local v6    # "metadata":Landroid/os/Bundle;
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 1061
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrintDocumentAdapter;

    .line 1062
    .restart local v1    # "adapter":Landroid/print/PrintDocumentAdapter;
    iget-object v11, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v11, [Landroid/print/PageRange;

    .line 1063
    .local v11, "pages":[Landroid/print/PageRange;
    iget-object v10, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v10, Landroid/os/ParcelFileDescriptor;

    .line 1064
    .local v10, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v4, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v4, Landroid/os/CancellationSignal;

    .line 1065
    .restart local v4    # "cancellation":Landroid/os/CancellationSignal;
    iget-object v9, v7, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v9, Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 1066
    .local v9, "callback":Landroid/print/PrintDocumentAdapter$WriteResultCallback;
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1068
    invoke-static {}, Landroid/print/PrintManager;->-get0()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1069
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1070
    .restart local v8    # "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v13, "PrintDocumentAdapter#onWrite() {\n"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    const-string/jumbo v13, "\n  pages:"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    const-string/jumbo v13, "\n}"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    const-string/jumbo v13, "PrintManager"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v1, v11, v10, v4, v9}, Landroid/print/PrintDocumentAdapter;->onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    goto/16 :goto_0

    .line 1080
    .end local v1    # "adapter":Landroid/print/PrintDocumentAdapter;
    .end local v4    # "cancellation":Landroid/os/CancellationSignal;
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v9    # "callback":Landroid/print/PrintDocumentAdapter$WriteResultCallback;
    .end local v10    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v11    # "pages":[Landroid/print/PageRange;
    :pswitch_3
    invoke-static {}, Landroid/print/PrintManager;->-get0()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1081
    const-string/jumbo v13, "PrintManager"

    const-string/jumbo v14, "onFinish()"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_3
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/print/PrintDocumentAdapter;

    invoke-virtual {v13}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    .line 1088
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v13}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-get0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 1089
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v13}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-wrap0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v14

    goto/16 :goto_0

    .line 1088
    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    .line 1094
    :pswitch_4
    invoke-static {}, Landroid/print/PrintManager;->-get0()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1095
    const-string/jumbo v13, "PrintManager"

    const-string/jumbo v14, "onKill()"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_4
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 1099
    .local v12, "reason":Ljava/lang/String;
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1025
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
