.class final Lcom/google/android/gms/internal/ads/zzaqr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic zzdbk:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Landroid/webkit/JsResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdbk:Landroid/webkit/JsResult;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdbk:Landroid/webkit/JsResult;

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method
