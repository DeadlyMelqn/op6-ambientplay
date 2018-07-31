.class public final Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;
.super Lcom/android/server/usb/descriptors/report/ReportCanvas;
.source "HTMLReportCanvas.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HTMLReportCanvas"


# instance fields
.field private final mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDeviceConnection;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "connection"    # Landroid/hardware/usb/UsbDeviceConnection;
    .param p2, "stringBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;-><init>(Landroid/hardware/usb/UsbDeviceConnection;)V

    .line 38
    iput-object p2, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 39
    return-void
.end method


# virtual methods
.method public closeHeader(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "</h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    return-void
.end method

.method public closeList()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "</ul>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    return-void
.end method

.method public closeListItem()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "</li>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    return-void
.end method

.method public closeParagraph()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "</p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    return-void
.end method

.method public openHeader(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    return-void
.end method

.method public openList()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<ul>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    return-void
.end method

.method public openListItem()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<li>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    return-void
.end method

.method public openParagraph(Z)V
    .locals 2
    .param p1, "emphasis"    # Z

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<p style=\"color:red\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    return-void
.end method

.method public writeParagraph(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "inRed"    # Z

    .prologue
    .line 73
    invoke-virtual {p0, p2}, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->openParagraph(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->closeParagraph()V

    .line 76
    return-void
.end method