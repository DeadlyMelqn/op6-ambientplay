.class abstract Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;
.super Landroid/telephony/mbms/DownloadStateCallback;
.source "MbmsDownloadServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "FilteredDownloadStateCallback"
.end annotation


# instance fields
.field private final mCallback:Landroid/telephony/mbms/IDownloadStateCallback;


# direct methods
.method public constructor <init>(Landroid/telephony/mbms/IDownloadStateCallback;I)V
    .locals 0
    .param p1, "callback"    # Landroid/telephony/mbms/IDownloadStateCallback;
    .param p2, "callbackFlags"    # I

    .prologue
    .line 55
    invoke-direct {p0, p2}, Landroid/telephony/mbms/DownloadStateCallback;-><init>(I)V

    .line 56
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;->mCallback:Landroid/telephony/mbms/IDownloadStateCallback;

    .line 57
    return-void
.end method


# virtual methods
.method public onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    .locals 8
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "fileInfo"    # Landroid/telephony/mbms/FileInfo;
    .param p3, "currentDownloadSize"    # I
    .param p4, "fullDownloadSize"    # I
    .param p5, "currentDecodedSize"    # I
    .param p6, "fullDecodedSize"    # I

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;->isFilterFlagSet(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    return-void

    .line 67
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;->mCallback:Landroid/telephony/mbms/IDownloadStateCallback;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/telephony/mbms/IDownloadStateCallback;->onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v7

    .line 70
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v7}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;->onRemoteException(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method protected abstract onRemoteException(Landroid/os/RemoteException;)V
.end method

.method public onStateUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    .locals 2
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "fileInfo"    # Landroid/telephony/mbms/FileInfo;
    .param p3, "state"    # I

    .prologue
    .line 77
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;->isFilterFlagSet(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    return-void

    .line 81
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;->mCallback:Landroid/telephony/mbms/IDownloadStateCallback;

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/mbms/IDownloadStateCallback;->onStateUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;->onRemoteException(Landroid/os/RemoteException;)V

    goto :goto_0
.end method
