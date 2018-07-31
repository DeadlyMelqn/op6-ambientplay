.class Lcom/ice/box/SplashActivity$getStableOnlineVersion;
.super Landroid/os/AsyncTask;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ice/box/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "getStableOnlineVersion"
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
.field latestROMVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 570
    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ice/box/SplashActivity$1;)V
    .locals 0

    .line 570
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/SplashActivity$getStableOnlineVersion;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 570
    check-cast p1, [Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/ice/box/SplashActivity$getStableOnlineVersion;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 p1, 0x0

    .line 578
    :try_start_0
    invoke-static {}, Lcom/ice/box/SplashActivity;->access$500()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 579
    invoke-static {}, Lcom/ice/box/SplashActivity;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://renovate-ice.com/svn/renovate-g96x/trunk/version.txt"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 581
    :cond_0
    invoke-static {}, Lcom/ice/box/SplashActivity;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://renovate-ice.com/svn/renovate-g95x/trunk/version.txt"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 584
    :cond_1
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://renovate-ice.com/svn/renovate-op6-magisk/trunk/version.txt"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 587
    :cond_2
    invoke-static {}, Lcom/ice/box/SplashActivity;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 588
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://renovate-ice.com/svn/soldier9312-g96x/trunk/version.txt"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 590
    :cond_3
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://renovate-ice.com/svn/soldier9312-g95x/trunk/version.txt"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 594
    :goto_0
    invoke-virtual/range {v0 .. v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p1, 0x1388

    .line 595
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 596
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 597
    invoke-virtual/range {v0 .. v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 599
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 603
    iput-object v1, p0, Lcom/ice/box/SplashActivity$getStableOnlineVersion;->latestROMVersion:Ljava/lang/String;

    goto :goto_1

    .line 605
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 610
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

    .line 607
    :goto_2
    :try_start_2
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_5

    .line 610
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 614
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/ice/box/SplashActivity$getStableOnlineVersion;->latestROMVersion:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/helpers/TweaksHelper;->isEmptyString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "1.0"

    .line 615
    iput-object p1, p0, Lcom/ice/box/SplashActivity$getStableOnlineVersion;->latestROMVersion:Ljava/lang/String;

    .line 626
    :cond_6
    iget-object p0, p0, Lcom/ice/box/SplashActivity$getStableOnlineVersion;->latestROMVersion:Ljava/lang/String;

    return-object p0

    :goto_4
    if-eqz p1, :cond_7

    .line 610
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 570
    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/ice/box/SplashActivity$getStableOnlineVersion;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 633
    :try_start_0
    invoke-static {}, Lcom/ice/box/SplashActivity;->access$1200()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "onlineStableVersionText"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 634
    invoke-static {}, Lcom/ice/box/SplashActivity;->access$1200()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "onlineStableVersion"

    const-string v1, "[\\D]"

    const-string v2, ""

    .line 635
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 634
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 635
    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 637
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
