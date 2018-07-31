.class Lcom/oneplus/settings/notification/OPEarphoneMode$2;
.super Ljava/lang/Object;
.source "OPEarphoneMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$2;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x2

    .line 133
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$2;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    invoke-static {v0, v3}, Lcom/oneplus/settings/notification/OPEarphoneMode;->-wrap2(Lcom/oneplus/settings/notification/OPEarphoneMode;Z)V

    .line 135
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$2;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->-wrap0(Lcom/oneplus/settings/notification/OPEarphoneMode;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oem_call_information_broadcast"

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    if-ne p2, v2, :cond_0

    .line 137
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$2;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->-get0(Lcom/oneplus/settings/notification/OPEarphoneMode;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method
