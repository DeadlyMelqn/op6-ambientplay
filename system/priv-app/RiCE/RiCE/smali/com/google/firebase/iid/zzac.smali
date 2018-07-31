.class final Lcom/google/firebase/iid/zzac;
.super Ljava/lang/Object;


# instance fields
.field private final zzaf:Landroid/os/Messenger;

.field private final zzbx:Lcom/google/firebase/iid/zzi;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-interface/range {p1 .. p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.os.IMessenger"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/firebase/iid/zzac;->zzaf:Landroid/os/Messenger;

    iput-object v2, p0, Lcom/google/firebase/iid/zzac;->zzbx:Lcom/google/firebase/iid/zzi;

    return-void

    :cond_0
    const-string v1, "com.google.android.gms.iid.IMessengerCompat"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/google/firebase/iid/zzi;

    invoke-direct {v0, p1}, Lcom/google/firebase/iid/zzi;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/firebase/iid/zzac;->zzbx:Lcom/google/firebase/iid/zzi;

    iput-object v2, p0, Lcom/google/firebase/iid/zzac;->zzaf:Landroid/os/Messenger;

    return-void

    :cond_1
    const-string p0, "Invalid interface descriptor: "

    invoke-static/range {v0 .. v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :goto_0
    const-string p1, "MessengerIpcClient"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct/range {p0 .. p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method


# virtual methods
.method final send(Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/iid/zzac;->zzaf:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/firebase/iid/zzac;->zzaf:Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/zzac;->zzbx:Lcom/google/firebase/iid/zzi;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/firebase/iid/zzac;->zzbx:Lcom/google/firebase/iid/zzi;

    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/zzi;->send(Landroid/os/Message;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Both messengers are null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
