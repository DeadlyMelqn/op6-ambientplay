.class public Landroid/text/style/AccessibilityClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "AccessibilityClickableSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/style/AccessibilityClickableSpan$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/text/style/AccessibilityClickableSpan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConnectionId:I

.field private final mOriginalClickableSpanId:I

.field private mSourceNodeId:J

.field private mWindowId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Landroid/text/style/AccessibilityClickableSpan$1;

    invoke-direct {v0}, Landroid/text/style/AccessibilityClickableSpan$1;-><init>()V

    .line 147
    sput-object v0, Landroid/text/style/AccessibilityClickableSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "originalClickableSpanId"    # I

    .prologue
    const/4 v2, -0x1

    .line 58
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 51
    iput v2, p0, Landroid/text/style/AccessibilityClickableSpan;->mWindowId:I

    .line 52
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mSourceNodeId:J

    .line 53
    iput v2, p0, Landroid/text/style/AccessibilityClickableSpan;->mConnectionId:I

    .line 59
    iput p1, p0, Landroid/text/style/AccessibilityClickableSpan;->mOriginalClickableSpanId:I

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, -0x1

    .line 62
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 51
    iput v2, p0, Landroid/text/style/AccessibilityClickableSpan;->mWindowId:I

    .line 52
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mSourceNodeId:J

    .line 53
    iput v2, p0, Landroid/text/style/AccessibilityClickableSpan;->mConnectionId:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mOriginalClickableSpanId:I

    .line 64
    return-void
.end method


# virtual methods
.method public copyConnectionDataFrom(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "accessibilityNodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getConnectionId()I

    move-result v0

    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mConnectionId:I

    .line 120
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v0

    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mWindowId:I

    .line 121
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mSourceNodeId:J

    .line 122
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public findClickableSpan(Ljava/lang/CharSequence;)Landroid/text/style/ClickableSpan;
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x0

    .line 99
    instance-of v3, p1, Landroid/text/Spanned;

    if-nez v3, :cond_0

    .line 100
    return-object v6

    :cond_0
    move-object v2, p1

    .line 102
    check-cast v2, Landroid/text/Spanned;

    .line 103
    .local v2, "sp":Landroid/text/Spanned;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Landroid/text/style/ClickableSpan;

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ClickableSpan;

    .line 104
    .local v1, "os":[Landroid/text/style/ClickableSpan;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 105
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/text/style/ClickableSpan;->getId()I

    move-result v3

    iget v4, p0, Landroid/text/style/AccessibilityClickableSpan;->mOriginalClickableSpanId:I

    if-ne v3, v4, :cond_1

    .line 106
    aget-object v3, v1, v0

    return-object v3

    .line 104
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_2
    return-object v6
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/text/style/AccessibilityClickableSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x19

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "unused"    # Landroid/view/View;

    .prologue
    const/4 v6, -0x1

    .line 133
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v7, "arguments":Landroid/os/Bundle;
    const-string/jumbo v0, "android.view.accessibility.action.ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN"

    invoke-virtual {v7, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 136
    iget v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mWindowId:I

    if-eq v0, v6, :cond_0

    iget-wide v2, p0, Landroid/text/style/AccessibilityClickableSpan;->mSourceNodeId:J

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 139
    const-string/jumbo v2, "ClickableSpan for accessibility service not properly initialized"

    .line 138
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    iget v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mConnectionId:I

    if-eq v0, v6, :cond_0

    .line 142
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 143
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/text/style/AccessibilityClickableSpan;->mConnectionId:I

    iget v3, p0, Landroid/text/style/AccessibilityClickableSpan;->mWindowId:I

    iget-wide v4, p0, Landroid/text/style/AccessibilityClickableSpan;->mSourceNodeId:J

    .line 144
    const v6, 0x1020168

    .line 143
    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->performAccessibilityAction(IIJILandroid/os/Bundle;)Z

    .line 145
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2}, Landroid/text/style/AccessibilityClickableSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 84
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 88
    iget v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mOriginalClickableSpanId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    return-void
.end method
