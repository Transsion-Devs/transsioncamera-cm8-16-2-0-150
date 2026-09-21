.class public Lcom/ss/android/vesdk/effect/VECameraVideoEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/effect/IEffect;


# static fields
.field private static final TAG:Ljava/lang/String; = "VECameraVideoEffect"


# instance fields
.field private mAlgorithmList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;",
            ">;"
        }
    .end annotation
.end field

.field private mPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

.field mRecorder:Lcom/ss/android/vesdk/TECameraVideoRecorder;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;Lcom/ss/android/vesdk/TECameraVideoRecorder;)V
    .registers 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mAlgorithmList:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mFilterList:Ljava/util/List;

    .line 46
    iput-object p1, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    .line 47
    iput-object p2, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mRecorder:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 31
    sget-object v0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ss/android/vesdk/effect/VECameraVideoEffect;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    return-object p0
.end method


# virtual methods
.method public addTrackAlgorithm(IILcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;II)I
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 167
    iget-object v2, v0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mAlgorithmList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {v1}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->getAlgorithmType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2e

    .line 169
    check-cast v1, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;

    .line 170
    iget-object v2, v0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget v4, v1, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRectLeft:F

    iget v5, v1, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRectTop:F

    iget v6, v1, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRectWidth:F

    iget v7, v1, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRectHeight:F

    iget-boolean v8, v1, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->enableDetectRect:Z

    iget v9, v1, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->scanMode:I

    iget-wide v10, v1, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRequirement:J

    iget v12, v1, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->codeType:I

    iget-boolean v13, v1, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->decodeMultiple:Z

    iget-boolean v14, v1, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->enhanceCamera:Z

    const/4 v15, 0x0

    const/4 v3, 0x1

    invoke-virtual/range {v2 .. v15}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setEnigmaDetectParams(ZFFFFZIJIZZZ)V

    goto :goto_55

    .line 182
    :cond_2e
    invoke-virtual {v1}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->getAlgorithmType()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_43

    .line 183
    iget-object v2, v0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mRecorder:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    new-instance v3, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$3;

    move/from16 v4, p2

    invoke-direct {v3, v0, v1, v4}, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$3;-><init>(Lcom/ss/android/vesdk/effect/VECameraVideoEffect;Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;I)V

    invoke-virtual {v2, v3}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    goto :goto_55

    .line 200
    :cond_43
    invoke-virtual {v1}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->getAlgorithmType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_55

    .line 201
    iget-object v2, v0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mRecorder:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    new-instance v3, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$4;

    invoke-direct {v3, v0, v1}, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$4;-><init>(Lcom/ss/android/vesdk/effect/VECameraVideoEffect;Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;)V

    invoke-virtual {v2, v3}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    .line 211
    :cond_55
    :goto_55
    iget-object v0, v0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mAlgorithmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I
    .registers 6

    .line 61
    iget-object p1, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mFilterList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object p1, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mRecorder:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    new-instance p4, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$1;

    invoke-direct {p4, p0, p3, p2}, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$1;-><init>(Lcom/ss/android/vesdk/effect/VECameraVideoEffect;Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;I)V

    invoke-virtual {p1, p4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    .line 80
    iget-object p0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mFilterList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
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

    .line 312
    iget-object p0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->regBachAlgorithmCallback(Ljava/util/List;)V

    return-void
.end method

.method public removeTrackAlgorithm(I)I
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-ltz v1, :cond_6b

    .line 221
    iget-object v2, v0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mAlgorithmList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6b

    .line 222
    iget-object v2, v0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mAlgorithmList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;

    if-nez v2, :cond_1a

    const/4 v0, -0x1

    return v0

    .line 227
    :cond_1a
    invoke-virtual {v2}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->getAlgorithmType()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_40

    .line 228
    check-cast v2, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;

    .line 229
    iget-object v3, v0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget v5, v2, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRectLeft:F

    iget v6, v2, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRectTop:F

    iget v7, v2, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRectWidth:F

    iget v8, v2, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRectHeight:F

    iget-boolean v9, v2, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->enableDetectRect:Z

    iget v10, v2, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->scanMode:I

    iget-wide v11, v2, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRequirement:J

    iget v13, v2, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->codeType:I

    iget-boolean v14, v2, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->decodeMultiple:Z

    iget-boolean v15, v2, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->enhanceCamera:Z

    const/16 v16, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v16}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setEnigmaDetectParams(ZFFFFZIJIZZZ)V

    goto :goto_65

    .line 241
    :cond_40
    invoke-virtual {v2}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->getAlgorithmType()I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_53

    .line 242
    iget-object v3, v0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mRecorder:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    new-instance v4, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$5;

    invoke-direct {v4, v0, v2}, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$5;-><init>(Lcom/ss/android/vesdk/effect/VECameraVideoEffect;Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;)V

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    goto :goto_65

    .line 254
    :cond_53
    invoke-virtual {v2}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->getAlgorithmType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_65

    .line 255
    iget-object v3, v0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mRecorder:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    new-instance v4, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$6;

    invoke-direct {v4, v0, v2}, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$6;-><init>(Lcom/ss/android/vesdk/effect/VECameraVideoEffect;Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;)V

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    .line 266
    :cond_65
    :goto_65
    iget-object v0, v0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mAlgorithmList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_6b
    const/4 v0, 0x0

    return v0
