.class Lcom/android/server/oneplus/display/ColorBalanceService$2;
.super Ljava/lang/Object;
.source "ColorBalanceService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oneplus/display/ColorBalanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oneplus/display/ColorBalanceService;


# direct methods
.method constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$2;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 1925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1952
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1928
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$2;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get20(Lcom/android/server/oneplus/display/ColorBalanceService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1930
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$2;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get12(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$2;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get15(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    float-to-int v0, v0

    if-ge v0, v1, :cond_3

    .line 1931
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$2;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get15(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 1932
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$2;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get15(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set9(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 1933
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLowLightCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$2;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get15(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$2;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get15(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1935
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$2;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get13(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set8(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 1936
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$2;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$2;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get13(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v1

    const/16 v2, 0x10

    const/16 v3, 0x5dc

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 1943
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$2;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set7(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 1947
    :cond_2
    return-void

    .line 1940
    :cond_3
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$2;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set9(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 1941
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$2;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get13(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set8(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    goto :goto_0
.end method
