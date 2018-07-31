.class public Landroid/os/IncidentManager;
.super Ljava/lang/Object;
.source "IncidentManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "incident"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/os/IncidentManager;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method


# virtual methods
.method public reportIncident(Landroid/os/IncidentReportArgs;)V
    .locals 4
    .param p1, "args"    # Landroid/os/IncidentReportArgs;

    .prologue
    .line 58
    const-string/jumbo v2, "incident"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 57
    invoke-static {v2}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v1

    .line 59
    .local v1, "service":Landroid/os/IIncidentManager;
    if-nez v1, :cond_0

    .line 60
    const-string/jumbo v2, "incident"

    const-string/jumbo v3, "reportIncident can\'t find incident binder service"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void

    .line 65
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Landroid/os/IIncidentManager;->reportIncident(Landroid/os/IncidentReportArgs;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "incident"

    const-string/jumbo v3, "reportIncident failed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reportIncident(Ljava/lang/String;[B)V
    .locals 8
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "headerProto"    # [B

    .prologue
    .line 92
    iget-object v5, p0, Landroid/os/IncidentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "setting":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Landroid/os/IncidentReportArgs;->parseSetting(Ljava/lang/String;)Landroid/os/IncidentReportArgs;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 100
    .local v0, "args":Landroid/os/IncidentReportArgs;
    if-nez v0, :cond_0

    .line 101
    const-string/jumbo v5, "incident"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Incident report requested but disabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 96
    .end local v0    # "args":Landroid/os/IncidentReportArgs;
    :catch_0
    move-exception v2

    .line 97
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "incident"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bad value for incident report setting \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    return-void

    .line 106
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "args":Landroid/os/IncidentReportArgs;
    :cond_0
    invoke-virtual {v0, p2}, Landroid/os/IncidentReportArgs;->addHeader([B)V

    .line 110
    const-string/jumbo v5, "incident"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 109
    invoke-static {v5}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v3

    .line 111
    .local v3, "service":Landroid/os/IIncidentManager;
    if-nez v3, :cond_1

    .line 112
    const-string/jumbo v5, "incident"

    const-string/jumbo v6, "reportIncident can\'t find incident binder service"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void

    .line 117
    :cond_1
    const-string/jumbo v5, "incident"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Taking incident report: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :try_start_1
    invoke-interface {v3, v0}, Landroid/os/IIncidentManager;->reportIncident(Landroid/os/IncidentReportArgs;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    :goto_0
    return-void

    .line 120
    :catch_1
    move-exception v1

    .line 121
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v5, "incident"

    const-string/jumbo v6, "reportIncident failed"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
