.class public Landroid/net/wifi/hotspot2/omadm/XMLNode;
.super Ljava/lang/Object;
.source "XMLNode.java"


# instance fields
.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/hotspot2/omadm/XMLNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mParent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

.field private final mTag:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTextBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/net/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mParent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public addChild(Landroid/net/wifi/hotspot2/omadm/XMLNode;)V
    .locals 1
    .param p1, "child"    # Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public addText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    .line 72
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "thatObject"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 92
    if-ne p0, p1, :cond_0

    .line 93
    const/4 v1, 0x1

    return v1

    .line 95
    :cond_0
    instance-of v2, p1, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    if-nez v2, :cond_1

    .line 96
    return v1

    :cond_1
    move-object v0, p1

    .line 98
    check-cast v0, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 100
    .local v0, "that":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    iget-object v2, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    iget-object v2, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 100
    if-eqz v2, :cond_2

    .line 102
    iget-object v1, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    iget-object v2, v0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 100
    :cond_2
    return v1
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/hotspot2/omadm/XMLNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public getParent()Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mParent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 107
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
