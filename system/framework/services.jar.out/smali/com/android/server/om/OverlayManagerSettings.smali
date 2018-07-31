.class final Lcom/android/server/om/OverlayManagerSettings;
.super Ljava/lang/Object;
.source "OverlayManagerSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerSettings$BadKeyException;,
        Lcom/android/server/om/OverlayManagerSettings$Serializer;,
        Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    }
.end annotation


# instance fields
.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -com_android_server_om_OverlayManagerSettings-mthref-0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;
    .locals 1

    .prologue
    .line 171
    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -com_android_server_om_OverlayManagerSettings-mthref-1(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;
    .locals 1

    .prologue
    .line 177
    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -com_android_server_om_OverlayManagerSettings-mthref-2()Landroid/util/ArrayMap;
    .locals 1

    .prologue
    .line 178
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    return-object v0
.end method

.method static synthetic -com_android_server_om_OverlayManagerSettings-mthref-3(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .locals 1

    .prologue
    .line 183
    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap7(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v0

    return v0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method static synthetic lambda$-com_android_server_om_OverlayManagerSettings_19551(ILcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .locals 1
    .param p0, "userId"    # I
    .param p1, "item"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .prologue
    .line 524
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get7(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_om_OverlayManagerSettings_19778(Ljava/lang/String;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .locals 1
    .param p0, "targetPackageName"    # Ljava/lang/String;
    .param p1, "item"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .prologue
    .line 530
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap9(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_server_om_OverlayManagerSettings_6314(Landroid/content/om/OverlayInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Landroid/content/om/OverlayInfo;

    .prologue
    .line 178
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private select(Ljava/lang/String;I)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 513
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 514
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 515
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 516
    .local v2, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get7(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v3

    if-ne v3, p2, :cond_0

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get3(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 517
    return v1

    .line 514
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 520
    .end local v2    # "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method private selectWhereTarget(Ljava/lang/String;I)Ljava/util/stream/Stream;
    .locals 2
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/stream/Stream",
            "<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    invoke-direct {p0, p2}, Lcom/android/server/om/OverlayManagerSettings;->selectWhereUser(I)Ljava/util/stream/Stream;

    move-result-object v0

    .line 530
    new-instance v1, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk$3;

    invoke-direct {v1, p1}, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk$3;-><init>(Ljava/lang/Object;)V

    .line 529
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method private selectWhereUser(I)Ljava/util/stream/Stream;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/stream/Stream",
            "<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk$4;

    invoke-direct {v1, p1}, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk$4;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "p"    # Ljava/io/PrintWriter;

    .prologue
    .line 272
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v4, "  "

    invoke-direct {v3, p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 273
    .local v3, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string/jumbo v4, "Settings"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 276
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    const-string/jumbo v4, "<none>"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 278
    return-void

    .line 281
    :cond_0
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 282
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 283
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 284
    .local v2, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get3(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap7(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 287
    const-string/jumbo v4, "mPackageName.......: "

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get3(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 288
    const-string/jumbo v4, "mUserId............: "

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap7(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 289
    const-string/jumbo v4, "mTargetPackageName.: "

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap9(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 290
    const-string/jumbo v4, "mBaseCodePath......: "

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap8(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 291
    const-string/jumbo v4, "mState.............: "

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap6(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v4

    invoke-static {v4}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 292
    const-string/jumbo v4, "mIsEnabled.........: "

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap1(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 293
    const-string/jumbo v4, "mIsStatic..........: "

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap2(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 295
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 296
    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 298
    .end local v2    # "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    :cond_1
    return-void
.end method

.method getEnabled(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 130
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 131
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap1(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v1

    return v1
.end method

.method getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 110
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 111
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v1

    return-object v1
.end method

.method getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->selectWhereTarget(Ljava/lang/String;I)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;->$INST$0:Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 172
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    .line 170
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method getOverlaysForUser(I)Landroid/util/ArrayMap;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/om/OverlayInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->selectWhereUser(I)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;->$INST$1:Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;->$INST$2:Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;

    sget-object v2, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk$1;->$INST$0:Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk$1;

    .line 179
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    .line 178
    invoke-static {v1, v2, v3}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 176
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    return-object v0
.end method

.method getState(Ljava/lang/String;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 150
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 151
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap6(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v1

    return v1
.end method

.method getUsers()[I
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk$2;->$INST$0:Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk$2;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->distinct()Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "targetPackageName"    # Ljava/lang/String;
    .param p4, "baseCodePath"    # Ljava/lang/String;
    .param p5, "isStatic"    # Z
    .param p6, "priority"    # I

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    .line 73
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 75
    .local v1, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    if-eqz p5, :cond_3

    .line 77
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v8, v2, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 79
    .local v9, "parentItem":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    invoke-static {v9}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get2(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v9}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get4(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v2

    move/from16 v0, p6

    if-gt v2, v0, :cond_1

    .line 83
    .end local v9    # "parentItem":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    :cond_0
    add-int/lit8 v10, v8, 0x1

    .line 84
    .local v10, "pos":I
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v10, v2, :cond_2

    .line 85
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v8    # "i":I
    .end local v10    # "pos":I
    :goto_1
    return-void

    .line 77
    .restart local v8    # "i":I
    .restart local v9    # "parentItem":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 87
    .end local v9    # "parentItem":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    .restart local v10    # "pos":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v10, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 90
    .end local v8    # "i":I
    .end local v10    # "pos":I
    :cond_3
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method persist(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/server/om/OverlayManagerSettings$Serializer;->persist(Ljava/util/ArrayList;Ljava/io/OutputStream;)V

    .line 306
    return-void
.end method

.method remove(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 99
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 100
    return v1

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 104
    const/4 v1, 0x1

    return v1
.end method

.method removeUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 190
    const/4 v2, 0x0

    .line 191
    .local v2, "removed":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 192
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 193
    .local v1, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap7(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 198
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 199
    const/4 v2, 0x1

    .line 200
    add-int/lit8 v0, v0, -0x1

    .line 191
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    :cond_1
    return v2
.end method

.method restore(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/server/om/OverlayManagerSettings$Serializer;->restore(Ljava/util/ArrayList;Ljava/io/InputStream;)V

    .line 302
    return-void
.end method

.method setBaseCodePath(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 122
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 123
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v1, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap3(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method setEnabled(Ljava/lang/String;IZ)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 142
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 143
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v1, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap4(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Z)Z

    move-result v1

    return v1
.end method

.method setHighestPriority(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 261
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1

    .line 262
    :cond_0
    return v3

    .line 265
    :cond_1
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 266
    .local v1, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 267
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    const/4 v2, 0x1

    return v2
.end method

.method setLowestPriority(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 243
    .local v0, "idx":I
    if-gtz v0, :cond_0

    .line 245
    return v3

    .line 248
    :cond_0
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 249
    .local v1, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 250
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 251
    const/4 v2, 0x1

    return v2
.end method

.method setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newParentPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 211
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 212
    return v5

    .line 214
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v1

    .line 215
    .local v1, "moveIdx":I
    if-gez v1, :cond_1

    .line 216
    return v5

    .line 219
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v3

    .line 220
    .local v3, "parentIdx":I
    if-gez v3, :cond_2

    .line 221
    return v5

    .line 224
    :cond_2
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 227
    .local v0, "itemToMove":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap9(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v6

    .line 228
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap9(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v4

    .line 227
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 229
    return v5

    .line 232
    :cond_3
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 233
    invoke-direct {p0, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v2

    .line 234
    .local v2, "newParentIdx":I
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 235
    if-eq v1, v2, :cond_4

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_4
    move v4, v5

    goto :goto_0
.end method

.method setState(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 162
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 163
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v1, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap5(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;I)Z

    move-result v1

    return v1
.end method
