.class final Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;
.super Landroid/database/ContentObserver;
.source "BatteryControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/battery/BatteryControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/battery/BatteryControllerImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .line 370
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 371
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 375
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 376
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->-wrap1(Lcom/oneplus/aod/battery/BatteryControllerImpl;)V

    .line 377
    return-void
.end method
