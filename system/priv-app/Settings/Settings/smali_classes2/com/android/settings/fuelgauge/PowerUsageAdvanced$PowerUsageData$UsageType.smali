.class public interface abstract annotation Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData$UsageType;
.super Ljava/lang/Object;
.source "PowerUsageAdvanced.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "UsageType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final APP:I = 0x0

.field public static final BLUETOOTH:I = 0x4

.field public static final CELL:I = 0x2

.field public static final IDLE:I = 0x6

.field public static final OVERCOUNTED:I = 0x8

.field public static final SYSTEM:I = 0x3

.field public static final UNACCOUNTED:I = 0x7

.field public static final USER:I = 0x5

.field public static final WIFI:I = 0x1
