.class Lcom/android/settings/CryptKeeper$9;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeper;->updateEmergencyCallButtonState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    .line 1056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->-wrap10(Lcom/android/settings/CryptKeeper;)V

    .line 1061
    return-void
.end method
