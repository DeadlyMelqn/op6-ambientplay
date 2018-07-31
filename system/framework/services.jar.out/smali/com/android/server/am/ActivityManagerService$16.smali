.class Lcom/android/server/am/ActivityManagerService$16;
.super Lcom/android/server/am/ActivityManagerService$ImportanceToken;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityManagerService;ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "this$0_1"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "$anonymous0"    # I
    .param p4, "$anonymous1"    # Landroid/os/IBinder;
    .param p5, "$anonymous2"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 9307
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/server/am/ActivityManagerService$ImportanceToken;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 9310
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->importanceTokenDied(Lcom/android/server/am/ActivityManagerService$ImportanceToken;)V

    .line 9311
    return-void
.end method
