.class final synthetic Lcom/google/firebase/iid/zzk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzau:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final zzav:Ljava/lang/String;

.field private final zzaw:Ljava/lang/String;

.field private final zzax:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private final zzay:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzk;->zzau:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lcom/google/firebase/iid/zzk;->zzav:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/iid/zzk;->zzaw:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/iid/zzk;->zzax:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p5, p0, Lcom/google/firebase/iid/zzk;->zzay:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/iid/zzk;->zzau:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v1, p0, Lcom/google/firebase/iid/zzk;->zzav:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/iid/zzk;->zzaw:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/iid/zzk;->zzax:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object p0, p0, Lcom/google/firebase/iid/zzk;->zzay:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V

    return-void
.end method
