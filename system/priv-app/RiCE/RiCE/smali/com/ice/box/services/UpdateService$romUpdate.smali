.class Lcom/ice/box/services/UpdateService$romUpdate;
.super Landroid/os/AsyncTask;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ice/box/services/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "romUpdate"
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

.field isICE:Z

.field final isS8:Z

.field final isS9:Z

.field latestROMVersion:Ljava/lang/String;

.field final synthetic this$0:Lcom/ice/box/services/UpdateService;


# direct methods
.method private constructor <init>(Lcom/ice/box/services/UpdateService;)V
    .locals 2

    .line 151
    iput-object p1, p0, Lcom/ice/box/services/UpdateService$romUpdate;->this$0:Lcom/ice/box/services/UpdateService;

    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    .line 152
    iget-object p1, p0, Lcom/ice/box/services/UpdateService$romUpdate;->this$0:Lcom/ice/box/services/UpdateService;

    iget-object p1, p1, Lcom/ice/box/services/UpdateService;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isS8"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/services/UpdateService$romUpdate;->isS8:Z

    .line 153
    iget-object p1, p0, Lcom/ice/box/services/UpdateService$romUpdate;->this$0:Lcom/ice/box/services/UpdateService;

    iget-object p1, p1, Lcom/ice/box/services/UpdateService;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isS9"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/services/UpdateService$romUpdate;->isS9:Z

    .line 154
    iget-object p1, p0, Lcom/ice/box/services/UpdateService$romUpdate;->this$0:Lcom/ice/box/services/UpdateService;

    iget-object p1, p1, Lcom/ice/box/services/UpdateService;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isARHD"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/services/UpdateService$romUpdate;->isARHD:Z

    .line 155
    iget-object p1, p0, Lcom/ice/box/services/UpdateService$romUpdate;->this$0:Lcom/ice/box/services/UpdateService;

    iget-object p1, p1, Lcom/ice/box/services/UpdateService;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isICE"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/services/UpdateService$romUpdate;->isICE:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ice/box/services/UpdateService;Lcom/ice/box/services/UpdateService$1;)V
    .locals 0

    .line 151
    invoke-direct/range {p0 .. p1}, Lcom/ice/box/services/UpdateService$romUpdate;-><init>(Lcom/ice/box/services/UpdateService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 151
    check-cast p1, [Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/ice/box/services/UpdateService$romUpdate;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 p1, 0x0

    .line 163
    :try_start_0
    iget-boolean v0, p0, Lcom/ice/box/services/UpdateService$romUpdate;->isICE:Z

    if-eqz v0, :cond_2

    .line 164
    iget-boolean v0, p0, Lcom/ice/box/services/UpdateService$romUpdate;->isS8:Z

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://renovate-ice.com/svn/renovate-g95x/trunk/version.txt"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_0
    iget-boolean v0, p0, Lcom/ice/box/services/UpdateService$romUpdate;->isS9:Z

    if-eqz v0, :cond_1

    .line 167
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://renovate-ice.com/svn/renovate-g96x/trunk/version.txt"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_1
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://renovate-ice.com/svn/renovate-op6-magisk/trunk/version.txt"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_2
    iget-boolean v0, p0, Lcom/ice/box/services/UpdateService$romUpdate;->isS8:Z

    if-eqz v0, :cond_3

    .line 173
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://renovate-ice.com/svn/soldier9312-g95x/trunk/version.txt"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_3
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://renovate-ice.com/svn/soldier9312-g96x/trunk/version.txt"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 178
    :goto_0
    invoke-virtual/range {v0 .. v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p1, 0x1388

    .line 179
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 181
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 182
    invoke-virtual/range {v0 .. v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 184
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 185
    iput-object v1, p0, Lcom/ice/box/services/UpdateService$romUpdate;->latestROMVersion:Ljava/lang/String;

    goto :goto_1

    .line 187
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 192
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

    .line 189
    :goto_2
    :try_start_2
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_5

    .line 192
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 195
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/ice/box/services/UpdateService$romUpdate;->latestROMVersion:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/helpers/TweaksHelper;->isEmptyString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "1.0"

    .line 196
    iput-object p1, p0, Lcom/ice/box/services/UpdateService$romUpdate;->latestROMVersion:Ljava/lang/String;

    .line 198
    :cond_6
    iget-object p0, p0, Lcom/ice/box/services/UpdateService$romUpdate;->latestROMVersion:Ljava/lang/String;

    return-object p0

    :goto_4
    if-eqz p1, :cond_7

    .line 192
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 151
    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/ice/box/services/UpdateService$romUpdate;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/ice/box/services/UpdateService$romUpdate;->this$0:Lcom/ice/box/services/UpdateService;

    iget-object v0, v0, Lcom/ice/box/services/UpdateService;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "onlineStableVersionText"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 205
    iget-object v0, p0, Lcom/ice/box/services/UpdateService$romUpdate;->this$0:Lcom/ice/box/services/UpdateService;

    iget-object v0, v0, Lcom/ice/box/services/UpdateService;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "onlineStableVersion"

    const-string v2, "[\\D]"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v2 .. v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 206
    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 208
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/ice/box/services/UpdateService$romUpdate;->this$0:Lcom/ice/box/services/UpdateService;

    iget-object v0, v0, Lcom/ice/box/services/UpdateService;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "localStableVersion"

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "[\\D]"

    const-string v2, ""

    .line 211
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ge v0, p1, :cond_0

    .line 213
    iget-object p0, p0, Lcom/ice/box/services/UpdateService$romUpdate;->this$0:Lcom/ice/box/services/UpdateService;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/services/UpdateService;->access$200(Lcom/ice/box/services/UpdateService;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/TweaksHelper;->createRomNotification()V

    :cond_0
    return-void
.end method