.end method

.method public removeTrackFilter(I)I
    .registers 5

    if-ltz p1, :cond_26

    .line 91
    iget-object v0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mFilterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_26

    .line 92
    iget-object v0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mFilterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;

    if-nez v0, :cond_16

    const/4 p0, -0x1

    return p0

    .line 96
    :cond_16
    iget-object v1, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mRecorder:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    new-instance v2, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$2;

    invoke-direct {v2, p0, v0}, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$2;-><init>(Lcom/ss/android/vesdk/effect/VECameraVideoEffect;Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)V

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    .line 111
    iget-object p0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mFilterList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public sendEffectMsg(IJJ[B)V
    .registers 7

    .line 329
    iget-object p0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual/range {p0 .. p6}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->sendEffectMsg(IJJ[B)V

    return-void
.end method

.method public setARCoreParam(Lcom/ss/android/vesdk/VEARCoreParam;)V
    .registers 4

    if-nez p1, :cond_9

    .line 305
    sget-object v0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->TAG:Ljava/lang/String;

    const-string v1, "ARCore param is null"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_9
    iget-object p0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setARCoreParam(Lcom/ss/android/vesdk/VEARCoreParam;)V

    return-void
.end method

.method public setFilterParam(ILjava/lang/String;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "TT;)I"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public unregBachAlgorithmCallback()V
    .registers 1

    .line 317
    iget-object p0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->unregBachAlgorithmCallback()V

    return-void
.end method

.method public updateTrackAlgorithmParam(ILcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;)I
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-ltz v1, :cond_42

    .line 279
    iget-object v2, v0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mFilterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 280
    iget-object v2, v0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mAlgorithmList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;

    .line 282
    invoke-virtual {v2}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->getAlgorithmType()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_3b

    .line 283
    check-cast v2, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;

    .line 284
    iget-object v3, v0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget v5, v2, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRectLeft:F

    iget v6, v2, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRectTop:F

    iget v7, v2, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRectWidth:F

    iget v8, v2, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRectHeight:F

    iget-boolean v9, v2, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->enableDetectRect:Z

    iget v10, v2, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->scanMode:I

    iget-wide v11, v2, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRequirement:J

    iget v13, v2, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->codeType:I

    iget-boolean v14, v2, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->decodeMultiple:Z

    iget-boolean v15, v2, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->enhanceCamera:Z

    const/16 v16, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {v3 .. v16}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setEnigmaDetectParams(ZFFFFZIJIZZZ)V

    .line 297
    :cond_3b
    iget-object v0, v0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mAlgorithmList:Ljava/util/List;

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_42
    const/4 v0, 0x0

    return v0
.end method

.method public updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I
    .registers 4

    if-ltz p1, :cond_f

    .line 137
    iget-object v0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mFilterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_f

    .line 138
    iget-object p0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mFilterList:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public updateTrackFilterTime(III)I
    .registers 4

    const/4 p0, 0x0

    return p0
.end method
