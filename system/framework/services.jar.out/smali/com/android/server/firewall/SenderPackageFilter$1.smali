.class final Lcom/android/server/firewall/SenderPackageFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "SenderPackageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/SenderPackageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 67
    const-string/jumbo v1, "name"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 70
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 71
    const-string/jumbo v2, "A package name must be specified."

    .line 70
    invoke-direct {v1, v2, p1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 74
    :cond_0
    new-instance v1, Lcom/android/server/firewall/SenderPackageFilter;

    invoke-direct {v1, v0}, Lcom/android/server/firewall/SenderPackageFilter;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
