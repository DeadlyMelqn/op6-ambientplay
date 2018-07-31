.class public Landroid/text/method/QwertyKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "QwertyKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/QwertyKeyListener$Replaced;
    }
.end annotation


# static fields
.field private static PICKER_SETS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

.field private static sInstance:[Landroid/text/method/QwertyKeyListener;


# instance fields
.field private mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

.field private mAutoText:Z

.field private mFullKeyboard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/text/method/QwertyKeyListener;

    .line 41
    sput-object v0, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    .line 437
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 436
    sput-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 439
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string/jumbo v2, "\u00c0\u00c1\u00c2\u00c4\u00c6\u00c3\u00c5\u0104\u0100"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 440
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x43

    const-string/jumbo v2, "\u00c7\u0106\u010c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 441
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x44

    const-string/jumbo v2, "\u010e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 442
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x45

    const-string/jumbo v2, "\u00c8\u00c9\u00ca\u00cb\u0118\u011a\u0112"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 443
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x47

    const-string/jumbo v2, "\u011e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 444
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4c

    const-string/jumbo v2, "\u0141"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 445
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x49

    const-string/jumbo v2, "\u00cc\u00cd\u00ce\u00cf\u012a\u0130"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 446
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4e

    const-string/jumbo v2, "\u00d1\u0143\u0147"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 447
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4f

    const-string/jumbo v2, "\u00d8\u0152\u00d5\u00d2\u00d3\u00d4\u00d6\u014c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 448
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x52

    const-string/jumbo v2, "\u0158"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 449
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x53

    const-string/jumbo v2, "\u015a\u0160\u015e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 450
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x54

    const-string/jumbo v2, "\u0164"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 451
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x55

    const-string/jumbo v2, "\u00d9\u00da\u00db\u00dc\u016e\u016a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 452
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x59

    const-string/jumbo v2, "\u00dd\u0178"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 453
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x5a

    const-string/jumbo v2, "\u0179\u017b\u017d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 454
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x61

    const-string/jumbo v2, "\u00e0\u00e1\u00e2\u00e4\u00e6\u00e3\u00e5\u0105\u0101"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 455
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x63

    const-string/jumbo v2, "\u00e7\u0107\u010d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 456
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x64

    const-string/jumbo v2, "\u010f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 457
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const-string/jumbo v2, "\u00e8\u00e9\u00ea\u00eb\u0119\u011b\u0113"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 458
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x67

    const-string/jumbo v2, "\u011f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 459
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x69

    const-string/jumbo v2, "\u00ec\u00ed\u00ee\u00ef\u012b\u0131"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 460
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6c

    const-string/jumbo v2, "\u0142"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 461
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6e

    const-string/jumbo v2, "\u00f1\u0144\u0148"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 462
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6f

    const-string/jumbo v2, "\u00f8\u0153\u00f5\u00f2\u00f3\u00f4\u00f6\u014d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 463
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x72

    const-string/jumbo v2, "\u0159"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 464
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x73

    const-string/jumbo v2, "\u00a7\u00df\u015b\u0161\u015f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 465
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x74

    const-string/jumbo v2, "\u0165"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 466
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x75

    const-string/jumbo v2, "\u00f9\u00fa\u00fb\u00fc\u016f\u016b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 467
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x79

    const-string/jumbo v2, "\u00fd\u00ff"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 468
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x7a

    const-string/jumbo v2, "\u017a\u017c\u017e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 469
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const v1, 0xef01

    .line 470
    const-string/jumbo v2, "\u2026\u00a5\u2022\u00ae\u00a9\u00b1[]{}\\|"

    .line 469
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 471
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2f

    const-string/jumbo v2, "\\"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 475
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x31

    const-string/jumbo v2, "\u00b9\u00bd\u2153\u00bc\u215b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 476
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x32

    const-string/jumbo v2, "\u00b2\u2154"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 477
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x33

    const-string/jumbo v2, "\u00b3\u00be\u215c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 478
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x34

    const-string/jumbo v2, "\u2074"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 479
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x35

    const-string/jumbo v2, "\u215d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 480
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x37

    const-string/jumbo v2, "\u215e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 481
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x30

    const-string/jumbo v2, "\u207f\u2205"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 482
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x24

    const-string/jumbo v2, "\u00a2\u00a3\u20ac\u00a5\u20a3\u20a4\u20b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 483
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x25

    const-string/jumbo v2, "\u2030"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 484
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2a

    const-string/jumbo v2, "\u2020\u2021"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 485
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2d

    const-string/jumbo v2, "\u2013\u2014"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 486
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2b

    const-string/jumbo v2, "\u00b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 487
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x28

    const-string/jumbo v2, "[{<"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 488
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x29

    const-string/jumbo v2, "]}>"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 489
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x21

    const-string/jumbo v2, "\u00a1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 490
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x22

    const-string/jumbo v2, "\u201c\u201d\u00ab\u00bb\u02dd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 491
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3f

    const-string/jumbo v2, "\u00bf"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 492
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2c

    const-string/jumbo v2, "\u201a\u201e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 496
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3d

    const-string/jumbo v2, "\u2260\u2248\u221e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 497
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3c

    const-string/jumbo v2, "\u2264\u00ab\u2039"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 498
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3e

    const-string/jumbo v2, "\u2265\u00bb\u203a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 1
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p2, "autoText"    # Z

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V
    .locals 0
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p2, "autoText"    # Z
    .param p3, "fullKeyboard"    # Z

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    .line 51
    iput-boolean p2, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    .line 52
    iput-boolean p3, p0, Landroid/text/method/QwertyKeyListener;->mFullKeyboard:Z

    .line 53
    return-void
.end method

.method public static getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;
    .locals 3
    .param p0, "autoText"    # Z
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 66
    .local v0, "off":I
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 67
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    new-instance v2, Landroid/text/method/QwertyKeyListener;

    invoke-direct {v2, p1, p0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    aput-object v2, v1, v0

    .line 70
    :cond_0
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object v1, v1, v0

    return-object v1

    .line 64
    .end local v0    # "off":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstanceForFullKeyboard()Landroid/text/method/QwertyKeyListener;
    .locals 4

    .prologue
    .line 79
    sget-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Landroid/text/method/QwertyKeyListener;

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    sput-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    .line 82
    :cond_0
    sget-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    return-object v0
.end method

.method private getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .locals 10
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "view"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 367
    sub-int v4, p3, p2

    .line 368
    .local v4, "len":I
    const/4 v1, 0x0

    .line 370
    .local v1, "changecase":Z
    invoke-static {p1, p2, p3, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 372
    .local v6, "replacement":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 373
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, "key":Ljava/lang/String;
    sub-int v7, p3, p2

    invoke-static {v3, v9, v7, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 375
    const/4 v1, 0x1

    .line 377
    if-nez v6, :cond_0

    .line 378
    return-object v8

    .line 381
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 383
    .local v0, "caps":I
    if-eqz v1, :cond_2

    .line 384
    move v2, p2

    .local v2, "j":I
    :goto_0
    if-ge v2, p3, :cond_2

    .line 385
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 386
    add-int/lit8 v0, v0, 0x1

    .line 384
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    .end local v2    # "j":I
    :cond_2
    if-nez v0, :cond_3

    .line 393
    move-object v5, v6

    .line 401
    .local v5, "out":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v4, :cond_6

    .line 402
    invoke-static {p1, p2, v5, v9, v4}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v7

    .line 401
    if-eqz v7, :cond_6

    .line 403
    return-object v8

    .line 394
    .end local v5    # "out":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x1

    if-ne v0, v7, :cond_4

    .line 395
    invoke-static {v6}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "out":Ljava/lang/String;
    goto :goto_1

    .line 396
    .end local v5    # "out":Ljava/lang/String;
    :cond_4
    if-ne v0, v4, :cond_5

    .line 397
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "out":Ljava/lang/String;
    goto :goto_1

    .line 399
    .end local v5    # "out":Ljava/lang/String;
    :cond_5
    invoke-static {v6}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "out":Ljava/lang/String;
    goto :goto_1

    .line 405
    :cond_6
    return-object v5
.end method

.method public static markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V
    .locals 7
    .param p0, "content"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "original"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 423
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-interface {p0, v6, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 424
    .local v3, "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 425
    aget-object v4, v3, v0

    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 429
    .local v1, "len":I
    new-array v2, v1, [C

    .line 430
    .local v2, "orig":[C
    invoke-virtual {p3, v6, v1, v2, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 432
    new-instance v4, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-direct {v4, v2}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    .line 433
    const/16 v5, 0x21

    .line 432
    invoke-interface {p0, v4, p1, p2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 434
    return-void
.end method

.method private showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "c"    # C
    .param p4, "insert"    # Z
    .param p5, "count"    # I

    .prologue
    const/4 v6, 0x1

    .line 503
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 504
    .local v4, "set":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 505
    const/4 v0, 0x0

    return v0

    .line 508
    :cond_0
    if-ne p5, v6, :cond_1

    .line 509
    new-instance v0, Landroid/text/method/CharacterPickerDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/CharacterPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/text/method/CharacterPickerDialog;->show()V

    .line 513
    :cond_1
    return v6
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInputType()I
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean v1, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    invoke-static {v0, v1}, Landroid/text/method/QwertyKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 45
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 92
    const/16 v35, 0x0

    .line 94
    .local v35, "pref":I
    if-eqz p1, :cond_0

    .line 95
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v35

    .line 99
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v17

    .line 100
    .local v17, "a":I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v21

    .line 102
    .local v21, "b":I
    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v40

    .line 103
    .local v40, "selStart":I
    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v39

    .line 105
    .local v39, "selEnd":I
    if-ltz v40, :cond_1

    if-gez v39, :cond_2

    .line 106
    :cond_1
    const/16 v39, 0x0

    const/16 v40, 0x0

    .line 107
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 111
    :cond_2
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v20

    .line 112
    .local v20, "activeStart":I
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v19

    .line 116
    .local v19, "activeEnd":I
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    move-result v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v29

    .line 118
    .local v29, "i":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/method/QwertyKeyListener;->mFullKeyboard:Z

    if-nez v5, :cond_4

    .line 119
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    .line 120
    .local v10, "count":I
    if-lez v10, :cond_4

    move/from16 v0, v40

    move/from16 v1, v39

    if-ne v0, v1, :cond_4

    if-lez v40, :cond_4

    .line 121
    add-int/lit8 v5, v40, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 123
    .local v8, "c":C
    move/from16 v0, v29

    if-eq v8, v0, :cond_3

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v5

    if-ne v8, v5, :cond_4

    :cond_3
    if-eqz p1, :cond_4

    .line 124
    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v10}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 125
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 126
    const/4 v5, 0x1

    return v5

    .line 132
    .end local v8    # "c":C
    .end local v10    # "count":I
    :cond_4
    const v5, 0xef01

    move/from16 v0, v29

    if-ne v0, v5, :cond_6

    .line 133
    if-eqz p1, :cond_5

    .line 135
    const v14, 0xef01

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 134
    invoke-direct/range {v11 .. v16}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    .line 137
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 138
    const/4 v5, 0x1

    return v5

    .line 141
    :cond_6
    const v5, 0xef00

    move/from16 v0, v29

    if-ne v0, v5, :cond_9

    .line 144
    move/from16 v0, v40

    move/from16 v1, v39

    if-ne v0, v1, :cond_7

    .line 145
    move/from16 v42, v39

    .line 147
    .local v42, "start":I
    :goto_0
    if-lez v42, :cond_8

    sub-int v5, v39, v42

    const/4 v6, 0x4

    if-ge v5, v6, :cond_8

    .line 148
    add-int/lit8 v5, v42, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-ltz v5, :cond_8

    .line 149
    add-int/lit8 v42, v42, -0x1

    goto :goto_0

    .line 152
    .end local v42    # "start":I
    :cond_7
    move/from16 v42, v40

    .line 155
    .restart local v42    # "start":I
    :cond_8
    const/16 v22, -0x1

    .line 157
    .local v22, "ch":I
    :try_start_0
    move-object/from16 v0, p2

    move/from16 v1, v42

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v28

    .line 158
    .local v28, "hex":Ljava/lang/String;
    const/16 v5, 0x10

    move-object/from16 v0, v28

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    .line 161
    .end local v28    # "hex":Ljava/lang/String;
    :goto_1
    if-ltz v22, :cond_12

    .line 162
    move/from16 v40, v42

    .line 163
    move-object/from16 v0, p2

    move/from16 v1, v40

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 164
    move/from16 v29, v22

    .line 170
    .end local v22    # "ch":I
    .end local v42    # "start":I
    :cond_9
    :goto_2
    if-eqz v29, :cond_1d

    .line 171
    const/16 v25, 0x0

    .line 173
    .local v25, "dead":Z
    const/high16 v5, -0x80000000

    and-int v5, v5, v29

    if-eqz v5, :cond_a

    .line 174
    const/16 v25, 0x1

    .line 175
    const v5, 0x7fffffff

    and-int v29, v29, v5

    .line 178
    :cond_a
    move/from16 v0, v20

    move/from16 v1, v40

    if-ne v0, v1, :cond_c

    move/from16 v0, v19

    move/from16 v1, v39

    if-ne v0, v1, :cond_c

    .line 179
    const/16 v38, 0x0

    .line 181
    .local v38, "replace":Z
    sub-int v5, v39, v40

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_b

    .line 182
    move-object/from16 v0, p2

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v18

    .line 183
    .local v18, "accent":C
    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v23

    .line 185
    .local v23, "composed":I
    if-eqz v23, :cond_b

    .line 186
    move/from16 v29, v23

    .line 187
    const/16 v38, 0x1

    .line 188
    const/16 v25, 0x0

    .line 192
    .end local v18    # "accent":C
    .end local v23    # "composed":I
    :cond_b
    if-nez v38, :cond_c

    .line 193
    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 194
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 195
    move/from16 v40, v39

    .line 199
    .end local v38    # "replace":Z
    :cond_c
    and-int/lit8 v5, v35, 0x1

    if-eqz v5, :cond_d

    .line 200
    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v5

    .line 199
    if-eqz v5, :cond_d

    .line 201
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    move-object/from16 v0, p2

    move/from16 v1, v40

    invoke-static {v5, v0, v1}, Landroid/text/method/TextKeyListener;->shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z

    move-result v5

    .line 199
    if-eqz v5, :cond_d

    .line 202
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v43

    .line 203
    .local v43, "where":I
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v27

    .line 205
    .local v27, "flags":I
    move/from16 v0, v43

    move/from16 v1, v40

    if-ne v0, v1, :cond_13

    shr-int/lit8 v5, v27, 0x10

    const v6, 0xffff

    and-int/2addr v5, v6

    move/from16 v0, v29

    if-ne v5, v0, :cond_13

    .line 206
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 222
    .end local v27    # "flags":I
    .end local v43    # "where":I
    :cond_d
    :goto_3
    move/from16 v0, v40

    move/from16 v1, v39

    if-eq v0, v1, :cond_e

    .line 223
    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 225
    :cond_e
    sget-object v5, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    .line 226
    const/16 v6, 0x11

    .line 225
    move-object/from16 v0, p2

    move/from16 v1, v40

    move/from16 v2, v40

    invoke-interface {v0, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 228
    move/from16 v0, v29

    int-to-char v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, v40

    move/from16 v2, v39

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 230
    sget-object v5, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v33

    .line 231
    .local v33, "oldStart":I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v39

    .line 233
    move/from16 v0, v33

    move/from16 v1, v39

    if-ge v0, v1, :cond_f

    .line 234
    sget-object v5, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    .line 236
    const/16 v6, 0x21

    .line 234
    move-object/from16 v0, p2

    move/from16 v1, v33

    move/from16 v2, v39

    invoke-interface {v0, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 238
    if-eqz v25, :cond_f

    .line 239
    move-object/from16 v0, p2

    move/from16 v1, v33

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 240
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    .line 241
    const/16 v6, 0x21

    .line 240
    move-object/from16 v0, p2

    move/from16 v1, v33

    move/from16 v2, v39

    invoke-interface {v0, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 245
    :cond_f
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 250
    and-int/lit8 v5, v35, 0x2

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    if-eqz v5, :cond_16

    .line 251
    const/16 v5, 0x20

    move/from16 v0, v29

    if-eq v0, v5, :cond_10

    const/16 v5, 0x9

    move/from16 v0, v29

    if-ne v0, v5, :cond_15

    .line 254
    :cond_10
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    move/from16 v0, v33

    if-eq v5, v0, :cond_16

    .line 258
    move/from16 v44, v33

    .local v44, "x":I
    :goto_4
    if-lez v44, :cond_11

    .line 259
    add-int/lit8 v5, v44, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 260
    .restart local v8    # "c":C
    const/16 v5, 0x27

    if-eq v8, v5, :cond_18

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_18

    .line 265
    .end local v8    # "c":C
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v44

    move/from16 v3, v33

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/method/QwertyKeyListener;->getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v36

    .line 267
    .local v36, "rep":Ljava/lang/String;
    if-eqz v36, :cond_16

    .line 268
    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v5

    .line 269
    const-class v6, Landroid/text/method/QwertyKeyListener$Replaced;

    .line 268
    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v5, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 270
    .local v37, "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    const/16 v17, 0x0

    :goto_5
    move-object/from16 v0, v37

    array-length v5, v0

    move/from16 v0, v17

    if-ge v0, v5, :cond_19

    .line 271
    aget-object v5, v37, v17

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 270
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 166
    .end local v25    # "dead":Z
    .end local v33    # "oldStart":I
    .end local v36    # "rep":Ljava/lang/String;
    .end local v37    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v44    # "x":I
    .restart local v22    # "ch":I
    .restart local v42    # "start":I
    :cond_12
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 208
    .end local v22    # "ch":I
    .end local v42    # "start":I
    .restart local v25    # "dead":Z
    .restart local v27    # "flags":I
    .restart local v43    # "where":I
    :cond_13
    shl-int/lit8 v27, v29, 0x10

    .line 209
    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v29

    .line 211
    if-nez v40, :cond_14

    .line 212
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    .line 213
    or-int/lit8 v6, v27, 0x11

    .line 212
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v7, v9, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3

    .line 215
    :cond_14
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    .line 216
    add-int/lit8 v6, v40, -0x1

    .line 217
    or-int/lit8 v7, v27, 0x21

    .line 215
    move-object/from16 v0, p2

    move/from16 v1, v40

    invoke-interface {v0, v5, v6, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3

    .line 251
    .end local v27    # "flags":I
    .end local v43    # "where":I
    .restart local v33    # "oldStart":I
    :cond_15
    const/16 v5, 0xa

    move/from16 v0, v29

    if-eq v0, v5, :cond_10

    .line 252
    const/16 v5, 0x2c

    move/from16 v0, v29

    if-eq v0, v5, :cond_10

    const/16 v5, 0x2e

    move/from16 v0, v29

    if-eq v0, v5, :cond_10

    const/16 v5, 0x21

    move/from16 v0, v29

    if-eq v0, v5, :cond_10

    const/16 v5, 0x3f

    move/from16 v0, v29

    if-eq v0, v5, :cond_10

    .line 253
    const/16 v5, 0x22

    move/from16 v0, v29

    if-eq v0, v5, :cond_10

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->getType(I)I

    move-result v5

    const/16 v6, 0x16

    if-eq v5, v6, :cond_10

    .line 284
    :cond_16
    :goto_6
    and-int/lit8 v5, v35, 0x4

    if-eqz v5, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    if-eqz v5, :cond_1c

    .line 285
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v39

    .line 286
    add-int/lit8 v5, v39, -0x3

    if-ltz v5, :cond_1c

    .line 287
    add-int/lit8 v5, v39, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_1c

    .line 288
    add-int/lit8 v5, v39, -0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_1c

    .line 289
    add-int/lit8 v5, v39, -0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 291
    .restart local v8    # "c":C
    add-int/lit8 v30, v39, -0x3

    .local v30, "j":I
    :goto_7
    if-lez v30, :cond_1a

    .line 292
    const/16 v5, 0x22

    if-eq v8, v5, :cond_17

    .line 293
    invoke-static {v8}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x16

    if-ne v5, v6, :cond_1a

    .line 294
    :cond_17
    add-int/lit8 v5, v30, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 291
    add-int/lit8 v30, v30, -0x1

    goto :goto_7

    .line 258
    .end local v30    # "j":I
    .restart local v44    # "x":I
    :cond_18
    add-int/lit8 v44, v44, -0x1

    goto/16 :goto_4

    .line 273
    .end local v8    # "c":C
    .restart local v36    # "rep":Ljava/lang/String;
    .restart local v37    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    :cond_19
    sub-int v5, v33, v44

    new-array v0, v5, [C

    move-object/from16 v34, v0

    .line 274
    .local v34, "orig":[C
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v44

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 276
    new-instance v5, Landroid/text/method/QwertyKeyListener$Replaced;

    move-object/from16 v0, v34

    invoke-direct {v5, v0}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    .line 277
    const/16 v6, 0x21

    .line 276
    move-object/from16 v0, p2

    move/from16 v1, v44

    move/from16 v2, v33

    invoke-interface {v0, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 278
    move-object/from16 v0, p2

    move/from16 v1, v44

    move/from16 v2, v33

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_6

    .line 300
    .end local v34    # "orig":[C
    .end local v36    # "rep":Ljava/lang/String;
    .end local v37    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v44    # "x":I
    .restart local v8    # "c":C
    .restart local v30    # "j":I
    :cond_1a
    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 301
    :cond_1b
    add-int/lit8 v5, v39, -0x2

    add-int/lit8 v6, v39, -0x1

    const-string/jumbo v7, "."

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 307
    .end local v8    # "c":C
    .end local v30    # "j":I
    :cond_1c
    const/4 v5, 0x1

    return v5

    .line 308
    .end local v25    # "dead":Z
    .end local v33    # "oldStart":I
    :cond_1d
    const/16 v5, 0x43

    move/from16 v0, p3

    if-ne v0, v5, :cond_22

    .line 309
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_1e

    const/4 v5, 0x2

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    .line 308
    if-eqz v5, :cond_22

    .line 310
    :cond_1e
    move/from16 v0, v40

    move/from16 v1, v39

    if-ne v0, v1, :cond_22

    .line 313
    const/16 v24, 0x1

    .line 320
    .local v24, "consider":I
    sget-object v5, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    move/from16 v0, v40

    if-ne v5, v0, :cond_1f

    .line 321
    add-int/lit8 v5, v40, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_1f

    .line 322
    const/16 v24, 0x2

    .line 325
    :cond_1f
    sub-int v5, v40, v24

    .line 326
    const-class v6, Landroid/text/method/QwertyKeyListener$Replaced;

    .line 325
    move-object/from16 v0, p2

    move/from16 v1, v40

    invoke-interface {v0, v5, v1, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 328
    .restart local v37    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    move-object/from16 v0, v37

    array-length v5, v0

    if-lez v5, :cond_22

    .line 329
    const/4 v5, 0x0

    aget-object v5, v37, v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v41

    .line 330
    .local v41, "st":I
    const/4 v5, 0x0

    aget-object v5, v37, v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v26

    .line 331
    .local v26, "en":I
    new-instance v32, Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v5, v37, v5

    invoke-static {v5}, Landroid/text/method/QwertyKeyListener$Replaced;->-get0(Landroid/text/method/QwertyKeyListener$Replaced;)[C

    move-result-object v5

    move-object/from16 v0, v32

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    .line 333
    .local v32, "old":Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v37, v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 339
    move/from16 v0, v40

    move/from16 v1, v26

    if-lt v0, v1, :cond_21

    .line 340
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    .line 341
    const/16 v6, 0x22

    .line 340
    move-object/from16 v0, p2

    move/from16 v1, v26

    move/from16 v2, v26

    invoke-interface {v0, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 342
    move-object/from16 v0, p2

    move/from16 v1, v41

    move/from16 v2, v26

    move-object/from16 v3, v32

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 344
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v26

    .line 345
    add-int/lit8 v5, v26, -0x1

    if-ltz v5, :cond_20

    .line 346
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    .line 347
    add-int/lit8 v6, v26, -0x1

    .line 348
    const/16 v7, 0x21

    .line 346
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-interface {v0, v5, v6, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 352
    :goto_8
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 358
    const/4 v5, 0x1

    return v5

    .line 350
    :cond_20
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_8

    .line 354
    :cond_21
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 355
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    return v5

    .line 362
    .end local v24    # "consider":I
    .end local v26    # "en":I
    .end local v32    # "old":Ljava/lang/String;
    .end local v37    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v41    # "st":I
    :cond_22
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    return v5

    .line 159
    .restart local v22    # "ch":I
    .restart local v42    # "start":I
    :catch_0
    move-exception v31

    .local v31, "nfe":Ljava/lang/NumberFormatException;
    goto/16 :goto_1
.end method
