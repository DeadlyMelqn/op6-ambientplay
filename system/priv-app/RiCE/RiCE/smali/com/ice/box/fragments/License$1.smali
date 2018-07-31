.class Lcom/ice/box/fragments/License$1;
.super Ljava/lang/Object;
.source "License.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/fragments/License;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/fragments/License;


# direct methods
.method constructor <init>(Lcom/ice/box/fragments/License;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/ice/box/fragments/License$1;->this$0:Lcom/ice/box/fragments/License;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 11

    .line 147
    iget-object p1, p0, Lcom/ice/box/fragments/License$1;->this$0:Lcom/ice/box/fragments/License;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/License;->access$008(Lcom/ice/box/fragments/License;)I

    .line 148
    iget-object p1, p0, Lcom/ice/box/fragments/License$1;->this$0:Lcom/ice/box/fragments/License;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/License;->access$000(Lcom/ice/box/fragments/License;)I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 165
    :pswitch_0
    iget-object p1, p0, Lcom/ice/box/fragments/License$1;->this$0:Lcom/ice/box/fragments/License;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/License;->access$200(Lcom/ice/box/fragments/License;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    if-nez p1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/ice/box/fragments/License$1;->this$0:Lcom/ice/box/fragments/License;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/License;->access$100(Lcom/ice/box/fragments/License;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p1

    const-string v2, "Enough touching, select your damn account and enjoy the damn freebie"

    invoke-virtual {p1, v2}, Lcom/ice/box/helpers/TweaksHelper;->MakeToastShort(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string p1, "com.google"

    .line 169
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/google/android/gms/common/AccountPicker;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 172
    iget-object p0, p0, Lcom/ice/box/fragments/License$1;->this$0:Lcom/ice/box/fragments/License;

    invoke-virtual {p0, p1, v1}, Lcom/ice/box/fragments/License;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/ice/box/fragments/License$1;->this$0:Lcom/ice/box/fragments/License;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/License;->access$100(Lcom/ice/box/fragments/License;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p1

    const-string v2, "checking if you should have a freebie"

    invoke-virtual {p1, v2}, Lcom/ice/box/helpers/TweaksHelper;->MakeToastShort(Ljava/lang/String;)V

    .line 179
    new-instance p1, Lcom/ice/box/fragments/License$getLegacyLicense;

    iget-object v2, p0, Lcom/ice/box/fragments/License$1;->this$0:Lcom/ice/box/fragments/License;

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3}, Lcom/ice/box/fragments/License$getLegacyLicense;-><init>(Lcom/ice/box/fragments/License;Lcom/ice/box/fragments/License$1;)V

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/ice/box/fragments/License$1;->this$0:Lcom/ice/box/fragments/License;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/fragments/License;->access$200(Lcom/ice/box/fragments/License;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "1"

    aput-object p0, v1, v0

    invoke-virtual {p1, v1}, Lcom/ice/box/fragments/License$getLegacyLicense;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 160
    :pswitch_1
    iget-object p0, p0, Lcom/ice/box/fragments/License$1;->this$0:Lcom/ice/box/fragments/License;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/fragments/License;->access$100(Lcom/ice/box/fragments/License;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p0

    const-string p1, "Touch me one more time..."

    invoke-virtual {p0, p1}, Lcom/ice/box/helpers/TweaksHelper;->MakeToastShort(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object p0, p0, Lcom/ice/box/fragments/License$1;->this$0:Lcom/ice/box/fragments/License;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/fragments/License;->access$100(Lcom/ice/box/fragments/License;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p0

    const-string p1, "Touch me two more times..."

    invoke-virtual {p0, p1}, Lcom/ice/box/helpers/TweaksHelper;->MakeToastShort(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :pswitch_3
    iget-object p0, p0, Lcom/ice/box/fragments/License$1;->this$0:Lcom/ice/box/fragments/License;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/fragments/License;->access$100(Lcom/ice/box/fragments/License;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p0

    const-string p1, "Touch me three more times..."

    invoke-virtual {p0, p1}, Lcom/ice/box/helpers/TweaksHelper;->MakeToastShort(Ljava/lang/String;)V

    :catch_0
    :goto_0
    :pswitch_4
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
