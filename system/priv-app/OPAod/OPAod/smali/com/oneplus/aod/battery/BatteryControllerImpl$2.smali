.class Lcom/oneplus/aod/battery/BatteryControllerImpl$2;
.super Ljava/lang/Object;
.source "BatteryControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/battery/BatteryControllerImpl;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field curLevel:I

.field dummy:Landroid/content/Intent;

.field incr:I

.field saveLevel:I

.field savePlugged:Z

.field final synthetic this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/battery/BatteryControllerImpl;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    iput-object p2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->val$context:Landroid/content/Context;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->curLevel:I

    .line 238
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->incr:I

    .line 239
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    iget v0, v0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mLevel:I

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->saveLevel:I

    .line 240
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    iget-boolean v0, v0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPluggedIn:Z

    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->savePlugged:Z

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->dummy:Landroid/content/Intent;

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 244
    iget v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->curLevel:I

    if-gez v2, :cond_0

    .line 245
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v1, v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->-set0(Lcom/oneplus/aod/battery/BatteryControllerImpl;Z)Z

    .line 246
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->dummy:Landroid/content/Intent;

    const-string/jumbo v2, "level"

    iget v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->saveLevel:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->dummy:Landroid/content/Intent;

    const-string/jumbo v2, "plugged"

    iget-boolean v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->savePlugged:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->dummy:Landroid/content/Intent;

    const-string/jumbo v2, "testmode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->dummy:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 257
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->-get6(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 250
    :cond_0
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->dummy:Landroid/content/Intent;

    const-string/jumbo v3, "level"

    iget v4, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->curLevel:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->dummy:Landroid/content/Intent;

    const-string/jumbo v3, "plugged"

    iget v4, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->incr:I

    if-lez v4, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->dummy:Landroid/content/Intent;

    const-string/jumbo v2, "testmode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 259
    :cond_2
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->curLevel:I

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->incr:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->curLevel:I

    .line 260
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->curLevel:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    .line 261
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->incr:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->incr:I

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->-get4(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    return-void
.end method
