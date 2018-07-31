.class public interface abstract Landroid/view/textclassifier/LinksInfo;
.super Ljava/lang/Object;
.source "LinksInfo.java"


# static fields
.field public static final NO_OP:Landroid/view/textclassifier/LinksInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-object v0, Landroid/view/textclassifier/-$Lambda$gUwJ4L0fbOov9vQ6Fexsf3MFa20;->$INST$0:Landroid/view/textclassifier/-$Lambda$gUwJ4L0fbOov9vQ6Fexsf3MFa20;

    .line 32
    sput-object v0, Landroid/view/textclassifier/LinksInfo;->NO_OP:Landroid/view/textclassifier/LinksInfo;

    .line 27
    return-void
.end method

.method public static synthetic lambda$-android_view_textclassifier_LinksInfo_1027(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public abstract apply(Ljava/lang/CharSequence;)Z
.end method
