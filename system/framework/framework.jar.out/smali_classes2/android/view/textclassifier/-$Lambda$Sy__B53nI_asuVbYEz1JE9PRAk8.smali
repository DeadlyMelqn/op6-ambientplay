.class final synthetic Landroid/view/textclassifier/-$Lambda$Sy__B53nI_asuVbYEz1JE9PRAk8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic $INST$0:Landroid/view/textclassifier/-$Lambda$Sy__B53nI_asuVbYEz1JE9PRAk8;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory;->lambda$-android_view_textclassifier_TextClassifierImpl$LinksInfoFactory_22315(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/textclassifier/-$Lambda$Sy__B53nI_asuVbYEz1JE9PRAk8;

    invoke-direct {v0}, Landroid/view/textclassifier/-$Lambda$Sy__B53nI_asuVbYEz1JE9PRAk8;-><init>()V

    sput-object v0, Landroid/view/textclassifier/-$Lambda$Sy__B53nI_asuVbYEz1JE9PRAk8;->$INST$0:Landroid/view/textclassifier/-$Lambda$Sy__B53nI_asuVbYEz1JE9PRAk8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Landroid/view/textclassifier/-$Lambda$Sy__B53nI_asuVbYEz1JE9PRAk8;->$m$0(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
