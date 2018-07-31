.class final Lcom/google/android/gms/stats/zzb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaei:Lcom/google/android/gms/stats/WakeLock;


# direct methods
.method constructor <init>(Lcom/google/android/gms/stats/WakeLock;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/stats/zzb;->zzaei:Lcom/google/android/gms/stats/WakeLock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/stats/zzb;->zzaei:Lcom/google/android/gms/stats/WakeLock;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/stats/WakeLock;->zza(Lcom/google/android/gms/stats/WakeLock;I)V

    return-void
.end method
