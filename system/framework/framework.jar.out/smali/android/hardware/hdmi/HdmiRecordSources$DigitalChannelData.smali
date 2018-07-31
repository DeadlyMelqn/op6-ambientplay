.class public final Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;
.super Ljava/lang/Object;
.source "HdmiRecordSources.java"

# interfaces
.implements Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DigitalChannelData"
.end annotation


# instance fields
.field private final mChannelIdentifier:Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;


# direct methods
.method private constructor <init>(Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;)V
    .locals 0
    .param p1, "id"    # Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;->mChannelIdentifier:Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;

    .line 328
    return-void
.end method

.method public static ofOneNumber(I)Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;
    .locals 5
    .param p0, "number"    # I

    .prologue
    .line 322
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;

    .line 323
    new-instance v1, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p0, v4}, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;-><init>(IIILandroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;)V

    .line 322
    invoke-direct {v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;-><init>(Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;)V

    return-object v0
.end method

.method public static ofTwoNumbers(II)Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;
    .locals 4
    .param p0, "majorNumber"    # I
    .param p1, "minorNumber"    # I

    .prologue
    .line 317
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;

    .line 318
    new-instance v1, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, p1, v3}, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;-><init>(IIILandroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;)V

    .line 317
    invoke-direct {v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;-><init>(Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;)V

    return-object v0
.end method


# virtual methods
.method public toByteArray([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 332
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;->mChannelIdentifier:Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;

    invoke-static {v0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->-wrap0(Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;[BI)I

    .line 334
    add-int/lit8 v0, p2, 0x4

    aput-byte v1, p1, v0

    .line 335
    add-int/lit8 v0, p2, 0x5

    aput-byte v1, p1, v0

    .line 336
    const/4 v0, 0x6

    return v0
.end method
