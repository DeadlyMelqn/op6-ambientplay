.class final Lcom/google/android/gms/dynamic/zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/dynamic/OnDelegateCreatedListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzabg:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/zza;->zzabg:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDelegateCreated(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zza;->zzabg:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-static {v0, p1}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zza(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;Lcom/google/android/gms/dynamic/LifecycleDelegate;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    iget-object p1, p0, Lcom/google/android/gms/dynamic/zza;->zzabg:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zza(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper$zza;

    iget-object v1, p0, Lcom/google/android/gms/dynamic/zza;->zzabg:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zzb(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper$zza;->zza(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/dynamic/zza;->zzabg:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zza(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->clear()V

    iget-object p0, p0, Lcom/google/android/gms/dynamic/zza;->zzabg:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zza(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
