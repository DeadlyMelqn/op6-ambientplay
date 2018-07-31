.class Lcom/oneplus/settings/notification/OPEarphoneMode$3;
.super Ljava/lang/Object;
.source "OPEarphoneMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPEarphoneMode;->confirmCallInformationBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPEarphoneMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/notification/OPEarphoneMode;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$3;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    .line 145
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$3;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    invoke-virtual {v1}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 146
    return-void

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$3;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPEarphoneMode;->-get0(Lcom/oneplus/settings/notification/OPEarphoneMode;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$3;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPEarphoneMode;->-wrap0(Lcom/oneplus/settings/notification/OPEarphoneMode;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 149
    const-string/jumbo v3, "oem_call_information_broadcast"

    const/4 v4, -0x2

    .line 148
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 150
    return-void

    .line 149
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
