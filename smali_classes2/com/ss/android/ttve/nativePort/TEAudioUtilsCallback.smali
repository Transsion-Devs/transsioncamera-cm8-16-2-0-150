.class public Lcom/ss/android/ttve/nativePort/TEAudioUtilsCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private listener:Lcom/ss/android/vesdk/VEMixAudioListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(D)V
    .registers 3

    .line 13
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEAudioUtilsCallback;->listener:Lcom/ss/android/vesdk/VEMixAudioListener;

    if-eqz p0, :cond_7

    .line 14
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VEMixAudioListener;->onProgressChanged(D)V

    :cond_7
    return-void
.end method

.method public setListener(Ljava/lang/Object;)V
    .registers 2

    .line 19
    check-cast p1, Lcom/ss/android/vesdk/VEMixAudioListener;

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TEAudioUtilsCallback;->listener:Lcom/ss/android/vesdk/VEMixAudioListener;

    return-void
.end method
