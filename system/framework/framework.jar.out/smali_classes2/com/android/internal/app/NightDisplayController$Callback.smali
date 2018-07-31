.class public interface abstract Lcom/android/internal/app/NightDisplayController$Callback;
.super Ljava/lang/Object;
.source "NightDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/NightDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public onActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    .line 604
    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 0
    .param p1, "autoMode"    # I

    .prologue
    .line 619
    return-void
.end method

.method public onColorTemperatureChanged(I)V
    .locals 0
    .param p1, "colorTemperature"    # I

    .prologue
    .line 638
    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 0
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .prologue
    .line 631
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 0
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .prologue
    .line 625
    return-void
.end method

.method public onDisplayColorModeChanged(I)V
    .locals 0
    .param p1, "displayColorMode"    # I

    .prologue
    .line 645
    return-void
.end method

.method public onDisplayInversionChange(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    .line 612
    return-void
.end method

.method public onModeSettingChange()V
    .locals 0

    .prologue
    .line 611
    return-void
.end method

.method public onNightModeActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    .line 606
    return-void
.end method

.method public onNightOrReadingModeDisableByApp(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 610
    return-void
.end method

.method public onReadingModeActivatedAuto(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    .line 609
    return-void
.end method

.method public onReadingModeActivatedManual(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    .line 608
    return-void
.end method
