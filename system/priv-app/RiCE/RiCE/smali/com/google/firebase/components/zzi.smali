.class final synthetic Lcom/google/firebase/components/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# instance fields
.field private final zza:Lcom/google/firebase/components/ComponentFactory;

.field private final zzb:Lcom/google/firebase/components/ComponentContainer;


# direct methods
.method constructor <init>(Lcom/google/firebase/components/ComponentFactory;Lcom/google/firebase/components/ComponentContainer;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/zzi;->zza:Lcom/google/firebase/components/ComponentFactory;

    iput-object p2, p0, Lcom/google/firebase/components/zzi;->zzb:Lcom/google/firebase/components/ComponentContainer;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/components/zzi;->zza:Lcom/google/firebase/components/ComponentFactory;

    iget-object p0, p0, Lcom/google/firebase/components/zzi;->zzb:Lcom/google/firebase/components/ComponentContainer;

    invoke-static {v0, p0}, Lcom/google/firebase/components/zzh;->zza(Lcom/google/firebase/components/ComponentFactory;Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
