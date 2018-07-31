.class Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;
.super Ljava/lang/Object;
.source "AccountManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogRecordTask"
.end annotation


# instance fields
.field private final accountId:J

.field private final action:Ljava/lang/String;

.field private final callingUid:I

.field private final tableName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field private final userAccount:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

.field private final userDebugDbInsertionPoint:J


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;IJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "accountId"    # J
    .param p6, "userAccount"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p7, "callingUid"    # I
    .param p8, "userDebugDbInsertionPoint"    # J

    .prologue
    .line 5117
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5123
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->action:Ljava/lang/String;

    .line 5124
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->tableName:Ljava/lang/String;

    .line 5125
    iput-wide p4, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->accountId:J

    .line 5126
    iput-object p6, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->userAccount:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 5127
    iput p7, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->callingUid:I

    .line 5128
    iput-wide p8, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->userDebugDbInsertionPoint:J

    .line 5129
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 5148
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->userAccount:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 5150
    .local v1, "logStatement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->accountId:J

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5151
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->action:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 5152
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService;->-get3(Lcom/android/server/accounts/AccountManagerService;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 5153
    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->callingUid:I

    int-to-long v2, v2

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5154
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->tableName:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 5155
    iget-wide v2, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->userDebugDbInsertionPoint:J

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5156
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5164
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 5167
    :goto_0
    return-void

    .line 5157
    :catch_0
    move-exception v0

    .line 5160
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to insert a log record. accountId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->accountId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5161
    const-string/jumbo v4, " action="

    .line 5160
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5161
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->action:Ljava/lang/String;

    .line 5160
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5161
    const-string/jumbo v4, " tableName="

    .line 5160
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5161
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->tableName:Ljava/lang/String;

    .line 5160
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5161
    const-string/jumbo v4, " Error: "

    .line 5160
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5164
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    goto :goto_0

    .line 5163
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    .line 5164
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 5163
    throw v2
.end method
