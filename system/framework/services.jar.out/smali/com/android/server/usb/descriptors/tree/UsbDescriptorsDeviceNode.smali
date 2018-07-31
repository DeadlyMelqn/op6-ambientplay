.class public final Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;
.super Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTreeNode;
.source "UsbDescriptorsDeviceNode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbDescriptorsDeviceNode"


# instance fields
.field private final mConfigNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;)V
    .locals 1
    .param p1, "deviceDescriptor"    # Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTreeNode;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;->mConfigNodes:Ljava/util/ArrayList;

    .line 39
    iput-object p1, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    .line 40
    return-void
.end method


# virtual methods
.method public addConfigDescriptorNode(Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;)V
    .locals 1
    .param p1, "configNode"    # Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;->mConfigNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 3
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .prologue
    .line 51
    iget-object v2, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    invoke-virtual {v2, p1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 52
    iget-object v2, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;->mConfigNodes:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

    .line 53
    .local v0, "node":Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;
    invoke-virtual {v0, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    goto :goto_0

    .line 55
    .end local v0    # "node":Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;
    :cond_0
    return-void
.end method
