.class public Landroid/telephony/mbms/DownloadStateCallback;
.super Ljava/lang/Object;
.source "DownloadStateCallback.java"


# static fields
.field public static final ALL_UPDATES:I = 0x0

.field public static final PROGRESS_UPDATES:I = 0x1

.field public static final STATE_UPDATES:I = 0x2


# instance fields
.field private final mCallbackFilterFlags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/mbms/DownloadStateCallback;->mCallbackFilterFlags:I

    .line 66
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "filterFlags"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Landroid/telephony/mbms/DownloadStateCallback;->mCallbackFilterFlags:I

    .line 76
    return-void
.end method


# virtual methods
.method public getCallbackFilterFlags()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Landroid/telephony/mbms/DownloadStateCallback;->mCallbackFilterFlags:I

    return v0
.end method

.method public final isFilterFlagSet(I)Z
    .locals 3
    .param p1, "flag"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    iget v2, p0, Landroid/telephony/mbms/DownloadStateCallback;->mCallbackFilterFlags:I

    if-nez v2, :cond_0

    .line 96
    return v0

    .line 98
    :cond_0
    iget v2, p0, Landroid/telephony/mbms/DownloadStateCallback;->mCallbackFilterFlags:I

    and-int/2addr v2, p1

    if-lez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    .locals 0
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "fileInfo"    # Landroid/telephony/mbms/FileInfo;
    .param p3, "currentDownloadSize"    # I
    .param p4, "fullDownloadSize"    # I
    .param p5, "currentDecodedSize"    # I
    .param p6, "fullDecodedSize"    # I

    .prologue
    .line 118
    return-void
.end method

.method public onStateUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    .locals 0
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "fileInfo"    # Landroid/telephony/mbms/FileInfo;
    .param p3, "state"    # I

    .prologue
    .line 131
    return-void
.end method
