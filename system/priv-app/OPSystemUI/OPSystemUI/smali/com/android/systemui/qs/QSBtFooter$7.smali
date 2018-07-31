.class Lcom/android/systemui/qs/QSBtFooter$7;
.super Landroid/os/AsyncTask;
.source "QSBtFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSBtFooter;->listAudioDevices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSBtFooter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSBtFooter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSBtFooter;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSBtFooter$7;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    .line 430
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4
    .param p1, "values"    # [Ljava/lang/Void;

    .prologue
    .line 476
    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter$7;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v1}, Lcom/android/systemui/qs/QSBtFooter;->-get1(Lcom/android/systemui/qs/QSBtFooter;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    .line 477
    .local v0, "device":I
    const-string/jumbo v1, "QSBtFooter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doInBackground: device = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 473
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSBtFooter$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 7
    .param p1, "device"    # Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 433
    const-string/jumbo v0, "QSBtFooter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPostExecute:device = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter$7;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSBtFooter;->-get2(Lcom/android/systemui/qs/QSBtFooter;)Lcom/android/systemui/qs/QSSpinner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter$7;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v1}, Lcom/android/systemui/qs/QSBtFooter;->-get0(Lcom/android/systemui/qs/QSBtFooter;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 435
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 451
    :goto_0
    const-string/jumbo v0, "QSBtFooter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selected item type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSBtFooter$7;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    iget-object v3, p0, Lcom/android/systemui/qs/QSBtFooter$7;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v3}, Lcom/android/systemui/qs/QSBtFooter;->-get6(Lcom/android/systemui/qs/QSBtFooter;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/qs/QSBtFooter;->-wrap0(Lcom/android/systemui/qs/QSBtFooter;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter$7;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSBtFooter;->-get6(Lcom/android/systemui/qs/QSBtFooter;)I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter$7;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSBtFooter;->-get2(Lcom/android/systemui/qs/QSBtFooter;)Lcom/android/systemui/qs/QSSpinner;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/QSSpinner;->setSelection(I)V

    .line 469
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter$7;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSBtFooter;->-wrap5(Lcom/android/systemui/qs/QSBtFooter;)V

    .line 471
    return-void

    .line 438
    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter$7;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v0, v4}, Lcom/android/systemui/qs/QSBtFooter;->-set2(Lcom/android/systemui/qs/QSBtFooter;I)I

    goto :goto_0

    .line 444
    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter$7;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v0, v5}, Lcom/android/systemui/qs/QSBtFooter;->-set2(Lcom/android/systemui/qs/QSBtFooter;I)I

    goto :goto_0

    .line 447
    :sswitch_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter$7;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v0, v6}, Lcom/android/systemui/qs/QSBtFooter;->-set2(Lcom/android/systemui/qs/QSBtFooter;I)I

    goto :goto_0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter$7;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSBtFooter;->-get2(Lcom/android/systemui/qs/QSBtFooter;)Lcom/android/systemui/qs/QSSpinner;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/QSSpinner;->setSelection(I)V

    goto :goto_1

    .line 435
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x80 -> :sswitch_2
        0x4000000 -> :sswitch_1
    .end sparse-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 431
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSBtFooter$7;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
