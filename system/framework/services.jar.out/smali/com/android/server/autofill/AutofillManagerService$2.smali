.class Lcom/android/server/autofill/AutofillManagerService$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/AutofillManagerService;->startTrackingPackageChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/AutofillManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/AutofillManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/autofill/AutofillManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 190
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 1
    return-void
.end method

.method private getActiveAutofillServicePackageName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService$2;->getChangingUserId()I

    move-result v1

    .line 249
    .local v1, "userId":I
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v2

    .line 250
    .local v2, "userState":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-nez v2, :cond_0

    .line 251
    return-object v4

    .line 253
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 254
    .local v0, "serviceComponent":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 255
    return-object v4

    .line 257
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private handleActiveAutofillServiceRemoved(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0, p1}, Lcom/android/server/autofill/AutofillManagerService;->-wrap0(Lcom/android/server/autofill/AutofillManagerService;I)V

    .line 243
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->-get0(Lcom/android/server/autofill/AutofillManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 244
    const-string/jumbo v1, "autofill_service"

    const/4 v2, 0x0

    .line 243
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 245
    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .prologue
    const/4 v3, 0x0

    .line 227
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->-get2(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 228
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService$2;->getActiveAutofillServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "activePackageName":Ljava/lang/String;
    array-length v5, p2

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v1, p2, v2

    .line 230
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 231
    if-nez p4, :cond_0

    .line 232
    const/4 v2, 0x1

    monitor-exit v4

    return v2

    .line 234
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService$2;->getChangingUserId()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/autofill/AutofillManagerService;->-wrap0(Lcom/android/server/autofill/AutofillManagerService;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "pkg":Ljava/lang/String;
    :cond_2
    monitor-exit v4

    .line 238
    return v3

    .line 227
    .end local v0    # "activePackageName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 210
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->-get2(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 211
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService$2;->getChangingUserId()I

    move-result v1

    .line 212
    .local v1, "userId":I
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v2

    .line 213
    .local v2, "userState":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v2, :cond_0

    .line 214
    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 215
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    invoke-direct {p0, v1}, Lcom/android/server/autofill/AutofillManagerService$2;->handleActiveAutofillServiceRemoved(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_0
    monitor-exit v4

    .line 222
    return-void

    .line 210
    .end local v1    # "userId":I
    .end local v2    # "userState":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->-get2(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 201
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService$2;->getActiveAutofillServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "activePackageName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService$2;->getChangingUserId()I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/autofill/AutofillManagerService;->-wrap0(Lcom/android/server/autofill/AutofillManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 206
    return-void

    .line 200
    .end local v0    # "activePackageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onSomePackagesChanged()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->-get2(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService$2;->getChangingUserId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/autofill/AutofillManagerService;->-wrap2(Lcom/android/server/autofill/AutofillManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 196
    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
