.class Lcom/oneplus/settings/better/OPNightMode$2;
.super Ljava/lang/Object;
.source "OPNightMode.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/better/OPNightMode;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPNightMode;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPNightMode;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/better/OPNightMode;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/better/OPNightMode$2;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    iput p2, p0, Lcom/oneplus/settings/better/OPNightMode$2;->val$dialogId:I

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 7
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const v6, 0x7f0f034a

    const/4 v5, 0x1

    .line 219
    invoke-static {p2, p3}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v3

    .line 220
    .local v3, "time":Ljava/time/LocalTime;
    iget v4, p0, Lcom/oneplus/settings/better/OPNightMode$2;->val$dialogId:I

    if-nez v4, :cond_1

    .line 222
    iget-object v4, p0, Lcom/oneplus/settings/better/OPNightMode$2;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v4}, Lcom/oneplus/settings/better/OPNightMode;->-get0(Lcom/oneplus/settings/better/OPNightMode;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v0

    .line 223
    .local v0, "initialTime":Ljava/time/LocalTime;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "t1":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "t2":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 226
    iget-object v4, p0, Lcom/oneplus/settings/better/OPNightMode$2;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v4}, Lcom/oneplus/settings/better/OPNightMode;->-wrap1(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 241
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v4, p0, Lcom/oneplus/settings/better/OPNightMode$2;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v4}, Lcom/oneplus/settings/better/OPNightMode;->-get0(Lcom/oneplus/settings/better/OPNightMode;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/app/NightDisplayController;->setCustomStartTime(Ljava/time/LocalTime;)Z

    goto :goto_0

    .line 232
    .end local v0    # "initialTime":Ljava/time/LocalTime;
    .end local v1    # "t1":Ljava/lang/String;
    .end local v2    # "t2":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/oneplus/settings/better/OPNightMode$2;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v4}, Lcom/oneplus/settings/better/OPNightMode;->-get0(Lcom/oneplus/settings/better/OPNightMode;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v0

    .line 233
    .restart local v0    # "initialTime":Ljava/time/LocalTime;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .restart local v1    # "t1":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 235
    .restart local v2    # "t2":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 236
    iget-object v4, p0, Lcom/oneplus/settings/better/OPNightMode$2;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v4}, Lcom/oneplus/settings/better/OPNightMode;->-wrap1(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 238
    :cond_2
    iget-object v4, p0, Lcom/oneplus/settings/better/OPNightMode$2;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v4}, Lcom/oneplus/settings/better/OPNightMode;->-get0(Lcom/oneplus/settings/better/OPNightMode;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/app/NightDisplayController;->setCustomEndTime(Ljava/time/LocalTime;)Z

    goto :goto_0
.end method
