.class Lcom/oneplus/settings/notification/OPPreferenceSettings$2;
.super Ljava/lang/Object;
.source "OPPreferenceSettings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPPreferenceSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPPreferenceSettings;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPPreferenceSettings;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/notification/OPPreferenceSettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings$2;->this$0:Lcom/oneplus/settings/notification/OPPreferenceSettings;

    iput p2, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings$2;->val$dialogId:I

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 12
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const v7, 0x7f0f034a

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 214
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 215
    .local v0, "c":Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v0, v6, p2}, Ljava/util/Calendar;->set(II)V

    .line 216
    const/16 v6, 0xc

    invoke-virtual {v0, v6, p3}, Ljava/util/Calendar;->set(II)V

    .line 217
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v10}, Ljava/util/Calendar;->set(II)V

    .line 218
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v10}, Ljava/util/Calendar;->set(II)V

    .line 219
    invoke-static {p2, p3}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v5

    .line 221
    .local v5, "time":Ljava/time/LocalTime;
    iget v6, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings$2;->val$dialogId:I

    if-nez v6, :cond_1

    .line 222
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings$2;->this$0:Lcom/oneplus/settings/notification/OPPreferenceSettings;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->-wrap3(Lcom/oneplus/settings/notification/OPPreferenceSettings;)Ljava/time/LocalTime;

    move-result-object v1

    .line 223
    .local v1, "endTime":Ljava/time/LocalTime;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "t1":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "t2":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 226
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings$2;->this$0:Lcom/oneplus/settings/notification/OPPreferenceSettings;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->-wrap1(Lcom/oneplus/settings/notification/OPPreferenceSettings;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 260
    .end local v1    # "endTime":Ljava/time/LocalTime;
    :goto_0
    return-void

    .line 230
    .restart local v1    # "endTime":Ljava/time/LocalTime;
    :cond_0
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings$2;->this$0:Lcom/oneplus/settings/notification/OPPreferenceSettings;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->-wrap1(Lcom/oneplus/settings/notification/OPPreferenceSettings;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v11}, Lcom/oneplus/settings/utils/OPUtils;->setPreferenceSettingsCustomCancel(Landroid/content/Context;Z)V

    .line 231
    const-string/jumbo v6, "OPPreferenceSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "start time c.getTimeInMillis() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings$2;->this$0:Lcom/oneplus/settings/notification/OPPreferenceSettings;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->-wrap1(Lcom/oneplus/settings/notification/OPPreferenceSettings;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v6, v8, v9, v11}, Lcom/oneplus/settings/utils/OPUtils;->setPreferenceSettingsCustomEnable(Landroid/content/Context;JZ)V

    .line 234
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings$2;->this$0:Lcom/oneplus/settings/notification/OPPreferenceSettings;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->-wrap0(Lcom/oneplus/settings/notification/OPPreferenceSettings;)Landroid/content/ContentResolver;

    move-result-object v6

    .line 235
    const-string/jumbo v7, "preference_settings_turn_on_time_value"

    .line 236
    invoke-virtual {v5}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    .line 233
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings$2;->this$0:Lcom/oneplus/settings/notification/OPPreferenceSettings;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->-get2(Lcom/oneplus/settings/notification/OPPreferenceSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings$2;->this$0:Lcom/oneplus/settings/notification/OPPreferenceSettings;

    invoke-static {v7, v5}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->-wrap2(Lcom/oneplus/settings/notification/OPPreferenceSettings;Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings$2;->this$0:Lcom/oneplus/settings/notification/OPPreferenceSettings;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->-wrap5(Lcom/oneplus/settings/notification/OPPreferenceSettings;)V

    goto :goto_0

    .line 241
    .end local v1    # "endTime":Ljava/time/LocalTime;
    .end local v3    # "t1":Ljava/lang/String;
    .end local v4    # "t2":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings$2;->this$0:Lcom/oneplus/settings/notification/OPPreferenceSettings;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->-wrap4(Lcom/oneplus/settings/notification/OPPreferenceSettings;)Ljava/time/LocalTime;

    move-result-object v2

    .line 242
    .local v2, "startTime":Ljava/time/LocalTime;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 243
    .restart local v3    # "t1":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 244
    .restart local v4    # "t2":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 245
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings$2;->this$0:Lcom/oneplus/settings/notification/OPPreferenceSettings;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->-wrap1(Lcom/oneplus/settings/notification/OPPreferenceSettings;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 249
    :cond_2
    const-string/jumbo v6, "OPPreferenceSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "end time c.getTimeInMillis() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings$2;->this$0:Lcom/oneplus/settings/notification/OPPreferenceSettings;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->-wrap1(Lcom/oneplus/settings/notification/OPPreferenceSettings;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v10}, Lcom/oneplus/settings/utils/OPUtils;->setPreferenceSettingsCustomCancel(Landroid/content/Context;Z)V

    .line 251
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings$2;->this$0:Lcom/oneplus/settings/notification/OPPreferenceSettings;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->-wrap1(Lcom/oneplus/settings/notification/OPPreferenceSettings;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v6, v8, v9, v10}, Lcom/oneplus/settings/utils/OPUtils;->setPreferenceSettingsCustomEnable(Landroid/content/Context;JZ)V

    .line 253
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings$2;->this$0:Lcom/oneplus/settings/notification/OPPreferenceSettings;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->-wrap0(Lcom/oneplus/settings/notification/OPPreferenceSettings;)Landroid/content/ContentResolver;

    move-result-object v6

    .line 254
    const-string/jumbo v7, "preference_settings_turn_off_time_value"

    .line 255
    invoke-virtual {v5}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    .line 252
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 256
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings$2;->this$0:Lcom/oneplus/settings/notification/OPPreferenceSettings;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->-get1(Lcom/oneplus/settings/notification/OPPreferenceSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings$2;->this$0:Lcom/oneplus/settings/notification/OPPreferenceSettings;

    invoke-static {v7, v5}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->-wrap2(Lcom/oneplus/settings/notification/OPPreferenceSettings;Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings$2;->this$0:Lcom/oneplus/settings/notification/OPPreferenceSettings;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->-wrap5(Lcom/oneplus/settings/notification/OPPreferenceSettings;)V

    goto/16 :goto_0
.end method
