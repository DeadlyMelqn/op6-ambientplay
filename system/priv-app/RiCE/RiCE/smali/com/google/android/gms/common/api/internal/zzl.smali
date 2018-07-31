.class final Lcom/google/android/gms/common/api/internal/zzl;
.super Ljava/lang/Object;


# instance fields
.field private final zzet:I

.field private final zzeu:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzeu:Lcom/google/android/gms/common/ConnectionResult;

    iput p2, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzet:I

    return-void
.end method


# virtual methods
.method final getConnectionResult()Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzeu:Lcom/google/android/gms/common/ConnectionResult;

    return-object p0
.end method

.method final zzu()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzet:I

    return p0
.end method
