.class Lcom/oneplus/doze/DozeService$6;
.super Lcom/oneplus/doze/DozeService$LightCheck;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/doze/DozeService;->checkLightSensor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/doze/DozeService;


# direct methods
.method constructor <init>(Lcom/oneplus/doze/DozeService;Lcom/oneplus/doze/DozeService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/doze/DozeService;
    .param p2, "this$0_1"    # Lcom/oneplus/doze/DozeService;

    .prologue
    .line 1
    iput-object p2, p0, Lcom/oneplus/doze/DozeService$6;->this$0:Lcom/oneplus/doze/DozeService;

    .line 947
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/doze/DozeService$LightCheck;-><init>(Lcom/oneplus/doze/DozeService;Lcom/oneplus/doze/DozeService$LightCheck;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onLightResult(I)V
    .locals 11
    .param p1, "result"    # I

    .prologue
    const/4 v10, 0x1

    .line 951
    iget-object v5, p0, Lcom/oneplus/doze/DozeService$6;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v5}, Lcom/oneplus/doze/DozeService;->-get1(Lcom/oneplus/doze/DozeService;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "display"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 952
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v6

    const/4 v5, 0x0

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v0, v6, v5

    .line 953
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 954
    const-string/jumbo v5, "DozeService"

    const-string/jumbo v6, "onLightResult: display on , don\'t set brightness"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    return-void

    .line 952
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 959
    .end local v0    # "display":Landroid/view/Display;
    :cond_1
    if-ne p1, v10, :cond_2

    const/4 v3, 0x1

    .line 961
    .local v3, "mode":I
    :goto_1
    iget-object v5, p0, Lcom/oneplus/doze/DozeService$6;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v5}, Lcom/oneplus/doze/DozeService;->-get10(Lcom/oneplus/doze/DozeService;)I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 962
    return-void

    .line 959
    .end local v3    # "mode":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "mode":I
    goto :goto_1

    .line 965
    :cond_3
    iget-object v5, p0, Lcom/oneplus/doze/DozeService$6;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v5, v3}, Lcom/oneplus/doze/DozeService;->-set3(Lcom/oneplus/doze/DozeService;I)I

    .line 966
    const-string/jumbo v5, "DozeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set screen mode to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/doze/DozeService$6;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v7}, Lcom/oneplus/doze/DozeService;->-get10(Lcom/oneplus/doze/DozeService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v5, p0, Lcom/oneplus/doze/DozeService$6;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v5}, Lcom/oneplus/doze/DozeService;->-get10(Lcom/oneplus/doze/DozeService;)I

    move-result v5

    if-ne v5, v10, :cond_4

    const-string/jumbo v4, "4"

    .line 970
    .local v4, "properties":Ljava/lang/String;
    :goto_2
    :try_start_0
    const-string/jumbo v5, "sys.aod"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-object v5, p0, Lcom/oneplus/doze/DozeService$6;->this$0:Lcom/oneplus/doze/DozeService;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/oneplus/doze/DozeService;->setDozeScreenState(I)V

    .line 972
    iget-object v5, p0, Lcom/oneplus/doze/DozeService$6;->this$0:Lcom/oneplus/doze/DozeService;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/oneplus/doze/DozeService;->setDozeScreenState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    :goto_3
    return-void

    .line 968
    .end local v4    # "properties":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "3"

    .restart local v4    # "properties":Ljava/lang/String;
    goto :goto_2

    .line 973
    :catch_0
    move-exception v2

    .line 974
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "DozeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
