.class public Lcom/ss/android/vesdk/gesture/VEGesture$TouchWithGestureEvent;
.super Lcom/ss/android/vesdk/gesture/VEGesture$TouchEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/gesture/VEGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchWithGestureEvent"
.end annotation


# instance fields
.field public final gestureType:Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;


# direct methods
.method private constructor <init>(Lcom/ss/android/vesdk/gesture/VEGesture$EventType;Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;FF)V
    .registers 6

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, p3, p4, v0}, Lcom/ss/android/vesdk/gesture/VEGesture$TouchEvent;-><init>(Lcom/ss/android/vesdk/gesture/VEGesture$EventType;FFLcom/ss/android/vesdk/gesture/VEGesture$1;)V

    .line 106
    iput-object p2, p0, Lcom/ss/android/vesdk/gesture/VEGesture$TouchWithGestureEvent;->gestureType:Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/vesdk/gesture/VEGesture$EventType;Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;FFLcom/ss/android/vesdk/gesture/VEGesture$1;)V
    .registers 6

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/gesture/VEGesture$TouchWithGestureEvent;-><init>(Lcom/ss/android/vesdk/gesture/VEGesture$EventType;Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;FF)V

    return-void
.end method
