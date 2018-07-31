.class Lcom/android/server/policy/OemPhoneWindowManager$8;
.super Landroid/os/Handler;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    .line 2811
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v10, 0x80

    const/16 v9, 0x4d

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2814
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 2845
    :cond_0
    :goto_0
    return-void

    .line 2817
    :pswitch_0
    :try_start_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/OemPhoneWindowManager;->mPortraitRotation:I

    if-eq v5, v6, :cond_1

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/OemPhoneWindowManager;->mUpsideDownRotation:I

    if-ne v5, v6, :cond_2

    :cond_1
    const-string/jumbo v2, "1"

    .line 2818
    .local v2, "enabled":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/io/FileOutputStream;

    const-string/jumbo v5, "/proc/touchpanel/tpedge_limit_enable"

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 2819
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 2820
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2821
    .end local v2    # "enabled":Ljava/lang/String;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 2822
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "OemPhoneWindowManager"

    const-string/jumbo v6, "Could not write to file /proc/touchpanel/tpedge_limit_enable"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2817
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_1
    const-string/jumbo v2, "0"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v2    # "enabled":Ljava/lang/String;
    goto :goto_1

    .line 2830
    .end local v2    # "enabled":Ljava/lang/String;
    :pswitch_1
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_3

    move v5, v6

    :cond_3
    iput-boolean v5, v7, Lcom/android/server/policy/OemPhoneWindowManager;->mPowerKeyLongPressHandled:Z

    .line 2831
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v5}, Lcom/android/server/policy/OemPhoneWindowManager;->-wrap2(Lcom/android/server/policy/OemPhoneWindowManager;)[B

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v5}, Lcom/android/server/policy/OemPhoneWindowManager;->-wrap2(Lcom/android/server/policy/OemPhoneWindowManager;)[B

    move-result-object v0

    .line 2833
    .local v0, "buff":[B
    :goto_2
    if-eqz v0, :cond_0

    .line 2834
    aget-byte v4, v0, v9

    .line 2835
    .local v4, "powerKeyPressCounter":I
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_5

    :goto_3
    add-int/2addr v4, v6

    .line 2836
    const-string/jumbo v5, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RECORD POWER KEY "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    if-ltz v4, :cond_0

    if-ge v4, v10, :cond_0

    .line 2838
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    int-to-byte v6, v4

    invoke-static {v5, v9, v6}, Lcom/android/server/policy/OemPhoneWindowManager;->-wrap1(Lcom/android/server/policy/OemPhoneWindowManager;IB)Z

    goto :goto_0

    .line 2832
    .end local v0    # "buff":[B
    .end local v4    # "powerKeyPressCounter":I
    :cond_4
    new-array v0, v10, [B

    .restart local v0    # "buff":[B
    goto :goto_2

    .line 2835
    .restart local v4    # "powerKeyPressCounter":I
    :cond_5
    const/4 v6, -0x1

    goto :goto_3

    .line 2814
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
