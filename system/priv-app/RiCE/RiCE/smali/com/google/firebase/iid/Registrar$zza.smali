.class final Lcom/google/firebase/iid/Registrar$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/iid/Registrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final zzcg:Lcom/google/firebase/iid/FirebaseInstanceId;


# direct methods
.method public constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/Registrar$zza;->zzcg:Lcom/google/firebase/iid/FirebaseInstanceId;

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/iid/Registrar$zza;->zzcg:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/iid/Registrar$zza;->zzcg:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
