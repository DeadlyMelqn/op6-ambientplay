.class final synthetic Lcom/google/firebase/iid/zzaj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field static final zzcf:Lcom/google/firebase/components/ComponentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/iid/zzaj;

    invoke-direct/range {v0 .. v0}, Lcom/google/firebase/iid/zzaj;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/zzaj;->zzcf:Lcom/google/firebase/components/ComponentFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 1

    new-instance p0, Lcom/google/firebase/iid/Registrar$zza;

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-interface {p1, v0}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/Registrar$zza;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;)V

    return-object p0
.end method