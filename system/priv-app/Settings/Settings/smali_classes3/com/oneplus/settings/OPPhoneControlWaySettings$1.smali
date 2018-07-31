.class Lcom/oneplus/settings/OPPhoneControlWaySettings$1;
.super Ljava/lang/Object;
.source "OPPhoneControlWaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPPhoneControlWaySettings;->delayHideNavkey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPPhoneControlWaySettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPPhoneControlWaySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/OPPhoneControlWaySettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings$1;->this$0:Lcom/oneplus/settings/OPPhoneControlWaySettings;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 221
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings$1;->this$0:Lcom/oneplus/settings/OPPhoneControlWaySettings;

    invoke-static {v0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->-get0(Lcom/oneplus/settings/OPPhoneControlWaySettings;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings$1;->this$0:Lcom/oneplus/settings/OPPhoneControlWaySettings;

    invoke-static {v0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->-get2(Lcom/oneplus/settings/OPPhoneControlWaySettings;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    .line 223
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings$1;->this$0:Lcom/oneplus/settings/OPPhoneControlWaySettings;

    invoke-static {v0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->-get1(Lcom/oneplus/settings/OPPhoneControlWaySettings;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings$1;->this$0:Lcom/oneplus/settings/OPPhoneControlWaySettings;

    invoke-static {v0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->-wrap1(Lcom/oneplus/settings/OPPhoneControlWaySettings;)V

    .line 225
    return-void
.end method
