.class final Lcom/android/server/TextServicesManagerService$TextServicesMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextServicesMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/TextServicesManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/TextServicesManagerService;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$TextServicesMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/TextServicesManagerService;
    .param p2, "-this1"    # Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/TextServicesManagerService;)V

    return-void
.end method

.method private isChangingPackagesOfCurrentUser()Z
    .locals 3

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->getChangingUserId()I

    move-result v1

    .line 207
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->-get3(Lcom/android/server/TextServicesManagerService;)Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 211
    .local v0, "retval":Z
    :goto_0
    return v0

    .line 207
    .end local v0    # "retval":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "retval":Z
    goto :goto_0
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .locals 9

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->isChangingPackagesOfCurrentUser()Z

    move-result v4

    if-nez v4, :cond_0

    .line 217
    return-void

    .line 219
    :cond_0
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v4}, Lcom/android/server/TextServicesManagerService;->-get2(Lcom/android/server/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 221
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    .line 223
    .local v3, "sci":Landroid/view/textservice/SpellCheckerInfo;
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v4}, Lcom/android/server/TextServicesManagerService;->-get1(Lcom/android/server/TextServicesManagerService;)Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v6}, Lcom/android/server/TextServicesManagerService;->-get5(Lcom/android/server/TextServicesManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v7}, Lcom/android/server/TextServicesManagerService;->-get6(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v8}, Lcom/android/server/TextServicesManagerService;->-get3(Lcom/android/server/TextServicesManagerService;)Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    move-result-object v8

    .line 222
    invoke-static {v4, v6, v7, v8}, Lcom/android/server/TextServicesManagerService;->-wrap2(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V

    .line 226
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v4}, Lcom/android/server/TextServicesManagerService;->-wrap1(Lcom/android/server/TextServicesManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    monitor-exit v5

    return-void

    .line 228
    :cond_1
    if-nez v3, :cond_3

    .line 229
    :try_start_1
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/server/TextServicesManagerService;->-wrap0(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    .line 233
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v4, v3}, Lcom/android/server/TextServicesManagerService;->-wrap3(Lcom/android/server/TextServicesManagerService;Landroid/view/textservice/SpellCheckerInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v5

    .line 249
    return-void

    .line 235
    :cond_3
    :try_start_2
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v1

    .line 238
    .local v1, "change":I
    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    .line 241
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v4, v2}, Lcom/android/server/TextServicesManagerService;->-wrap0(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 243
    .local v0, "availSci":Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 244
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v4, v0}, Lcom/android/server/TextServicesManagerService;->-wrap3(Lcom/android/server/TextServicesManagerService;Landroid/view/textservice/SpellCheckerInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 219
    .end local v0    # "availSci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v1    # "change":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 240
    .restart local v1    # "change":I
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_5
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->isPackageModified(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    .line 237
    if-eqz v4, :cond_2

    goto :goto_1
.end method
