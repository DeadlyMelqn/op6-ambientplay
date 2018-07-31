.class Lcom/ice/box/fragments/Home$1;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/fragments/Home;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/fragments/Home;


# direct methods
.method constructor <init>(Lcom/ice/box/fragments/Home;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/ice/box/fragments/Home$1;->this$0:Lcom/ice/box/fragments/Home;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 171
    sget-boolean p2, Lcom/ice/box/MainActivity;->isS8:Z

    if-eqz p2, :cond_0

    .line 172
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "http://renovate-ice.com/nightlies_g95x.html"

    .line 173
    invoke-static/range {v1 .. v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 174
    iget-object p0, p0, Lcom/ice/box/fragments/Home$1;->this$0:Lcom/ice/box/fragments/Home;

    invoke-virtual {p0, p2}, Lcom/ice/box/fragments/Home;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 176
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "http://renovate-ice.com/nightlies_g96x.html"

    .line 177
    invoke-static/range {v1 .. v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 178
    iget-object p0, p0, Lcom/ice/box/fragments/Home$1;->this$0:Lcom/ice/box/fragments/Home;

    invoke-virtual {p0, p2}, Lcom/ice/box/fragments/Home;->startActivity(Landroid/content/Intent;)V

    .line 181
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 182
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
