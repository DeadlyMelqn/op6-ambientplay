.class public interface abstract annotation Lcom/android/settings/applications/AppHeaderController$ActionType;
.super Ljava/lang/Object;
.source "AppHeaderController.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppHeaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ActionType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ACTION_APP_INFO:I = 0x1

.field public static final ACTION_APP_PREFERENCE:I = 0x2

.field public static final ACTION_NONE:I = 0x0

.field public static final ACTION_NOTIF_PREFERENCE:I = 0x3
