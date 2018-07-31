.class final Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;
.super Lcom/oneplus/display/IColorBalanceManager$Stub;
.source "ColorBalanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oneplus/display/ColorBalanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oneplus/display/ColorBalanceService;


# direct methods
.method private constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    .line 3565
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-direct {p0}, Lcom/oneplus/display/IColorBalanceManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p2, "-this1"    # Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    return-void
.end method


# virtual methods
.method public sendMsg(I)V
    .locals 3
    .param p1, "v"    # I

    .prologue
    .line 3568
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MSG:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3569
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->-wrap16(Lcom/android/server/oneplus/display/ColorBalanceService;I)V

    .line 3570
    return-void
.end method

.method public setActiveMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 3573
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 3574
    return-void
.end method

.method public setColorBalance(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x200

    .line 3582
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MSG value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3583
    const/16 v0, -0x200

    if-ne p1, v0, :cond_0

    .line 3584
    return-void

    .line 3585
    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get11(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3586
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get8(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3587
    if-gt p1, v3, :cond_1

    if-ne p1, v3, :cond_2

    .line 3588
    :cond_1
    add-int/lit16 p1, p1, -0x200

    .line 3594
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get24(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set16(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 3595
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 3596
    return-void

    .line 3591
    :cond_3
    add-int/lit8 p1, p1, -0x1a

    goto :goto_0
.end method

.method public setDefaultMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 3577
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 3578
    return-void
.end method
