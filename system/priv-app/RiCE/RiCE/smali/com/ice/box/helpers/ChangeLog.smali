.class public Lcom/ice/box/helpers/ChangeLog;
.super Ljava/lang/Object;
.source "ChangeLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ice/box/helpers/ChangeLog$Listmode;
    }
.end annotation


# static fields
.field private static final EOCL:Ljava/lang/String; = "END_OF_CHANGE_LOG"

.field private static final NO_VERSION:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "ChangeLog"

.field private static final VERSION_KEY:Ljava/lang/String; = "PREFS_VERSION_KEY"


# instance fields
.field private final context:Landroid/content/Context;

.field private lastVersion:Ljava/lang/String;

.field private listMode:Lcom/ice/box/helpers/ChangeLog$Listmode;

.field private sb:Ljava/lang/StringBuffer;

.field private thisVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ice/box/helpers/ChangeLog;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 2

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/ice/box/helpers/ChangeLog$Listmode;->NONE:Lcom/ice/box/helpers/ChangeLog$Listmode;

    iput-object v0, p0, Lcom/ice/box/helpers/ChangeLog;->listMode:Lcom/ice/box/helpers/ChangeLog$Listmode;

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/ice/box/helpers/ChangeLog;->sb:Ljava/lang/StringBuffer;

    .line 57
    iput-object p1, p0, Lcom/ice/box/helpers/ChangeLog;->context:Landroid/content/Context;

    const-string v0, "PREFS_VERSION_KEY"

    const-string v1, ""

    .line 60
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ice/box/helpers/ChangeLog;->lastVersion:Ljava/lang/String;

    const-string p2, "ChangeLog"

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ice/box/helpers/ChangeLog;->lastVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p1, p0, Lcom/ice/box/helpers/ChangeLog;->thisVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, ""

    .line 65
    iput-object p2, p0, Lcom/ice/box/helpers/ChangeLog;->thisVersion:Ljava/lang/String;

    const-string p2, "ChangeLog"

    const-string v0, "could not get version name from manifest!"

    .line 66
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    const-string p1, "ChangeLog"

    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "appVersion: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ice/box/helpers/ChangeLog;->thisVersion:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected closeList()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/ice/box/helpers/ChangeLog;->listMode:Lcom/ice/box/helpers/ChangeLog$Listmode;

    sget-object v1, Lcom/ice/box/helpers/ChangeLog$Listmode;->ORDERED:Lcom/ice/box/helpers/ChangeLog$Listmode;

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/ice/box/helpers/ChangeLog;->sb:Ljava/lang/StringBuffer;

    const-string v1, "</ol></div>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/ice/box/helpers/ChangeLog;->listMode:Lcom/ice/box/helpers/ChangeLog$Listmode;

    sget-object v1, Lcom/ice/box/helpers/ChangeLog$Listmode;->UNORDERED:Lcom/ice/box/helpers/ChangeLog$Listmode;

    if-ne v0, v1, :cond_1

    .line 265
    iget-object v0, p0, Lcom/ice/box/helpers/ChangeLog;->sb:Ljava/lang/StringBuffer;

    const-string v1, "</ul></div>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    :cond_1
    :goto_0
    sget-object v0, Lcom/ice/box/helpers/ChangeLog$Listmode;->NONE:Lcom/ice/box/helpers/ChangeLog$Listmode;

    iput-object v0, p0, Lcom/ice/box/helpers/ChangeLog;->listMode:Lcom/ice/box/helpers/ChangeLog$Listmode;

    return-void
.end method

