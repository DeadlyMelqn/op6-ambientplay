.class final synthetic Lcom/google/firebase/iid/zzz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzbv:Lcom/google/firebase/iid/zzx;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzx;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzz;->zzbv:Lcom/google/firebase/iid/zzx;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/iid/zzz;->zzbv:Lcom/google/firebase/iid/zzx;

    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/iid/zzx;->zzu()V

    return-void
.end method
