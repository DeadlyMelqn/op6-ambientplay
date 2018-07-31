.class Lcom/android/server/autofill/Session$1;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/Session;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/Session;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/autofill/Session;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    .line 199
    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 13
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 202
    const-string/jumbo v8, "structure"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/app/assist/AssistStructure;

    .line 203
    .local v7, "structure":Landroid/app/assist/AssistStructure;
    if-nez v7, :cond_0

    .line 204
    const-string/jumbo v8, "AutofillSession"

    const-string/jumbo v9, "No assist structure - app might have crashed providing it"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void

    .line 208
    :cond_0
    const-string/jumbo v8, "receiverExtras"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 209
    .local v4, "receiverExtras":Landroid/os/Bundle;
    if-nez v4, :cond_1

    .line 210
    const-string/jumbo v8, "AutofillSession"

    const-string/jumbo v9, "No receiver extras - app might have crashed providing it"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void

    .line 214
    :cond_1
    const-string/jumbo v8, "android.service.autofill.extra.REQUEST_ID"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 216
    .local v6, "requestId":I
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_2

    .line 217
    const-string/jumbo v8, "AutofillSession"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "New structure for requestId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_2
    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->-get3(Lcom/android/server/autofill/Session;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 227
    :try_start_0
    invoke-virtual {v7}, Landroid/app/assist/AssistStructure;->ensureData()V

    .line 230
    invoke-virtual {v7}, Landroid/app/assist/AssistStructure;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 231
    .local v0, "componentNameFromApp":Landroid/content/ComponentName;
    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->-get1(Lcom/android/server/autofill/Session;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 232
    const-string/jumbo v8, "AutofillSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Activity "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v11}, Lcom/android/server/autofill/Session;->-get1(Lcom/android/server/autofill/Session;)Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " forged different component on "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 233
    const-string/jumbo v11, "AssistStructure: "

    .line 232
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->-get1(Lcom/android/server/autofill/Session;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/assist/AssistStructure;->setActivityComponent(Landroid/content/ComponentName;)V

    .line 235
    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->-get4(Lcom/android/server/autofill/Session;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v10

    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    const/16 v11, 0x3b4

    invoke-static {v8, v11}, Lcom/android/server/autofill/Session;->-wrap0(Lcom/android/server/autofill/Session;I)Landroid/metrics/LogMaker;

    move-result-object v11

    .line 237
    if-nez v0, :cond_5

    const-string/jumbo v8, "null"

    .line 236
    :goto_0
    const/16 v12, 0x3b5

    .line 235
    invoke-virtual {v11, v12, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 240
    :cond_3
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/assist/AssistStructure;->sanitizeForParceling(Z)V

    .line 243
    invoke-virtual {v7}, Landroid/app/assist/AssistStructure;->getFlags()I

    move-result v1

    .line 245
    .local v1, "flags":I
    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->-get2(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_4

    .line 246
    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v8, v10}, Lcom/android/server/autofill/Session;->-set0(Lcom/android/server/autofill/Session;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 248
    :cond_4
    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->-get2(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v10, Landroid/service/autofill/FillContext;

    invoke-direct {v10, v6, v7}, Landroid/service/autofill/FillContext;-><init>(ILandroid/app/assist/AssistStructure;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->-wrap1(Lcom/android/server/autofill/Session;)V

    .line 252
    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->-get2(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 253
    .local v3, "numContexts":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 254
    iget-object v10, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->-get2(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/autofill/FillContext;

    invoke-static {v10, v8, v1}, Lcom/android/server/autofill/Session;->-wrap2(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillContext;I)V

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 238
    .end local v1    # "flags":I
    .end local v2    # "i":I
    .end local v3    # "numContexts":I
    :cond_5
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 261
    .restart local v1    # "flags":I
    .restart local v2    # "i":I
    .restart local v3    # "numContexts":I
    :cond_6
    new-instance v5, Landroid/service/autofill/FillRequest;

    new-instance v8, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v10}, Lcom/android/server/autofill/Session;->-get2(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 262
    iget-object v10, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v10}, Lcom/android/server/autofill/Session;->-get0(Lcom/android/server/autofill/Session;)Landroid/os/Bundle;

    move-result-object v10

    .line 261
    invoke-direct {v5, v6, v8, v10, v1}, Landroid/service/autofill/FillRequest;-><init>(ILjava/util/ArrayList;Landroid/os/Bundle;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v5, "request":Landroid/service/autofill/FillRequest;
    monitor-exit v9

    .line 265
    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->-get5(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/server/autofill/RemoteFillService;->onFillRequest(Landroid/service/autofill/FillRequest;)V

    .line 266
    return-void

    .line 221
    .end local v0    # "componentNameFromApp":Landroid/content/ComponentName;
    .end local v1    # "flags":I
    .end local v2    # "i":I
    .end local v3    # "numContexts":I
    .end local v5    # "request":Landroid/service/autofill/FillRequest;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method