.method public dontuseSetLastVersion(Ljava/lang/String;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/ice/box/helpers/ChangeLog;->lastVersion:Ljava/lang/String;

    return-void
.end method

.method public firstRun()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/ice/box/helpers/ChangeLog;->lastVersion:Ljava/lang/String;

    iget-object p0, p0, Lcom/ice/box/helpers/ChangeLog;->thisVersion:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public firstRunEver()Z
    .locals 1

    const-string v0, ""

    .line 103
    iget-object p0, p0, Lcom/ice/box/helpers/ChangeLog;->lastVersion:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected getDialog(Z)Landroid/app/AlertDialog;
    .locals 8

    .line 123
    new-instance v6, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/ice/box/helpers/ChangeLog;->context:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    .line 125
    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 126
    invoke-virtual/range {p0 .. p1}, Lcom/ice/box/helpers/ChangeLog;->getLog(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/ice/box/helpers/ChangeLog;->context:Landroid/content/Context;

    const v3, 0x1030225

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    iget-object v1, p0, Lcom/ice/box/helpers/ChangeLog;->context:Landroid/content/Context;

    invoke-virtual/range {v1 .. v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_0

    const v2, 0x7f10003d

    goto :goto_0

    :cond_0
    const v2, 0x7f100040

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 131
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/ice/box/helpers/ChangeLog;->context:Landroid/content/Context;

    .line 133
    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ice/box/helpers/ChangeLog$1;

    invoke-direct {v3, p0}, Lcom/ice/box/helpers/ChangeLog$1;-><init>(Lcom/ice/box/helpers/ChangeLog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-nez p1, :cond_1

    const p1, 0x7f10003f

    .line 142
    new-instance v1, Lcom/ice/box/helpers/ChangeLog$2;

    invoke-direct {v1, p0}, Lcom/ice/box/helpers/ChangeLog$2;-><init>(Lcom/ice/box/helpers/ChangeLog;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    :cond_1
    invoke-virtual/range {v0 .. v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public getFullLog()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 178
    invoke-virtual {p0, v0}, Lcom/ice/box/helpers/ChangeLog;->getLog(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFullLogDialog()Landroid/app/AlertDialog;
    .locals 1

    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0, v0}, Lcom/ice/box/helpers/ChangeLog;->getDialog(Z)Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public getLastVersion()Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/ice/box/helpers/ChangeLog;->lastVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getLog()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, v0}, Lcom/ice/box/helpers/ChangeLog;->getLog(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getLog(Z)Ljava/lang/String;
    .locals 8

    .line 183
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/ice/box/helpers/ChangeLog;->sb:Ljava/lang/StringBuffer;

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/ice/box/helpers/ChangeLog;->context:Landroid/content/Context;

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 186
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v0, 0x0

    :goto_0
    move v2, v0

    .line 191
    :cond_0
    :goto_1
    invoke-virtual/range {v1 .. v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 192
    invoke-virtual/range {v3 .. v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-virtual/range {v3 .. v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_2

    :cond_1
    move v4, v0

    :goto_2
    const/16 v5, 0x24

    const/4 v6, 0x1

    if-ne v4, v5, :cond_3

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/ChangeLog;->closeList()V

    .line 197
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v3 .. v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_0

    .line 200
    iget-object v4, p0, Lcom/ice/box/helpers/ChangeLog;->lastVersion:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v6

    goto :goto_1

    :cond_2
    const-string v4, "END_OF_CHANGE_LOG"

    .line 202
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_3
    if-nez v2, :cond_0

    const/16 v5, 0x21

    if-eq v4, v5, :cond_8

    const/16 v5, 0x23

    if-eq v4, v5, :cond_7

    const/16 v5, 0x25

    if-eq v4, v5, :cond_6

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_5

    const/16 v5, 0x5f

    if-eq v4, v5, :cond_4

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/ChangeLog;->closeList()V

    .line 236
    iget-object v4, p0, Lcom/ice/box/helpers/ChangeLog;->sb:Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct/range {v5 .. v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v5 .. v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 215
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/ChangeLog;->closeList()V

    .line 216
    iget-object v4, p0, Lcom/ice/box/helpers/ChangeLog;->sb:Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct/range {v5 .. v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<div class=\'subtitle\'>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v3 .. v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</div>\n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v5 .. v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 230
    :cond_5
    sget-object v4, Lcom/ice/box/helpers/ChangeLog$Listmode;->UNORDERED:Lcom/ice/box/helpers/ChangeLog$Listmode;

    invoke-virtual {p0, v4}, Lcom/ice/box/helpers/ChangeLog;->openList(Lcom/ice/box/helpers/ChangeLog$Listmode;)V

    .line 231
    iget-object v4, p0, Lcom/ice/box/helpers/ChangeLog;->sb:Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct/range {v5 .. v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<li>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v3 .. v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</li>\n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v5 .. v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 210
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/ChangeLog;->closeList()V

    .line 211
    iget-object v4, p0, Lcom/ice/box/helpers/ChangeLog;->sb:Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct/range {v5 .. v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<div class=\'title\'>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v3 .. v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</div>\n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v5 .. v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 225
    :cond_7
    sget-object v4, Lcom/ice/box/helpers/ChangeLog$Listmode;->ORDERED:Lcom/ice/box/helpers/ChangeLog$Listmode;

    invoke-virtual {p0, v4}, Lcom/ice/box/helpers/ChangeLog;->openList(Lcom/ice/box/helpers/ChangeLog$Listmode;)V

    .line 226
    iget-object v4, p0, Lcom/ice/box/helpers/ChangeLog;->sb:Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct/range {v5 .. v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<li>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v3 .. v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</li>\n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v5 .. v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 220
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/ChangeLog;->closeList()V

    .line 221
    iget-object v4, p0, Lcom/ice/box/helpers/ChangeLog;->sb:Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct/range {v5 .. v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<div class=\'freetext\'>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v3 .. v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</div>\n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v5 .. v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 240
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/ChangeLog;->closeList()V

    .line 241
    invoke-virtual/range {v1 .. v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 243
    invoke-virtual/range {p1 .. p1}, Ljava/io/IOException;->printStackTrace()V

    .line 246
    :goto_3
    iget-object p0, p0, Lcom/ice/box/helpers/ChangeLog;->sb:Ljava/lang/StringBuffer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLogDialog()Landroid/app/AlertDialog;
    .locals 1

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/ChangeLog;->firstRunEver()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ice/box/helpers/ChangeLog;->getDialog(Z)Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public getThisVersion()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/ice/box/helpers/ChangeLog;->thisVersion:Ljava/lang/String;

    return-object p0
.end method

.method protected openList(Lcom/ice/box/helpers/ChangeLog$Listmode;)V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/ice/box/helpers/ChangeLog;->listMode:Lcom/ice/box/helpers/ChangeLog$Listmode;

    if-eq v0, p1, :cond_2

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/ChangeLog;->closeList()V

    .line 252
    sget-object v0, Lcom/ice/box/helpers/ChangeLog$Listmode;->ORDERED:Lcom/ice/box/helpers/ChangeLog$Listmode;

    if-ne p1, v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/ice/box/helpers/ChangeLog;->sb:Ljava/lang/StringBuffer;

    const-string v1, "<div class=\'list\'><ol>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 254
    :cond_0
    sget-object v0, Lcom/ice/box/helpers/ChangeLog$Listmode;->UNORDERED:Lcom/ice/box/helpers/ChangeLog$Listmode;

    if-ne p1, v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/ice/box/helpers/ChangeLog;->sb:Ljava/lang/StringBuffer;

    const-string v1, "<div class=\'list\'><ul>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/ice/box/helpers/ChangeLog;->listMode:Lcom/ice/box/helpers/ChangeLog$Listmode;

    :cond_2
    return-void
.end method

.method protected updateVersionInPreferences()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/ice/box/helpers/ChangeLog;->context:Landroid/content/Context;

    invoke-static/range {v0 .. v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 155
    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREFS_VERSION_KEY"

    .line 156
    iget-object p0, p0, Lcom/ice/box/helpers/ChangeLog;->thisVersion:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 163
    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
