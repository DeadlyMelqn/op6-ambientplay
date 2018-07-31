.class final synthetic Landroid/app/-$Lambda$xNlQtks0cIOkqsInCE_AAmZWgcY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic $INST$0:Landroid/app/-$Lambda$xNlQtks0cIOkqsInCE_AAmZWgcY;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/internal/graphics/palette/Palette$Swatch;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/graphics/palette/Palette$Swatch;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p1, p2}, Landroid/app/WallpaperColors;->lambda$-android_app_WallpaperColors_6318(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Palette$Swatch;)I

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/-$Lambda$xNlQtks0cIOkqsInCE_AAmZWgcY;

    invoke-direct {v0}, Landroid/app/-$Lambda$xNlQtks0cIOkqsInCE_AAmZWgcY;-><init>()V

    sput-object v0, Landroid/app/-$Lambda$xNlQtks0cIOkqsInCE_AAmZWgcY;->$INST$0:Landroid/app/-$Lambda$xNlQtks0cIOkqsInCE_AAmZWgcY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/-$Lambda$xNlQtks0cIOkqsInCE_AAmZWgcY;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
