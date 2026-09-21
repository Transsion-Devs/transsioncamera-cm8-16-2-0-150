.class public abstract Lcom/ss/android/vesdk/gesture/VEGesture$Event;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/gesture/VEGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Event"
.end annotation


# instance fields
.field private eventType:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;


# direct methods
.method private constructor <init>(Lcom/ss/android/vesdk/gesture/VEGesture$EventType;)V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/ss/android/vesdk/gesture/VEGesture$Event;->eventType:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/vesdk/gesture/VEGesture$EventType;Lcom/ss/android/vesdk/gesture/VEGesture$1;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/gesture/VEGesture$Event;-><init>(Lcom/ss/android/vesdk/gesture/VEGesture$EventType;)V

    return-void
.end method


# virtual methods
.method public getEventType()Lcom/ss/android/vesdk/gesture/VEGesture$EventType;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/ss/android/vesdk/gesture/VEGesture$Event;->eventType:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    return-object p0
.end method
