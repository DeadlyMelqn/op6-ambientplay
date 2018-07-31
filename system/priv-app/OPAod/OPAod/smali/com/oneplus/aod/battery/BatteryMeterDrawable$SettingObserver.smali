.class final Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;
.super Landroid/database/ContentObserver;
.source "BatteryMeterDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/battery/BatteryMeterDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/battery/BatteryMeterDrawable;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/battery/BatteryMeterDrawable;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/aod/battery/BatteryMeterDrawable;

    .prologue
    .line 702
    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;->this$0:Lcom/oneplus/aod/battery/BatteryMeterDrawable;

    .line 703
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 704
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 708
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 709
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;->this$0:Lcom/oneplus/aod/battery/BatteryMeterDrawable;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->-wrap1(Lcom/oneplus/aod/battery/BatteryMeterDrawable;)V

    .line 710
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;->this$0:Lcom/oneplus/aod/battery/BatteryMeterDrawable;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->-wrap0(Lcom/oneplus/aod/battery/BatteryMeterDrawable;)V

    .line 711
    return-void
.end method
