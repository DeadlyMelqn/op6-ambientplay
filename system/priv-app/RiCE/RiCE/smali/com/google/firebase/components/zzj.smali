.class final Lcom/google/firebase/components/zzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/components/zzj$zza;
    }
.end annotation


# instance fields
.field private final zza:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzd:Lcom/google/firebase/components/ComponentContainer;


# direct methods
.method constructor <init>(Lcom/google/firebase/components/Component;Lcom/google/firebase/components/ComponentContainer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/Component<",
            "*>;",
            "Lcom/google/firebase/components/ComponentContainer;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct/range {v0 .. v0}, Ljava/util/HashSet;-><init>()V

    .line 22
    new-instance v1, Ljava/util/HashSet;

    invoke-direct/range {v1 .. v1}, Ljava/util/HashSet;-><init>()V

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/components/Component;->zzb()Ljava/util/Set;

    move-result-object v2

    invoke-interface/range {v2 .. v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface/range {v2 .. v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v2 .. v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/components/Dependency;

    .line 24
    invoke-virtual/range {v3 .. v3}, Lcom/google/firebase/components/Dependency;->zzc()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 25
    invoke-virtual/range {v3 .. v3}, Lcom/google/firebase/components/Dependency;->zza()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual/range {v3 .. v3}, Lcom/google/firebase/components/Dependency;->zza()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/components/Component;->zzd()Ljava/util/Set;

    move-result-object v2

    invoke-interface/range {v2 .. v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 31
    const-class v2, Lcom/google/firebase/events/Publisher;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_2
    invoke-static/range {v0 .. v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/components/zzj;->zza:Ljava/util/Set;

    .line 34
    invoke-static/range {v1 .. v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/components/zzj;->zzb:Ljava/util/Set;

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/components/Component;->zzd()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/components/zzj;->zzc:Ljava/util/Set;

    .line 36
    iput-object p2, p0, Lcom/google/firebase/components/zzj;->zzd:Lcom/google/firebase/components/ComponentContainer;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/google/firebase/components/zzj;->zza:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/google/firebase/components/zzj;->zzd:Lcom/google/firebase/components/ComponentContainer;

    invoke-interface {v0, p1}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    const-class v1, Lcom/google/firebase/events/Publisher;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    .line 56
    :cond_0
    new-instance p1, Lcom/google/firebase/components/zzj$zza;

    iget-object p0, p0, Lcom/google/firebase/components/zzj;->zzc:Ljava/util/Set;

    check-cast v0, Lcom/google/firebase/events/Publisher;

    invoke-direct {p1, p0, v0}, Lcom/google/firebase/components/zzj$zza;-><init>(Ljava/util/Set;Lcom/google/firebase/events/Publisher;)V

    return-object p1

    .line 42
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Requesting %s is not allowed."

    .line 43
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/firebase/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/google/firebase/components/zzj;->zzb:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object p0, p0, Lcom/google/firebase/components/zzj;->zzd:Lcom/google/firebase/components/ComponentContainer;

    invoke-interface {p0, p1}, Lcom/google/firebase/components/ComponentContainer;->getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;

    move-result-object p0

    return-object p0

    .line 63
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Requesting Provider<%s> is not allowed."

    .line 64
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method