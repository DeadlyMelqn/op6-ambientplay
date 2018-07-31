.class Lcom/android/server/backup/BackupManagerService$Operation;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Operation"
.end annotation


# instance fields
.field final callback:Lcom/android/server/backup/BackupRestoreTask;

.field state:I

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;

.field final type:I


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;ILcom/android/server/backup/BackupRestoreTask;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "initialState"    # I
    .param p3, "callbackObj"    # Lcom/android/server/backup/BackupRestoreTask;
    .param p4, "type"    # I

    .prologue
    .line 679
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$Operation;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    iput p2, p0, Lcom/android/server/backup/BackupManagerService$Operation;->state:I

    .line 681
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    .line 682
    iput p4, p0, Lcom/android/server/backup/BackupManagerService$Operation;->type:I

    .line 683
    return-void
.end method
