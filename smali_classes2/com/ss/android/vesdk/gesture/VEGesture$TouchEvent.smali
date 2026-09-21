.class public Lcom/ss/android/vesdk/gesture/VEGesture$TouchEvent;
.super Lcom/ss/android/vesdk/gesture/VEGesture$Event;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/gesture/VEGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchEvent"
.end annotation


# instance fields
.field public x:F

.field public y:F


# direct methods
.method private constructor <init>(FF)V
    .registers 5

    .line 76
    sget-object v0, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;->TOUCH:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/gesture/VEGesture$Event;-><init>(Lcom/ss/android/vesdk/gesture/VEGesture$EventType;Lcom/ss/android/vesdk/gesture/VEGesture$1;)V

    .line 77
    iput p1, p0, Lcom/ss/android/vesdk/gesture/VEGesture$TouchEvent;->x:F

    .line 78
    iput p2, p0, Lcom/ss/android/vesdk/gesture/VEGesture$TouchEvent;->y:F

    return-void
.end method

.method synthetic constructor <init>(FFLcom/ss/android/vesdk/gesture/VEGesture$1;)V
    .registers 4

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/ss/android/vesdk/gesture/VEGesture$TouchEvent;-><init>(FF)V

    return-void
.end method

.method private constructor <init>(Lcom/ss/android/vesdk/gesture/VEGesture$EventType;FF)V
    .registers 5

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/ss/android/vesdk/gesture/VEGesture$Event;-><init>(Lcom/ss/android/vesdk/gesture/VEGesture$EventType;Lcom/ss/android/vesdk/gesture/VEGesture$1;)V

    .line 88
    iput p2, p0, Lcom/ss/android/vesdk/gesture/VEGesture$TouchEvent;->x:F

    .line 89
    iput p3, p0, Lcom/ss/android/vesdk/gesture/VEGesture$TouchEvent;->y:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/vesdk/gesture/VEGesture$EventType;FFLcom/ss/android/vesdk/gesture/VEGesture$1;)V
    .registers 5

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/vesdk/gesture/VEGesture$TouchEvent;-><init>(Lcom/ss/android/vesdk/gesture/VEGesture$EventType;FF)V

    return-void
.end method
