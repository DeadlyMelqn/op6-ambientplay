.class final enum Lcom/oneplus/injector/ViewInjector$View$Element;
.super Ljava/lang/Enum;
.source "ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/injector/ViewInjector$View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Element"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/injector/ViewInjector$View$Element;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum BROWSEROVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum BROWSERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum CONTENTSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum LISTOVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum MMAWAKEN12:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum MMAWAKEN14:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum MMAWAKEN15:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum MMCHANGE12:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum MMCHANGE14:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum MMCHANGE15:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum MMCHANGE9:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum OVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum QQSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum QZONESCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum SCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum WEBOVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum WEBSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;


# instance fields
.field private mName:Ljava/lang/String;

.field private mPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/16 v8, 0xf

    const/16 v7, 0xc

    const/16 v6, 0xe

    const/4 v5, 0x5

    .line 166
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "SCROLL"

    .line 177
    const-string/jumbo v2, "AbsListView.trackMotionScroll"

    .line 166
    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 177
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->SCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 179
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "QQSCROLL"

    .line 189
    const-string/jumbo v2, "tencent.widget.AbsListView.onTouchEvent"

    .line 179
    const/4 v3, 0x1

    .line 189
    const/4 v4, 0x7

    .line 179
    invoke-direct {v0, v1, v3, v4, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 189
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->QQSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 191
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "MMAWAKEN12"

    .line 206
    const-string/jumbo v2, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    .line 191
    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v7, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 206
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->MMAWAKEN12:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 208
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "MMAWAKEN14"

    .line 225
    const-string/jumbo v2, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    .line 208
    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v6, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 225
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->MMAWAKEN14:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 227
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "MMAWAKEN15"

    .line 245
    const-string/jumbo v2, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    .line 227
    invoke-direct {v0, v1, v9, v8, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 245
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->MMAWAKEN15:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 247
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "OVERSCROLL"

    .line 257
    const-string/jumbo v2, "AbsListView.onOverScrolled"

    .line 247
    invoke-direct {v0, v1, v5, v5, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 257
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->OVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 259
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "CONTENTSCROLL"

    .line 269
    const-string/jumbo v2, "ContentView.onScrollChanged"

    .line 259
    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v9, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 269
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->CONTENTSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 271
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "MMCHANGE9"

    .line 283
    const-string/jumbo v2, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    .line 271
    const/4 v3, 0x7

    .line 283
    const/16 v4, 0x9

    .line 271
    invoke-direct {v0, v1, v3, v4, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 283
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE9:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 285
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "MMCHANGE12"

    .line 300
    const-string/jumbo v2, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    .line 285
    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v7, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 300
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE12:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 302
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "MMCHANGE14"

    .line 319
    const-string/jumbo v2, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    .line 302
    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v6, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 319
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE14:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 321
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "MMCHANGE15"

    .line 339
    const-string/jumbo v2, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    .line 321
    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v8, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 339
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE15:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 341
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "BROWSERSCROLL"

    .line 358
    const-string/jumbo v2, "oppo.browser.navigation.widget.NavigationView.dispatchTouchEvent"

    .line 341
    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v6, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 358
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->BROWSERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 360
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "QZONESCROLL"

    .line 371
    const-string/jumbo v2, "qzone.widget.QZonePullToRefreshListView.onScrollChanged"

    const/16 v3, 0x8

    .line 360
    invoke-direct {v0, v1, v7, v3, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 371
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->QZONESCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 373
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "WEBSCROLL"

    .line 392
    const-string/jumbo v2, "WebView$PrivateAccess.overScrollBy"

    .line 373
    const/16 v3, 0xd

    .line 392
    const/16 v4, 0x10

    .line 373
    invoke-direct {v0, v1, v3, v4, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 392
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->WEBSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 394
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "LISTOVERSCROLL"

    .line 406
    const-string/jumbo v2, "AbsListView.onTouchEvent"

    const/4 v3, 0x6

    .line 394
    invoke-direct {v0, v1, v6, v3, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 406
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->LISTOVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 408
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "WEBOVERSCROLL"

    .line 416
    const-string/jumbo v2, "WebView$PrivateAccess.overScrollBy"

    .line 408
    invoke-direct {v0, v1, v8, v5, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 416
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->WEBOVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 418
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "BROWSEROVERSCROLL"

    .line 432
    const-string/jumbo v2, "oppo.browser.navigation.widget.NavigationView.dispatchTouchEvent"

    .line 418
    const/16 v3, 0x10

    .line 432
    const/16 v4, 0xb

    .line 418
    invoke-direct {v0, v1, v3, v4, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 432
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->BROWSEROVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 164
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/oneplus/injector/ViewInjector$View$Element;

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->SCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->QQSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->MMAWAKEN12:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->MMAWAKEN14:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->MMAWAKEN15:Lcom/oneplus/injector/ViewInjector$View$Element;

    aput-object v1, v0, v9

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->OVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->CONTENTSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE9:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE12:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE14:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE15:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->BROWSERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->QZONESCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->WEBSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->LISTOVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->WEBOVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->BROWSEROVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->$VALUES:[Lcom/oneplus/injector/ViewInjector$View$Element;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .param p3, "position"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 439
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/injector/ViewInjector$View$Element;->mName:Ljava/lang/String;

    .line 437
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/injector/ViewInjector$View$Element;->mPosition:I

    .line 440
    iput p3, p0, Lcom/oneplus/injector/ViewInjector$View$Element;->mPosition:I

    .line 441
    iput-object p4, p0, Lcom/oneplus/injector/ViewInjector$View$Element;->mName:Ljava/lang/String;

    .line 442
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/injector/ViewInjector$View$Element;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 164
    const-class v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/injector/ViewInjector$View$Element;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->$VALUES:[Lcom/oneplus/injector/ViewInjector$View$Element;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/oneplus/injector/ViewInjector$View$Element;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/injector/ViewInjector$View$Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lcom/oneplus/injector/ViewInjector$View$Element;->mPosition:I

    return v0
.end method
