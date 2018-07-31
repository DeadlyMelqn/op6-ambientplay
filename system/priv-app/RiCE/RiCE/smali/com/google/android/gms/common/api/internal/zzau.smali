.class public final Lcom/google/android/gms/common/api/internal/zzau;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zzbc;


# instance fields
.field private final zzhf:Lcom/google/android/gms/common/api/internal/zzbd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zzbd;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzau;->zzhf:Lcom/google/android/gms/common/api/internal/zzbd;

    return-void
.end method


# virtual methods
.method public final begin()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzau;->zzhf:Lcom/google/android/gms/common/api/internal/zzbd;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzbd;->zzil:Ljava/util/Map;

    invoke-interface/range {v0 .. v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface/range {v0 .. v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {v0 .. v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface/range {v1 .. v1}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzau;->zzhf:Lcom/google/android/gms/common/api/internal/zzbd;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzbd;->zzfq:Lcom/google/android/gms/common/api/internal/zzav;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzav;->zzim:Ljava/util/Set;

    return-void
.end method

.method public final connect()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzau;->zzhf:Lcom/google/android/gms/common/api/internal/zzbd;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/api/internal/zzbd;->zzbc()V

    return-void
.end method

.method public final disconnect()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzau;->zzhf:Lcom/google/android/gms/common/api/internal/zzbd;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzbd;->zzfq:Lcom/google/android/gms/common/api/internal/zzav;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzav;->zzgo:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "GoogleApiClient is not connected yet."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;Z)V"
        }
    .end annotation

    return-void
.end method
