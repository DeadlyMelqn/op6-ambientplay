.class final synthetic Lcom/google/firebase/iid/zzp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzbg:Lcom/google/firebase/iid/zzo;

.field private final zzbh:Landroid/os/Bundle;

.field private final zzbi:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzo;Landroid/os/Bundle;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzp;->zzbg:Lcom/google/firebase/iid/zzo;

    iput-object p2, p0, Lcom/google/firebase/iid/zzp;->zzbh:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/firebase/iid/zzp;->zzbi:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/iid/zzp;->zzbg:Lcom/google/firebase/iid/zzo;

    iget-object v1, p0, Lcom/google/firebase/iid/zzp;->zzbh:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/google/firebase/iid/zzp;->zzbi:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v1, p0}, Lcom/google/firebase/iid/zzo;->zza(Landroid/os/Bundle;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
