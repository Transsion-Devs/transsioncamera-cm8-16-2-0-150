.class public Lcom/ss/android/ttve/nativePort/TEAudioMetricsCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private listener:Lcom/ss/android/vesdk/VEAudioMetricsListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onProgressChanged(Ljava/lang/Object;IFLjava/lang/String;)Z
    .registers 6

    .line 12
    instance-of v0, p0, Lcom/ss/android/ttve/nativePort/TEAudioMetricsCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 13
    check-cast p0, Lcom/ss/android/ttve/nativePort/TEAudioMetricsCallback;

    .line 14
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEAudioMetricsCallback;->listener:Lcom/ss/android/vesdk/VEAudioMetricsListener;

    if-eqz p0, :cond_13

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/VEAudioMetricsListener;->onProgressChanged(IFLjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    return v1
.end method


# virtual methods
.method public setListener(Ljava/lang/Object;)V
    .registers 2

    .line 19
    check-cast p1, Lcom/ss/android/vesdk/VEAudioMetricsListener;

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TEAudioMetricsCallback;->listener:Lcom/ss/android/vesdk/VEAudioMetricsListener;

    return-void
.end method
