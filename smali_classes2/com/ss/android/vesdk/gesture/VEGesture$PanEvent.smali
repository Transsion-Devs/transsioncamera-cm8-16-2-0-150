.class public Lcom/ss/android/vesdk/gesture/VEGesture$PanEvent;
.super Lcom/ss/android/vesdk/gesture/VEGesture$TouchEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/gesture/VEGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PanEvent"
.end annotation


# instance fields
.field public dx:F

.field public dy:F

.field public factor:F


# direct methods
.method private constructor <init>(FFFFF)V
    .registers 8

    .line 128
    sget-object v0, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;->PAN:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/ss/android/vesdk/gesture/VEGesture$TouchEvent;-><init>(Lcom/ss/android/vesdk/gesture/VEGesture$EventType;FFLcom/ss/android/vesdk/gesture/VEGesture$1;)V

    .line 129
    iput p3, p0, Lcom/ss/android/vesdk/gesture/VEGesture$PanEvent;->dx:F

    .line 130
    iput p4, p0, Lcom/ss/android/vesdk/gesture/VEGesture$PanEvent;->dy:F

    .line 131
    iput p5, p0, Lcom/ss/android/vesdk/gesture/VEGesture$PanEvent;->factor:F

    return-void
.end method

.method synthetic constructor <init>(FFFFFLcom/ss/android/vesdk/gesture/VEGesture$1;)V
    .registers 7

    .line 110
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/vesdk/gesture/VEGesture$PanEvent;-><init>(FFFFF)V

    return-void
.end method
