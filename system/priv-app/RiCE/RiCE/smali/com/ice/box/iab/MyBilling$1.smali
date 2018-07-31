.class Lcom/ice/box/iab/MyBilling$1;
.super Ljava/lang/Object;
.source "MyBilling.java"

# interfaces
.implements Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;


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

    .line 37
    iput-object p1, p0, Lcom/ice/box/iab/MyBilling$1;->this$0:Lcom/ice/box/iab/MyBilling;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/ice/box/iab/IabResult;Lcom/ice/box/iab/Inventory;)V
    .locals 6

    .line 40
    iget-object v0, p0, Lcom/ice/box/iab/MyBilling$1;->this$0:Lcom/ice/box/iab/MyBilling;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/iab/MyBilling;->access$000(Lcom/ice/box/iab/MyBilling;)Lcom/ice/box/iab/IabHelper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/iab/IabResult;->isFailure()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const-string p1, "icebox.monthly"

    .line 55
    invoke-virtual {p2, p1}, Lcom/ice/box/iab/Inventory;->getPurchase(Ljava/lang/String;)Lcom/ice/box/iab/Purchase;

    move-result-object p1

    const-string v0, "com.ice.tweaks.yearly"

    .line 56
    invoke-virtual {p2, v0}, Lcom/ice/box/iab/Inventory;->getPurchase(Ljava/lang/String;)Lcom/ice/box/iab/Purchase;

    move-result-object v0

    const-string v1, "icebox.donation2"

    .line 57
    invoke-virtual {p2, v1}, Lcom/ice/box/iab/Inventory;->getPurchase(Ljava/lang/String;)Lcom/ice/box/iab/Purchase;

    move-result-object v1

    const-string v2, "icebox.donation5"

    .line 58
    invoke-virtual {p2, v2}, Lcom/ice/box/iab/Inventory;->getPurchase(Ljava/lang/String;)Lcom/ice/box/iab/Purchase;

    move-result-object v2

    const-string v3, "icebox.donation10"

    .line 59
    invoke-virtual {p2, v3}, Lcom/ice/box/iab/Inventory;->getPurchase(Ljava/lang/String;)Lcom/ice/box/iab/Purchase;

    move-result-object p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/ice/box/iab/MyBilling$1;->this$0:Lcom/ice/box/iab/MyBilling;

    iget-object v1, v1, Lcom/ice/box/iab/MyBilling;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v1 .. v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v5, "isPremium2"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface/range {v1 .. v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/ice/box/iab/MyBilling$1;->this$0:Lcom/ice/box/iab/MyBilling;

    iget-object v1, v1, Lcom/ice/box/iab/MyBilling;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v1 .. v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v5, "isPremium2"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface/range {v1 .. v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    if-eqz v2, :cond_3

    .line 68
    iget-object v1, p0, Lcom/ice/box/iab/MyBilling$1;->this$0:Lcom/ice/box/iab/MyBilling;

    iget-object v1, v1, Lcom/ice/box/iab/MyBilling;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v1 .. v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isPremium5"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface/range {v1 .. v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 70
    :cond_3
    iget-object v1, p0, Lcom/ice/box/iab/MyBilling$1;->this$0:Lcom/ice/box/iab/MyBilling;

    iget-object v1, v1, Lcom/ice/box/iab/MyBilling;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v1 .. v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isPremium5"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface/range {v1 .. v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    if-eqz p2, :cond_4

    .line 74
    iget-object p2, p0, Lcom/ice/box/iab/MyBilling$1;->this$0:Lcom/ice/box/iab/MyBilling;

    iget-object p2, p2, Lcom/ice/box/iab/MyBilling;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v1, "isPremium10"

    invoke-interface {p2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 76
    :cond_4
    iget-object p2, p0, Lcom/ice/box/iab/MyBilling$1;->this$0:Lcom/ice/box/iab/MyBilling;

    iget-object p2, p2, Lcom/ice/box/iab/MyBilling;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v1, "isPremium10"

    invoke-interface {p2, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_2
    if-eqz p1, :cond_5

    .line 80
    iget-object p1, p0, Lcom/ice/box/iab/MyBilling$1;->this$0:Lcom/ice/box/iab/MyBilling;

    iget-object p1, p1, Lcom/ice/box/iab/MyBilling;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "isMonthly"

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 81
    iget-object p1, p0, Lcom/ice/box/iab/MyBilling$1;->this$0:Lcom/ice/box/iab/MyBilling;

    iget-object p1, p1, Lcom/ice/box/iab/MyBilling;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "isYearly"

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    iget-object p0, p0, Lcom/ice/box/iab/MyBilling$1;->this$0:Lcom/ice/box/iab/MyBilling;

    const-string p1, "icebox.monthly"

    invoke-static {p0, p1}, Lcom/ice/box/iab/MyBilling;->access$102(Lcom/ice/box/iab/MyBilling;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    .line 84
    iget-object p1, p0, Lcom/ice/box/iab/MyBilling$1;->this$0:Lcom/ice/box/iab/MyBilling;

    iget-object p1, p1, Lcom/ice/box/iab/MyBilling;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "isYearly"

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    iget-object p1, p0, Lcom/ice/box/iab/MyBilling$1;->this$0:Lcom/ice/box/iab/MyBilling;

    iget-object p1, p1, Lcom/ice/box/iab/MyBilling;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "isMonthly"

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    iget-object p0, p0, Lcom/ice/box/iab/MyBilling$1;->this$0:Lcom/ice/box/iab/MyBilling;

    const-string p1, "com.ice.tweaks.yearly"

    invoke-static {p0, p1}, Lcom/ice/box/iab/MyBilling;->access$102(Lcom/ice/box/iab/MyBilling;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 88
    :cond_6
    iget-object p1, p0, Lcom/ice/box/iab/MyBilling$1;->this$0:Lcom/ice/box/iab/MyBilling;

    iget-object p1, p1, Lcom/ice/box/iab/MyBilling;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "isMonthly"

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    iget-object p1, p0, Lcom/ice/box/iab/MyBilling$1;->this$0:Lcom/ice/box/iab/MyBilling;

    iget-object p1, p1, Lcom/ice/box/iab/MyBilling;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "isYearly"

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    iget-object p0, p0, Lcom/ice/box/iab/MyBilling$1;->this$0:Lcom/ice/box/iab/MyBilling;

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/ice/box/iab/MyBilling;->access$102(Lcom/ice/box/iab/MyBilling;Ljava/lang/String;)Ljava/lang/String;

    :goto_3
    return-void
.end method
