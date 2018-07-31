.class final Lcom/google/android/gms/dynamic/zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/DeferredLifecycleHelper$zza;


# instance fields
.field private final synthetic zzabg:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

.field private final synthetic zzabi:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/zzc;->zzabg:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    iput-object p2, p0, Lcom/google/android/gms/dynamic/zzc;->zzabi:Landroid/os/Bundle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getState()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/dynamic/zzc;->zzabg:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zzb(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/dynamic/zzc;->zzabi:Landroid/os/Bundle;

    invoke-interface {p1, p0}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
