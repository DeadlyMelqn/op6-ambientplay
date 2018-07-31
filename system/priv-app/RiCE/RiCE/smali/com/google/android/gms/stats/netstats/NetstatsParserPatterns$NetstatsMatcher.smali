.class public Lcom/google/android/gms/stats/netstats/NetstatsParserPatterns$NetstatsMatcher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/stats/netstats/NetstatsParserPatterns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetstatsMatcher"
.end annotation


# instance fields
.field private zzaff:Ljava/util/regex/Matcher;

.field private zzafg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/regex/Matcher;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Matcher;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/stats/netstats/NetstatsParserPatterns$NetstatsMatcher;->zzaff:Ljava/util/regex/Matcher;

    iput-object p2, p0, Lcom/google/android/gms/stats/netstats/NetstatsParserPatterns$NetstatsMatcher;->zzafg:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public find()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/stats/netstats/NetstatsParserPatterns$NetstatsMatcher;->zzaff:Ljava/util/regex/Matcher;

    invoke-virtual/range {p0 .. p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/stats/netstats/NetstatsParserPatterns$NetstatsMatcher;->zzafg:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown group "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/stats/netstats/NetstatsParserPatterns$NetstatsMatcher;->zzaff:Ljava/util/regex/Matcher;

    iget-object p0, p0, Lcom/google/android/gms/stats/netstats/NetstatsParserPatterns$NetstatsMatcher;->zzafg:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public matches()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/stats/netstats/NetstatsParserPatterns$NetstatsMatcher;->zzaff:Ljava/util/regex/Matcher;

    invoke-virtual/range {p0 .. p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method
