.class Lcom/ice/box/SplashActivity$getNightlyOnlineVersionAndChangelog;
.super Landroid/os/AsyncTask;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ice/box/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "getNightlyOnlineVersionAndChangelog"
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
.field final content:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 642
    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ice/box/SplashActivity$getNightlyOnlineVersionAndChangelog;->content:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ice/box/SplashActivity$1;)V
    .locals 0

    .line 642
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/SplashActivity$getNightlyOnlineVersionAndChangelog;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 642
    check-cast p1, [Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/ice/box/SplashActivity$getNightlyOnlineVersionAndChangelog;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 p1, 0x0

    .line 650
    :try_start_0
    invoke-static {}, Lcom/ice/box/SplashActivity;->access$500()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 651
    invoke-static {}, Lcom/ice/box/SplashActivity;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://renovate-ice.com/svn/renovate-g95x/trunk/META-INF/com/google/android/aroma/changelog.txt"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 654
    :cond_0
    invoke-static {}, Lcom/ice/box/SplashActivity;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://renovate-ice.com/svn/renovate-g96x/trunk/META-INF/com/google/android/aroma/changelog.txt"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 658
    :cond_1
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://renovate-ice.com/svn/renovate-op6-magisk/trunk/changelog.txt"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 661
    :cond_2
    invoke-static {}, Lcom/ice/box/SplashActivity;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 662
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://renovate-ice.com/svn/soldier9312-g96x/trunk/META-INF/com/google/android/aroma/changelog.txt"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 665
    :cond_3
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://renovate-ice.com/svn/soldier9312-g95x/trunk/META-INF/com/google/android/aroma/changelog.txt"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 670
    :goto_0
    invoke-virtual/range {v0 .. v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p1, 0x1388

    .line 671
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 672
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 673
    invoke-virtual/range {v0 .. v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 675
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 676
    iget-object v2, p0, Lcom/ice/box/SplashActivity$getNightlyOnlineVersionAndChangelog;->content:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 678
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 683
    invoke-virtual/range {v0 .. v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object p1, v0

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 680
    :goto_2
    :try_start_2
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_5

    .line 683
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 686
    :cond_5
    :goto_3
    iget-object p0, p0, Lcom/ice/box/SplashActivity$getNightlyOnlineVersionAndChangelog;->content:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_4
    if-eqz p1, :cond_6

    .line 683
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 642
    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/ice/box/SplashActivity$getNightlyOnlineVersionAndChangelog;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 691
    invoke-static/range {p1 .. p1}, Lcom/ice/box/helpers/TweaksHelper;->isEmptyString(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 692
    invoke-static {}, Lcom/ice/box/SplashActivity;->access$1200()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "nightliesChangelog"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 694
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 695
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 697
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[^\\d.]"

    const-string v1, ""

    .line 699
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 698
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 700
    invoke-static {}, Lcom/ice/box/SplashActivity;->access$1200()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "onlineNightlyVersion"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 701
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 706
    :catch_0
    invoke-static {}, Lcom/ice/box/SplashActivity;->access$1200()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "onlineNightlyVersion"

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 703
    :catch_1
    invoke-static {}, Lcom/ice/box/SplashActivity;->access$1200()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "nightliesChangelog"

    invoke-static {}, Lcom/ice/box/GlobalStaticContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 704
    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 709
    :cond_0
    invoke-static {}, Lcom/ice/box/SplashActivity;->access$1200()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "nightliesChangelog"

    invoke-static {}, Lcom/ice/box/GlobalStaticContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 710
    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method
