.class Lcom/android/server/BatteryService$5;
.super Lcom/android/server/BatteryService$SettingsObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BatteryService;
    .param p2, "this$0_1"    # Lcom/android/server/BatteryService;
    .param p3, "$anonymous0"    # Landroid/os/Handler;
    .param p4, "$anonymous1"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p2, p0, Lcom/android/server/BatteryService$5;->this$0:Lcom/android/server/BatteryService;

    .line 340
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/BatteryService$SettingsObserver;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method onUpdate(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/server/BatteryService$5;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get5(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/server/BatteryService$5;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0, p1}, Lcom/android/server/BatteryService;->-set1(Lcom/android/server/BatteryService;Z)Z

    .line 346
    iget-object v0, p0, Lcom/android/server/BatteryService$5;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get10(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 348
    :cond_0
    return-void
.end method
