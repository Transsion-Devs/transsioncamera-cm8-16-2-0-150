.class public Lcom/ss/android/ttve/nativePort/TEEffectCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/nativePort/TEEffectCallback$TECallback;
    }
.end annotation


# static fields
.field private static final ARTEXT_BITMAP:I = 0x4

.field private static final ARTEXT_CONTENT:I = 0x5

.field private static final BACH_AFTEREFFECT_CALLBACK:I = 0x7

.field private static final EFFECT_ALGORITHM_INFO:I = 0x8

.field private static final FACE_DETECT_LISTENER:I = 0x1

.field private static final FACE_INFO:I = 0x0

.field private static final LANDMARK_DETECT_LISTENER:I = 0x3

.field private static final REQUEST_STICKER_CALLBACK:I = 0x6

.field private static final SKELETON_DETECT:I = 0x9

.field private static final SMART_BEAUTY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TEEffectCallback"


# instance fields
.field private mARTextBitmapCallback:Lcom/ss/android/vesdk/VERecorder$OnARTextBitmapCallback;

.field private mARTextCallback:Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;

.field private mBachAlgorithmCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VEBachAlgorithmCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectAlgorithmCallback:Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;

.field private mFaceDetectListener:Lcom/ss/android/medialib/listener/FaceDetectListener;

.field private mFaceInfoCallback:Lcom/ss/android/ttve/nativePort/TEEffectCallback$TECallback;

.field private mLandMarkDetectCallback:Lcom/ss/android/vesdk/VELandMarkDetectListener;

