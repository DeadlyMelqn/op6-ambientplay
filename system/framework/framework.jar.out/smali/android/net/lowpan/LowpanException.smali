.class public Landroid/net/lowpan/LowpanException;
.super Landroid/util/AndroidException;
.source "LowpanException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/util/AndroidException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/Exception;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method

.method static rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;
    .locals 2
    .param p0, "e"    # Landroid/os/ServiceSpecificException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .prologue
    .line 53
    iget v0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v0, :pswitch_data_0

    .line 89
    :pswitch_0
    new-instance v0, Landroid/net/lowpan/LowpanRuntimeException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/LowpanRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 55
    :pswitch_1
    new-instance v0, Landroid/net/lowpan/InterfaceDisabledException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/InterfaceDisabledException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 58
    :pswitch_2
    new-instance v0, Landroid/net/lowpan/WrongStateException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/WrongStateException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 61
    :pswitch_3
    new-instance v0, Landroid/net/lowpan/OperationCanceledException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/OperationCanceledException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 64
    :pswitch_4
    new-instance v0, Landroid/net/lowpan/JoinFailedException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/JoinFailedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 67
    :pswitch_5
    new-instance v0, Landroid/net/lowpan/JoinFailedAtScanException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/JoinFailedAtScanException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 70
    :pswitch_6
    new-instance v0, Landroid/net/lowpan/JoinFailedAtAuthException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/JoinFailedAtAuthException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 73
    :pswitch_7
    new-instance v0, Landroid/net/lowpan/NetworkAlreadyExistsException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/NetworkAlreadyExistsException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 76
    :pswitch_8
    new-instance v1, Landroid/net/lowpan/LowpanException;

    .line 77
    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_0
    invoke-direct {v1, v0, p0}, Landroid/net/lowpan/LowpanException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 77
    :cond_0
    const-string/jumbo v0, "Feature not supported"

    goto :goto_0

    .line 80
    :pswitch_9
    new-instance v1, Landroid/net/lowpan/LowpanRuntimeException;

    .line 81
    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_1
    invoke-direct {v1, v0, p0}, Landroid/net/lowpan/LowpanRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 81
    :cond_1
    const-string/jumbo v0, "NCP problem"

    goto :goto_1

    .line 84
    :pswitch_a
    new-instance v1, Landroid/net/lowpan/LowpanRuntimeException;

    .line 85
    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_2
    invoke-direct {v1, v0, p0}, Landroid/net/lowpan/LowpanRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 85
    :cond_2
    const-string/jumbo v0, "Invalid argument"

    goto :goto_2

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
