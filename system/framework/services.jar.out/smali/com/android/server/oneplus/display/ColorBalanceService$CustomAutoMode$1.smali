.class Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode$1;
.super Landroid/content/BroadcastReceiver;
.source "ColorBalanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;


# direct methods
.method constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode$1;->this$1:Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;

    .line 1289
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode$1;->this$1:Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->-wrap0(Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;)V

    .line 1293
    return-void
.end method
