.class final Lcom/google/android/gms/common/api/internal/zzcj;
.super Landroid/os/Handler;


# instance fields
.field private final synthetic zzml:Lcom/google/android/gms/common/api/internal/zzch;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zzch;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzcj;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string p0, "TransformedResultImpl"

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x46

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "TransformationResultHandler received unknown message type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/RuntimeException;

    const-string p1, "Runtime exception on the transformation worker thread: "

    invoke-virtual/range {p0 .. p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    const-string v0, "TransformedResultImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p0

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/PendingResult;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzcj;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/common/api/internal/zzch;->zzf(Lcom/google/android/gms/common/api/internal/zzch;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p1, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzcj;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/api/internal/zzch;->zzg(Lcom/google/android/gms/common/api/internal/zzch;)Lcom/google/android/gms/common/api/internal/zzch;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xd

    const-string v2, "Transform returned null"

    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/api/internal/zzch;->zza(Lcom/google/android/gms/common/api/internal/zzch;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/common/api/internal/zzbx;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzcj;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/api/internal/zzch;->zzg(Lcom/google/android/gms/common/api/internal/zzch;)Lcom/google/android/gms/common/api/internal/zzch;

    move-result-object p0

    check-cast p1, Lcom/google/android/gms/common/api/internal/zzbx;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/api/internal/zzbx;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzcj;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/api/internal/zzch;->zzg(Lcom/google/android/gms/common/api/internal/zzch;)Lcom/google/android/gms/common/api/internal/zzch;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zzch;->zza(Lcom/google/android/gms/common/api/PendingResult;)V

    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
