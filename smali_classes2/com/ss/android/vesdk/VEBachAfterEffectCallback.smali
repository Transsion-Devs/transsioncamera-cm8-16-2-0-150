.class public Lcom/ss/android/vesdk/VEBachAfterEffectCallback;
.super Lcom/ss/android/vesdk/VEBachAlgorithmCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEBachAfterEffectCallback$BachAfterEffectListener;,
        Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;
    }
.end annotation


# instance fields
.field private mListener:Lcom/ss/android/vesdk/VEBachAfterEffectCallback$BachAfterEffectListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Lcom/ss/android/vesdk/VEBachAlgorithmCallback;-><init>()V

    .line 49
    sget-object v0, Lcom/ss/android/vesdk/VEBachAlgorithmCallback$VEBachAlgorithmType;->AFTER_EFFECT:Lcom/ss/android/vesdk/VEBachAlgorithmCallback$VEBachAlgorithmType;

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEBachAlgorithmCallback;->setAlgorithmType(Lcom/ss/android/vesdk/VEBachAlgorithmCallback$VEBachAlgorithmType;)V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;)V
    .registers 2

    .line 65
    iget-object p0, p0, Lcom/ss/android/vesdk/VEBachAfterEffectCallback;->mListener:Lcom/ss/android/vesdk/VEBachAfterEffectCallback$BachAfterEffectListener;

    if-eqz p0, :cond_7

    .line 66
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$BachAfterEffectListener;->onResult(Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;)V

    :cond_7
    return-void
.end method

.method public setListener(Lcom/ss/android/vesdk/VEBachAfterEffectCallback$BachAfterEffectListener;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/ss/android/vesdk/VEBachAfterEffectCallback;->mListener:Lcom/ss/android/vesdk/VEBachAfterEffectCallback$BachAfterEffectListener;

    return-void
.end method
