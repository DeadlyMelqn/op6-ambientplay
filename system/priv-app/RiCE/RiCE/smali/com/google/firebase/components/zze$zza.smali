.class final Lcom/google/firebase/components/zze$zza;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/components/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final zza:Lcom/google/firebase/components/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/Component<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/zze$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/zze$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/components/Component;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/Component<",
            "*>;)V"
        }
    .end annotation

    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct/range {v0 .. v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/zze$zza;->zzb:Ljava/util/Set;

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct/range {v0 .. v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/zze$zza;->zzc:Ljava/util/Set;

    .line 19
    iput-object p1, p0, Lcom/google/firebase/components/zze$zza;->zza:Lcom/google/firebase/components/Component;

    return-void
.end method


# virtual methods
.method final zza()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/zze$zza;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object p0, p0, Lcom/google/firebase/components/zze$zza;->zzb:Ljava/util/Set;

    return-object p0
.end method

.method final zza(Lcom/google/firebase/components/zze$zza;)V
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/google/firebase/components/zze$zza;->zzb:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzb()Lcom/google/firebase/components/Component;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Component<",
            "*>;"
        }
    .end annotation

    .line 39
    iget-object p0, p0, Lcom/google/firebase/components/zze$zza;->zza:Lcom/google/firebase/components/Component;

    return-object p0
.end method

.method final zzb(Lcom/google/firebase/components/zze$zza;)V
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/google/firebase/components/zze$zza;->zzc:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzc(Lcom/google/firebase/components/zze$zza;)V
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/firebase/components/zze$zza;->zzc:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzc()Z
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/firebase/components/zze$zza;->zzc:Ljava/util/Set;

    invoke-interface/range {p0 .. p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method

.method final zzd()Z
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/firebase/components/zze$zza;->zzb:Ljava/util/Set;

    invoke-interface/range {p0 .. p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method
