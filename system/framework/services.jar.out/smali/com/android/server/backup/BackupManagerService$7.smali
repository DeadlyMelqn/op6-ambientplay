.class Lcom/android/server/backup/BackupManagerService$7;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/backup/BackupManagerService;->dataChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$targets:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$7;->this$0:Lcom/android/server/backup/BackupManagerService;

    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$7;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$7;->val$targets:Ljava/util/HashSet;

    .line 9944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 9946
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$7;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$7;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$7;->val$targets:Ljava/util/HashSet;

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    .line 9947
    return-void
.end method
