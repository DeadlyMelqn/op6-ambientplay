.class Lcom/android/server/VibratorService$3;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/VibratorService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/VibratorService$3;->this$0:Lcom/android/server/VibratorService;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getServiceType()I
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x2

    return v0
.end method

.method public onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .locals 1
    .param p1, "result"    # Landroid/os/PowerSaveState;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/server/VibratorService$3;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-wrap3(Lcom/android/server/VibratorService;)V

    .line 297
    return-void
.end method