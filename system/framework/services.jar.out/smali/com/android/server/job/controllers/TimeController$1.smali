.class Lcom/android/server/job/controllers/TimeController$1;
.super Ljava/lang/Object;
.source "TimeController.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/TimeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/TimeController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/TimeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/controllers/TimeController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController$1;->this$0:Lcom/android/server/job/controllers/TimeController;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 2

    .prologue
    .line 321
    sget-boolean v0, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 322
    const-string/jumbo v0, "JobScheduler.Time"

    const-string/jumbo v1, "Deadline-expired alarm fired"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController$1;->this$0:Lcom/android/server/job/controllers/TimeController;

    invoke-static {v0}, Lcom/android/server/job/controllers/TimeController;->-wrap0(Lcom/android/server/job/controllers/TimeController;)V

    .line 325
    return-void
.end method
