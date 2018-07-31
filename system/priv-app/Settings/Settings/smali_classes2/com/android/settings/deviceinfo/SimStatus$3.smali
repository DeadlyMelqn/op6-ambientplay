.class Lcom/android/settings/deviceinfo/SimStatus$3;
.super Ljava/lang/Object;
.source "SimStatus.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/SimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/SimStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/deviceinfo/SimStatus;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimStatus$3;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 583
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 584
    .local v0, "slotId":I
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus$3;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus$3;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/SimStatus;->-get3(Lcom/android/settings/deviceinfo/SimStatus;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-static {v2, v1}, Lcom/android/settings/deviceinfo/SimStatus;->-set2(Lcom/android/settings/deviceinfo/SimStatus;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;

    .line 587
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus$3;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/SimStatus;->-wrap4(Lcom/android/settings/deviceinfo/SimStatus;)V

    .line 588
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus$3;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/SimStatus;->-get8(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus$3;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/SimStatus;->-get2(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    .line 589
    const/16 v3, 0x141

    .line 588
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 592
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus$3;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/SimStatus;->-wrap2(Lcom/android/settings/deviceinfo/SimStatus;)V

    .line 593
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus$3;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/SimStatus;->-wrap3(Lcom/android/settings/deviceinfo/SimStatus;)V

    .line 594
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus$3;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/SimStatus;->-wrap5(Lcom/android/settings/deviceinfo/SimStatus;)V

    .line 595
    return-void
.end method
