.class final Lcom/google/android/gms/internal/firebase_messaging/zzl;
.super Lcom/google/android/gms/internal/firebase_messaging/zzi;


# instance fields
.field private final zzk:Lcom/google/android/gms/internal/firebase_messaging/zzj;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_messaging/zzi;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzj;

    invoke-direct/range {v0 .. v0}, Lcom/google/android/gms/internal/firebase_messaging/zzj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzl;->zzk:Lcom/google/android/gms/internal/firebase_messaging/zzj;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 1

    if-eq p2, p1, :cond_1

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzl;->zzk:Lcom/google/android/gms/internal/firebase_messaging/zzj;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_messaging/zzj;->zza(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The suppressed exception cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Self suppression is not allowed."

    invoke-direct {p0, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method