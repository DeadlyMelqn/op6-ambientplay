.class Lcom/ice/box/fragments/ColorsNotification$5;
.super Ljava/lang/Object;
.source "ColorsNotification.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/fragments/ColorsNotification;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/fragments/ColorsNotification;


# direct methods
.method constructor <init>(Lcom/ice/box/fragments/ColorsNotification;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 155
    :try_start_0
    iget-object p1, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    iget-object v0, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    iget-object v0, v0, Lcom/ice/box/fragments/ColorsNotification;->seekDialog:Lcom/ice/box/helpers/SeekDialog;

    sget-object v1, Lcom/ice/box/helpers/SeekDialog$SeekEnum;->eNotifPanelAlpha:Lcom/ice/box/helpers/SeekDialog$SeekEnum;

    invoke-virtual {v0, v1}, Lcom/ice/box/helpers/SeekDialog;->getSeekDialog(Lcom/ice/box/helpers/SeekDialog$SeekEnum;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ice/box/fragments/ColorsNotification;->access$302(Lcom/ice/box/fragments/ColorsNotification;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 156
    iget-object p1, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/ColorsNotification;->access$300(Lcom/ice/box/fragments/ColorsNotification;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/app/AlertDialog;->show()V

    .line 160
    iget-object p1, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    iget-object v0, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/fragments/ColorsNotification;->access$300(Lcom/ice/box/fragments/ColorsNotification;)Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0900d8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-static {p1, v0}, Lcom/ice/box/fragments/ColorsNotification;->access$202(Lcom/ice/box/fragments/ColorsNotification;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    .line 161
    iget-object p1, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    iget-object v0, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/fragments/ColorsNotification;->access$300(Lcom/ice/box/fragments/ColorsNotification;)Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0900d7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/ice/box/fragments/ColorsNotification;->access$102(Lcom/ice/box/fragments/ColorsNotification;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 162
    iget-object p1, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/ColorsNotification;->access$300(Lcom/ice/box/fragments/ColorsNotification;)Landroid/app/AlertDialog;

    move-result-object p1

    const v0, 0x7f090083

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 163
    iget-object v0, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/fragments/ColorsNotification;->access$300(Lcom/ice/box/fragments/ColorsNotification;)Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 164
    iget-object v1, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    invoke-static/range {v1 .. v1}, Lcom/ice/box/fragments/ColorsNotification;->access$300(Lcom/ice/box/fragments/ColorsNotification;)Landroid/app/AlertDialog;

    move-result-object v1

    const v2, 0x7f090027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 166
    iget-object v2, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    invoke-static/range {v2 .. v2}, Lcom/ice/box/fragments/ColorsNotification;->access$200(Lcom/ice/box/fragments/ColorsNotification;)Landroid/widget/SeekBar;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 168
    iget-object v2, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    iget-object v4, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    invoke-virtual/range {v4 .. v4}, Lcom/ice/box/fragments/ColorsNotification;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_notification_background_alpha"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/ice/box/fragments/ColorsNotification;->access$002(Lcom/ice/box/fragments/ColorsNotification;I)I

    .line 171
    iget-object v2, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    invoke-static/range {v2 .. v2}, Lcom/ice/box/fragments/ColorsNotification;->access$200(Lcom/ice/box/fragments/ColorsNotification;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    invoke-static/range {v3 .. v3}, Lcom/ice/box/fragments/ColorsNotification;->access$000(Lcom/ice/box/fragments/ColorsNotification;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 173
    iget-object v2, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    invoke-static/range {v2 .. v2}, Lcom/ice/box/fragments/ColorsNotification;->access$100(Lcom/ice/box/fragments/ColorsNotification;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct/range {v3 .. v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    invoke-virtual/range {v4 .. v4}, Lcom/ice/box/fragments/ColorsNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10018f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    .line 174
    invoke-static/range {v4 .. v4}, Lcom/ice/box/fragments/ColorsNotification;->access$000(Lcom/ice/box/fragments/ColorsNotification;)I

    move-result v4

    invoke-static/range {v4 .. v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v3 .. v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v2, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    invoke-static/range {v2 .. v2}, Lcom/ice/box/fragments/ColorsNotification;->access$200(Lcom/ice/box/fragments/ColorsNotification;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    invoke-static/range {v3 .. v3}, Lcom/ice/box/fragments/ColorsNotification;->access$400(Lcom/ice/box/fragments/ColorsNotification;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 178
    iget-object v2, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    invoke-static/range {v2 .. v2}, Lcom/ice/box/fragments/ColorsNotification;->access$500(Lcom/ice/box/fragments/ColorsNotification;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/fragments/ColorsNotification;->access$600(Lcom/ice/box/fragments/ColorsNotification;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object p1, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/ColorsNotification;->access$700(Lcom/ice/box/fragments/ColorsNotification;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 183
    :catch_0
    iget-object p1, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    iget-object p1, p1, Lcom/ice/box/fragments/ColorsNotification;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    iget-object p0, p0, Lcom/ice/box/fragments/ColorsNotification$5;->this$0:Lcom/ice/box/fragments/ColorsNotification;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNotification;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f10006e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
