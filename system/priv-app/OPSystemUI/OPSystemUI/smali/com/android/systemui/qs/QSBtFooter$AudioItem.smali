.class Lcom/android/systemui/qs/QSBtFooter$AudioItem;
.super Ljava/lang/Object;
.source "QSBtFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSBtFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioItem"
.end annotation


# instance fields
.field private final mIcon:I

.field private final mLabel:Ljava/lang/String;

.field private final mType:I

.field final synthetic this$0:Lcom/android/systemui/qs/QSBtFooter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSBtFooter;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSBtFooter;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "type"    # I

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/systemui/qs/QSBtFooter$AudioItem;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    iput-object p2, p0, Lcom/android/systemui/qs/QSBtFooter$AudioItem;->mLabel:Ljava/lang/String;

    .line 555
    iput p3, p0, Lcom/android/systemui/qs/QSBtFooter$AudioItem;->mIcon:I

    .line 556
    iput p4, p0, Lcom/android/systemui/qs/QSBtFooter$AudioItem;->mType:I

    .line 557
    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/android/systemui/qs/QSBtFooter$AudioItem;->mIcon:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lcom/android/systemui/qs/QSBtFooter$AudioItem;->mType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter$AudioItem;->mLabel:Ljava/lang/String;

    return-object v0
.end method
