.class Lcom/ice/box/fragments/License$getLegacyLicense;
.super Landroid/os/AsyncTask;
.source "License.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ice/box/fragments/License;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "getLegacyLicense"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field covertOps:Z

.field result:Ljava/lang/String;

.field final synthetic this$0:Lcom/ice/box/fragments/License;


# direct methods
.method private constructor <init>(Lcom/ice/box/fragments/License;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/ice/box/fragments/License$getLegacyLicense;->this$0:Lcom/ice/box/fragments/License;

    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 286
    iput-object p1, p0, Lcom/ice/box/fragments/License$getLegacyLicense;->result:Ljava/lang/String;

    const/4 p1, 0x0

    .line 287
    iput-boolean p1, p0, Lcom/ice/box/fragments/License$getLegacyLicense;->covertOps:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ice/box/fragments/License;Lcom/ice/box/fragments/License$1;)V
    .locals 0

    .line 285
    invoke-direct/range {p0 .. p1}, Lcom/ice/box/fragments/License$getLegacyLicense;-><init>(Lcom/ice/box/fragments/License;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 285
    check-cast p1, [Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/ice/box/fragments/License$getLegacyLicense;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 294
    :try_start_0
    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct/range {v4 .. v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://renovate-ice.com/management/search.php?mail="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v4 .. v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {v3 .. v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x1388

    .line 297
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 298
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 299
    invoke-virtual/range {v3 .. v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 302
    :goto_0
    invoke-virtual/range {v2 .. v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 303
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct/range {v5 .. v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ice/box/fragments/License$getLegacyLicense;->result:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v5 .. v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ice/box/fragments/License$getLegacyLicense;->result:Ljava/lang/String;

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual/range {v2 .. v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v3, v2

    goto :goto_3

    :catch_1
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    .line 307
    :goto_1
    :try_start_2
    invoke-virtual/range {v2 .. v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_1

    .line 310
    :goto_2
    invoke-virtual/range {v3 .. v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 313
    :cond_1
    aget-object v2, p1, v1

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 314
    iput-boolean v1, p0, Lcom/ice/box/fragments/License$getLegacyLicense;->covertOps:Z

    .line 316
    :cond_2
    iget-object v1, p0, Lcom/ice/box/fragments/License$getLegacyLicense;->this$0:Lcom/ice/box/fragments/License;

    invoke-static/range {v1 .. v1}, Lcom/ice/box/fragments/License;->access$400(Lcom/ice/box/fragments/License;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface/range {v1 .. v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "googleAccount"

    aget-object p1, p1, v0

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 317
    iget-object p0, p0, Lcom/ice/box/fragments/License$getLegacyLicense;->result:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    :goto_3
    if-eqz v3, :cond_3

    .line 310
    invoke-virtual/range {v3 .. v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 285
    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/ice/box/fragments/License$getLegacyLicense;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 322
    iget-boolean v0, p0, Lcom/ice/box/fragments/License$getLegacyLicense;->covertOps:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "true"

    .line 323
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 325
    iget-object p1, p0, Lcom/ice/box/fragments/License$getLegacyLicense;->this$0:Lcom/ice/box/fragments/License;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/License;->access$400(Lcom/ice/box/fragments/License;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "isLegacyLicense"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 327
    iget-object p0, p0, Lcom/ice/box/fragments/License$getLegacyLicense;->this$0:Lcom/ice/box/fragments/License;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/fragments/License;->access$100(Lcom/ice/box/fragments/License;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/TweaksHelper;->restartSelfOnLicenseOK()V

    goto/16 :goto_0

    .line 330
    :cond_0
    iget-object p1, p0, Lcom/ice/box/fragments/License$getLegacyLicense;->this$0:Lcom/ice/box/fragments/License;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/License;->access$100(Lcom/ice/box/fragments/License;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/ice/box/fragments/License$getLegacyLicense;->this$0:Lcom/ice/box/fragments/License;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100096

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 331
    iget-object p0, p0, Lcom/ice/box/fragments/License$getLegacyLicense;->this$0:Lcom/ice/box/fragments/License;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/fragments/License;->access$400(Lcom/ice/box/fragments/License;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "isLegacyLicense"

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    const-string v0, "true"

    .line 334
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 335
    iget-object p1, p0, Lcom/ice/box/fragments/License$getLegacyLicense;->this$0:Lcom/ice/box/fragments/License;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/License;->access$400(Lcom/ice/box/fragments/License;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "isLegacyLicense"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 336
    iget-object p1, p0, Lcom/ice/box/fragments/License$getLegacyLicense;->this$0:Lcom/ice/box/fragments/License;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/License;->access$400(Lcom/ice/box/fragments/License;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "isException"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 337
    iget-object p0, p0, Lcom/ice/box/fragments/License$getLegacyLicense;->this$0:Lcom/ice/box/fragments/License;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/fragments/License;->access$100(Lcom/ice/box/fragments/License;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/TweaksHelper;->restartSelfOnLicenseOK()V

    goto :goto_0

    .line 339
    :cond_2
    iget-object p1, p0, Lcom/ice/box/fragments/License$getLegacyLicense;->this$0:Lcom/ice/box/fragments/License;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/License;->access$400(Lcom/ice/box/fragments/License;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "isException"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 340
    iget-object p0, p0, Lcom/ice/box/fragments/License$getLegacyLicense;->this$0:Lcom/ice/box/fragments/License;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/fragments/License;->access$100(Lcom/ice/box/fragments/License;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p0

    const-string p1, "Sorry mate, no cheating"

    invoke-virtual {p0, p1}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
