.class public Landroid/net/wifi/hotspot2/omadm/XMLParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XMLParser.java"


# instance fields
.field private mCurrent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

.field private mRoot:Landroid/net/wifi/hotspot2/omadm/XMLNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 56
    iput-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mRoot:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 57
    iput-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mCurrent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 55
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mCurrent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->addText(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mCurrent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "End tag \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' doesn\'t match current node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 97
    iget-object v2, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mCurrent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mCurrent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->close()V

    .line 101
    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mCurrent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getParent()Landroid/net/wifi/hotspot2/omadm/XMLNode;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mCurrent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 102
    return-void
.end method

.method public parse(Ljava/lang/String;)Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "XML string not provided"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_0
    iput-object v3, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mRoot:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 66
    iput-object v3, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mCurrent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 69
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 70
    .local v0, "parser":Ljavax/xml/parsers/SAXParser;
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v2, p0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 71
    iget-object v2, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mRoot:Landroid/net/wifi/hotspot2/omadm/XMLNode;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 72
    .end local v0    # "parser":Ljavax/xml/parsers/SAXParser;
    :catch_0
    move-exception v1

    .line 73
    .local v1, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mCurrent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 82
    .local v0, "parent":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    invoke-direct {v1, v0, p3}, Landroid/net/wifi/hotspot2/omadm/XMLNode;-><init>(Landroid/net/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mCurrent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 84
    iget-object v1, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mRoot:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    if-nez v1, :cond_0

    .line 85
    iget-object v1, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mCurrent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    iput-object v1, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mRoot:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 91
    :goto_0
    return-void

    .line 86
    :cond_0
    if-nez v0, :cond_1

    .line 87
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string/jumbo v2, "More than one root nodes"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/hotspot2/omadm/XMLParser;->mCurrent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->addChild(Landroid/net/wifi/hotspot2/omadm/XMLNode;)V

    goto :goto_0
.end method