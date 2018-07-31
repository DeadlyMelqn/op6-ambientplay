.class final Lcom/google/android/gms/internal/ads/zzty;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzbon:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/zztz;",
            ">;"
        }
    .end annotation
.end field

.field private zzboo:Lcom/google/android/gms/internal/ads/zzjj;

.field private final zzbop:I

.field private zzboq:Z

.field private final zzye:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct/range {v0 .. v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzbon:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzty;->zzboo:Lcom/google/android/gms/internal/ads/zzjj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzty;->zzye:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzty;->zzbop:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzty;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzye:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzty;)Lcom/google/android/gms/internal/ads/zzjj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzboo:Lcom/google/android/gms/internal/ads/zzjj;

    return-object p0
.end method


# virtual methods
.method final getAdUnitId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzye:Ljava/lang/String;

    return-object p0
.end method

.method final getNetworkType()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzbop:I

    return p0
.end method

.method final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzbon:Ljava/util/LinkedList;

    invoke-virtual/range {p0 .. p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    return p0
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzjj;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zztz;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zztz;-><init>(Lcom/google/android/gms/internal/ads/zzty;Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzjj;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzbon:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/ads/zzss;)Z
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zztz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zztz;-><init>(Lcom/google/android/gms/internal/ads/zzty;Lcom/google/android/gms/internal/ads/zzss;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzbon:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zztz;->load()Z

    move-result p0

    return p0
.end method

.method final zzl(Lcom/google/android/gms/internal/ads/zzjj;)Lcom/google/android/gms/internal/ads/zztz;
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/ads/zzjj;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzty;->zzboo:Lcom/google/android/gms/internal/ads/zzjj;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzbon:Ljava/util/LinkedList;

    invoke-virtual/range {p0 .. p0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zztz;

    return-object p0
.end method

.method final zzlf()Lcom/google/android/gms/internal/ads/zzjj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzboo:Lcom/google/android/gms/internal/ads/zzjj;

    return-object p0
.end method

.method final zzlg()I
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzbon:Ljava/util/LinkedList;

    invoke-virtual/range {p0 .. p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zztz;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zztz;->zzwa:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method final zzlh()I
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzbon:Ljava/util/LinkedList;

    invoke-virtual/range {p0 .. p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zztz;

    invoke-virtual/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zztz;->load()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method final zzli()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzboq:Z

    return-void
.end method

.method final zzlj()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzboq:Z

    return p0
.end method
