.class Lcom/android/settings/deviceinfo/SimStatus$5;
.super Landroid/telephony/PhoneStateListener;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/SimStatus;->updatePhoneInfos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/SimStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/SimStatus;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/deviceinfo/SimStatus;
    .param p2, "$anonymous0"    # Ljava/lang/Integer;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimStatus$5;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    .line 557
    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus$5;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/SimStatus;->-wrap2(Lcom/android/settings/deviceinfo/SimStatus;)V

    .line 561
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus$5;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/SimStatus;->-wrap3(Lcom/android/settings/deviceinfo/SimStatus;)V

    .line 562
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus$5;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->-wrap6(Lcom/android/settings/deviceinfo/SimStatus;Landroid/telephony/ServiceState;)V

    .line 573
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus$5;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/SimStatus;->-wrap3(Lcom/android/settings/deviceinfo/SimStatus;)V

    .line 575
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus$5;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-virtual {v0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 567
    return-void
.end method
