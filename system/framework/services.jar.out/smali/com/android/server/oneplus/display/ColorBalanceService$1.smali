.class Lcom/android/server/oneplus/display/ColorBalanceService$1;
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
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$1;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 1902
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
    .line 1923
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v2, 0x0

    .line 1906
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$1;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set14(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 1909
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$1;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get5(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1910
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$1;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$1;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get21(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set1(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 1914
    :goto_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$1;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get20(Lcom/android/server/oneplus/display/ColorBalanceService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$1;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get12(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    const/16 v1, 0x23

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$1;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get17(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 1916
    :goto_1
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$1;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$1;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get21(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->-wrap5(Lcom/android/server/oneplus/display/ColorBalanceService;I)V

    .line 1918
    :cond_0
    return-void

    .line 1912
    :cond_1
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$1;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$1;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get5(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$1;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get21(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set1(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    goto :goto_0

    .line 1914
    :cond_2
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$1;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get0(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1
.end method
