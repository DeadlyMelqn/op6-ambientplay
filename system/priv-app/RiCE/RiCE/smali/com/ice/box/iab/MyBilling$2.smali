.class Lcom/ice/box/iab/MyBilling$2;
.super Ljava/lang/Object;
.source "MyBilling.java"

# interfaces
.implements Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ice/box/iab/MyBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/iab/MyBilling;


# direct methods
.method constructor <init>(Lcom/ice/box/iab/MyBilling;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/ice/box/iab/MyBilling$2;->this$0:Lcom/ice/box/iab/MyBilling;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/ice/box/iab/IabResult;Lcom/ice/box/iab/Purchase;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/ice/box/iab/MyBilling$2;->this$0:Lcom/ice/box/iab/MyBilling;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/iab/MyBilling;->access$000(Lcom/ice/box/iab/MyBilling;)Lcom/ice/box/iab/IabHelper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/iab/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object p0, p0, Lcom/ice/box/iab/MyBilling$2;->this$0:Lcom/ice/box/iab/MyBilling;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error purchasing: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ice/box/iab/MyBilling;->access$200(Lcom/ice/box/iab/MyBilling;Ljava/lang/String;)V

    return-void

    .line 106
    :cond_1
    iget-object p1, p0, Lcom/ice/box/iab/MyBilling$2;->this$0:Lcom/ice/box/iab/MyBilling;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/iab/MyBilling;->access$300(Lcom/ice/box/iab/MyBilling;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 107
    iget-object p0, p0, Lcom/ice/box/iab/MyBilling$2;->this$0:Lcom/ice/box/iab/MyBilling;

    const-string p1, "Error purchasing. Authenticity verification failed."

    invoke-static {p0, p1}, Lcom/ice/box/iab/MyBilling;->access$200(Lcom/ice/box/iab/MyBilling;Ljava/lang/String;)V

    return-void

    .line 111
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/ice/box/iab/Purchase;->getSku()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.ice.tweaks.yearly"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "icebox.monthly"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "icebox.donation10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    goto :goto_0

    :sswitch_3
    const-string v0, "icebox.donation5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p2, v1

    goto :goto_0

    :sswitch_4
    const-string v0, "icebox.donation2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x2

    :cond_3
    :goto_0
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 129
    :pswitch_0
    iget-object p1, p0, Lcom/ice/box/iab/MyBilling$2;->this$0:Lcom/ice/box/iab/MyBilling;

    iget-object p1, p1, Lcom/ice/box/iab/MyBilling;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "isYearly"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    iget-object p0, p0, Lcom/ice/box/iab/MyBilling$2;->this$0:Lcom/ice/box/iab/MyBilling;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/iab/MyBilling;->restartSelfOnLicenseOK()V

    goto :goto_1

    .line 125
    :pswitch_1
    iget-object p1, p0, Lcom/ice/box/iab/MyBilling$2;->this$0:Lcom/ice/box/iab/MyBilling;

    iget-object p1, p1, Lcom/ice/box/iab/MyBilling;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "isMonthly"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    iget-object p0, p0, Lcom/ice/box/iab/MyBilling$2;->this$0:Lcom/ice/box/iab/MyBilling;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/iab/MyBilling;->restartSelfOnLicenseOK()V

    goto :goto_1

    .line 121
    :pswitch_2
    iget-object p1, p0, Lcom/ice/box/iab/MyBilling$2;->this$0:Lcom/ice/box/iab/MyBilling;

    iget-object p1, p1, Lcom/ice/box/iab/MyBilling;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "isPremium2"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 122
    iget-object p0, p0, Lcom/ice/box/iab/MyBilling$2;->this$0:Lcom/ice/box/iab/MyBilling;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/iab/MyBilling;->restartSelfOnLicenseOK()V

    goto :goto_1

    .line 117
    :pswitch_3
    iget-object p1, p0, Lcom/ice/box/iab/MyBilling$2;->this$0:Lcom/ice/box/iab/MyBilling;

    iget-object p1, p1, Lcom/ice/box/iab/MyBilling;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "isPremium5"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    iget-object p0, p0, Lcom/ice/box/iab/MyBilling$2;->this$0:Lcom/ice/box/iab/MyBilling;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/iab/MyBilling;->restartSelfOnLicenseOK()V

    goto :goto_1

    .line 113
    :pswitch_4
    iget-object p1, p0, Lcom/ice/box/iab/MyBilling$2;->this$0:Lcom/ice/box/iab/MyBilling;

    iget-object p1, p1, Lcom/ice/box/iab/MyBilling;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "isPremium10"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 114
    iget-object p0, p0, Lcom/ice/box/iab/MyBilling$2;->this$0:Lcom/ice/box/iab/MyBilling;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/iab/MyBilling;->restartSelfOnLicenseOK()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x12295dd2 -> :sswitch_4
        0x12295dd5 -> :sswitch_3
        0x33025c7f -> :sswitch_2
        0x495d977f -> :sswitch_1
        0x79ee0901 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
