.class final Lcom/google/android/gms/tasks/zzs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnTokenCanceledListener;


# instance fields
.field private final synthetic zzagc:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzs;->zzagc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCanceled()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zzagc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/zzu;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/tasks/zzu;->zzdp()Z

    return-void
.end method
