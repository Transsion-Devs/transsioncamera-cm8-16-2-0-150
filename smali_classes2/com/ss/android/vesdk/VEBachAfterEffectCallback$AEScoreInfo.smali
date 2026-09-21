.class public Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/ITEParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEBachAfterEffectCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AEScoreInfo"
.end annotation


# instance fields
.field public face_score:F

.field public meaningless_score:F

.field private parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

.field public portrait_score:F

.field public quality_score:F

.field public score:F

.field public sharepness_score:F

.field public time:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;->score:F

    .line 13
    iput v0, p0, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;->face_score:F

    .line 14
    iput v0, p0, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;->quality_score:F

    .line 15
    iput v0, p0, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;->sharepness_score:F

    .line 16
    iput v0, p0, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;->meaningless_score:F

    .line 17
    iput v0, p0, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;->portrait_score:F

    return-void
.end method


# virtual methods
.method public readFromParcel()V
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;->time:I

    .line 27
    iget-object v0, p0, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;->score:F

    .line 28
    iget-object v0, p0, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;->face_score:F

    .line 29
    iget-object v0, p0, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;->quality_score:F

    .line 30
    iget-object v0, p0, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;->sharepness_score:F

    .line 31
    iget-object v0, p0, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;->meaningless_score:F

    .line 32
    iget-object v0, p0, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;->portrait_score:F

    return-void
.end method

.method public setParcelWrapper(Lcom/ss/android/ttve/nativePort/TEParcelWrapper;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    return-void
.end method
