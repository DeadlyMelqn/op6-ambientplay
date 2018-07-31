.class final Lcom/google/android/gms/common/util/concurrent/zza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final priority:I

.field private final zzaax:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/util/concurrent/zza;->zzaax:Ljava/lang/Runnable;

    iput p2, p0, Lcom/google/android/gms/common/util/concurrent/zza;->priority:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/util/concurrent/zza;->priority:I

    invoke-static/range {v0 .. v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object p0, p0, Lcom/google/android/gms/common/util/concurrent/zza;->zzaax:Ljava/lang/Runnable;

    invoke-interface/range {p0 .. p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
