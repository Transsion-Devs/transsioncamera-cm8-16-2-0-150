.class public Lcom/arcsoft/filter/ArcFilterEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;,
        Lcom/arcsoft/filter/ArcFilterEngine$CaptureProcessCallback;,
        Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;
    }
.end annotation


# static fields
.field private static mbEnableLog:Z = false


# instance fields
.field private bufferArr0:[Ljava/nio/ByteBuffer;

.field private bufferArr1:[B

.field private mContext:Landroid/content/Context;

.field private mDefaultEffecID:I

.field private mDefaultResourcePath:Ljava/lang/String;

.field private mEngineHandler:J

.field private mEventHandler:Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;

.field private mFilterEngine:Lcom/arcsoft/filter/FilterEngineOES;

.field private mFilterParamMap:Ljava/util/Map;

.field private mMLEngineInited:Z

.field private mMaskRotate:I

.field private mRenderFboHeight:I

.field private mRenderFboWidth:I

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 77
    const-string v0, "ArcFilter"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mMLEngineInited:Z

    const-wide/16 v1, 0x0

    .line 59
    iput-wide v1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEngineHandler:J

    .line 60
    iput v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mStatus:I

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mContext:Landroid/content/Context;

    .line 62
    iput v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mDefaultEffecID:I

    .line 63
    const-string v2, ""

    iput-object v2, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mDefaultResourcePath:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEventHandler:Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;

    .line 65
    iput v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mRenderFboWidth:I

    .line 66
    iput v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mRenderFboHeight:I

    .line 69
    iput-object v1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->bufferArr0:[Ljava/nio/ByteBuffer;

    .line 70
    iput-object v1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->bufferArr1:[B

    .line 71
    iput v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mMaskRotate:I

    return-void
.end method

.method private static LOGV(Ljava/lang/String;)V
    .registers 2

    .line 449
    const-string v0, "ArcFilterEngine"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100(Lcom/arcsoft/filter/ArcFilterEngine;)I
    .registers 1

    .line 34
    iget p0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mStatus:I

    return p0
.end method

.method static synthetic access$102(Lcom/arcsoft/filter/ArcFilterEngine;I)I
    .registers 2

    .line 34
    iput p1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mStatus:I

    return p1
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .registers 1

    .line 34
    invoke-static {p0}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/arcsoft/filter/ArcFilterEngine;)Z
    .registers 1

    .line 34
    iget-boolean p0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mMLEngineInited:Z

    return p0
.end method

.method static synthetic access$400(Lcom/arcsoft/filter/ArcFilterEngine;)Lcom/arcsoft/filter/ArcFilterEngine$CaptureProcessCallback;
    .registers 1

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method private enableDebuglogOutput(Z)I
    .registers 2

    .line 280
    invoke-direct {p0, p1}, Lcom/arcsoft/filter/ArcFilterEngine;->native_EnableDebuglogOutput(Z)I

    move-result p0

    return p0
.end method

.method private init(Landroid/content/Context;ILjava/lang/String;)I
    .registers 7

    .line 150
    const-string p1, "Init <----"

    invoke-static {p1}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGV(Ljava/lang/String;)V

    .line 153
    iget p1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mStatus:I

    const/4 v0, 0x6

    if-eqz p1, :cond_12

    .line 154
    const-string p0, "ArcFilterEngine"

    const-string p1, "Init state error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 157
    :cond_12
    iput p2, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mDefaultEffecID:I

    if-eqz p3, :cond_18

    .line 160
    iput-object p3, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mDefaultResourcePath:Ljava/lang/String;

    .line 164
    :cond_18
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 165
    new-instance p2, Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;

    invoke-direct {p2, p0, p1}, Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;-><init>(Lcom/arcsoft/filter/ArcFilterEngine;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEventHandler:Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;

    goto :goto_37

    .line 166
    :cond_26
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 167
    new-instance p2, Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;

    invoke-direct {p2, p0, p1}, Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;-><init>(Lcom/arcsoft/filter/ArcFilterEngine;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEventHandler:Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;

    goto :goto_37

    :cond_34
    const/4 p1, 0x0

    .line 169
    iput-object p1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEventHandler:Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;

    .line 172
    :goto_37
    sget-boolean p1, Lcom/arcsoft/filter/ArcFilterEngine;->mbEnableLog:Z

    invoke-direct {p0, p1}, Lcom/arcsoft/filter/ArcFilterEngine;->enableDebuglogOutput(Z)I

    .line 173
    invoke-direct {p0}, Lcom/arcsoft/filter/ArcFilterEngine;->native_InitEngine()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEngineHandler:J

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    const/4 p2, 0x0

    if-eqz p1, :cond_5e

    const/4 p1, 0x1

    .line 175
    iput-boolean p1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mMLEngineInited:Z

    .line 181
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/arcsoft/filter/ArcFilterEngine;->setFaceBeautyEnable(Ljava/lang/Boolean;)I

    .line 183
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mFilterParamMap:Ljava/util/Map;

    .line 184
    const-string p0, "Init ---->"

    invoke-static {p0}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGV(Ljava/lang/String;)V

    return p2

    .line 177
    :cond_5e
    iput-boolean p2, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mMLEngineInited:Z

    return v0
.end method

.method private native native_EnableDebuglogOutput(Z)I
.end method

.method private native native_EnableFaceBeauty(JZ)I
.end method

.method private native native_InitEngine()J
.end method

.method private native native_PreviewProcessWithTexture(JIZ[FLandroid/graphics/Rect;IIII)I
.end method

.method private native native_SetEffect(JILjava/lang/String;)I
.end method

.method private native native_SetOutputFbo(JILandroid/graphics/Rect;IIIIIIIIIIIIIIFFFFFFF)I
.end method

.method private native native_UninitEngine(J)I
.end method

.method private native native_getSDKVersion()Ljava/lang/String;
.end method

.method private native native_onDrawFrame(J)I
.end method

.method private native native_onSurfaceCreated(J)I
.end method

.method private onDrawFrame()I
    .registers 3

    .line 385
    iget-boolean v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mMLEngineInited:Z

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 388
    :cond_6
    iget-wide v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEngineHandler:J

    invoke-direct {p0, v0, v1}, Lcom/arcsoft/filter/ArcFilterEngine;->native_onDrawFrame(J)I

    move-result p0

    return p0
.end method

.method private onSurfaceCreated()I
    .registers 3

    .line 369
    iget-boolean v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mMLEngineInited:Z

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 372
    :cond_6
    const-string v0, "onSurfaceCreated---"

    invoke-static {v0}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGV(Ljava/lang/String;)V

    .line 373
    iget-wide v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEngineHandler:J

    invoke-direct {p0, v0, v1}, Lcom/arcsoft/filter/ArcFilterEngine;->native_onSurfaceCreated(J)I

    move-result p0

    return p0
.end method

.method private pushPreviewTexture(IZ[FLandroid/graphics/Rect;II)I
    .registers 18

    .line 362
    iget-boolean v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mMLEngineInited:Z

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 365
    :cond_6
    iget-wide v1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEngineHandler:J

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v10}, Lcom/arcsoft/filter/ArcFilterEngine;->native_PreviewProcessWithTexture(JIZ[FLandroid/graphics/Rect;IIII)I

    move-result p0

    return p0
.end method

.method private setEffect(ILjava/lang/String;)I
    .registers 5

    .line 284
    iget-boolean v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mMLEngineInited:Z

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 287
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetEffect effecID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " effectResPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGV(Ljava/lang/String;)V

    .line 288
    iget-wide v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEngineHandler:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/arcsoft/filter/ArcFilterEngine;->native_SetEffect(JILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private setFaceBeautyEnable(Ljava/lang/Boolean;)I
    .registers 4

    .line 307
    iget-boolean v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mMLEngineInited:Z

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 310
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetFaceBeauty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGV(Ljava/lang/String;)V

    .line 311
    iget-wide v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEngineHandler:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/arcsoft/filter/ArcFilterEngine;->native_EnableFaceBeauty(JZ)I

    move-result p0

    return p0
.end method

.method private setOutputFbo(ILandroid/graphics/Rect;IIII)I
    .registers 34

    move-object/from16 v1, p0

    .line 292
    iget-boolean v0, v1, Lcom/arcsoft/filter/ArcFilterEngine;->mMLEngineInited:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    rsub-int/lit8 v9, p6, 0x64

    .line 297
    iget-object v0, v1, Lcom/arcsoft/filter/ArcFilterEngine;->mFilterParamMap:Ljava/util/Map;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;

    if-nez v0, :cond_1e

    .line 299
    new-instance v0, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;-><init>(Lcom/arcsoft/filter/ArcFilterEngine;Lcom/arcsoft/filter/ArcFilterEngine$1;)V

    .line 300
    :cond_1e
    iget-wide v2, v1, Lcom/arcsoft/filter/ArcFilterEngine;->mEngineHandler:J

    iget v10, v0, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->nParam0:I

    iget v11, v0, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->nParam1:I

    iget v12, v0, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->nParam2:I

    iget v13, v0, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->nParam3:I

    iget v14, v0, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->nParam4:I

    iget v15, v0, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->nParam5:I

    iget v4, v0, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->nParam6:I

    iget v5, v0, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->nParam7:I

    iget v6, v0, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->nParam8:I

    iget v7, v0, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->nParam9:I

    iget v8, v0, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->fParam0:F

    iget v1, v0, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->fParam1:F

    move/from16 v21, v1

    iget v1, v0, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->fParam2:F

    move/from16 v22, v1

    iget v1, v0, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->fParam3:F

    move/from16 v23, v1

    iget v1, v0, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->fParam4:F

    move/from16 v24, v1

    iget v1, v0, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->fParam5:F

    iget v0, v0, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->fParam6:F

    move/from16 v26, v0

    move/from16 v25, v1

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v1 .. v26}, Lcom/arcsoft/filter/ArcFilterEngine;->native_SetOutputFbo(JILandroid/graphics/Rect;IIIIIIIIIIIIIIFFFFFFF)I

    move-result v0

    return v0
.end method


# virtual methods
.method public DoStep(IIZ[FLandroid/graphics/Rect;IIILandroid/graphics/Rect;III)I
    .registers 23

    if-nez p1, :cond_25

    .line 246
    iget-object p1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mFilterEngine:Lcom/arcsoft/filter/FilterEngineOES;

    if-nez p1, :cond_10

    .line 247
    new-instance p1, Lcom/arcsoft/filter/FilterEngineOES;

    invoke-direct {p1}, Lcom/arcsoft/filter/FilterEngineOES;-><init>()V

    iput-object p1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mFilterEngine:Lcom/arcsoft/filter/FilterEngineOES;

    .line 248
    invoke-virtual {p1, p3}, Lcom/arcsoft/filter/FilterEngineOES;->init(Z)V

    .line 250
    :cond_10
    iget-object v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mFilterEngine:Lcom/arcsoft/filter/FilterEngineOES;

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p10

    move/from16 v9, p11

    invoke-virtual/range {v0 .. v9}, Lcom/arcsoft/filter/FilterEngineOES;->drawTexture(IZ[FLandroid/graphics/Rect;IIIII)V

    const/4 p0, 0x0

    return p0

    .line 256
    :cond_25
    iget-boolean v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mMLEngineInited:Z

    const/4 v7, 0x1

    if-nez v0, :cond_2b

    return v7

    :cond_2b
    move-object v0, p0

    move v5, p1

    move/from16 v1, p8

    move-object/from16 v2, p9

    move/from16 v3, p10

    move/from16 v4, p11

    move/from16 v6, p12

    .line 258
    invoke-direct/range {v0 .. v6}, Lcom/arcsoft/filter/ArcFilterEngine;->setOutputFbo(ILandroid/graphics/Rect;IIII)I

    move-result p1

    .line 259
    const-string v8, "ArcFilterEngine"

    if-eqz p1, :cond_54

    .line 260
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "doStep SetOutputFbo error, res:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_54
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 264
    invoke-direct/range {v0 .. v6}, Lcom/arcsoft/filter/ArcFilterEngine;->pushPreviewTexture(IZ[FLandroid/graphics/Rect;II)I

    move-result p1

    if-eqz p1, :cond_78

    .line 266
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "doStep PushPreviewTexture error, res:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 270
    :cond_78
    invoke-direct {p0}, Lcom/arcsoft/filter/ArcFilterEngine;->onDrawFrame()I

    move-result p0

    if-eqz p0, :cond_93

    .line 272
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "doStep onDrawFrame error, res:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_93
    return p0
.end method

.method public Init()I
    .registers 4

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mRenderFboHeight:I

    iput v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mRenderFboWidth:I

    .line 131
    iput v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mDefaultEffecID:I

    const/4 v1, 0x0

    .line 133
    const-string v2, ""

    invoke-direct {p0, v1, v0, v2}, Lcom/arcsoft/filter/ArcFilterEngine;->init(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public UnInit()I
    .registers 7

    .line 189
    const-string v0, "Unint <----"

    invoke-static {v0}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGV(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mFilterEngine:Lcom/arcsoft/filter/FilterEngineOES;

    if-eqz v0, :cond_f

    .line 193
    invoke-virtual {v0}, Lcom/arcsoft/filter/FilterEngineOES;->uninit()V

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mFilterEngine:Lcom/arcsoft/filter/FilterEngineOES;

    .line 196
    :cond_f
    iget-wide v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEngineHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_49

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEngineHandler!= 0:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEngineHandler:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArcFilterEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-wide v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEngineHandler:J

    invoke-direct {p0, v0, v1}, Lcom/arcsoft/filter/ArcFilterEngine;->native_UninitEngine(J)I

    move-result v0

    const/4 v1, 0x0

    .line 199
    iput-boolean v1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mMLEngineInited:Z

    .line 200
    iput-wide v2, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEngineHandler:J

    .line 206
    iget-object v2, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mFilterParamMap:Ljava/util/Map;

    if-eqz v2, :cond_41

    .line 207
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 208
    :cond_41
    iput v1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mStatus:I

    .line 209
    const-string p0, "Unint ---->"

    invoke-static {p0}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGV(Ljava/lang/String;)V

    return v0

    :cond_49
    const/4 p0, 0x1

    return p0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 3

    .line 404
    invoke-direct {p0}, Lcom/arcsoft/filter/ArcFilterEngine;->native_getSDKVersion()Ljava/lang/String;

    move-result-object p0

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSDKVersion-:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGV(Ljava/lang/String;)V

    return-object p0
.end method

.method public prepareEngine(I)I
    .registers 5

    .line 214
    const-string p1, "prepareEngine <----"

    invoke-static {p1}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGV(Ljava/lang/String;)V

    const p1, 0x10000ff0

    .line 217
    iput p1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mDefaultEffecID:I

    .line 218
    iget-object v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mDefaultResourcePath:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/arcsoft/filter/ArcFilterEngine;->setEffect(ILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    .line 219
    const-string v1, "ArcFilterEngine"

    if-eqz p1, :cond_2a

    .line 221
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareEngine SetEffect error, res:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 225
    :cond_2a
    invoke-direct {p0}, Lcom/arcsoft/filter/ArcFilterEngine;->onSurfaceCreated()I

    move-result p0

    if-eqz p0, :cond_45

    .line 227
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareEngine onSurfaceCreated error, res:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 231
    :cond_45
    const-string p1, "prepareEngine ---->"

    invoke-static {p1}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGV(Ljava/lang/String;)V

    return p0
.end method
