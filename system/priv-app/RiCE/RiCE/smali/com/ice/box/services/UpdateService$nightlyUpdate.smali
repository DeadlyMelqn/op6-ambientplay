.class Lcom/ice/box/services/UpdateService$nightlyUpdate;
.super Landroid/os/AsyncTask;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ice/box/services/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "nightlyUpdate"
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
.field final isARHD:Z

.field final isICE:Z

.field final isS8:Z

.field final isS9:Z

.field nightlyRevision:Ljava/lang/String;

.field sharedPref:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcom/ice/box/services/UpdateService;


# direct methods
.method private constructor <init>(Lcom/ice/box/services/UpdateService;)V
    .locals 2

    .line 101
    iput-object p1, p0, Lcom/ice/box/services/UpdateService$nightlyUpdate;->this$0:Lcom/ice/box/services/UpdateService;

    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    .line 102
    iget-object p1, p0, Lcom/ice/box/services/UpdateService$nightlyUpdate;->this$0:Lcom/ice/box/services/UpdateService;

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/services/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/services/UpdateService$nightlyUpdate;->sharedPref:Landroid/content/SharedPreferences;

    .line 103
    iget-object p1, p0, Lcom/ice/box/services/UpdateService$nightlyUpdate;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isS8"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/services/UpdateService$nightlyUpdate;->isS8:Z

    .line 104
    iget-object p1, p0, Lcom/ice/box/services/UpdateService$nightlyUpdate;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isS9"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/services/UpdateService$nightlyUpdate;->isS9:Z

    .line 105
    iget-object p1, p0, Lcom/ice/box/services/UpdateService$nightlyUpdate;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isARHD"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/services/UpdateService$nightlyUpdate;->isARHD:Z

    .line 106
    iget-object p1, p0, Lcom/ice/box/services/UpdateService$nightlyUpdate;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isICE"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/services/UpdateService$nightlyUpdate;->isICE:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ice/box/services/UpdateService;Lcom/ice/box/services/UpdateService$1;)V
    .locals 0

    .line 101
    invoke-direct/range {p0 .. p1}, Lcom/ice/box/services/UpdateService$nightlyUpdate;-><init>(Lcom/ice/box/services/UpdateService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 101
    check-cast p1, [Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/ice/box/services/UpdateService$nightlyUpdate;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 p1, 0x0

    .line 116
    :try_start_0
    iget-boolean v0, p0, Lcom/ice/box/services/UpdateService$nightlyUpdate;->isS8:Z

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://renovate-ice.com/svn/renovate-g95x/trunk/META-INF/com/google/android/aroma/changelog.txt"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-boolean v0, p0, Lcom/ice/box/services/UpdateService$nightlyUpdate;->isS9:Z

    if-eqz v0, :cond_1

    .line 119
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://renovate-ice.com/svn/renovate-g96x/trunk/META-INF/com/google/android/aroma/changelog.txt"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_1
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://renovate-ice.com/svn/renovate-op6-magisk/trunk/changelog.txt"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 125
    :goto_0
    invoke-virtual/range {v0 .. v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 127
    invoke-virtual/range {v0 .. v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 128
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ice/box/services/UpdateService$nightlyUpdate;->nightlyRevision:Ljava/lang/String;

    .line 129
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 134
    invoke-virtual/range {v0 .. v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p1, v0

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 131
    :goto_1
    :try_start_2
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    .line 134
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 137
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/ice/box/services/UpdateService$nightlyUpdate;->nightlyRevision:Ljava/lang/String;

    return-object p0

    :goto_3
    if-eqz p1, :cond_3

    .line 134
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 101
    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/ice/box/services/UpdateService$nightlyUpdate;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    const-string v0, "[^\\d.]"

    const-string v1, ""

    .line 142
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 143
    iget-object v0, p0, Lcom/ice/box/services/UpdateService$nightlyUpdate;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "onlineNightlyVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 144
    iget-object v0, p0, Lcom/ice/box/services/UpdateService$nightlyUpdate;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "localNightlyVersion"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 145
    iget-object v1, p0, Lcom/ice/box/services/UpdateService$nightlyUpdate;->sharedPref:Landroid/content/SharedPreferences;

    const-string v2, "isICE"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    if-le p1, v0, :cond_0

    .line 147
    iget-object p0, p0, Lcom/ice/box/services/UpdateService$nightlyUpdate;->this$0:Lcom/ice/box/services/UpdateService;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/services/UpdateService;->access$200(Lcom/ice/box/services/UpdateService;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/TweaksHelper;->createNightlyNotification()V

    :cond_0
    return-void
.end method
