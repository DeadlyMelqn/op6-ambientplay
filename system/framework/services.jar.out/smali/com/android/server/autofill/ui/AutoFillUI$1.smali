.class Lcom/android/server/autofill/ui/AutoFillUI$1;
.super Ljava/lang/Object;
.source "AutoFillUI.java"

# interfaces
.implements Lcom/android/server/autofill/ui/FillUi$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/ui/AutoFillUI;->lambda$-com_android_server_autofill_ui_AutoFillUI_6451(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/metrics/LogMaker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field final synthetic val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field final synthetic val$focusedId:Landroid/view/autofill/AutofillId;

.field final synthetic val$log:Landroid/metrics/LogMaker;

.field final synthetic val$response:Landroid/service/autofill/FillResponse;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Landroid/metrics/LogMaker;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/autofill/ui/AutoFillUI;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iput-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    iput-object p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iput-object p4, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$response:Landroid/service/autofill/FillResponse;

    iput-object p5, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$focusedId:Landroid/view/autofill/AutofillId;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 211
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-static {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->-wrap2(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 212
    return-void
.end method

.method public onDatasetPicked(Landroid/service/autofill/Dataset;)V
    .locals 3
    .param p1, "dataset"    # Landroid/service/autofill/Dataset;

    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 201
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v2, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-static {v1, v2}, Lcom/android/server/autofill/ui/AutoFillUI;->-wrap2(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 202
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v1}, Lcom/android/server/autofill/ui/AutoFillUI;->-get0(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$response:Landroid/service/autofill/FillResponse;

    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 204
    .local v0, "datasetIndex":I
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v1}, Lcom/android/server/autofill/ui/AutoFillUI;->-get0(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$response:Landroid/service/autofill/FillResponse;

    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v2

    invoke-interface {v1, v2, v0, p1}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->fill(IILandroid/service/autofill/Dataset;)V

    .line 206
    .end local v0    # "datasetIndex":I
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    invoke-virtual {v0}, Landroid/metrics/LogMaker;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->-get2(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 220
    return-void
.end method

.method public onResponsePicked(Landroid/service/autofill/FillResponse;)V
    .locals 5
    .param p1, "response"    # Landroid/service/autofill/FillResponse;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 190
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-static {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->-wrap2(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 191
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->-get0(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->-get0(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v1

    .line 194
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v3

    .line 193
    const v4, 0xffff

    .line 192
    invoke-interface {v0, v1, v4, v2, v3}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->authenticate(IILandroid/content/IntentSender;Landroid/os/Bundle;)V

    .line 196
    :cond_0
    return-void
.end method

.method public requestHideFillUi()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->-get0(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->-get0(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$focusedId:Landroid/view/autofill/AutofillId;

    invoke-interface {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->requestHideFillUi(Landroid/view/autofill/AutofillId;)V

    .line 235
    :cond_0
    return-void
.end method

.method public requestShowFillUi(IILandroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "windowPresenter"    # Landroid/view/autofill/IAutofillWindowPresenter;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->-get0(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->-get0(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$focusedId:Landroid/view/autofill/AutofillId;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->requestShowFillUi(Landroid/view/autofill/AutofillId;IILandroid/view/autofill/IAutofillWindowPresenter;)V

    .line 228
    :cond_0
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;)V
    .locals 1
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->-get0(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->-get0(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->startIntentSender(Landroid/content/IntentSender;)V

    .line 242
    :cond_0
    return-void
.end method
