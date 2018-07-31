.class final Lcom/android/server/timezone/RulesManagerServiceHelperImpl;
.super Ljava/lang/Object;
.source "RulesManagerServiceHelperImpl.java"

# interfaces
.implements Lcom/android/server/timezone/PermissionHelper;
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public checkDumpPermission(Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump LocationManagerService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 53
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 54
    const-string/jumbo v1, ", uid="

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 54
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    return v2

    .line 57
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public enforceCallerHasPermission(Ljava/lang/String;)V
    .locals 2
    .param p1, "requiredPermission"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 62
    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method