.field private mResult:[[B

.field private mSkeletonDetectCallback:Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;

.field private mSmartBeautyListener:Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;

.field private mStickerRequestCallback:Lcom/ss/android/medialib/presenter/IStickerRequestCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nativeCallback([[BI)V
    .registers 9

    .line 174
    const-string v0, "detect listener is null"

    const/4 v1, 0x0

    const-string v2, "TEEffectCallback"

    packed-switch p2, :pswitch_data_182

    :pswitch_8
    goto/16 :goto_15d

    .line 246
    :pswitch_a
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mSkeletonDetectCallback:Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;

    if-eqz p0, :cond_15d

    .line 247
    invoke-static {p1}, Lcom/ss/android/vesdk/faceinfo/VESkeletonInfo;->convert([[B)Lcom/ss/android/vesdk/faceinfo/VESkeletonInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;->onResult(Lcom/ss/android/vesdk/faceinfo/VESkeletonInfo;)V

    return-void

    .line 269
    :pswitch_16
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mEffectAlgorithmCallback:Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;

    if-nez p2, :cond_20

    .line 270
    const-string p0, "effect algorithm listener is null"

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    if-nez p1, :cond_24

    goto/16 :goto_15d

    .line 274
    :cond_24
    new-instance p2, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    aget-object p1, p1, v1

    invoke-direct {p2, p1}, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;-><init>([B)V

    .line 275
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result p1

    .line 276
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v0

    .line 277
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    :goto_38
    if-ge v1, v0, :cond_50

    .line 279
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEParcel;->readLong()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 280
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEParcel;->readLong()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    long-to-int v3, v3

    .line 281
    invoke-virtual {v2, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 283
    :cond_50
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mEffectAlgorithmCallback:Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;

    invoke-interface {p0, v2, p1}, Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;->onResult(Landroid/util/SparseArray;F)V

    return-void

    .line 252
    :pswitch_56
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mBachAlgorithmCallbacks:Ljava/util/List;

    if-nez p0, :cond_60

    .line 253
    const-string p0, "bach algorithm callbacks is null"

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 256
    :cond_60
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_64
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_15d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/vesdk/VEBachAlgorithmCallback;

    .line 257
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEBachAlgorithmCallback;->getAlgorithmType()Lcom/ss/android/vesdk/VEBachAlgorithmCallback$VEBachAlgorithmType;

    move-result-object v0

    sget-object v2, Lcom/ss/android/vesdk/VEBachAlgorithmCallback$VEBachAlgorithmType;->AFTER_EFFECT:Lcom/ss/android/vesdk/VEBachAlgorithmCallback$VEBachAlgorithmType;

    if-ne v0, v2, :cond_64

    .line 258
    new-instance p0, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;-><init>([B)V

    .line 259
    new-instance p1, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;

    invoke-direct {p1}, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;-><init>()V

    .line 260
    invoke-virtual {p1, p0}, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;->setParcelWrapper(Lcom/ss/android/ttve/nativePort/TEParcelWrapper;)V

    .line 261
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;->readFromParcel()V

    .line 262
    check-cast p2, Lcom/ss/android/vesdk/VEBachAfterEffectCallback;

    invoke-virtual {p2, p1}, Lcom/ss/android/vesdk/VEBachAfterEffectCallback;->onResult(Lcom/ss/android/vesdk/VEBachAfterEffectCallback$AEScoreInfo;)V

    return-void

    .line 234
    :pswitch_90
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mStickerRequestCallback:Lcom/ss/android/medialib/presenter/IStickerRequestCallback;

    if-nez p2, :cond_9a

    .line 235
    const-string p0, "sticker request callback listener is null"

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9a
    if-nez p1, :cond_9e

    goto/16 :goto_15d

    .line 239
    :cond_9e
    new-instance p2, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    aget-object p1, p1, v1

    invoke-direct {p2, p1}, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;-><init>([B)V

    .line 240
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEParcel;->readBoolean()Z

    move-result p1

    .line 241
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result p2

    .line 242
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mStickerRequestCallback:Lcom/ss/android/medialib/presenter/IStickerRequestCallback;

    int-to-long v0, p2

    invoke-interface {p0, v0, v1, p1}, Lcom/ss/android/medialib/presenter/IStickerRequestCallback;->onStickerRequested(JZ)V

    return-void

    .line 204
    :pswitch_b4
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mARTextCallback:Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;

    if-nez p2, :cond_be

    .line 205
    const-string p0, "artext content listener is null"

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_be
    if-eqz p1, :cond_11e

    .line 208
    array-length p2, p1

    if-nez p2, :cond_c4

    goto :goto_11e

    .line 212
    :cond_c4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "artext param.length is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    array-length p2, p1

    new-array p2, p2, [Ljava/lang/String;

    .line 214
    :goto_dc
    array-length v0, p1

    if-ge v1, v0, :cond_118

    .line 215
    new-instance v0, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    aget-object v3, p1, v1

    invoke-direct {v0, v3}, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;-><init>([B)V

    .line 216
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "artext param["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_dc

    .line 219
    :cond_118
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mARTextCallback:Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;

    invoke-interface {p0, p2}, Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;->onContentResult([Ljava/lang/String;)V

    return-void

    .line 209
    :cond_11e
    :goto_11e
    const-string p0, "artext param is null"

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 223
    :pswitch_124
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mLandMarkDetectCallback:Lcom/ss/android/vesdk/VELandMarkDetectListener;

    if-nez p2, :cond_12c

    .line 224
    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12c
    if-nez p1, :cond_12f

    goto :goto_15d

    .line 228
    :cond_12f
    new-instance p2, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    aget-object p1, p1, v1

    invoke-direct {p2, p1}, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;-><init>([B)V

    .line 229
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEParcel;->readBoolean()Z

    move-result p1

    .line 230
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mLandMarkDetectCallback:Lcom/ss/android/vesdk/VELandMarkDetectListener;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VELandMarkDetectListener;->onLandMark(Z)V

    return-void

    .line 194
    :pswitch_140
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mSmartBeautyListener:Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;

    if-eqz p0, :cond_15d

    if-nez p1, :cond_14b

    const/4 p1, 0x0

    .line 196
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;->onResult(Lcom/ss/android/vesdk/faceinfo/VESmartBeautyInfo;)V

    return-void

    .line 199
    :cond_14b
    invoke-static {p1}, Lcom/ss/android/vesdk/faceinfo/VESmartBeautyInfo;->readFromByteArray([[B)Lcom/ss/android/vesdk/faceinfo/VESmartBeautyInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;->onResult(Lcom/ss/android/vesdk/faceinfo/VESmartBeautyInfo;)V

    return-void

    .line 183
    :pswitch_153
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mFaceDetectListener:Lcom/ss/android/medialib/listener/FaceDetectListener;

    if-nez p2, :cond_15b

    .line 184
    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15b
    if-nez p1, :cond_15e

    :cond_15d
    :goto_15d
    return-void

    .line 188
    :cond_15e
    new-instance p2, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    aget-object p1, p1, v1

    invoke-direct {p2, p1}, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;-><init>([B)V

    .line 189
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result p1

    .line 190
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result p2

    .line 191
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mFaceDetectListener:Lcom/ss/android/medialib/listener/FaceDetectListener;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/medialib/listener/FaceDetectListener;->onResult(II)V

    return-void

    .line 176
    :pswitch_173
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mFaceInfoCallback:Lcom/ss/android/ttve/nativePort/TEEffectCallback$TECallback;

    if-nez p0, :cond_17d

    .line 177
    const-string p0, "face info callback is null"

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 180
    :cond_17d
    invoke-interface {p0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectCallback$TECallback;->onResult([[B)V

    return-void

    nop

    :pswitch_data_182
    .packed-switch 0x0
        :pswitch_173
        :pswitch_153
        :pswitch_140
        :pswitch_124
        :pswitch_8
        :pswitch_b4
        :pswitch_90
        :pswitch_56
        :pswitch_16
        :pswitch_a
    .end packed-switch
.end method

.method public nativeCallbackWithResult([[BI)Ljava/nio/ByteBuffer;
    .registers 8

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p2, v0, :cond_6

    goto/16 :goto_e5

    .line 123
    :cond_6
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mARTextBitmapCallback:Lcom/ss/android/vesdk/VERecorder$OnARTextBitmapCallback;

    const-string v0, "TEEffectCallback"

    if-nez p2, :cond_12

    .line 124
    const-string p0, "artext bitmap listener is null"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_12
    if-nez p1, :cond_15

    return-object v1

    .line 130
    :cond_15
    new-instance p2, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-direct {p2, p1}, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;-><init>([B)V

    .line 131
    new-instance p1, Lcom/ss/android/vesdk/model/BefTextLayout;

    invoke-direct {p1}, Lcom/ss/android/vesdk/model/BefTextLayout;-><init>()V

    .line 132
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/ss/android/vesdk/model/BefTextLayout;->setCharSize(I)V

    .line 133
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/ss/android/vesdk/model/BefTextLayout;->setLetterSpacing(I)V

    .line 134
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/ss/android/vesdk/model/BefTextLayout;->setLineWidth(I)V

    .line 135
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v3

    invoke-virtual {p1, v3}, Lcom/ss/android/vesdk/model/BefTextLayout;->setLineHeight(F)V

    .line 136
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/ss/android/vesdk/model/BefTextLayout;->setTextAlign(I)V

    .line 137
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/ss/android/vesdk/model/BefTextLayout;->setTextIndent(I)V

    .line 138
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/ss/android/vesdk/model/BefTextLayout;->setSplit(I)V

    .line 140
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/ss/android/vesdk/model/BefTextLayout;->setLineCount(I)V

    .line 141
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p1, v3, v4}, Lcom/ss/android/vesdk/model/BefTextLayout;->setTextColor(J)V

    .line 142
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p1, v3, v4}, Lcom/ss/android/vesdk/model/BefTextLayout;->setBackColor(J)V

    .line 143
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_72

    move v2, v4

    :cond_72
    invoke-virtual {p1, v2}, Lcom/ss/android/vesdk/model/BefTextLayout;->setPlaceholder(Z)V

    .line 145
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ss/android/vesdk/model/BefTextLayout;->setFamilyName(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEParcel;->readString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_88

    .line 148
    const-string p0, "Read content failed."

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 151
    :cond_88
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mARTextBitmapCallback:Lcom/ss/android/vesdk/VERecorder$OnARTextBitmapCallback;

    invoke-interface {p0, p2, p1}, Lcom/ss/android/vesdk/VERecorder$OnARTextBitmapCallback;->onBefTextLayoutResult(Ljava/lang/String;Lcom/ss/android/vesdk/model/BefTextLayout;)Lcom/ss/android/vesdk/model/BefTextLayoutResult;

    move-result-object p0

    if-eqz p0, :cond_e5

    .line 153
    invoke-virtual {p0}, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 154
    invoke-virtual {p0}, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 155
    new-instance p2, Lcom/ss/android/ttve/nativePort/TEWritableParcel;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-direct {p2, v0}, Lcom/ss/android/ttve/nativePort/TEWritableParcel;-><init>(I)V

    .line 156
    invoke-virtual {p0}, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ss/android/ttve/nativePort/TEWritableParcel;->writeInt(I)I

    .line 157
    invoke-virtual {p0}, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->getHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ss/android/ttve/nativePort/TEWritableParcel;->writeInt(I)I

    .line 158
    invoke-virtual {p0}, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->getLineCount()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ss/android/ttve/nativePort/TEWritableParcel;->writeInt(I)I

    .line 159
    invoke-virtual {p0}, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/ss/android/ttve/nativePort/TEWritableParcel;->writeInt(I)I

    .line 160
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/ss/android/ttve/nativePort/TEWritableParcel;->writeMemory([B)I

    .line 161
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEWritableParcel;->getDataBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 162
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEWritableParcel;->getDataBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_e5
    :goto_e5
    return-object v1
.end method

.method public regBachAlgorithmCallback(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VEBachAlgorithmCallback;",
            ">;)V"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mBachAlgorithmCallbacks:Ljava/util/List;

    return-void
.end method

.method public setARTextBitmapCallback(Lcom/ss/android/vesdk/VERecorder$OnARTextBitmapCallback;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mARTextBitmapCallback:Lcom/ss/android/vesdk/VERecorder$OnARTextBitmapCallback;

    return-void
.end method

.method public setARTextParagraphContentCallback(Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mARTextCallback:Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;

    return-void
.end method

.method public setEffectAlgorithmInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mEffectAlgorithmCallback:Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;

    return-void
.end method

.method public setFaceDetectListener(Lcom/ss/android/medialib/listener/FaceDetectListener;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mFaceDetectListener:Lcom/ss/android/medialib/listener/FaceDetectListener;

    return-void
.end method

.method public setFaceInfoCallback(Lcom/ss/android/ttve/nativePort/TEEffectCallback$TECallback;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mFaceInfoCallback:Lcom/ss/android/ttve/nativePort/TEEffectCallback$TECallback;

    return-void
.end method

.method public setLandmarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mLandMarkDetectCallback:Lcom/ss/android/vesdk/VELandMarkDetectListener;

    return-void
.end method

.method public setOnSmartBeautyListener(Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mSmartBeautyListener:Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;

    return-void
.end method

.method public setSkeletonDetectCallback(Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mSkeletonDetectCallback:Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;

    return-void
.end method

.method public setStickerRequestCallback(Lcom/ss/android/medialib/presenter/IStickerRequestCallback;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mStickerRequestCallback:Lcom/ss/android/medialib/presenter/IStickerRequestCallback;

    return-void
.end method

.method public unregBachAlgorithmCallback()V
    .registers 2

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->mBachAlgorithmCallbacks:Ljava/util/List;

    return-void
.end method
