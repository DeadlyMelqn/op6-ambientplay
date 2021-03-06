.class public final Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;
.super Ljava/lang/Object;
.source "UsbDescriptorsTree.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbDescriptorsTree"


# instance fields
.field private mConfigNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

.field private mDeviceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

.field private mInterfaceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addACInterface(Lcom/android/server/usb/descriptors/UsbACInterface;)V
    .locals 2
    .param p1, "acInterface"    # Lcom/android/server/usb/descriptors/UsbACInterface;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mInterfaceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;

    new-instance v1, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;

    invoke-direct {v1, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;-><init>(Lcom/android/server/usb/descriptors/UsbACInterface;)V

    invoke-virtual {v0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->addACInterfaceNode(Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;)V

    .line 94
    return-void
.end method

.method private addConfigDescriptor(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V
    .locals 2
    .param p1, "configDescriptor"    # Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    .prologue
    .line 70
    new-instance v0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

    invoke-direct {v0, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;-><init>(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mConfigNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

    .line 71
    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mDeviceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

    iget-object v1, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mConfigNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;->addConfigDescriptorNode(Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;)V

    .line 72
    return-void
.end method

.method private addDeviceDescriptor(Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;)V
    .locals 1
    .param p1, "deviceDescriptor"    # Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    .prologue
    .line 63
    new-instance v0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

    invoke-direct {v0, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;-><init>(Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;)V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mDeviceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

    .line 64
    return-void
.end method

.method private addEndpointDescriptor(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V
    .locals 2
    .param p1, "endpointDescriptor"    # Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mInterfaceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;

    new-instance v1, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;

    invoke-direct {v1, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;-><init>(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V

    invoke-virtual {v0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->addEndpointNode(Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;)V

    .line 87
    return-void
.end method

.method private addInterfaceDescriptor(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V
    .locals 2
    .param p1, "interfaceDescriptor"    # Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .prologue
    .line 78
    new-instance v0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;

    invoke-direct {v0, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;-><init>(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mInterfaceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;

    .line 79
    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mConfigNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

    iget-object v1, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mInterfaceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;->addInterfaceNode(Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;)V

    .line 80
    return-void
.end method


# virtual methods
.method public parse(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V
    .locals 4
    .param p1, "parser"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptors()Ljava/util/ArrayList;

    move-result-object v2

    .line 104
    .local v2, "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    const/4 v0, 0x0

    .local v0, "descrIndex":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 105
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 106
    .local v1, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 104
    .end local v1    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :goto_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    .restart local v1    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :sswitch_1
    check-cast v1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    .end local v1    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-direct {p0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->addDeviceDescriptor(Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;)V

    goto :goto_1

    .line 115
    .restart local v1    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :sswitch_2
    check-cast v1, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    .end local v1    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-direct {p0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->addConfigDescriptor(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V

    goto :goto_1

    .line 119
    .restart local v1    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :sswitch_3
    check-cast v1, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .end local v1    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-direct {p0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->addInterfaceDescriptor(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V

    goto :goto_1

    .line 123
    .restart local v1    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :sswitch_4
    check-cast v1, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    .end local v1    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-direct {p0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->addEndpointDescriptor(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V

    goto :goto_1

    .line 130
    .restart local v1    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :sswitch_5
    check-cast v1, Lcom/android/server/usb/descriptors/UsbACInterface;

    .end local v1    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-direct {p0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->addACInterface(Lcom/android/server/usb/descriptors/UsbACInterface;)V

    goto :goto_1

    .line 137
    :cond_0
    return-void

    .line 106
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x24 -> :sswitch_5
        0x25 -> :sswitch_0
    .end sparse-switch
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mDeviceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 144
    return-void
.end method
