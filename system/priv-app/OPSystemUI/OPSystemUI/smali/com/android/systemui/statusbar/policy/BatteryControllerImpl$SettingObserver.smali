.class final Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;
.super Landroid/database/ContentObserver;
.source "BatteryControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 336
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 337
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 341
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)V

    .line 343
    return-void
.end method