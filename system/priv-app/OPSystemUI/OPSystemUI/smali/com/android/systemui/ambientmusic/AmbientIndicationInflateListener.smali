.class public Lcom/android/systemui/ambientmusic/AmbientIndicationInflateListener;
.super Ljava/lang/Object;
.source "AmbientIndicationInflateListener.java"

# interfaces
.implements Lcom/android/systemui/AutoReinflateContainer$InflateListener;


# instance fields
.field private mContainer:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationInflateListener;->mContainer:Ljava/lang/Object;

    .line 17
    return-void
.end method

.method private setAmbientIndicationView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationInflateListener;->mContainer:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->updateAmbientIndicationView(Landroid/view/View;)V

    .line 13
    return-void
.end method


# virtual methods
.method public onInflated(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/systemui/ambientmusic/AmbientIndicationInflateListener;->setAmbientIndicationView(Landroid/view/View;)V

    .line 22
    return-void
.end method
