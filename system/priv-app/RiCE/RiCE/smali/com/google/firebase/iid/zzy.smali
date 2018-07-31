.class final synthetic Lcom/google/firebase/iid/zzy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final zzbv:Lcom/google/firebase/iid/zzx;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzx;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzy;->zzbv:Lcom/google/firebase/iid/zzx;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/iid/zzy;->zzbv:Lcom/google/firebase/iid/zzx;

    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/zzx;->zza(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
