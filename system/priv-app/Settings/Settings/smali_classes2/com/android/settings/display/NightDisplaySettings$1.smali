.class Lcom/android/settings/display/NightDisplaySettings$1;
.super Ljava/lang/Object;
.source "NightDisplaySettings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/NightDisplaySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/NightDisplaySettings;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/android/settings/display/NightDisplaySettings;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/display/NightDisplaySettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/display/NightDisplaySettings$1;->this$0:Lcom/android/settings/display/NightDisplaySettings;

    iput p2, p0, Lcom/android/settings/display/NightDisplaySettings$1;->val$dialogId:I

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 161
    invoke-static {p2, p3}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v0

    .line 162
    .local v0, "time":Ljava/time/LocalTime;
    iget v1, p0, Lcom/android/settings/display/NightDisplaySettings$1;->val$dialogId:I

    if-nez v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/settings/display/NightDisplaySettings$1;->this$0:Lcom/android/settings/display/NightDisplaySettings;

    invoke-static {v1}, Lcom/android/settings/display/NightDisplaySettings;->-get0(Lcom/android/settings/display/NightDisplaySettings;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/app/NightDisplayController;->setCustomStartTime(Ljava/time/LocalTime;)Z

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/android/settings/display/NightDisplaySettings$1;->this$0:Lcom/android/settings/display/NightDisplaySettings;

    invoke-static {v1}, Lcom/android/settings/display/NightDisplaySettings;->-get0(Lcom/android/settings/display/NightDisplaySettings;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/app/NightDisplayController;->setCustomEndTime(Ljava/time/LocalTime;)Z

    goto :goto_0
.end method
