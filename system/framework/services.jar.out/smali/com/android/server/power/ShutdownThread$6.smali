.class Lcom/android/server/power/ShutdownThread$6;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;JI[Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/ShutdownThread;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$6;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$6;->val$endTime:J

    iput p4, p0, Lcom/android/server/power/ShutdownThread$6;->val$timeout:I

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$6;->val$done:[Z

    .line 753
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 755
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-wrap0()Landroid/util/TimingsTraceLog;

    move-result-object v11

    .line 761
    .local v11, "shutdownTimingsTraceLog":Landroid/util/TimingsTraceLog;
    const-string/jumbo v13, "nfc"

    invoke-static {v13}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v7

    .line 763
    .local v7, "nfc":Landroid/nfc/INfcAdapter;
    const-string/jumbo v13, "phone"

    invoke-static {v13}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v9

    .line 766
    .local v9, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string/jumbo v13, "bluetooth_manager"

    .line 765
    invoke-static {v13}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    .line 768
    .local v2, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    if-eqz v7, :cond_9

    .line 769
    :try_start_0
    invoke-interface {v7}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    const/4 v8, 0x1

    .line 770
    .local v8, "nfcOff":Z
    :goto_0
    if-nez v8, :cond_0

    .line 771
    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "Turning off NFC..."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get1()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/power/ShutdownThread;->-wrap3(Ljava/lang/String;)V

    .line 773
    const/4 v13, 0x0

    invoke-interface {v7, v13}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    :cond_0
    :goto_1
    if-eqz v2, :cond_b

    .line 782
    :try_start_1
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManager;->getState()I

    move-result v13

    const/16 v14, 0xa

    if-ne v13, v14, :cond_c

    const/4 v3, 0x1

    .line 783
    .local v3, "bluetoothReadyForShutdown":Z
    :goto_2
    if-nez v3, :cond_1

    .line 784
    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "Disabling Bluetooth..."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get0()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/power/ShutdownThread;->-wrap3(Ljava/lang/String;)V

    .line 786
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/ShutdownThread$6;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v13}, Lcom/android/server/power/ShutdownThread;->-get4(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v2, v13, v14}, Landroid/bluetooth/IBluetoothManager;->disable(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 794
    :cond_1
    :goto_3
    if-eqz v9, :cond_d

    :try_start_2
    invoke-interface {v9}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v13

    xor-int/lit8 v10, v13, 0x1

    .line 795
    :goto_4
    if-nez v10, :cond_2

    .line 796
    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "Turning off cellular radios..."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get2()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/power/ShutdownThread;->-wrap3(Ljava/lang/String;)V

    .line 798
    invoke-interface {v9}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 805
    :cond_2
    :goto_5
    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/ShutdownThread$6;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v4, v14, v16

    .line 808
    .local v4, "delay":J
    :goto_6
    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-lez v13, :cond_8

    .line 809
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get6()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 810
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/ShutdownThread$6;->val$timeout:I

    int-to-long v14, v13

    sub-long/2addr v14, v4

    long-to-double v14, v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    .line 811
    const-wide/high16 v16, 0x4028000000000000L    # 12.0

    .line 810
    mul-double v14, v14, v16

    .line 811
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/ShutdownThread$6;->val$timeout:I

    int-to-double v0, v13

    move-wide/from16 v16, v0

    .line 810
    div-double v14, v14, v16

    double-to-int v12, v14

    .line 812
    .local v12, "status":I
    add-int/lit8 v12, v12, 0x6

    .line 813
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get7()Lcom/android/server/power/ShutdownThread;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v12, v14}, Lcom/android/server/power/ShutdownThread;->-wrap4(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    .line 816
    .end local v12    # "status":I
    :cond_3
    if-nez v3, :cond_5

    .line 821
    :try_start_3
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManager;->getState()I

    move-result v13

    const/16 v14, 0xa

    if-eq v13, v14, :cond_4

    .line 822
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManager;->getState()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v13

    const/16 v14, 0x10

    if-ne v13, v14, :cond_e

    .line 821
    :cond_4
    const/4 v3, 0x1

    .line 828
    :goto_7
    if-eqz v3, :cond_5

    .line 829
    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "Bluetooth turned off."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get0()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/power/ShutdownThread;->-wrap2(Ljava/lang/String;)V

    .line 832
    const-string/jumbo v14, "ShutdownBt"

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/util/ArrayMap;

    move-result-object v13

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get0()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 831
    move-wide/from16 v0, v16

    invoke-virtual {v11, v14, v0, v1}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    .line 835
    :cond_5
    if-nez v10, :cond_6

    .line 837
    :try_start_4
    invoke-interface {v9}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v13

    xor-int/lit8 v10, v13, 0x1

    .line 842
    :goto_8
    if-eqz v10, :cond_6

    .line 843
    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "Radio turned off."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get2()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/power/ShutdownThread;->-wrap2(Ljava/lang/String;)V

    .line 846
    const-string/jumbo v14, "ShutdownRadio"

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/util/ArrayMap;

    move-result-object v13

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get2()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 845
    move-wide/from16 v0, v16

    invoke-virtual {v11, v14, v0, v1}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    .line 849
    :cond_6
    if-nez v8, :cond_7

    .line 851
    :try_start_5
    invoke-interface {v7}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_10

    const/4 v8, 0x1

    .line 856
    :goto_9
    if-eqz v8, :cond_7

    .line 857
    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "NFC turned off."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get1()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/power/ShutdownThread;->-wrap2(Ljava/lang/String;)V

    .line 860
    const-string/jumbo v14, "ShutdownNfc"

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/util/ArrayMap;

    move-result-object v13

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get1()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 859
    move-wide/from16 v0, v16

    invoke-virtual {v11, v14, v0, v1}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    .line 864
    :cond_7
    if-eqz v10, :cond_11

    if-eqz v3, :cond_11

    if-eqz v8, :cond_11

    .line 865
    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/ShutdownThread$6;->val$done:[Z

    const/4 v14, 0x1

    const/4 v15, 0x0

    aput-boolean v14, v13, v15

    .line 873
    :cond_8
    return-void

    .line 768
    .end local v3    # "bluetoothReadyForShutdown":Z
    .end local v4    # "delay":J
    .end local v8    # "nfcOff":Z
    :cond_9
    const/4 v8, 0x1

    .restart local v8    # "nfcOff":Z
    goto/16 :goto_0

    .line 769
    .end local v8    # "nfcOff":Z
    :cond_a
    const/4 v8, 0x0

    .restart local v8    # "nfcOff":Z
    goto/16 :goto_0

    .line 775
    .end local v8    # "nfcOff":Z
    :catch_0
    move-exception v6

    .line 776
    .local v6, "ex":Landroid/os/RemoteException;
    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "RemoteException during NFC shutdown"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 777
    const/4 v8, 0x1

    .restart local v8    # "nfcOff":Z
    goto/16 :goto_1

    .line 781
    .end local v6    # "ex":Landroid/os/RemoteException;
    :cond_b
    const/4 v3, 0x1

    .restart local v3    # "bluetoothReadyForShutdown":Z
    goto/16 :goto_2

    .line 782
    .end local v3    # "bluetoothReadyForShutdown":Z
    :cond_c
    const/4 v3, 0x0

    .restart local v3    # "bluetoothReadyForShutdown":Z
    goto/16 :goto_2

    .line 788
    .end local v3    # "bluetoothReadyForShutdown":Z
    :catch_1
    move-exception v6

    .line 789
    .restart local v6    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "RemoteException during bluetooth shutdown"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 790
    const/4 v3, 0x1

    .restart local v3    # "bluetoothReadyForShutdown":Z
    goto/16 :goto_3

    .line 794
    .end local v6    # "ex":Landroid/os/RemoteException;
    :cond_d
    const/4 v10, 0x1

    .local v10, "radioOff":Z
    goto/16 :goto_4

    .line 800
    .end local v10    # "radioOff":Z
    :catch_2
    move-exception v6

    .line 801
    .restart local v6    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "RemoteException during radio shutdown"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 802
    const/4 v10, 0x1

    .restart local v10    # "radioOff":Z
    goto/16 :goto_5

    .line 823
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v10    # "radioOff":Z
    .restart local v4    # "delay":J
    :cond_e
    :try_start_6
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManager;->getState()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    move-result v13

    const/16 v14, 0xf

    if-ne v13, v14, :cond_f

    const/4 v3, 0x1

    goto/16 :goto_7

    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 824
    :catch_3
    move-exception v6

    .line 825
    .restart local v6    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "RemoteException during bluetooth shutdown"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 826
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 838
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_4
    move-exception v6

    .line 839
    .restart local v6    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "RemoteException during radio shutdown"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 840
    const/4 v10, 0x1

    .restart local v10    # "radioOff":Z
    goto/16 :goto_8

    .line 851
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v10    # "radioOff":Z
    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_9

    .line 852
    :catch_5
    move-exception v6

    .line 853
    .restart local v6    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v13, "ShutdownThread"

    const-string/jumbo v14, "RemoteException during NFC shutdown"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 854
    const/4 v8, 0x1

    goto/16 :goto_9

    .line 869
    .end local v6    # "ex":Landroid/os/RemoteException;
    :cond_11
    const-wide/16 v14, 0xfa

    invoke-static {v14, v15}, Landroid/os/SystemClock;->sleep(J)V

    .line 871
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/ShutdownThread$6;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v4, v14, v16

    goto/16 :goto_6
.end method
