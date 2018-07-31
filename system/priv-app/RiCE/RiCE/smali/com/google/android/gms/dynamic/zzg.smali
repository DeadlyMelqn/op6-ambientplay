.class final Lcom/google/android/gms/dynamic/zzg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/DeferredLifecycleHelper$zza;


# instance fields
.field private final synthetic zzabg:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/zzg;->zzabg:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getState()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/zzg;->zzabg:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zzb(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onResume()V

    return-void
.end method
