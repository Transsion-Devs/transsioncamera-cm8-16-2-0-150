.class public Lcom/ss/android/vesdk/VEFilterInvoker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/internal/IVEFilter;


# static fields
.field private static final EFFECT_CACHE_INT_KEY:Ljava/lang/String; = "effect cache int key"

.field private static final EFFECT_CACHE_INT_VALUE:Ljava/lang/String; = "effect cache int value"

.field private static final EFFECT_FREEZE_FRAME_TAG:Ljava/lang/String; = "FreezeFrame"

.field private static final EFFECT_HDR_INTENSITY:Ljava/lang/String; = "effect hdr intensity"

.field private static final EFFECT_HDR_RES_PATH:Ljava/lang/String; = "effect hdr res path"

.field private static final EFFECT_HDR_TYPE:Ljava/lang/String; = "effect hdr type"

.field private static final EFFECT_REQ_ID:Ljava/lang/String; = "effect req id"

.field private static final EFFECT_RES_PATH:Ljava/lang/String; = "effect res path"

.field private static final EFFECT_STICKER_ID:Ljava/lang/String; = "effect sticker id"

.field private static final EFFECT_STICKER_TAG:Ljava/lang/String; = "effect sticker tag"

.field private static final ENTITY_AUDIO_START_TIME:Ljava/lang/String; = "entity audio start time"

.field private static final ENTITY_DATA_FORCE_UPDATE:Ljava/lang/String; = "entity data force update"

.field private static final ENTITY_FLIP_X:Ljava/lang/String; = "entity flip x"

.field private static final ENTITY_FLIP_Y:Ljava/lang/String; = "entity flip y"

.field private static final ENTITY_LAYER:Ljava/lang/String; = "entity layer"

.field private static final ENTITY_PATH:Ljava/lang/String; = "entity path"

.field private static final ENTITY_POSITION_X:Ljava/lang/String; = "entity position x"

.field private static final ENTITY_POSITION_Y:Ljava/lang/String; = "entity position y"

.field private static final ENTITY_SCALE_X:Ljava/lang/String; = "entity scale x"

.field private static final ENTITY_SCALE_Y:Ljava/lang/String; = "entity scale y"

.field private static final ENTITY_SRT:Ljava/lang/String; = "entity srt"

.field private static final ENTITY_SRT_AUDIO_CYCLE:Ljava/lang/String; = "entity srt audio cycle"

.field private static final ENTITY_SRT_AUDIO_INDEX:Ljava/lang/String; = "entity srt audio index"

.field private static final ENTITY_SRT_AUDIO_SEQ_IN:Ljava/lang/String; = "entity srt audio seqIn"

.field private static final ENTITY_SRT_AUDIO_TRIM_IN:Ljava/lang/String; = "entity srt audio trimIn"

.field private static final ENTITY_SRT_AUDIO_TRIM_OUT:Ljava/lang/String; = "entity srt audio trimOut"

.field private static final ENTITY_SRT_COLOR_A:Ljava/lang/String; = "entity srt color a"

.field private static final ENTITY_SRT_COLOR_B:Ljava/lang/String; = "entity srt color b"

.field private static final ENTITY_SRT_COLOR_G:Ljava/lang/String; = "entity srt color g"

.field private static final ENTITY_SRT_COLOR_R:Ljava/lang/String; = "entity srt color r"

.field private static final ENTITY_SRT_FIRST:Ljava/lang/String; = "entity srt first"

.field private static final ENTITY_SRT_FONT_PATH:Ljava/lang/String; = "entity srt font"

.field private static final ENTITY_SRT_INFO:Ljava/lang/String; = "entity srt info"

.field private static final ENTITY_SRT_INTIAL_POSITION_X:Ljava/lang/String; = "entity srt initial position x"

.field private static final ENTITY_SRT_INTIAL_POSITION_Y:Ljava/lang/String; = "entity srt initial position y"

.field private static final ENTITY_SRT_MANIPULATE_STATE:Ljava/lang/String; = "entity srt manipulate state"

.field private static final ENTITY_VISIBLE:Ljava/lang/String; = "entity visible"

.field private static final FILTER_FOR_GLOBAL_EFFECT:Ljava/lang/String; = "global effect filter"

.field private static final FILTER_INTENSITY:Ljava/lang/String; = "left filter intensity"

.field private static final FILTER_IN_TIME_OFFSET:Ljava/lang/String; = "filter in time offset"

.field private static final FILTER_PATH_LEFT:Ljava/lang/String; = "left filter"

.field private static final FILTER_PATH_RIGHT:Ljava/lang/String; = "right filter"

.field private static final FILTER_POSITION:Ljava/lang/String; = "filter position"

.field private static final FILTER_USE_V3:Ljava/lang/String; = "filter use v3"

.field private static final GLOBAL_EFFECT_VALUE:Ljava/lang/String; = "2"

.field private static final LENS_HDR_INDENSITY:Ljava/lang/String; = "lens hdr indensity"

.field private static final LENS_HDR_MODEL_PATH:Ljava/lang/String; = "lens hdr model path"

.field private static final MUSIC_SRT_EFFECT_PARAM:Ljava/lang/String; = "music srt effect para"

.field private static final MUSIC_SRT_USE_COMPOSER:Ljava/lang/String; = "music srt use composer"

.field private static final RIGHT_FILTER_INTENSITY:Ljava/lang/String; = "right filter intensity"

.field private static final TAG:Ljava/lang/String; = "VEEditor_VEFilterInvoker"

.field private static final USE_FILTER_RES_INTENSITY:Ljava/lang/String; = "use filter res intensity"


# instance fields
.field private final mAudioEffectHandler:Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;

.field private mAudioEffectfilterIndex:I

.field private mColorFilterIndex:I

.field private mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

.field private mCustomFilterIndex:I

.field private mEffectHDRFilterIndex:I

.field private mLensHDRFilterIndex:I

.field private mMusicSRTEffectFilterIndex:I

.field private final mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

.field private mTimeEffectManager:Lcom/ss/android/vesdk/runtime/VETimeEffectManager;

.field private final mVEEditor:Lcom/ss/android/vesdk/VEEditor;

.field private mVideoCropFilterIndex:I


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/VEEditor;)V
    .registers 5

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 128
    iput v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    .line 129
    iput v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVideoCropFilterIndex:I

    .line 130
    iput v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mEffectHDRFilterIndex:I

    .line 131
    iput v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mLensHDRFilterIndex:I

    .line 132
    iput v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCustomFilterIndex:I

    .line 133
    iput v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mAudioEffectfilterIndex:I

    .line 134
    iput v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mMusicSRTEffectFilterIndex:I

    .line 142
    iput-object p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    .line 143
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEEditor;->getInternalNativeEditor()Lcom/ss/android/ttve/nativePort/TEInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    .line 144
    new-instance v0, Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getNativeHandler()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;-><init>(J)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mAudioEffectHandler:Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;

    .line 145
    new-instance p1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;

    invoke-direct {p1}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mTimeEffectManager:Lcom/ss/android/vesdk/runtime/VETimeEffectManager;

    return-void
.end method

.method private setAudioEffectParam(IIILcom/ss/android/vesdk/VEAudioEffectBean;)V
    .registers 9

    .line 2036
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setAudioEffectParam... "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/ss/android/vesdk/VEAudioEffectBean;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VEEditor_VEFilterInvoker"

    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    iget-object p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p4, Lcom/ss/android/vesdk/VEAudioEffectBean;->type:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "audioEffectType"

    invoke-virtual {p1, p3, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2041
    iget-object p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    .line 2044
    iget-boolean p2, p4, Lcom/ss/android/vesdk/VEAudioEffectBean;->formatShiftOn:Z

    const-string v1, "0"

    const-string v2, "1"

    if-eqz p2, :cond_40

    move-object p2, v2

    goto :goto_41

    :cond_40
    move-object p2, v1

    .line 2041
    :goto_41
    const-string v3, "formatShiftOn"

    invoke-virtual {p1, p3, v3, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2045
    iget-object p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    .line 2048
    iget-boolean p2, p4, Lcom/ss/android/vesdk/VEAudioEffectBean;->smoothOn:Z

    if-eqz p2, :cond_4d

    move-object v1, v2

    .line 2045
    :cond_4d
    const-string p2, "smoothOn"

    invoke-virtual {p1, p3, p2, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2049
    iget-object p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p4, Lcom/ss/android/vesdk/VEAudioEffectBean;->processChMode:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "processChMode"

    invoke-virtual {p1, p3, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2053
    iget-object p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p4, Lcom/ss/android/vesdk/VEAudioEffectBean;->transientDetectMode:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "transientDetectMode"

    invoke-virtual {p1, p3, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2057
    iget-object p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p4, Lcom/ss/android/vesdk/VEAudioEffectBean;->phaseResetMode:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "phaseResetMode"

    invoke-virtual {p1, p3, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2061
    iget-object p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p4, Lcom/ss/android/vesdk/VEAudioEffectBean;->phaseAdjustMethod:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "phaseAdjustMethod"

    invoke-virtual {p1, p3, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2065
    iget-object p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p4, Lcom/ss/android/vesdk/VEAudioEffectBean;->windowMode:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "windowMode"

    invoke-virtual {p1, p3, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2069
    iget-object p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p4, Lcom/ss/android/vesdk/VEAudioEffectBean;->pitchTunerMode:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "pitchTunerMode"

    invoke-virtual {p1, p3, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2073
    iget-object p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p4, Lcom/ss/android/vesdk/VEAudioEffectBean;->blockSize:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "blockSize"

    invoke-virtual {p1, p3, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2077
    iget-object p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p4, Lcom/ss/android/vesdk/VEAudioEffectBean;->centtone:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "centtone"

    invoke-virtual {p1, p3, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2081
    iget-object p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p4, Lcom/ss/android/vesdk/VEAudioEffectBean;->semiton:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "semiton"

    invoke-virtual {p1, p3, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2085
    iget-object p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p4, Lcom/ss/android/vesdk/VEAudioEffectBean;->octative:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "octative"

    invoke-virtual {p1, p3, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2089
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p4, Lcom/ss/android/vesdk/VEAudioEffectBean;->speedRatio:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "speedRatio"

    invoke-virtual {p0, p3, p2, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addAudioCleanFilter(IIII)I
    .registers 12

    .line 2417
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {p1}, [I

    move-result-object v1

    const-string p0, "audio cleaner"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {p3}, [I

    move-result-object v3

    filled-new-array {p4}, [I

    move-result-object v4

    filled-new-array {p2}, [I

    move-result-object v5

    const/4 p0, 0x1

    filled-new-array {p0}, [I

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I)[I

    move-result-object p0

    const/4 p1, 0x0

    .line 2425
    aget p0, p0, p1

    return p0
.end method

.method public addAudioCommonFilter(IILjava/lang/String;[BIILcom/ss/android/vesdk/VEListener$AudioCommonFilterListener;)I
    .registers 24

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v1, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p7

    .line 2289
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v8, "VEEditor_VEFilterInvoker"

    if-eqz v3, :cond_1a

    .line 2290
    const-string v0, "addAudioCommonFilter failed path is null or path not exist"

    invoke-static {v8, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0xcd

    return v0

    .line 2293
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAudioCommonFilter... trackType = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", trackIndex = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2294
    invoke-static {}, Lcom/ss/android/vesdk/VEEditor;->cancelCompileProbe()V

    .line 2296
    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v3

    const/4 v5, 0x1

    if-ne v2, v5, :cond_44

    move v6, v5

    goto :goto_45

    :cond_44
    const/4 v6, 0x2

    :goto_45
    invoke-virtual {v3, v6, v1}, Lcom/ss/android/ttve/common/TETrackIndexManager;->getNativeTrackIndex(II)I

    move-result v3

    .line 2298
    iget-object v9, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {v3}, [I

    move-result-object v10

    .line 2300
    const-string v1, ".bin"

    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5a

    const-string v6, "audio common filter"

    goto :goto_5c

    :cond_5a
    const-string v6, "audio common sami filter"

    :goto_5c
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    filled-new-array/range {p5 .. p5}, [I

    move-result-object v12

    filled-new-array/range {p6 .. p6}, [I

    move-result-object v13

    filled-new-array {v2}, [I

    move-result-object v14

    filled-new-array {v5}, [I

    move-result-object v15

    .line 2298
    invoke-virtual/range {v9 .. v15}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I)[I

    move-result-object v9

    const/4 v10, 0x0

    .line 2306
    aget v6, v9, v10

    const/4 v11, -0x1

    if-gez v6, :cond_80

    .line 2307
    const-string v0, "Add filter failed!"

    invoke-static {v8, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    .line 2311
    :cond_80
    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 2312
    new-array v6, v5, [J

    .line 2314
    iget-object v1, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->preprocessAudioTrackForFilter(IILjava/lang/String;[B[J)I

    move-result v1

    .line 2316
    iget-object v2, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget-wide v5, v6, v10

    invoke-virtual {v2, v5, v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->getAudioCommonFilterPreprocessResult(J)[B

    move-result-object v2

    if-eqz v7, :cond_9d

    .line 2318
    invoke-interface {v7, v4, v1, v2}, Lcom/ss/android/vesdk/VEListener$AudioCommonFilterListener;->onPreprocess(Ljava/lang/String;I[B)V

    :cond_9d
    if-eqz v1, :cond_a5

    .line 2321
    const-string v0, "Add filter preprocess failed!"

    invoke-static {v8, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    .line 2326
    :cond_a5
    iget-object v1, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v3, v9, v10

    const-string v5, "audio_common_filter_preresult"

    invoke-virtual {v1, v3, v5, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;[B)I

    .line 2334
    :cond_ae
    iget-object v0, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v1, v9, v10

    const-string v2, "audio_common_filter_params"

    invoke-virtual {v0, v1, v2, v4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2339
    aget v0, v9, v10

    return v0
.end method

.method public addAudioDRCFilter(I[FII)I
    .registers 12

    const/16 v0, 0xd

    .line 2430
    array-length v1, p2

    if-eq v0, v1, :cond_7

    const/4 p0, -0x1

    return p0

    .line 2433
    :cond_7
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {p1}, [I

    move-result-object v1

    const-string p1, "audio drc"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {p3}, [I

    move-result-object v3

    filled-new-array {p4}, [I

    move-result-object v4

    const/4 p1, 0x1

    filled-new-array {p1}, [I

    move-result-object v5

    filled-new-array {p1}, [I

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I)[I

    move-result-object p1

    const/4 p3, 0x0

    move p4, p3

    .line 2441
    :goto_2a
    array-length v0, p2

    if-ge p4, v0, :cond_5b

    .line 2442
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v1, p1, p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drc_params_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p2, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p4, p4, 0x1

    goto :goto_2a

    .line 2447
    :cond_5b
    aget p0, p1, p3

    return p0
.end method

.method public addAudioEffects(II[I[I[Lcom/ss/android/vesdk/VEAudioEffectBean;)[I
    .registers 15

    .line 2008
    const-string v0, "VEEditor_VEFilterInvoker"

    const-string v1, "addAudioEffects..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    array-length v0, p3

    .line 2011
    new-array v2, v0, [I

    .line 2012
    new-array v6, v0, [I

    .line 2013
    new-array v7, v0, [I

    .line 2014
    new-array v3, v0, [Ljava/lang/String;

    const/4 v8, 0x0

    move v1, v8

    :goto_12
    if-ge v1, v0, :cond_22

    .line 2016
    aput p1, v2, v1

    .line 2017
    aput p2, v6, v1

    .line 2018
    const-string v4, "audio effect"

    aput-object v4, v3, v1

    const/4 v4, 0x1

    .line 2019
    aput v4, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 2021
    :cond_22
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I)[I

    move-result-object p3

    :goto_2a
    if-ge v8, v0, :cond_36

    .line 2030
    aget p4, p3, v8

    aget-object v1, p5, v8

    invoke-direct {p0, p1, p2, p4, v1}, Lcom/ss/android/vesdk/VEFilterInvoker;->setAudioEffectParam(IIILcom/ss/android/vesdk/VEAudioEffectBean;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    :cond_36
    return-object p3
.end method

.method public addCherEffect(IILcom/ss/android/vesdk/VECherEffectParam;)[I
    .registers 18

    .line 2137
    invoke-virtual/range {p3 .. p3}, Lcom/ss/android/vesdk/VECherEffectParam;->getMatrix()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    .line 2138
    new-array v2, v0, [I

    .line 2139
    new-array v6, v0, [I

    .line 2140
    new-array v7, v0, [I

    .line 2141
    new-array v3, v0, [Ljava/lang/String;

    .line 2142
    new-array v4, v0, [I

    .line 2143
    new-array v5, v0, [I

    const/4 v8, 0x0

    move v1, v8

    :goto_13
    if-ge v1, v0, :cond_38

    .line 2145
    aput p1, v2, v1

    .line 2146
    aput p2, v6, v1

    .line 2147
    const-string v9, "audio chereffect"

    aput-object v9, v3, v1

    const/4 v9, 0x1

    .line 2148
    aput v9, v7, v1

    .line 2149
    invoke-virtual/range {p3 .. p3}, Lcom/ss/android/vesdk/VECherEffectParam;->getDuration()[D

    move-result-object v10

    mul-int/lit8 v11, v1, 0x2

    aget-wide v12, v10, v11

    double-to-int v10, v12

    aput v10, v4, v1

    .line 2150
    invoke-virtual/range {p3 .. p3}, Lcom/ss/android/vesdk/VECherEffectParam;->getDuration()[D

    move-result-object v10

    add-int/2addr v11, v9

    aget-wide v9, v10, v11

    double-to-int v9, v9

    aput v9, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 2153
    :cond_38
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual/range {v1 .. v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I)[I

    move-result-object p1

    :goto_3e
    if-ge v8, v0, :cond_52

    .line 2164
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v2, p1, v8

    .line 2167
    invoke-virtual/range {p3 .. p3}, Lcom/ss/android/vesdk/VECherEffectParam;->getMatrix()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v8

    .line 2164
    const-string v4, "cher_matrix"

    invoke-virtual {v1, v2, v4, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_3e

    :cond_52
    return-object p1
.end method

.method public addEqualizer(IIIII)I
    .registers 13

    .line 2098
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {p1}, [I

    move-result-object v1

    const-string p1, "audio equalizer"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {p4}, [I

    move-result-object v3

    filled-new-array {p5}, [I

    move-result-object v4

    filled-new-array {p2}, [I

    move-result-object v5

    const/4 p1, 0x1

    filled-new-array {p1}, [I

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I)[I

    move-result-object p1

    .line 2107
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 p2, 0x0

    aget p4, p1, p2

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p5, "preset_id"

    invoke-virtual {p0, p4, p5, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2112
    aget p0, p1, p2

    return p0
.end method

.method public addEqualizer(ILcom/ss/android/vesdk/VEEqualizerParams;II)I
    .registers 12

    .line 2118
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {p1}, [I

    move-result-object v1

    const-string p1, "audio equalizer"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {p3}, [I

    move-result-object v3

    filled-new-array {p4}, [I

    move-result-object v4

    const/4 p1, 0x1

    filled-new-array {p1}, [I

    move-result-object v5

    filled-new-array {p1}, [I

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I)[I

    move-result-object p1

    .line 2127
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 p3, 0x0

    aget p4, p1, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2130
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEEqualizerParams;->getParamsAsString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2127
    const-string v0, "equalizer_params"

    invoke-virtual {p0, p4, v0, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2132
    aget p0, p1, p3

    return p0
.end method

.method public addFFmpegPitchTempo(IFFII)I
    .registers 13

    .line 2267
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {p1}, [I

    move-result-object v1

    const-string p1, "audio ffmpeg pitch tempo"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {p4}, [I

    move-result-object v3

    filled-new-array {p5}, [I

    move-result-object v4

    const/4 p1, 0x1

    filled-new-array {p1}, [I

    move-result-object v5

    filled-new-array {p1}, [I

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I)[I

    move-result-object p1

    .line 2276
    iget-object p4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 p5, 0x0

    aget v0, p1, p5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "pitch_scale"

    invoke-virtual {p4, v0, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2280
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget p2, p1, p5

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "time_ratio"

    invoke-virtual {p0, p2, p4, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2284
    aget p0, p1, p5

    return p0
.end method

.method public addFadeInFadeOut(IIIIII)I
    .registers 14

    .line 2177
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {p1}, [I

    move-result-object v1

    const-string p1, "audio fading"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {p3}, [I

    move-result-object v3

    filled-new-array {p4}, [I

    move-result-object v4

    filled-new-array {p2}, [I

    move-result-object v5

    const/4 p1, 0x1

    filled-new-array {p1}, [I

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I)[I

    move-result-object p1

    .line 2186
    iget-object p2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 p3, 0x0

    aget p4, p1, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 p5, p5, 0x3e8

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "fade_int_length"

    invoke-virtual {p2, p4, v0, p5}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2190
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget p2, p1, p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 p6, p6, 0x3e8

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "fade_out_length"

    invoke-virtual {p0, p2, p5, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2194
    aget p0, p1, p3

    return p0
.end method

.method public addFilterEffects([I[I[Ljava/lang/String;)[I
    .registers 13

    .line 446
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_24

    .line 449
    aget v3, p1, v2

    if-ltz v3, :cond_1d

    iget-object v4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v4}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v4

    if-gt v3, v4, :cond_1d

    aget-object v3, p3, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_1d

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1d
    :goto_1d
    const/16 p0, -0x64

    .line 450
    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0

    .line 453
    :cond_24
    new-array v6, v0, [Z

    .line 454
    new-array v7, v0, [I

    .line 455
    new-array v8, v0, [I

    move v2, v1

    :goto_2b
    if-ge v2, v0, :cond_36

    .line 457
    aput-boolean v1, v6, v2

    .line 458
    aput v1, v7, v2

    .line 459
    aput v1, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_36
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 462
    invoke-virtual/range {v2 .. v8}, Lcom/ss/android/vesdk/VEFilterInvoker;->addFilterEffects([I[I[Ljava/lang/String;[Z[I[I)[I

    move-result-object p0

    return-object p0
.end method

.method public addFilterEffects([I[I[Ljava/lang/String;[Z[I[I)[I
    .registers 14

    .line 467
    array-length p4, p3

    .line 468
    new-array v6, p4, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p4, :cond_d

    .line 470
    const-string v1, ""

    aput-object v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_d
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 472
    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/vesdk/VEFilterInvoker;->addFilterEffectsWithTag([I[I[Ljava/lang/String;[I[I[Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public addFilterEffectsWithTag([I[I[Ljava/lang/String;[I[I[Ljava/lang/String;)[I
    .registers 16

    const/4 v0, 0x0

    if-eqz p1, :cond_4b

    .line 477
    array-length v1, p1

    if-lez v1, :cond_4b

    if-eqz p2, :cond_4b

    array-length v1, p2

    if-lez v1, :cond_4b

    if-eqz p6, :cond_4b

    array-length v1, p6

    if-lez v1, :cond_4b

    if-eqz p3, :cond_4b

    array-length v1, p3

    if-lez v1, :cond_4b

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addFilterEffectsWithTag: in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", out "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p6, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VEEditor_VEFilterInvoker"

    invoke-static {v2, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    move v1, v0

    move v2, v1

    .line 487
    :goto_4d
    array-length v3, p6

    if-ge v1, v3, :cond_63

    .line 488
    aget-object v3, p6, v1

    .line 489
    const-string v4, "FreezeFrame"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 490
    aget v3, p2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 493
    :cond_63
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VEEditor;->expandTimeline(I)I

    .line 495
    array-length v1, p1

    .line 496
    new-array v3, v1, [I

    .line 497
    new-array v7, v1, [I

    .line 498
    new-array v8, v1, [I

    .line 499
    new-array v4, v1, [Ljava/lang/String;

    move v2, v0

    :goto_72
    if-ge v2, v1, :cond_8d

    .line 501
    iget-object v5, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v5}, Lcom/ss/android/vesdk/VEEditor;->getBusinessManager()Lcom/ss/android/ttve/biz/TEBaseBusinessManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ss/android/ttve/biz/TEBaseBusinessManager;->getFilterTrackIndex()I

    move-result v5

    aput v5, v3, v2

    .line 502
    aput v0, v7, v2

    .line 503
    const-string v5, "filter effect"

    aput-object v5, v4, v2

    const/16 v5, 0x8

    .line 504
    aput v5, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    .line 506
    :cond_8d
    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v8}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I)[I

    move-result-object p1

    .line 514
    array-length p2, p1

    if-eq v1, p2, :cond_9f

    .line 515
    new-array p0, v1, [I

    const/4 p1, -0x1

    .line 516
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([II)V

    return-object p0

    :cond_9f
    move p2, v0

    :goto_a0
    if-ge p2, v1, :cond_111

    .line 529
    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v3, p1, p2

    const-string v4, "effect res path"

    aget-object v7, p3, p2

    invoke-virtual {v2, v3, v4, v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v3, p1, p2

    aget-object v4, p6, p2

    const-string v7, ""

    if-nez v4, :cond_b8

    move-object v4, v7

    :cond_b8
    const-string v8, "effect sticker tag"

    invoke-virtual {v2, v3, v8, v4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v3, p1, p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, p4, p2

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "effect sticker id"

    invoke-virtual {v2, v3, v8, v4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v3, p1, p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, p5, p2

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "effect req id"

    invoke-virtual {v2, v3, v7, v4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 535
    new-instance v2, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;

    invoke-direct {v2}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;-><init>()V

    .line 536
    aget-object v3, p3, p2

    iput-object v3, v2, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;->path:Ljava/lang/String;

    .line 537
    aget v3, v5, p2

    iput v3, v2, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;->start:I

    .line 538
    aget v4, v6, p2

    sub-int/2addr v4, v3

    iput v4, v2, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;->duration:I

    .line 539
    iget-object v3, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEEditor;->getTEMonitorFilterMgr()Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    move-result-object v3

    aget v4, p1, p2

    invoke-virtual {v3, v0, v4, v2}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->addFilter(IILcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_a0

    :cond_111
    return-object p1
.end method

.method public addFilterEffectsWithTagSync([I[I[Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;)[I
    .registers 13

    if-eqz p3, :cond_78

    if-eqz p1, :cond_78

    if-eqz p2, :cond_78

    .line 547
    array-length v0, p3

    array-length v1, p1

    if-ne v0, v1, :cond_78

    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_f

    goto :goto_78

    .line 552
    :cond_f
    array-length v0, p1

    .line 553
    new-array v2, v0, [I

    .line 554
    new-array v6, v0, [I

    .line 555
    new-array v7, v0, [I

    .line 556
    new-array v3, v0, [Ljava/lang/String;

    const/4 v8, 0x0

    move v1, v8

    :goto_1a
    if-ge v1, v0, :cond_35

    .line 558
    iget-object v4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/VEEditor;->getBusinessManager()Lcom/ss/android/ttve/biz/TEBaseBusinessManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ss/android/ttve/biz/TEBaseBusinessManager;->getFilterTrackIndex()I

    move-result v4

    aput v4, v2, v1

    .line 559
    aput v8, v6, v1

    .line 560
    const-string v4, "filter effect"

    aput-object v4, v3, v1

    const/16 v4, 0x8

    .line 561
    aput v4, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 563
    :cond_35
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I)[I

    move-result-object p1

    .line 571
    array-length p2, p1

    if-eq v0, p2, :cond_47

    .line 572
    new-array p0, v0, [I

    const/4 p1, -0x1

    .line 573
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([II)V

    return-object p0

    :cond_47
    move p2, v8

    :goto_48
    if-ge p2, v0, :cond_77

    .line 578
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v2, p1, p2

    const-string v3, "effectStickAndComposer"

    aget-object v6, p3, p2

    invoke-virtual {v1, v2, v3, v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;)I

    .line 581
    new-instance v1, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;

    invoke-direct {v1}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;-><init>()V

    .line 582
    aget-object v2, p3, p2

    iget-object v2, v2, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->effectPath:Ljava/lang/String;

    iput-object v2, v1, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;->path:Ljava/lang/String;

    .line 583
    aget v2, v4, p2

    iput v2, v1, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;->start:I

    .line 584
    aget v3, v5, p2

    sub-int/2addr v3, v2

    iput v3, v1, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;->duration:I

    .line 585
    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEEditor;->getTEMonitorFilterMgr()Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    move-result-object v2

    aget v3, p1, p2

    invoke-virtual {v2, v8, v3, v1}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->addFilter(IILcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_48

    :cond_77
    return-object p1

    .line 548
    :cond_78
    :goto_78
    const-string p0, "VEEditor_VEFilterInvoker"

    const-string p1, "addFilterEffectsWithTagSync param is invalid"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public addLoudnessFilter(IFII)I
    .registers 12

    .line 2452
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {p1}, [I

    move-result-object v1

    const-string p1, "audio loudness"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {p3}, [I

    move-result-object v3

    filled-new-array {p4}, [I

    move-result-object v4

    const/4 p1, 0x1

    filled-new-array {p1}, [I

    move-result-object v5

    filled-new-array {p1}, [I

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I)[I

    move-result-object p1

    .line 2460
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 p3, 0x0

    aget p4, p1, p3

    const-string v0, "audio_loudness_volume"

    .line 2463
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    .line 2460
    invoke-virtual {p0, p4, v0, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2464
    aget p0, p1, p3

    return p0
.end method

.method public addPitchTempo(IIFFII)I
    .registers 14

    .line 2244
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {p1}, [I

    move-result-object v1

    const-string p1, "audio pitch tempo"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {p5}, [I

    move-result-object v3

    filled-new-array {p6}, [I

    move-result-object v4

    filled-new-array {p2}, [I

    move-result-object v5

    const/4 p1, 0x1

    filled-new-array {p1}, [I

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I)[I

    move-result-object p1

    .line 2253
    iget-object p2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 p5, 0x0

    aget p6, p1, p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "pitch_scale"

    invoke-virtual {p2, p6, v0, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2257
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget p2, p1, p5

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "time_ratio"

    invoke-virtual {p0, p2, p4, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2261
    aget p0, p1, p5

    return p0
.end method

.method public addRepeatEffect(IIIII)I
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    .line 1323
    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v3

    .line 1326
    :try_start_9
    const-string v4, "VEEditor_VEFilterInvoker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addRepeatEffect... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p3

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    invoke-static {}, Lcom/ss/android/vesdk/VEEditor;->cancelCompileProbe()V

    .line 1330
    iget-object v4, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v4}, Lcom/ss/android/ttve/nativePort/TEInterface;->getCurState()I

    move-result v4

    const/16 v5, -0x4e20

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v4, v5, :cond_56

    move v4, v9

    goto :goto_57

    :cond_56
    move v4, v10

    :goto_57
    if-eqz v4, :cond_63

    .line 1333
    iget-object v5, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    move-result v5

    goto :goto_64

    :catchall_60
    move-exception v0

    goto/16 :goto_10a

    :cond_63
    move v5, v10

    :goto_64
    if-eqz v5, :cond_83

    const/16 v11, -0x65

    if-eq v5, v11, :cond_83

    .line 1337
    const-string v0, "VEEditor_VEFilterInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseSync failed in addRepeatEffect, ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1338
    monitor-exit v3

    return v0

    .line 1341
    :cond_83
    iget-object v5, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v5

    .line 1342
    iget-object v11, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {v6}, [I

    move-result-object v12

    const-string v6, "timeEffect repeating"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v13

    filled-new-array {v8}, [I

    move-result-object v14

    filled-new-array {v5}, [I

    move-result-object v15

    filled-new-array {v7}, [I

    move-result-object v16

    const/4 v5, 0x6

    filled-new-array {v5}, [I

    move-result-object v17

    invoke-virtual/range {v11 .. v17}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I)[I

    move-result-object v5

    .line 1351
    aget v6, v5, v10

    iput v6, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mAudioEffectfilterIndex:I

    .line 1353
    iget-object v7, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v8, "timeEffect repeating duration"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v6, v8, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1358
    iget-object v2, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v6, v5, v10

    const-string v7, "timeEffect repeating times"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v6, v7, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_ec

    .line 1365
    iget-object v1, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->createTimeline()I

    .line 1366
    iget-object v1, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1, v10}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    .line 1369
    :cond_ec
    new-instance v1, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v1}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 1370
    const-string v2, "iesve_veeditor_time_effect_id"

    const-string v4, "repeat"

    invoke-virtual {v1, v2, v4}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 1371
    const-string v2, "iesve_veeditor_time_effect"

    invoke-static {v2, v9, v1}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 1374
    iget-object v0, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->getTEMonitorFilterMgr()Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->setTimeEffectType(I)V

    .line 1376
    aget v0, v5, v10

    monitor-exit v3

    return v0

    .line 1377
    :goto_10a
    monitor-exit v3
    :try_end_10b
    .catchall {:try_start_9 .. :try_end_10b} :catchall_60

    throw v0
.end method

.method public addReverb(ILjava/lang/String;II)I
    .registers 12

    .line 2200
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {p1}, [I

    move-result-object v1

    const-string p1, "audio reverb"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {p3}, [I

    move-result-object v3

    filled-new-array {p4}, [I

    move-result-object v4

    const/4 p1, 0x1

    filled-new-array {p1}, [I

    move-result-object v5

    filled-new-array {p1}, [I

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I)[I

    move-result-object p1

    .line 2210
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 p3, 0x0

    aget p4, p1, p3

    const-string v0, "reverb_params"

    invoke-virtual {p0, p4, v0, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2215
    aget p0, p1, p3

    return p0
.end method

.method public addReverb2(ILcom/ss/android/vesdk/VEReverb2Params;II)I
    .registers 12

    .line 2221
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {p1}, [I

    move-result-object v1

    const-string p1, "audio reverb2"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {p3}, [I

    move-result-object v3

    filled-new-array {p4}, [I

    move-result-object v4

    const/4 p1, 0x1

    filled-new-array {p1}, [I

    move-result-object v5

    filled-new-array {p1}, [I

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I)[I

    move-result-object p1

    .line 2229
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "addReverb2..."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p4, 0x0

    aget v0, p1, p4

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "VEEditor_VEFilterInvoker"

    invoke-static {v0, p3}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2232
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget p3, p1, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2235
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEReverb2Params;->getParamsAsString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2232
    const-string v0, "reverb2_params"

    invoke-virtual {p0, p3, v0, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2237
    aget p0, p1, p4

    return p0
.end method

.method public addSlowMotionEffect(IIIIFF)I
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    .line 1408
    iget-object v4, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v4

    .line 1410
    :try_start_b
    const-string v5, "VEEditor_VEFilterInvoker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addSlowMotionEffect... "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p3

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    invoke-static {}, Lcom/ss/android/vesdk/VEEditor;->cancelCompileProbe()V

    .line 1414
    iget-object v5, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->getCurState()I

    move-result v5

    const/16 v6, -0x4e20

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v5, v6, :cond_60

    move v5, v10

    goto :goto_61

    :cond_60
    move v5, v11

    :goto_61
    if-eqz v5, :cond_6d

    .line 1417
    iget-object v6, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    move-result v6

    goto :goto_6e

    :catchall_6a
    move-exception v0

    goto/16 :goto_12f

    :cond_6d
    move v6, v11

    :goto_6e
    if-eqz v6, :cond_8d

    const/16 v12, -0x65

    if-eq v6, v12, :cond_8d

    .line 1420
    const-string v0, "VEEditor_VEFilterInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseSync failed in addSlowMotionEffect, ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1421
    monitor-exit v4

    return v0

    .line 1424
    :cond_8d
    iget-object v6, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v6

    .line 1425
    iget-object v12, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {v7}, [I

    move-result-object v13

    const-string v7, "timeEffect slow motion"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v14

    filled-new-array {v9}, [I

    move-result-object v15

    filled-new-array {v6}, [I

    move-result-object v16

    filled-new-array {v8}, [I

    move-result-object v17

    const/4 v6, 0x6

    filled-new-array {v6}, [I

    move-result-object v18

    invoke-virtual/range {v12 .. v18}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I)[I

    move-result-object v6

    .line 1434
    aget v7, v6, v11

    iput v7, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mAudioEffectfilterIndex:I

    .line 1436
    iget-object v8, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v9, "timeEffect slow motion duration"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v7, v9, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1441
    iget-object v1, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v7, v6, v11

    const-string v8, "timeEffect slow motion speed"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v8, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1446
    iget-object v1, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v2, v6, v11

    const-string v7, "timeEffect fast motion speed"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v7, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_110

    .line 1453
    iget-object v1, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->createTimeline()I

    .line 1454
    iget-object v1, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1, v11}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    .line 1457
    :cond_110
    new-instance v1, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v1}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 1458
    const-string v2, "iesve_veeditor_time_effect_id"

    const-string v3, "slow"

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 1459
    const-string v2, "iesve_veeditor_time_effect"

    invoke-static {v2, v10, v1}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 1462
    iget-object v0, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->getTEMonitorFilterMgr()Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->setTimeEffectType(I)V

    .line 1464
    aget v0, v6, v11

    monitor-exit v4

    return v0

    .line 1465
    :goto_12f
    monitor-exit v4
    :try_end_130
    .catchall {:try_start_b .. :try_end_130} :catchall_6a

    throw v0
.end method

.method public addTimeEffect(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I
    .registers 31

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v8, p3

    .line 1497
    iget-object v13, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v13

    .line 1499
    :try_start_b
    instance-of v3, v8, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;

    const/4 v4, -0x1

    if-eqz v3, :cond_2c

    .line 1500
    move-object v3, v8

    check-cast v3, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;

    .line 1501
    iget v5, v3, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->seqIn:I

    iget v3, v3, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->repeatDuration:I

    add-int/2addr v5, v3

    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v3

    if-le v5, v3, :cond_49

    .line 1502
    const-string v0, "VEEditor_VEFilterInvoker"

    const-string v1, "(repeatFilterParam.seqIn + repeatFilterParam.repeatDuration) > mNativeEditor.getDuration() error"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    monitor-exit v13

    return v4

    :catchall_29
    move-exception v0

    goto/16 :goto_823

    .line 1505
    :cond_2c
    instance-of v3, v8, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;

    if-eqz v3, :cond_49

    .line 1506
    move-object v3, v8

    check-cast v3, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;

    .line 1507
    iget v5, v3, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->seqIn:I

    iget v3, v3, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->slowMotionDuration:I

    add-int/2addr v5, v3

    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v3

    if-le v5, v3, :cond_49

    .line 1508
    const-string v0, "VEEditor_VEFilterInvoker"

    const-string v1, "((slowFilterParam.seqIn + slowFilterParam.slowMotionDuration) > mNativeEditor.getDuration() error"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    monitor-exit v13

    return v4

    .line 1513
    :cond_49
    invoke-static {}, Lcom/ss/android/vesdk/VEEditor;->cancelCompileProbe()V

    .line 1515
    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->getCurState()I

    move-result v3

    const/16 v5, -0x4e20

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eq v3, v5, :cond_5b

    move/from16 v16, v14

    goto :goto_5d

    :cond_5b
    move/from16 v16, v15

    :goto_5d
    if-eqz v16, :cond_66

    .line 1518
    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    move-result v3

    goto :goto_67

    :cond_66
    move v3, v15

    :goto_67
    if-eqz v3, :cond_8f

    const/16 v5, -0x65

    if-eq v3, v5, :cond_8f

    .line 1522
    const-string v0, "VEEditor_VEFilterInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopSync failed in addTimeEffect, ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", for filtername="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    monitor-exit v13

    return v4

    .line 1526
    :cond_8f
    filled-new-array {v4}, [I

    move-result-object v5

    .line 1527
    filled-new-array {v4}, [I

    move-result-object v4

    .line 1530
    iget-object v6, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v6

    .line 1532
    iget v7, v8, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterType:I

    const/16 v9, 0x19

    if-ne v7, v9, :cond_453

    .line 1533
    instance-of v7, v8, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;

    if-eqz v7, :cond_27b

    .line 1535
    move-object v5, v8

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;

    .line 1537
    iget-object v7, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {v1}, [I

    move-result-object v18

    iget-object v10, v5, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v19

    filled-new-array {v15}, [I

    move-result-object v20

    filled-new-array {v6}, [I

    move-result-object v21

    filled-new-array {v2}, [I

    move-result-object v22

    filled-new-array {v9}, [I

    move-result-object v23

    iget v10, v5, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterDurationType:I

    filled-new-array {v10}, [I

    move-result-object v24

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v24}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I[I)[I

    move-result-object v7

    .line 1548
    iget-object v10, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v10}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object v10

    iget v11, v5, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->timeMode:I

    iput v11, v10, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mTimeMode:I

    .line 1550
    iget-object v10, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v11, v7, v15

    const-string v12, "timeEffect seqin"

    move/from16 v17, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v15

    const-string v15, ""

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v5, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->seqIn:I

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v11, v12, v9}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1555
    iget-object v9, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v10, v7, v18

    const-string v11, "timeEffect repeating duration"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v5, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->repeatDuration:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1560
    iget-object v9, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v10, v7, v18

    const-string v11, "timeEffect repeating times"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v5, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->repeatTime:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1565
    iget-object v9, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v10, v7, v18

    const-string v11, "timeEffect repeating mode"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v5, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->timeMode:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1570
    iget-object v9, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v9}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object v9

    iget v9, v9, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    if-ne v9, v14, :cond_1fa

    .line 1571
    iget-object v4, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v9, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    .line 1572
    invoke-virtual {v9}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object v9

    iget v9, v9, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    filled-new-array {v9}, [I

    move-result-object v20

    iget-object v9, v5, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v21

    filled-new-array/range {v18 .. v18}, [I

    move-result-object v22

    filled-new-array {v6}, [I

    move-result-object v23

    filled-new-array {v14}, [I

    move-result-object v24

    filled-new-array/range {v17 .. v17}, [I

    move-result-object v25

    iget v6, v5, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterDurationType:I

    filled-new-array {v6}, [I

    move-result-object v26

    move-object/from16 v19, v4

    .line 1571
    invoke-virtual/range {v19 .. v26}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I[I)[I

    move-result-object v4

    .line 1580
    iget-object v6, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v9, v4, v18

    const-string v10, "timeEffect seqin"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v5, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->seqIn:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v9, v10, v11}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1585
    iget-object v6, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v9, v4, v18

    const-string v10, "timeEffect repeating duration"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v5, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->repeatDuration:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v9, v10, v11}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1590
    iget-object v6, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v9, v4, v18

    const-string v10, "timeEffect repeating times"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v5, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->repeatTime:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v9, v10, v11}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1595
    iget-object v6, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v9, v4, v18

    const-string v10, "timeEffect repeating mode"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v5, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->timeMode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v9, v10, v11}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1601
    :cond_1fa
    sget-object v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TimeEffect addRepeatEffect...  trackIndex:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " trackType:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " filterIndex:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v7, v18

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " audioFilterIndex:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v4, v18

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seqIn:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v5, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->seqIn:I

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seqOut:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v5, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->seqOut:I

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " repeatDuration:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v5, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->repeatDuration:I

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " repeatTime:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v5, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->repeatTime:I

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " timeMode:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v5, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->timeMode:I

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    new-instance v1, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v1}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 1606
    const-string v5, "iesve_veeditor_time_effect_id"

    const-string v6, "repeat"

    invoke-virtual {v1, v5, v6}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 1607
    const-string v5, "iesve_veeditor_time_effect"

    invoke-static {v5, v14, v1}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 1610
    iget-object v1, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor;->getTEMonitorFilterMgr()Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->setTimeEffectType(I)V

    :goto_278
    move-object v15, v7

    goto/16 :goto_456

    :cond_27b
    move/from16 v17, v9

    move/from16 v18, v15

    .line 1612
    instance-of v7, v8, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;

    if-eqz v7, :cond_455

    .line 1614
    move-object v5, v8

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;

    .line 1616
    iget-object v7, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {v1}, [I

    move-result-object v20

    iget-object v9, v5, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v21

    filled-new-array/range {v18 .. v18}, [I

    move-result-object v22

    filled-new-array {v6}, [I

    move-result-object v23

    filled-new-array {v2}, [I

    move-result-object v24

    filled-new-array/range {v17 .. v17}, [I

    move-result-object v25

    iget v9, v5, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterDurationType:I

    filled-new-array {v9}, [I

    move-result-object v26

    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v26}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I[I)[I

    move-result-object v7

    .line 1626
    iget-object v9, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v9}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object v9

    iget v10, v5, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->timeMode:I

    iput v10, v9, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mTimeMode:I

    .line 1629
    iget-object v9, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v10, v7, v18

    const-string v11, "timeEffect seqin"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v5, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->seqIn:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1634
    iget-object v9, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v10, v7, v18

    const-string v11, "timeEffect slow motion duration"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v5, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->slowMotionDuration:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1639
    iget-object v9, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v10, v7, v18

    const-string v11, "timeEffect slow motion speed"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v5, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->slowMotionSpeed:F

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1644
    iget-object v9, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v10, v7, v18

    const-string v11, "timeEffect slow motion mode"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v5, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->timeMode:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1649
    iget-object v9, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v9}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object v9

    iget v9, v9, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    if-ne v9, v14, :cond_3d2

    .line 1650
    iget-object v4, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v9, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    .line 1651
    invoke-virtual {v9}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object v9

    iget v9, v9, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    filled-new-array {v9}, [I

    move-result-object v20

    iget-object v9, v5, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v21

    filled-new-array/range {v18 .. v18}, [I

    move-result-object v22

    filled-new-array {v6}, [I

    move-result-object v23

    filled-new-array {v14}, [I

    move-result-object v24

    filled-new-array/range {v17 .. v17}, [I

    move-result-object v25

    iget v6, v5, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterDurationType:I

    filled-new-array {v6}, [I

    move-result-object v26

    move-object/from16 v19, v4

    .line 1650
    invoke-virtual/range {v19 .. v26}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I[I)[I

    move-result-object v4

    .line 1659
    iget-object v6, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v9, v4, v18

    const-string v10, "timeEffect seqin"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v5, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->seqIn:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v9, v10, v11}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1664
    iget-object v6, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v9, v4, v18

    const-string v10, "timeEffect slow motion duration"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v5, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->slowMotionDuration:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v9, v10, v11}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1669
    iget-object v6, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v9, v4, v18

    const-string v10, "timeEffect slow motion speed"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v5, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->slowMotionSpeed:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v9, v10, v11}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1674
    iget-object v6, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v9, v4, v18

    const-string v10, "timeEffect slow motion mode"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v5, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->timeMode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v9, v10, v11}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1680
    :cond_3d2
    sget-object v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TimeEffect addRepeatEffect...  trackIndex:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " trackType:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " filterIndex:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v7, v18

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " audioFilterIndex:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v4, v18

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seqIn:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v5, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->seqIn:I

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seqOut:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v5, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->seqOut:I

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " slowMotionDuration:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v5, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->slowMotionDuration:I

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " slowMotionSpeed:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v5, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->slowMotionSpeed:F

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " timeMode:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v5, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->timeMode:I

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    new-instance v1, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v1}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 1685
    const-string v5, "iesve_veeditor_time_effect_id"

    const-string v6, "slow"

    invoke-virtual {v1, v5, v6}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 1686
    const-string v5, "iesve_veeditor_time_effect"

    invoke-static {v5, v14, v1}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 1689
    iget-object v1, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor;->getTEMonitorFilterMgr()Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    move-result-object v1

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->setTimeEffectType(I)V

    goto/16 :goto_278

    :cond_453
    move/from16 v18, v15

    :cond_455
    move-object v15, v5

    .line 1696
    :goto_456
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1697
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1698
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1699
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1700
    iget-object v1, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor;->getMasterTrackIndex()I

    move-result v5

    move/from16 v6, v18

    invoke-virtual {v1, v6, v5}, Lcom/ss/android/vesdk/VEEditor;->getAllClips(II)Ljava/util/List;

    move-result-object v1

    .line 1701
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1703
    iget-object v5, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v5}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object v5

    iget v5, v5, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    if-ne v5, v14, :cond_4a7

    .line 1704
    iget-object v5, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v5}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object v6

    iget v6, v6, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    invoke-virtual {v5, v14, v6}, Lcom/ss/android/vesdk/VEEditor;->getAllClips(II)Ljava/util/List;

    move-result-object v5

    .line 1705
    invoke-interface {v7, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1706
    iget-object v5, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v6, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v6}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object v6

    iget v6, v6, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    move-object/from16 p1, v1

    const/4 v1, 0x0

    invoke-virtual {v5, v14, v6, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getTrackVolume(III)F

    move-result v5

    :goto_4a5
    move v1, v5

    goto :goto_4ab

    :cond_4a7
    move-object/from16 p1, v1

    const/4 v5, 0x0

    goto :goto_4a5

    .line 1708
    :goto_4ab
    iget-object v5, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v6, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v6}, Lcom/ss/android/vesdk/VEEditor;->getMasterTrackIndex()I

    move-result v6

    const/4 v14, 0x0

    invoke-virtual {v5, v14, v6, v14}, Lcom/ss/android/ttve/nativePort/TEInterface;->getTrackVolume(III)F

    move-result v5

    .line 1711
    sget-object v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTimeEffect mOriginalSoundTrackType="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    .line 1712
    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mOriginalSoundTrackIndex="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " originalAudio.size="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " videoVolume="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " audioVolume="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1711
    invoke-static {v6, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1715
    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mTimeEffectManager:Lcom/ss/android/vesdk/runtime/VETimeEffectManager;

    move-object v6, v4

    const/16 v18, 0x0

    aget v4, v15, v18

    aget v6, v6, v18

    move v14, v2

    move v2, v5

    move v5, v6

    move-object/from16 v6, p1

    invoke-virtual/range {v3 .. v12}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->addTimeEffect(IILjava/util/List;Ljava/util/List;Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1721
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v3, 0x0

    :goto_519
    if-ge v3, v8, :cond_5ab

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v19, v3, 0x1

    move-object v3, v4

    check-cast v3, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    .line 1722
    new-instance v5, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;

    invoke-direct {v5}, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;-><init>()V

    .line 1723
    iget-object v4, v3, Lcom/ss/android/vesdk/clipparam/VEClipParam;->path:Ljava/lang/String;

    iput-object v4, v5, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->clipFilePath:Ljava/lang/String;

    const/4 v6, 0x0

    .line 1724
    iput v6, v5, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->sourceType:I

    .line 1726
    new-instance v6, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    invoke-direct {v6}, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;-><init>()V

    .line 1727
    iget v4, v3, Lcom/ss/android/vesdk/clipparam/VEClipParam;->trimIn:I

    iput v4, v6, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimIn:I

    .line 1728
    iget v4, v3, Lcom/ss/android/vesdk/clipparam/VEClipParam;->trimOut:I

    iput v4, v6, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimOut:I

    move v4, v1

    move/from16 p1, v2

    .line 1729
    iget-wide v1, v3, Lcom/ss/android/vesdk/clipparam/VEClipParam;->speed:D

    iput-wide v1, v6, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->speed:D

    .line 1731
    sget-object v1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p3, v4

    const-string v4, "addTimeEffect insertVideoClip ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/clipparam/VEClipParam;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    iget-object v1, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v2, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEEditor;->getMasterTrackIndex()I

    move-result v2

    iget v4, v3, Lcom/ss/android/vesdk/clipparam/VEClipParam;->clipIndex:I

    move/from16 v20, v8

    move/from16 v8, p1

    move/from16 p1, v20

    move-object/from16 v21, v3

    move-object/from16 v20, v7

    move/from16 v7, p3

    move v3, v2

    move/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->insertClip(IIILcom/ss/android/vesdk/clipparam/VEClipSourceParam;Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result v1

    if-gez v1, :cond_5a1

    .line 1735
    sget-object v2, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addTimeEffect insertVideoClip failed, ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " clipParam="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Lcom/ss/android/vesdk/clipparam/VEClipParam;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a1
    move v1, v7

    move v2, v8

    move/from16 v3, v19

    move-object/from16 v7, v20

    move/from16 v8, p1

    goto/16 :goto_519

    :cond_5ab
    move v8, v2

    move-object/from16 v20, v7

    move v7, v1

    .line 1740
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    .line 1741
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 1742
    :goto_5bc
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_645

    .line 1743
    new-instance v4, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    invoke-direct {v4}, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;-><init>()V

    aput-object v4, v1, v3

    .line 1744
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    iget v5, v5, Lcom/ss/android/vesdk/clipparam/VEClipParam;->trimIn:I

    iput v5, v4, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimIn:I

    .line 1745
    aget-object v4, v1, v3

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    iget v5, v5, Lcom/ss/android/vesdk/clipparam/VEClipParam;->trimOut:I

    iput v5, v4, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimOut:I

    .line 1746
    aget-object v4, v1, v3

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    iget-wide v5, v5, Lcom/ss/android/vesdk/clipparam/VEClipParam;->speed:D

    iput-wide v5, v4, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->speed:D

    .line 1747
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    iget v4, v4, Lcom/ss/android/vesdk/clipparam/VEClipParam;->clipIndex:I

    aput v4, v2, v3

    .line 1749
    iget-object v4, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v5, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v5}, Lcom/ss/android/vesdk/VEEditor;->getMasterTrackIndex()I

    move-result v23

    aget v24, v2, v3

    const-string v25, "clip rotate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    iget v6, v6, Lcom/ss/android/vesdk/clipparam/VEClipParam;->clipRotate:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v22, 0x0

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v26}, Lcom/ss/android/ttve/nativePort/TEInterface;->setClipAttr(IIILjava/lang/String;Ljava/lang/String;)I

    .line 1750
    sget-object v4, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addTimeEffect updateVideoClip ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    invoke-virtual {v6}, Lcom/ss/android/vesdk/clipparam/VEClipParam;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5bc

    .line 1753
    :cond_645
    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v4, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/VEEditor;->getMasterTrackIndex()I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4, v2, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateClipsTimelineParam(II[I[Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result v1

    if-gez v14, :cond_66a

    .line 1755
    sget-object v2, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addTimeEffect updateClipsTimelineParam failed, ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    :cond_66a
    iget-object v1, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_793

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_793

    .line 1763
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_680
    :goto_680
    if-ge v2, v1, :cond_703

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    .line 1764
    new-instance v4, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;

    invoke-direct {v4}, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;-><init>()V

    .line 1765
    iget-object v5, v3, Lcom/ss/android/vesdk/clipparam/VEClipParam;->path:Ljava/lang/String;

    iput-object v5, v4, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->clipFilePath:Ljava/lang/String;

    const/4 v6, 0x0

    .line 1766
    iput v6, v4, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->sourceType:I

    .line 1768
    new-instance v5, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    invoke-direct {v5}, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;-><init>()V

    .line 1769
    iget v6, v3, Lcom/ss/android/vesdk/clipparam/VEClipParam;->trimIn:I

    iput v6, v5, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimIn:I

    .line 1770
    iget v6, v3, Lcom/ss/android/vesdk/clipparam/VEClipParam;->trimOut:I

    iput v6, v5, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimOut:I

    .line 1771
    iget-wide v9, v3, Lcom/ss/android/vesdk/clipparam/VEClipParam;->speed:D

    iput-wide v9, v5, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->speed:D

    .line 1773
    sget-object v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addTimeEffect insertAudioClip ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/clipparam/VEClipParam;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    iget-object v6, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v9, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v9}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object v9

    iget v9, v9, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    iget v10, v3, Lcom/ss/android/vesdk/clipparam/VEClipParam;->clipIndex:I

    const/16 v20, 0x1

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v19, v6

    move/from16 v21, v9

    move/from16 v22, v10

    invoke-virtual/range {v19 .. v24}, Lcom/ss/android/ttve/nativePort/TEInterface;->insertClip(IIILcom/ss/android/vesdk/clipparam/VEClipSourceParam;Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result v4

    if-gez v4, :cond_680

    .line 1777
    sget-object v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addTimeEffect insertAudioClip failed, ret = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " clipParam="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/clipparam/VEClipParam;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_680

    .line 1782
    :cond_703
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    .line 1783
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 1784
    :goto_710
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_76c

    .line 1785
    new-instance v4, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    invoke-direct {v4}, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;-><init>()V

    aput-object v4, v1, v3

    .line 1786
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    iget v5, v5, Lcom/ss/android/vesdk/clipparam/VEClipParam;->trimIn:I

    iput v5, v4, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimIn:I

    .line 1787
    aget-object v4, v1, v3

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    iget v5, v5, Lcom/ss/android/vesdk/clipparam/VEClipParam;->trimOut:I

    iput v5, v4, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimOut:I

    .line 1788
    aget-object v4, v1, v3

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    iget-wide v5, v5, Lcom/ss/android/vesdk/clipparam/VEClipParam;->speed:D

    iput-wide v5, v4, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->speed:D

    .line 1789
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    iget v4, v4, Lcom/ss/android/vesdk/clipparam/VEClipParam;->clipIndex:I

    aput v4, v2, v3

    .line 1790
    sget-object v4, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addTimeEffect updateAudioClip ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    invoke-virtual {v6}, Lcom/ss/android/vesdk/clipparam/VEClipParam;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_710

    .line 1792
    :cond_76c
    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v4, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object v4

    iget v4, v4, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4, v2, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateClipsTimelineParam(II[I[Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result v1

    if-gez v1, :cond_793

    .line 1794
    sget-object v2, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addTimeEffect updateAudioClip failed, ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    :cond_793
    iget-object v1, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    if-lez v1, :cond_7a3

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    goto :goto_7a4

    :cond_7a3
    const/4 v1, 0x0

    :goto_7a4
    const/4 v2, 0x0

    .line 1799
    :goto_7a5
    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    if-ge v2, v3, :cond_7c1

    .line 1800
    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v5, v6}, Lcom/ss/android/vesdk/VEEditor;->getVolume(III)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7a5

    .line 1804
    :cond_7c1
    iget-object v2, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEEditor;->getMasterTrackIndex()I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3, v8}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTrackVolume(IIF)Z

    .line 1805
    iget-object v2, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_7e5

    .line 1806
    iget-object v2, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    invoke-virtual {v2, v5, v3, v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTrackVolume(IIF)Z

    :cond_7e5
    const/4 v2, 0x0

    .line 1809
    :goto_7e6
    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    if-ge v2, v3, :cond_803

    .line 1810
    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v2, v4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTrackVolume(IIF)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7e6

    .line 1813
    :cond_803
    iget-object v1, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v2, v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTimeRange(III)I

    if-eqz v16, :cond_81d

    .line 1817
    iget-object v1, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->createTimeline()I

    .line 1818
    iget-object v0, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    const/16 v18, 0x0

    goto :goto_81f

    :cond_81d
    move/from16 v18, v6

    .line 1821
    :goto_81f
    aget v0, v15, v18

    monitor-exit v13

    return v0

    .line 1822
    :goto_823
    monitor-exit v13
    :try_end_824
    .catchall {:try_start_b .. :try_end_824} :catchall_29

    throw v0
.end method

.method public addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I
    .registers 11

    .line 604
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->getOutPoint()I

    move-result v6

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/ss/android/vesdk/VEFilterInvoker;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result p0

    return p0
.end method

.method public addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I
    .registers 22

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    .line 609
    iget-object v5, v1, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v5

    .line 610
    :try_start_b
    const-string v0, "VEEditor_VEFilterInvoker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addTrackFilter trackType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",trackIndex:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",filterType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_70

    const/16 v6, 0xf

    const/4 v7, 0x1

    .line 615
    :try_start_36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 616
    const-string v8, "filterName"

    iget-object v9, v4, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 617
    const-string v8, "filterType"

    iget v9, v4, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterType:I

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 618
    const-string v8, "trackType"

    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 619
    const-string v8, "trackIndex"

    invoke-virtual {v0, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 620
    const-string v8, "seqIn"
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_55} :catch_8d
    .catchall {:try_start_36 .. :try_end_55} :catchall_70

    move/from16 v9, p4

    :try_start_57
    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 621
    const-string v8, "seqOut"
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_57 .. :try_end_5c} :catch_89
    .catchall {:try_start_57 .. :try_end_5c} :catchall_70

    move/from16 v10, p5

    :try_start_5e
    invoke-virtual {v0, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 622
    iget v8, v4, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterType:I

    if-eq v8, v7, :cond_78

    if-eq v8, v6, :cond_75

    const/16 v11, 0x16

    if-eq v8, v11, :cond_6d

    const/4 v8, 0x0

    goto :goto_7a

    .line 627
    :cond_6d
    const-string v8, "vesdk_event_editor_amazing_effect"

    goto :goto_7a

    :catchall_70
    move-exception v0

    goto/16 :goto_124

    :catch_73
    move-exception v0

    goto :goto_91

    .line 624
    :cond_75
    const-string v8, "vesdk_event_editor_video_track_transform"

    goto :goto_7a

    .line 630
    :cond_78
    const-string v8, "vesdk_event_editor_audio_filter"

    .line 635
    :goto_7a
    const-string v11, "vesdk_event_editor_track_filter_effect"

    const-string v12, "behavior"

    invoke-static {v11, v0, v12}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    if-eqz v8, :cond_94

    .line 637
    const-string v11, "behavior"

    invoke-static {v8, v0, v11}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_88
    .catch Lorg/json/JSONException; {:try_start_5e .. :try_end_88} :catch_73
    .catchall {:try_start_5e .. :try_end_88} :catchall_70

    goto :goto_94

    :catch_89
    move-exception v0

    :goto_8a
    move/from16 v10, p5

    goto :goto_91

    :catch_8d
    move-exception v0

    move/from16 v9, p4

    goto :goto_8a

    .line 640
    :goto_91
    :try_start_91
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_94
    :goto_94
    const/4 v0, 0x0

    if-ne v2, v7, :cond_a3

    .line 645
    iget-object v8, v1, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v8}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v8

    invoke-virtual {v8, v7, v3}, Lcom/ss/android/ttve/common/TETrackIndexManager;->getNativeTrackIndex(II)I

    move-result v3

    :cond_a1
    :goto_a1
    move v7, v0

    goto :goto_b5

    :cond_a3
    const/4 v8, 0x2

    if-nez v2, :cond_b1

    .line 647
    iget-object v7, v1, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v7}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v7

    invoke-virtual {v7, v8, v3}, Lcom/ss/android/ttve/common/TETrackIndexManager;->getNativeTrackIndex(II)I

    move-result v3

    goto :goto_a1

    :cond_b1
    if-ne v2, v8, :cond_a1

    move v2, v0

    move v3, v2

    :goto_b5
    if-nez v2, :cond_cf

    .line 654
    iget v8, v4, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterType:I

    if-ne v8, v6, :cond_cf

    iget-object v6, v1, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    .line 655
    invoke-virtual {v6}, Lcom/ss/android/vesdk/VEEditor;->getBusinessManager()Lcom/ss/android/ttve/biz/TEBaseBusinessManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ss/android/ttve/biz/TEBaseBusinessManager;->getFilterTrackIndex()I

    move-result v6

    if-ne v3, v6, :cond_cf

    .line 656
    iget-object v0, v1, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->getCanvasWrapFilterIndex()I

    move-result v0

    monitor-exit v5

    return v0

    :cond_cf
    if-nez v7, :cond_e9

    if-nez v3, :cond_e9

    .line 660
    iget v6, v4, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterType:I

    const/16 v8, 0x21

    if-ne v6, v8, :cond_df

    iget v8, v1, Lcom/ss/android/vesdk/VEFilterInvoker;->mLensHDRFilterIndex:I

    if-lez v8, :cond_df

    .line 661
    monitor-exit v5

    return v8

    :cond_df
    const/16 v8, 0x10

    if-ne v6, v8, :cond_e9

    .line 662
    iget v6, v1, Lcom/ss/android/vesdk/VEFilterInvoker;->mEffectHDRFilterIndex:I

    if-lez v6, :cond_e9

    .line 663
    monitor-exit v5

    return v6

    .line 668
    :cond_e9
    iget-object v8, v1, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {v3}, [I

    move-result-object v3

    iget-object v6, v4, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    filled-new-array {v9}, [I

    move-result-object v11

    filled-new-array {v10}, [I

    move-result-object v12

    filled-new-array {v2}, [I

    move-result-object v13

    iget v2, v4, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterType:I

    filled-new-array {v2}, [I

    move-result-object v14

    iget v2, v4, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterDurationType:I

    filled-new-array {v2}, [I

    move-result-object v15

    move-object v9, v3

    move-object v10, v6

    invoke-virtual/range {v8 .. v15}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I[I)[I

    move-result-object v2

    if-eqz v7, :cond_120

    .line 679
    iget-object v1, v1, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v3, v2, v0

    const-string v4, "global effect filter"

    const-string v6, "2"

    invoke-virtual {v1, v3, v4, v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_120
    aget v0, v2, v0

    monitor-exit v5

    return v0

    .line 682
    :goto_124
    monitor-exit v5
    :try_end_125
    .catchall {:try_start_91 .. :try_end_125} :catchall_70

    throw v0
.end method

.method public appendComposerNodes([Ljava/lang/String;)I
    .registers 5

    .line 256
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 257
    :try_start_3
    const-string v1, "VEEditor_VEFilterInvoker"

    const-string v2, "appendComposerNodes"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->appendComposerNodes([Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_2c

    .line 260
    const-string p1, "VEEditor_VEFilterInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appendComposerNodes failed, ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    monitor-exit v0

    return p0

    :catchall_2a
    move-exception p0

    goto :goto_2e

    .line 263
    :cond_2c
    monitor-exit v0

    return p0

    .line 264
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2a

    throw p0
.end method

.method public appendComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 7

    .line 311
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 313
    :try_start_3
    new-instance v1, Lcom/ss/android/vesdk/VEEffectParams;

    invoke-direct {v1}, Lcom/ss/android/vesdk/VEEffectParams;-><init>()V

    .line 314
    sget v2, Lcom/ss/android/vesdk/VEEffectParams;->EFFECT_TYPE_APPEND_COMPOSER_WITH_TAG:I

    iput v2, v1, Lcom/ss/android/vesdk/VEEffectParams;->TYPE:I

    .line 315
    iput p2, v1, Lcom/ss/android/vesdk/VEEffectParams;->intValueOne:I

    .line 316
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, v1, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    .line 317
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v1, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 318
    const-string p1, "VEEditor_VEFilterInvoker"

    const-string p2, "appendComposerNodes..."

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_33
    move-exception p0

    .line 320
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public changeTransitionAt(ILcom/ss/android/vesdk/filterparam/VETransitionFilterParam;)I
    .registers 8

    .line 1280
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 1281
    :try_start_3
    const-string v1, "VEEditor_VEFilterInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeTransition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", VETransitionFilterParam = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_c5

    if-nez p2, :cond_27

    goto/16 :goto_c5

    .line 1285
    :cond_27
    iget-object v1, p2, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;->transName:Ljava/lang/String;

    if-nez v1, :cond_33

    .line 1286
    const-string v1, ""

    iput-object v1, p2, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;->transName:Ljava/lang/String;

    goto :goto_33

    :catchall_30
    move-exception p0

    goto/16 :goto_c9

    .line 1288
    :cond_33
    :goto_33
    iget v1, p2, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;->tranType:I

    if-gez v1, :cond_3f

    .line 1289
    sget-object v1, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;->TransitionType_DEFAULT:Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, p2, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;->tranType:I

    .line 1291
    :cond_3f
    iget v1, p2, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;->tranDuration:I

    if-gtz v1, :cond_47

    const/16 v1, 0x1f4

    .line 1292
    iput v1, p2, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;->tranDuration:I

    .line 1294
    :cond_47
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 1295
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->changeTransitionAt(ILcom/ss/android/vesdk/filterparam/VETransitionFilterParam;)I

    move-result v1
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_30

    .line 1297
    :try_start_52
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1298
    const-string v3, "transIndex"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1299
    const-string v3, "param"

    invoke-virtual {p2}, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1300
    const-string v3, "resultCode"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1301
    const-string v3, "vesdk_event_editor_transition_change_by_params"

    const-string v4, "behavior"

    invoke-static {v3, v2, v4}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_52 .. :try_end_71} :catch_72
    .catchall {:try_start_52 .. :try_end_71} :catchall_30

    goto :goto_76

    :catch_72
    move-exception v2

    .line 1303
    :try_start_73
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_76
    if-eqz v1, :cond_a2

    .line 1307
    const-string v2, "VEEditor_VEFilterInvoker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeTransition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", VETransitionFilterParam="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed, result = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    :cond_a2
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->prepareWithCallback(I)I

    move-result p0

    if-eqz p0, :cond_c3

    .line 1312
    const-string p1, "VEEditor_VEFilterInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prepare Engine failed, ret = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    monitor-exit v0

    goto :goto_c4

    .line 1315
    :cond_c3
    monitor-exit v0

    :goto_c4
    return p0

    :cond_c5
    :goto_c5
    const/16 p0, -0x64

    .line 1283
    monitor-exit v0

    return p0

    .line 1316
    :goto_c9
    monitor-exit v0
    :try_end_ca
    .catchall {:try_start_73 .. :try_end_ca} :catchall_30

    throw p0
.end method

.method public changeTransitionAt(ILjava/lang/String;)I
    .registers 8

    .line 1241
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    if-nez p2, :cond_b

    .line 1243
    :try_start_5
    const-string p2, ""

    goto :goto_b

    :catchall_8
    move-exception p0

    goto/16 :goto_be

    .line 1245
    :cond_b
    :goto_b
    const-string v1, "VEEditor_VEFilterInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeTransition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", transName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_2f

    const/16 p0, -0x64

    .line 1247
    monitor-exit v0

    return p0

    .line 1249
    :cond_2f
    new-instance v1, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;

    invoke-direct {v1}, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;-><init>()V

    .line 1250
    iput-object p2, v1, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;->transName:Ljava/lang/String;

    const/16 v2, 0x1f4

    .line 1251
    iput v2, v1, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;->tranDuration:I

    .line 1252
    sget-object v2, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;->TransitionType_DEFAULT:Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, v1, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;->tranType:I

    .line 1254
    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 1255
    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2, p1, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->changeTransitionAt(ILcom/ss/android/vesdk/filterparam/VETransitionFilterParam;)I

    move-result v2
    :try_end_4d
    .catchall {:try_start_5 .. :try_end_4d} :catchall_8

    .line 1257
    :try_start_4d
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1258
    const-string v4, "transIndex"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1259
    const-string v4, "transName"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1260
    const-string p2, "resultCode"

    invoke-virtual {v3, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1261
    const-string p2, "vesdk_event_editor_transition_change_by_name"

    const-string v4, "behavior"

    invoke-static {p2, v3, v4}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_4d .. :try_end_68} :catch_69
    .catchall {:try_start_4d .. :try_end_68} :catchall_8

    goto :goto_6d

    :catch_69
    move-exception p2

    .line 1263
    :try_start_6a
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6d
    if-eqz v2, :cond_9b

    .line 1266
    const-string p0, "VEEditor_VEFilterInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeTransition "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ,VETransitionFilterParam="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed, result = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    monitor-exit v0

    return v2

    .line 1269
    :cond_9b
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->prepareWithCallback(I)I

    move-result p0

    if-eqz p0, :cond_bc

    .line 1271
    const-string p1, "VEEditor_VEFilterInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prepare Engine failed, ret = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    monitor-exit v0

    return p0

    .line 1274
    :cond_bc
    monitor-exit v0

    return p1

    .line 1275
    :goto_be
    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_6a .. :try_end_bf} :catchall_8

    throw p0
.end method

.method public checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .registers 4

    if-eqz p1, :cond_c

    if-nez p3, :cond_5

    goto :goto_c

    .line 223
    :cond_5
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p0

    return-object p0

    :cond_c
    :goto_c
    const/4 p0, -0x1

    const/4 p1, 0x0

    .line 221
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0
.end method

.method public clearNativeFromFilter()V
    .registers 1

    .line 2637
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mAudioEffectHandler:Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;->clearNative()V

    return-void
.end method

.method public deleteAICutOutClipParam(I)I
    .registers 6

    .line 773
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 774
    :try_start_3
    const-string v1, "VEEditor_VEFilterInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAICutOutClipParam... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->deleteAICutOutClipParam(I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_21
    move-exception p0

    .line 776
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public deleteAudioFilters([I)I
    .registers 6

    .line 2482
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 2483
    :try_start_3
    const-string v1, "VEEditor_VEFilterInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAudioFilter..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2484
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->removeFilter([I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_24
    move-exception p0

    .line 2485
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public deleteFilterEffects([I)I
    .registers 7

    .line 593
    const-string v0, "VEEditor_VEFilterInvoker"

    const-string v1, "deleteFilterEffects..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_1a

    aget v3, p1, v2

    .line 596
    iget-object v4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/VEEditor;->getTEMonitorFilterMgr()Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->removeFilter(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 599
    :cond_1a
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->removeFilter([I)I

    move-result p0

    return p0
.end method

.method public deleteFilters([I)I
    .registers 5

    .line 687
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 688
    :try_start_3
    const-string v1, "VEEditor_VEFilterInvoker"

    const-string v2, "deleteFilters..."

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->removeFilter([I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    .line 690
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public deleteRepeatEffect(I)I
    .registers 7

    .line 1382
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 1384
    :try_start_3
    const-string v1, "VEEditor_VEFilterInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteRepeatEffect... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getCurState()I

    move-result v1

    const/16 v2, -0x4e20

    const/4 v3, 0x0

    if-eq v1, v2, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    move v1, v3

    :goto_27
    if-eqz v1, :cond_32

    .line 1388
    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    move-result v2

    goto :goto_33

    :catchall_30
    move-exception p0

    goto :goto_73

    :cond_32
    move v2, v3

    :goto_33
    if-eqz v2, :cond_52

    const/16 v4, -0x65

    if-eq v2, v4, :cond_52

    .line 1391
    const-string p0, "VEEditor_VEFilterInvoker"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseSync failed, ret "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 1392
    monitor-exit v0

    return p0

    .line 1394
    :cond_52
    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->removeFilter([I)I

    move-result p1

    .line 1397
    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEEditor;->getTEMonitorFilterMgr()Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->setTimeEffectType(I)V

    if-eqz v1, :cond_71

    .line 1399
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->createTimeline()I

    .line 1400
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    .line 1402
    :cond_71
    monitor-exit v0

    return p1

    .line 1403
    :goto_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_3 .. :try_end_74} :catchall_30

    throw p0
.end method

.method public deleteSlowEffect(I)I
    .registers 7

    .line 1470
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 1472
    :try_start_3
    const-string v1, "VEEditor_VEFilterInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteSlowEffect... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getCurState()I

    move-result v1

    const/16 v2, -0x4e20

    const/4 v3, 0x0

    if-eq v1, v2, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    move v1, v3

    :goto_27
    if-eqz v1, :cond_32

    .line 1476
    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    move-result v2

    goto :goto_33

    :catchall_30
    move-exception p0

    goto :goto_73

    :cond_32
    move v2, v3

    :goto_33
    if-eqz v2, :cond_52

    const/16 v4, -0x65

    if-eq v2, v4, :cond_52

    .line 1479
    const-string p0, "VEEditor_VEFilterInvoker"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseSync failed, ret "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 1480
    monitor-exit v0

    return p0

    .line 1482
    :cond_52
    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->removeFilter([I)I

    move-result p1

    if-eqz v1, :cond_68

    .line 1485
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->createTimeline()I

    .line 1486
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    .line 1489
    :cond_68
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->getTEMonitorFilterMgr()Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->setTimeEffectType(I)V

    .line 1491
    monitor-exit v0

    return p1

    .line 1492
    :goto_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_3 .. :try_end_74} :catchall_30

    throw p0
.end method

.method public deleteTimeEffect(I)I
    .registers 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1827
    iget-object v2, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v2

    .line 1829
    :try_start_7
    sget-object v3, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TimeEffect deleteTimeEffect...  filterIndexes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " audioFilterIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mTimeEffectManager:Lcom/ss/android/vesdk/runtime/VETimeEffectManager;

    invoke-virtual {v5}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->getAudioFilterIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    sget-object v3, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteTimeEffect before getDuration ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    if-gez v1, :cond_4f

    .line 1834
    monitor-exit v2

    return v3

    :catchall_4c
    move-exception v0

    goto/16 :goto_334

    .line 1837
    :cond_4f
    iget-object v4, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v4}, Lcom/ss/android/ttve/nativePort/TEInterface;->getCurState()I

    move-result v4

    const/16 v5, -0x4e20

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v4, v5, :cond_5d

    move v4, v6

    goto :goto_5e

    :cond_5d
    move v4, v7

    :goto_5e
    if-eqz v4, :cond_67

    .line 1839
    iget-object v5, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    move-result v5

    goto :goto_68

    :cond_67
    move v5, v7

    :goto_68
    if-eqz v5, :cond_86

    const/16 v8, -0x65

    if-eq v5, v8, :cond_86

    .line 1842
    const-string v0, "VEEditor_VEFilterInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pauseSync failed, ret "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    monitor-exit v2

    return v3

    .line 1845
    :cond_86
    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->removeFilter([I)I

    move-result v1

    .line 1847
    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    if-ne v3, v6, :cond_b2

    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mTimeEffectManager:Lcom/ss/android/vesdk/runtime/VETimeEffectManager;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->getAudioFilterIndex()I

    move-result v3

    if-ltz v3, :cond_b2

    .line 1848
    iget-object v1, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mTimeEffectManager:Lcom/ss/android/vesdk/runtime/VETimeEffectManager;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->getAudioFilterIndex()I

    move-result v3

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->removeFilter([I)I

    move-result v1

    .line 1850
    :cond_b2
    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object v3

    sget-object v5, Lcom/ss/android/vesdk/VEEditor$TIME_MODE;->EDITOR_NORMAl_MODE:Lcom/ss/android/vesdk/VEEditor$TIME_MODE;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    iput v5, v3, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mTimeMode:I

    .line 1852
    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mTimeEffectManager:Lcom/ss/android/vesdk/runtime/VETimeEffectManager;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->hasTimeEffect()Z

    move-result v3

    if-eqz v3, :cond_30e

    .line 1853
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1854
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1856
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1857
    iget-object v10, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mTimeEffectManager:Lcom/ss/android/vesdk/runtime/VETimeEffectManager;

    invoke-virtual {v10, v3, v5, v8, v9}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->deleteTimeEffect(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1863
    sget-object v10, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    const-string v11, "deleteTimeEffect deleteVideoClip begin"

    invoke-static {v10, v11}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v7

    :goto_ed
    if-ge v11, v10, :cond_139

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    .line 1865
    iget-object v13, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v14, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v14}, Lcom/ss/android/vesdk/VEEditor;->getMasterTrackIndex()I

    move-result v14

    iget v15, v12, Lcom/ss/android/vesdk/clipparam/VEClipParam;->clipIndex:I

    invoke-virtual {v13, v7, v14, v15}, Lcom/ss/android/ttve/nativePort/TEInterface;->deleteClip(III)I

    move-result v13

    if-gez v13, :cond_11d

    .line 1867
    sget-object v14, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteTimeEffect deleteVideoClip failed, ret = "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    :cond_11d
    sget-object v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "deleteTimeEffect deleteVideoClip ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/ss/android/vesdk/clipparam/VEClipParam;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    goto :goto_ed

    .line 1871
    :cond_139
    sget-object v3, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    const-string v6, "deleteTimeEffect deleteVideoClip end"

    invoke-static {v3, v6}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    sget-object v3, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    const-string v6, "deleteTimeEffect updateVideoClip begin"

    invoke-static {v3, v6}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    .line 1876
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [I

    move v10, v7

    .line 1877
    :goto_154
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_1b0

    .line 1878
    new-instance v11, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    invoke-direct {v11}, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;-><init>()V

    aput-object v11, v3, v10

    .line 1879
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    iget v12, v12, Lcom/ss/android/vesdk/clipparam/VEClipParam;->trimIn:I

    iput v12, v11, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimIn:I

    .line 1880
    aget-object v11, v3, v10

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    iget v12, v12, Lcom/ss/android/vesdk/clipparam/VEClipParam;->trimOut:I

    iput v12, v11, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimOut:I

    .line 1881
    aget-object v11, v3, v10

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    iget-wide v12, v12, Lcom/ss/android/vesdk/clipparam/VEClipParam;->speed:D

    iput-wide v12, v11, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->speed:D

    .line 1882
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    iget v11, v11, Lcom/ss/android/vesdk/clipparam/VEClipParam;->clipIndex:I

    aput v11, v6, v10

    .line 1883
    sget-object v11, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "deleteTimeEffect updateVideoClip ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    invoke-virtual {v13}, Lcom/ss/android/vesdk/clipparam/VEClipParam;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_154

    .line 1885
    :cond_1b0
    iget-object v5, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v10, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v10}, Lcom/ss/android/vesdk/VEEditor;->getMasterTrackIndex()I

    move-result v10

    invoke-virtual {v5, v7, v10, v6, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateClipsTimelineParam(II[I[Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result v3

    if-gez v3, :cond_1d4

    .line 1887
    sget-object v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteTimeEffect updateClipsTimelineParam failed, ret = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    :cond_1d4
    sget-object v3, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    const-string v5, "deleteTimeEffect updateVideoClip end"

    invoke-static {v3, v5}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2f1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1f2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2f1

    .line 1897
    :cond_1f2
    sget-object v3, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    const-string v5, "deleteTimeEffect deleteAuidoClip begin"

    invoke-static {v3, v5}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v7

    :goto_1fe
    if-ge v5, v3, :cond_24c

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v5, v5, 0x1

    check-cast v10, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    .line 1899
    iget-object v11, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v12, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v12}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object v12

    iget v12, v12, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    iget v13, v10, Lcom/ss/android/vesdk/clipparam/VEClipParam;->clipIndex:I

    const/4 v14, 0x1

    invoke-virtual {v11, v14, v12, v13}, Lcom/ss/android/ttve/nativePort/TEInterface;->deleteClip(III)I

    move-result v11

    if-gez v11, :cond_231

    .line 1901
    sget-object v12, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "deleteTimeEffect deleteAuidoClip failed, ret = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    :cond_231
    sget-object v11, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "deleteTimeEffect deleteAuidoClip ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/ss/android/vesdk/clipparam/VEClipParam;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1fe

    .line 1905
    :cond_24c
    sget-object v3, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    const-string v5, "deleteTimeEffect deleteAuidoClip end"

    invoke-static {v3, v5}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    sget-object v3, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    const-string v5, "deleteTimeEffect updateAudioClip begin"

    invoke-static {v3, v5}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    .line 1910
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    move v8, v7

    .line 1911
    :goto_267
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_2c3

    .line 1912
    new-instance v10, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    invoke-direct {v10}, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;-><init>()V

    aput-object v10, v3, v8

    .line 1913
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    iget v11, v11, Lcom/ss/android/vesdk/clipparam/VEClipParam;->trimIn:I

    iput v11, v10, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimIn:I

    .line 1914
    aget-object v10, v3, v8

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    iget v11, v11, Lcom/ss/android/vesdk/clipparam/VEClipParam;->trimOut:I

    iput v11, v10, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimOut:I

    .line 1915
    aget-object v10, v3, v8

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    iget-wide v11, v11, Lcom/ss/android/vesdk/clipparam/VEClipParam;->speed:D

    iput-wide v11, v10, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->speed:D

    .line 1916
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    iget v10, v10, Lcom/ss/android/vesdk/clipparam/VEClipParam;->clipIndex:I

    aput v10, v5, v8

    .line 1917
    sget-object v10, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deleteTimeEffect updateAudioClip ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    invoke-virtual {v12}, Lcom/ss/android/vesdk/clipparam/VEClipParam;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_267

    .line 1919
    :cond_2c3
    iget-object v5, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v8, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v8}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object v8

    iget v8, v8, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    const/4 v14, 0x1

    invoke-virtual {v5, v14, v8, v6, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateClipsTimelineParam(II[I[Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result v3

    if-gez v3, :cond_2ea

    .line 1921
    sget-object v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteTimeEffect updateClipsTimelineParam failed, ret = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    :cond_2ea
    sget-object v3, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    const-string v5, "deleteTimeEffect updateAudioClip end"

    invoke-static {v3, v5}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    :cond_2f1
    sget-object v3, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteTimeEffect after getDuration ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_313

    .line 1928
    :cond_30e
    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mTimeEffectManager:Lcom/ss/android/vesdk/runtime/VETimeEffectManager;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->reset()V

    .line 1931
    :goto_313
    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v5

    const/4 v14, 0x1

    invoke-virtual {v3, v7, v5, v14}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTimeRange(III)I

    .line 1934
    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEEditor;->getTEMonitorFilterMgr()Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->setTimeEffectType(I)V

    if-eqz v4, :cond_332

    .line 1936
    iget-object v3, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->createTimeline()I

    .line 1937
    iget-object v0, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    .line 1939
    :cond_332
    monitor-exit v2

    return v1

    .line 1940
    :goto_334
    monitor-exit v2
    :try_end_335
    .catchall {:try_start_7 .. :try_end_335} :catchall_4c

    throw v0
.end method

.method public disableAudioEffect(II)I
    .registers 5

    .line 1999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableAudioEffect... filterIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", outPoint "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor_VEFilterInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_24

    const/16 p0, -0x64

    return p0

    .line 2002
    :cond_24
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, v0, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->adjustFilterInOut(III)I

    move-result p0

    return p0
.end method

.method public disableFilterEffect(II)I
    .registers 6

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableFilterEffect... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor_VEFilterInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_60

    if-gez p2, :cond_23

    goto :goto_60

    .line 429
    :cond_23
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->getTEMonitorFilterMgr()Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->effectMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;

    if-eqz v0, :cond_3d

    .line 431
    iget v1, v0, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;->start:I

    sub-int v1, p2, v1

    iput v1, v0, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;->duration:I

    .line 434
    :cond_3d
    :try_start_3d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 435
    const-string v1, "outPoint"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 436
    const-string v1, "effectIndex"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 437
    const-string v1, "vesdk_event_editor_filter_effect_end"

    const-string v2, "behavior"

    invoke-static {v1, v0, v2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_53} :catch_54

    goto :goto_58

    :catch_54
    move-exception v0

    .line 439
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 441
    :goto_58
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->adjustFilterInOut(III)I

    move-result p0

    return p0

    .line 424
    :cond_60
    :goto_60
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "disableFilterEffect... error. effectIndex = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", outPoint = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public enableAudioCommonFilter(IILjava/lang/String;[BILcom/ss/android/vesdk/VEListener$AudioCommonFilterListener;)I
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v4, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    .line 2345
    const-string v1, "enableAudioCommonFilter..."

    const-string v9, "VEEditor_VEFilterInvoker"

    invoke-static {v9, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    invoke-static {}, Lcom/ss/android/vesdk/VEEditor;->cancelCompileProbe()V

    .line 2347
    iget-object v1, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v1

    .line 2348
    iget-object v2, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v2

    const/4 v3, 0x1

    move/from16 v5, p1

    if-ne v5, v3, :cond_27

    move v6, v3

    :goto_24
    move/from16 v10, p2

    goto :goto_29

    :cond_27
    const/4 v6, 0x2

    goto :goto_24

    :goto_29
    invoke-virtual {v2, v6, v10}, Lcom/ss/android/ttve/common/TETrackIndexManager;->getNativeTrackIndex(II)I

    move-result v2

    .line 2351
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v10, ", seqIn = "

    const-string v11, "Add filter failed!"

    const/4 v12, -0x1

    const/4 v13, 0x0

    if-eqz v6, :cond_a0

    .line 2352
    iget-object v14, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {v2}, [I

    move-result-object v15

    const-string v0, "audio original filter"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v16

    filled-new-array {v7}, [I

    move-result-object v17

    filled-new-array {v1}, [I

    move-result-object v18

    filled-new-array {v5}, [I

    move-result-object v19

    filled-new-array {v3}, [I

    move-result-object v20

    invoke-virtual/range {v14 .. v20}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I)[I

    move-result-object v0

    .line 2360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio original filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " seqIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    aget v1, v0, v13

    if-gez v1, :cond_81

    .line 2362
    invoke-static {v9, v11}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v12

    .line 2366
    :cond_81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableAudioOriginalFilter...filterIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2367
    aget v0, v0, v13

    return v0

    .line 2370
    :cond_a0
    iget-object v14, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {v2}, [I

    move-result-object v15

    .line 2372
    const-string v6, ".bin"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_b1

    const-string v16, "audio common filter"

    goto :goto_b3

    :cond_b1
    const-string v16, "audio common sami filter"

    :goto_b3
    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v16

    filled-new-array {v7}, [I

    move-result-object v17

    filled-new-array {v1}, [I

    move-result-object v18

    filled-new-array {v5}, [I

    move-result-object v19

    filled-new-array {v3}, [I

    move-result-object v20

    .line 2370
    invoke-virtual/range {v14 .. v20}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I)[I

    move-result-object v14

    .line 2378
    aget v1, v14, v13

    if-gez v1, :cond_d3

    .line 2379
    invoke-static {v9, v11}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v12

    .line 2383
    :cond_d3
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_103

    .line 2384
    new-array v6, v3, [J

    .line 2386
    iget-object v1, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    move v3, v2

    move v2, v5

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->preprocessAudioTrackForFilter(IILjava/lang/String;[B[J)I

    move-result v1

    .line 2388
    iget-object v2, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget-wide v5, v6, v13

    invoke-virtual {v2, v5, v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->getAudioCommonFilterPreprocessResult(J)[B

    move-result-object v2

    if-eqz v8, :cond_f2

    .line 2390
    invoke-interface {v8, v4, v1, v2}, Lcom/ss/android/vesdk/VEListener$AudioCommonFilterListener;->onPreprocess(Ljava/lang/String;I[B)V

    :cond_f2
    if-eqz v1, :cond_fa

    .line 2393
    const-string v0, "Add filter preprocess failed!"

    invoke-static {v9, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v12

    .line 2398
    :cond_fa
    iget-object v1, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v3, v14, v13

    const-string v5, "audio_common_filter_preresult"

    invoke-virtual {v1, v3, v5, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;[B)I

    .line 2406
    :cond_103
    iget-object v0, v0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v1, v14, v13

    const-string v2, "audio_common_filter_params"

    invoke-virtual {v0, v1, v2, v4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 2410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableAudioCommonFilter...filterIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v14, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2411
    aget v0, v14, v13

    return v0
.end method

.method public enableAudioEffect(IIILcom/ss/android/vesdk/VEAudioEffectBean;)I
    .registers 13

    .line 1975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableAudioEffect... TrackIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor_VEFilterInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    invoke-static {}, Lcom/ss/android/vesdk/VEEditor;->cancelCompileProbe()V

    .line 1981
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v0

    .line 1982
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {p1}, [I

    move-result-object v2

    const-string v3, "audio effect"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {p3}, [I

    move-result-object v4

    filled-new-array {v0}, [I

    move-result-object v5

    filled-new-array {p2}, [I

    move-result-object v6

    const/4 p3, 0x1

    filled-new-array {p3}, [I

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I)[I

    move-result-object p3

    const/4 v0, 0x0

    .line 1991
    aget v1, p3, v0

    iput v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mAudioEffectfilterIndex:I

    .line 1993
    invoke-direct {p0, p1, p2, v1, p4}, Lcom/ss/android/vesdk/VEFilterInvoker;->setAudioEffectParam(IIILcom/ss/android/vesdk/VEAudioEffectBean;)V

    .line 1994
    aget p0, p3, v0

    return p0
.end method

.method public enableAudioEffect(ILcom/ss/android/vesdk/VEAudioEffectBean;)I
    .registers 5

    .line 1964
    const-string v0, "VEEditor_VEFilterInvoker"

    const-string v1, "enableAudioEffect..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->getSeparateAV()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1967
    invoke-static {}, Lcom/ss/android/vesdk/VEEditor;->cancelCompileProbe()V

    const/4 v1, 0x0

    .line 1969
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/ss/android/vesdk/VEFilterInvoker;->enableAudioEffect(IIILcom/ss/android/vesdk/VEAudioEffectBean;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mAudioEffectfilterIndex:I

    return p1
.end method

.method public enableFilterEffect(ILjava/lang/String;)I
    .registers 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 351
    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/vesdk/VEFilterInvoker;->enableFilterEffect(ILjava/lang/String;ZII)I

    move-result p0

    return p0
.end method

.method public enableFilterEffect(ILjava/lang/String;ZII)I
    .registers 6

    move p3, p4

    move p4, p5

    .line 356
    const-string p5, ""

    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/vesdk/VEFilterInvoker;->enableFilterEffectWithTag(ILjava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public enableFilterEffectWithTag(ILjava/lang/String;IILjava/lang/String;)I
    .registers 18

    move-object/from16 v1, p5

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableFilterEffectWithTag... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VEEditor_VEFilterInvoker"

    invoke-static {v3, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_112

    .line 363
    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v2

    if-gt p1, v2, :cond_112

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    goto/16 :goto_112

    .line 368
    :cond_2f
    invoke-static {}, Lcom/ss/android/vesdk/VEEditor;->cancelCompileProbe()V

    .line 372
    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v2

    .line 374
    const-string v3, ""

    if-nez v1, :cond_3e

    move-object v4, v3

    goto :goto_3f

    :cond_3e
    move-object v4, v1

    .line 376
    :goto_3f
    iget-object v5, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v6, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    .line 377
    invoke-virtual {v6}, Lcom/ss/android/vesdk/VEEditor;->getBusinessManager()Lcom/ss/android/ttve/biz/TEBaseBusinessManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ss/android/ttve/biz/TEBaseBusinessManager;->getFilterTrackIndex()I

    move-result v6

    filled-new-array {v6}, [I

    move-result-object v6

    const-string v7, "video effect"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    filled-new-array {p1}, [I

    move-result-object v8

    filled-new-array {v2}, [I

    move-result-object v9

    const/4 v2, 0x0

    filled-new-array {v2}, [I

    move-result-object v10

    const/16 v11, 0x8

    filled-new-array {v11}, [I

    move-result-object v11

    .line 376
    invoke-virtual/range {v5 .. v11}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I)[I

    move-result-object v5

    .line 384
    iget-object v6, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v7, v5, v2

    const-string v8, "effect res path"

    invoke-virtual {v6, v7, v8, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v6, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v7, v5, v2

    const-string v8, "effect sticker tag"

    invoke-virtual {v6, v7, v8, v4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v6, v5, v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "effect sticker id"

    invoke-virtual {v4, v6, v8, v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget v6, v5, v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v8, p4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "effect req id"

    invoke-virtual {v4, v6, v8, v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance v4, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v4}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 391
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_c9

    .line 392
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 393
    array-length v8, v6

    if-lez v8, :cond_c9

    .line 394
    array-length v3, v6

    sub-int/2addr v3, v7

    aget-object v3, v6, v3

    .line 397
    :cond_c9
    const-string v6, "iesve_veeditor_filter_effect_id"

    invoke-virtual {v4, v6, v3}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 398
    const-string v6, "iesve_veeditor_filter_effect"

    invoke-static {v6, v7, v4}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 401
    new-instance v4, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;

    invoke-direct {v4}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;-><init>()V

    .line 402
    iput-object p2, v4, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;->path:Ljava/lang/String;

    .line 403
    iput p1, v4, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;->start:I

    .line 404
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->getTEMonitorFilterMgr()Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    move-result-object p0

    aget v0, v5, v2

    invoke-virtual {p0, v2, v0, v4}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->addFilter(IILcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;)V

    .line 407
    :try_start_e7
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 408
    const-string v0, "seqIn"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 409
    const-string p1, "stickerId"

    invoke-virtual {p0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 410
    const-string p1, "effectTag"

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    const-string p1, "filterIndex"

    aget v0, v5, v2

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 412
    const-string p1, "vesdk_event_editor_filter_effect"

    const-string v0, "behavior"

    invoke-static {p1, p0, v0}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_109
    .catch Lorg/json/JSONException; {:try_start_e7 .. :try_end_109} :catch_10a

    goto :goto_10f

    :catch_10a
    move-exception v0

    move-object p0, v0

    .line 414
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 416
    :goto_10f
    aget p0, v5, v2

    return p0

    .line 364
    :cond_112
    :goto_112
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableFilterEffectWithTag... error. seqIn = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", effectPath = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public enableHDRSetting(Z)V
    .registers 2

    .line 1195
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableHDRSetting(Z)I

    return-void
.end method

.method public excAICutOutTask()I
    .registers 4

    .line 797
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 798
    :try_start_3
    const-string v1, "VEEditor_VEFilterInvoker"

    const-string v2, "excAICutOutTask... "

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->excAICutOutTask()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    .line 800
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getAudioFilterIndexInternal()I
    .registers 1

    .line 2617
    iget p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mAudioEffectfilterIndex:I

    return p0
.end method

.method public getClipMattingProgress(I)F
    .registers 6

    .line 781
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 782
    :try_start_3
    const-string v1, "VEEditor_VEFilterInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClipMattingProgress... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getClipMattingProgress(I)F

    move-result p0

    monitor-exit v0

    return p0

    :catchall_21
    move-exception p0

    .line 784
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public getColorFilterIndexInternal()I
    .registers 1

    .line 2587
    iget p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    return p0
.end method

.method public getColorFilterIntensity(Ljava/lang/String;)F
    .registers 3

    .line 1118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 1121
    :cond_9
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getColorFilterIntensity(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getCurColorFilterInternal()Lcom/ss/android/ttve/model/FilterBean;
    .registers 1

    .line 2582
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    return-object p0
.end method

.method public getHDRFilterIndexInternal()I
    .registers 1

    .line 2597
    iget p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mEffectHDRFilterIndex:I

    return p0
.end method

.method public getLensHDRFilterIndexInternal()I
    .registers 1

    .line 2607
    iget p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mLensHDRFilterIndex:I

    return p0
.end method

.method public getMusicSrtIndexInternal()I
    .registers 1

    .line 2627
    iget p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mMusicSRTEffectFilterIndex:I

    return p0
.end method

.method public getProjectMattingProgress()F
    .registers 4

    .line 789
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 790
    :try_start_3
    const-string v1, "VEEditor_VEFilterInvoker"

    const-string v2, "getProjectMattingProgress... "

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->getProjectMattingProgress()F

    move-result p0

    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    .line 792
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public initColorFilter()I
    .registers 11

    .line 807
    const-string v0, "VEEditor_VEFilterInvoker"

    const-string v1, "initColorFilter..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v3

    const-string v1, "color filter"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0}, [I

    move-result-object v5

    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    .line 809
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor;->getOutPoint()I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v6

    filled-new-array {v0}, [I

    move-result-object v7

    const/4 v1, 0x7

    filled-new-array {v1}, [I

    move-result-object v8

    const/4 v1, 0x1

    filled-new-array {v1}, [I

    move-result-object v9

    .line 808
    invoke-virtual/range {v2 .. v9}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I[I)[I

    move-result-object v1

    .line 813
    aget v0, v1, v0

    iput v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    return v0
.end method

.method public initFiltersInternal()I
    .registers 11

    .line 2522
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->getOutPoint()I

    move-result v0

    .line 2523
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v9, 0x0

    filled-new-array {v9, v9, v9}, [I

    move-result-object v2

    const-string v3, "color filter"

    const-string v4, "effect hdr filter"

    const-string v5, "lens hdr filter"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {v9, v9, v9}, [I

    move-result-object v4

    filled-new-array {v0, v0, v0}, [I

    move-result-object v5

    filled-new-array {v9, v9, v9}, [I

    move-result-object v6

    const/16 v0, 0x10

    const/16 v7, 0x21

    const/4 v8, 0x7

    filled-new-array {v8, v0, v7}, [I

    move-result-object v7

    const/4 v0, 0x1

    filled-new-array {v0, v9, v9}, [I

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I[I)[I

    move-result-object v1

    .line 2531
    aget v2, v1, v9

    iput v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    .line 2532
    aget v0, v1, v0

    iput v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mEffectHDRFilterIndex:I

    const/4 v0, 0x2

    .line 2533
    aget v0, v1, v0

    iput v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mLensHDRFilterIndex:I

    .line 2535
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEEditor;->updateMVFiltersInternal([I)V
    :try_end_47
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_47} :catch_48

    return v9

    .line 2538
    :catch_48
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const/4 v0, -0x1

    const-string v1, "init failed: VESDK need to be init"

    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public initFiltersInternal(Lcom/ss/android/vesdk/VEEditorModel;)I
    .registers 3

    .line 2550
    iget v0, p1, Lcom/ss/android/vesdk/VEEditorModel;->colorFilterIndex:I

    iput v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    .line 2551
    iget v0, p1, Lcom/ss/android/vesdk/VEEditorModel;->effectHDRFilterIndex:I

    iput v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mEffectHDRFilterIndex:I

    .line 2552
    iget v0, p1, Lcom/ss/android/vesdk/VEEditorModel;->mLensHDRFilterIndex:I

    iput v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mLensHDRFilterIndex:I

    .line 2553
    iget p1, p1, Lcom/ss/android/vesdk/VEEditorModel;->audioEffectFilterIndex:I

    iput p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mAudioEffectfilterIndex:I

    const/4 p0, 0x0

    return p0
.end method

.method public mapOriginalPositionToTimeEffectPosition(I)I
    .registers 2

    .line 1945
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mTimeEffectManager:Lcom/ss/android/vesdk/runtime/VETimeEffectManager;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mapOriginalPositionToTimeEffectPosition(I)I

    move-result p0

    return p0
.end method

.method public mapTimeEffectDurationToOriginalDuration(I)I
    .registers 3

    .line 1955
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 1956
    :try_start_3
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mTimeEffectManager:Lcom/ss/android/vesdk/runtime/VETimeEffectManager;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mapCurrentDurationToTimeEffect(I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 1957
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public mapTimeEffectPositionToOriginalPosition(I)I
    .registers 2

    .line 1950
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mTimeEffectManager:Lcom/ss/android/vesdk/runtime/VETimeEffectManager;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mapTimeEffectPositionToOriginalPosition(I)I

    move-result p0

    return p0
.end method

.method public reloadComposerNodes([Ljava/lang/String;)I
    .registers 5

    .line 242
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 244
    :try_start_3
    const-string v1, "VEEditor_VEFilterInvoker"

    const-string v2, "reloadComposerNodes"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->reloadComposerNodes([Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_2c

    .line 247
    const-string p1, "VEEditor_VEFilterInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reloadComposerNodes failed, ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    monitor-exit v0

    return p0

    :catchall_2a
    move-exception p0

    goto :goto_2e

    .line 250
    :cond_2c
    monitor-exit v0

    return p0

    .line 251
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2a

    throw p0
.end method

.method public reloadComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 7

    .line 297
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 299
    :try_start_3
    new-instance v1, Lcom/ss/android/vesdk/VEEffectParams;

    invoke-direct {v1}, Lcom/ss/android/vesdk/VEEffectParams;-><init>()V

    .line 300
    sget v2, Lcom/ss/android/vesdk/VEEffectParams;->EFFECT_TYPE_RELOAD_COMPOSER_WITH_TAG:I

    iput v2, v1, Lcom/ss/android/vesdk/VEEffectParams;->TYPE:I

    .line 301
    iput p2, v1, Lcom/ss/android/vesdk/VEEffectParams;->intValueOne:I

    .line 302
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, v1, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    .line 303
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v1, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 304
    const-string p1, "VEEditor_VEFilterInvoker"

    const-string p2, "reloadComposerNodes..."

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_33
    move-exception p0

    .line 306
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public removeComposerNodes([Ljava/lang/String;)I
    .registers 5

    .line 269
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 271
    :try_start_3
    const-string v1, "VEEditor_VEFilterInvoker"

    const-string v2, "removeComposerNodes"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->removeComposerNodes([Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_2c

    .line 274
    const-string p1, "VEEditor_VEFilterInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeComposerNodes failed, ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    monitor-exit v0

    return p0

    :catchall_2a
    move-exception p0

    goto :goto_2e

    .line 277
    :cond_2c
    monitor-exit v0

    return p0

    .line 278
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2a

    throw p0
.end method

.method public replaceComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 9

    .line 325
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 327
    :try_start_3
    new-instance v1, Lcom/ss/android/vesdk/VEEffectParams;

    invoke-direct {v1}, Lcom/ss/android/vesdk/VEEffectParams;-><init>()V

    .line 328
    sget v2, Lcom/ss/android/vesdk/VEEffectParams;->EFFECT_TYPE_REPLACE_COMPOSER_WITH_TAG:I

    iput v2, v1, Lcom/ss/android/vesdk/VEEffectParams;->TYPE:I

    .line 329
    iput p2, v1, Lcom/ss/android/vesdk/VEEffectParams;->intValueOne:I

    .line 330
    iput p4, v1, Lcom/ss/android/vesdk/VEEffectParams;->intValueTwo:I

    .line 331
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, v1, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    .line 332
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v1, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 333
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v1, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayThree:Ljava/util/ArrayList;

    .line 334
    const-string p1, "VEEditor_VEFilterInvoker"

    const-string p2, "replaceComposerNodes..."

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_40
    move-exception p0

    .line 336
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public setAudioFilterIndexInternal(I)V
    .registers 2

    .line 2622
    iput p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mAudioEffectfilterIndex:I

    return-void
.end method

.method public setAudioOffset(II)I
    .registers 5

    .line 2490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioOffset, track="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor_VEFilterInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2491
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setAudioOffset(II)I

    move-result p0

    return p0
.end method

.method public setColorFilter(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 819
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ss/android/vesdk/VEFilterInvoker;->setColorFilter(Ljava/lang/String;FZZ)I

    move-result p0

    return p0
.end method

.method public setColorFilter(Ljava/lang/String;F)I
    .registers 4

    const/4 v0, 0x0

    .line 824
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/ss/android/vesdk/VEFilterInvoker;->setColorFilter(Ljava/lang/String;FZZ)I

    move-result p0

    return p0
.end method

.method public setColorFilter(Ljava/lang/String;FZZ)I
    .registers 10

    .line 848
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 849
    :try_start_3
    const-string v1, "VEEditor_VEFilterInvoker"

    const-string v2, "setColorFilter normal..."

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    if-gez v1, :cond_1c

    .line 851
    const-string p0, "VEEditor_VEFilterInvoker"

    const-string p1, "setColorFilter... mColorFilterIndex error."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x69

    .line 852
    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    goto/16 :goto_14f

    :cond_1c
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_12d

    if-nez p1, :cond_25

    goto/16 :goto_12d

    :cond_25
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v1

    if-lez v2, :cond_2c

    move p2, v1

    .line 859
    :cond_2c
    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    if-nez v2, :cond_37

    .line 860
    new-instance v2, Lcom/ss/android/ttve/model/FilterBean;

    invoke-direct {v2}, Lcom/ss/android/ttve/model/FilterBean;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    :cond_37
    const/4 v2, 0x0

    if-nez p4, :cond_70

    .line 862
    iget-object p4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {p4}, Lcom/ss/android/ttve/model/FilterBean;->getLeftResPath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_70

    iget-object p4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    .line 863
    invoke-virtual {p4}, Lcom/ss/android/ttve/model/FilterBean;->getRightResPath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-nez p4, :cond_70

    iget-object p4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    .line 864
    invoke-virtual {p4}, Lcom/ss/android/ttve/model/FilterBean;->getIntensity()F

    move-result p4

    cmpl-float p4, p4, p2

    if-nez p4, :cond_70

    iget-object p4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    .line 865
    invoke-virtual {p4}, Lcom/ss/android/ttve/model/FilterBean;->getPosition()F

    move-result p4

    cmpl-float p4, p4, v1

    if-nez p4, :cond_70

    iget-object p4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    .line 866
    invoke-virtual {p4}, Lcom/ss/android/ttve/model/FilterBean;->useFilterResIntensity()Z

    move-result p4

    if-ne p4, p3, :cond_70

    .line 867
    monitor-exit v0

    return v2

    .line 870
    :cond_70
    iget-object p4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {p4, p1}, Lcom/ss/android/ttve/model/FilterBean;->setLeftResPath(Ljava/lang/String;)V

    .line 871
    iget-object p4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    const-string v3, ""

    invoke-virtual {p4, v3}, Lcom/ss/android/ttve/model/FilterBean;->setRightResPath(Ljava/lang/String;)V

    .line 872
    iget-object p4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {p4, v1}, Lcom/ss/android/ttve/model/FilterBean;->setPosition(F)V

    .line 873
    iget-object p4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {p4, p2}, Lcom/ss/android/ttve/model/FilterBean;->setIntensity(F)V

    .line 874
    iget-object p4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {p4, p2}, Lcom/ss/android/ttve/model/FilterBean;->setRightIntensity(F)V

    .line 875
    iget-object p4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {p4, p3}, Lcom/ss/android/ttve/model/FilterBean;->setUseFilterResIntensity(Z)V

    .line 876
    iget-object p4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {p4, v2}, Lcom/ss/android/ttve/model/FilterBean;->setmUseEffectV3(Z)V

    .line 877
    iget-object p4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    const-string v3, "left filter"

    invoke-virtual {p4, v1, v3, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object p4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    const-string v3, "use filter res intensity"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, v1, v3, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object p3, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget p4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    const-string v1, "left filter intensity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, p4, v1, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object p3, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget p4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    const-string v1, "right filter"

    const-string v3, ""

    invoke-virtual {p3, p4, v1, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object p3, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    const-string p4, "filter position"

    const-string v1, "1.0"

    invoke-virtual {p3, p0, p4, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 883
    new-instance p0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {p0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 884
    const-string p3, ""

    .line 885
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const/4 v1, 0x1

    if-nez p4, :cond_f6

    .line 886
    sget-object p4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 887
    array-length v3, p4

    if-lez v3, :cond_f6

    .line 888
    array-length p3, p4

    sub-int/2addr p3, v1

    aget-object p3, p4, p3

    .line 891
    :cond_f6
    const-string p4, "iesve_veeditor_set_filter_click_filter_id"

    invoke-virtual {p0, p4, p3}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 892
    const-string p3, "iesve_veeditor_set_filter_click"

    invoke-static {p3, v1, p0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 895
    const-string p0, "te_composition_filter_id"

    invoke-static {v1, p0, p1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfString(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_105
    .catchall {:try_start_3 .. :try_end_105} :catchall_19

    .line 897
    :try_start_105
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 898
    const-string p3, "filterPath"

    invoke-virtual {p0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 899
    const-string p1, "intensity"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 900
    const-string p1, "tag"

    const-string p2, "setColorFilter"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 901
    const-string p1, "vesdk_event_editor_color_filter"

    const-string p2, "behavior"

    invoke-static {p1, p0, p2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_126
    .catch Lorg/json/JSONException; {:try_start_105 .. :try_end_126} :catch_127
    .catchall {:try_start_105 .. :try_end_126} :catchall_19

    goto :goto_12b

    :catch_127
    move-exception p0

    .line 903
    :try_start_128
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 905
    :goto_12b
    monitor-exit v0

    return v2

    .line 855
    :cond_12d
    :goto_12d
    const-string p0, "VEEditor_VEFilterInvoker"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "setColorFilter... param error. intensity = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", filterPath = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    .line 856
    monitor-exit v0

    return p0

    .line 906
    :goto_14f
    monitor-exit v0
    :try_end_150
    .catchall {:try_start_128 .. :try_end_150} :catchall_19

    throw p0
.end method

.method public setColorFilter(Ljava/lang/String;Ljava/lang/String;F)I
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 829
    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/vesdk/VEFilterInvoker;->setColorFilter(Ljava/lang/String;Ljava/lang/String;FFZ)I

    move-result p0

    return p0
.end method

.method public setColorFilter(Ljava/lang/String;Ljava/lang/String;FF)I
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 834
    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/vesdk/VEFilterInvoker;->setColorFilter(Ljava/lang/String;Ljava/lang/String;FFZ)I

    move-result p0

    return p0
.end method

.method public setColorFilter(Ljava/lang/String;Ljava/lang/String;FFZ)I
    .registers 10

    .line 922
    const-string v0, "setColorFilter split..."

    const-string v1, "VEEditor_VEFilterInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    iget v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    if-gez v0, :cond_13

    .line 924
    const-string p0, "setColorFilter... mColorFilterIndex error."

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x69

    return p0

    :cond_13
    const/4 v0, 0x0

    cmpg-float v2, p4, v0

    if-ltz v2, :cond_158

    cmpg-float v0, p3, v0

    if-ltz v0, :cond_158

    .line 927
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_158

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto/16 :goto_158

    .line 932
    :cond_2a
    invoke-static {}, Lcom/ss/android/vesdk/VEEditor;->cancelCompileProbe()V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, p4, v0

    if-lez v2, :cond_34

    move p4, v0

    :cond_34
    cmpl-float v2, p3, v0

    if-lez v2, :cond_39

    move p3, v0

    .line 937
    :cond_39
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    if-nez v0, :cond_44

    .line 938
    new-instance v0, Lcom/ss/android/ttve/model/FilterBean;

    invoke-direct {v0}, Lcom/ss/android/ttve/model/FilterBean;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    .line 940
    :cond_44
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/FilterBean;->getLeftResPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    .line 941
    invoke-virtual {v0}, Lcom/ss/android/ttve/model/FilterBean;->getRightResPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    .line 942
    invoke-virtual {v0}, Lcom/ss/android/ttve/model/FilterBean;->getIntensity()F

    move-result v0

    cmpl-float v0, v0, p4

    if-nez v0, :cond_7a

    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    .line 943
    invoke-virtual {v0}, Lcom/ss/android/ttve/model/FilterBean;->getPosition()F

    move-result v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_7a

    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    .line 944
    invoke-virtual {v0}, Lcom/ss/android/ttve/model/FilterBean;->useFilterResIntensity()Z

    move-result v0

    if-ne v0, p5, :cond_7a

    return v2

    .line 948
    :cond_7a
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/model/FilterBean;->setLeftResPath(Ljava/lang/String;)V

    .line 949
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p2}, Lcom/ss/android/ttve/model/FilterBean;->setRightResPath(Ljava/lang/String;)V

    .line 950
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p3}, Lcom/ss/android/ttve/model/FilterBean;->setPosition(F)V

    .line 951
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p4}, Lcom/ss/android/ttve/model/FilterBean;->setIntensity(F)V

    .line 952
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p4}, Lcom/ss/android/ttve/model/FilterBean;->setRightIntensity(F)V

    .line 953
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p5}, Lcom/ss/android/ttve/model/FilterBean;->setUseFilterResIntensity(Z)V

    .line 954
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, v2}, Lcom/ss/android/ttve/model/FilterBean;->setmUseEffectV3(Z)V

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "leftFilterPath: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nrightFilterPath: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " position: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " intensity: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    const-string v3, "left filter"

    invoke-virtual {v0, v1, v3, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    const-string v3, "use filter res intensity"

    invoke-static {p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, v1, v3, p5}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object p5, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "left filter intensity"

    invoke-virtual {p5, v0, v1, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object p4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget p5, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    const-string v0, "right filter"

    invoke-virtual {p4, p5, v0, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object p4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p5, "filter position"

    invoke-virtual {p4, p0, p5, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 963
    new-instance p0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {p0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 966
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 p4, 0x1

    if-nez p3, :cond_134

    .line 967
    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 968
    array-length p3, p1

    if-lez p3, :cond_134

    .line 969
    array-length p3, p1

    sub-int/2addr p3, p4

    aget-object p1, p1, p3

    goto :goto_135

    :cond_134
    move-object p1, v3

    .line 972
    :goto_135
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_148

    .line 973
    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 974
    array-length p3, p2

    if-lez p3, :cond_148

    .line 975
    array-length p3, p2

    sub-int/2addr p3, p4

    aget-object v3, p2, p3

    .line 978
    :cond_148
    const-string p2, "iesve_veeditor_set_filter_slide_left_id"

    invoke-virtual {p0, p2, p1}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 979
    const-string p1, "iesve_veeditor_set_filter_slide_right_id"

    invoke-virtual {p0, p1, v3}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 980
    const-string p1, "iesve_veeditor_set_filter_slide"

    invoke-static {p1, p4, p0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    return v2

    .line 928
    :cond_158
    :goto_158
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setColorFilter... param error. intensity = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", position = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public setColorFilterIndexInternal(I)V
    .registers 2

    .line 2592
    iput p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    return-void
.end method

.method public setColorFilterNew(Ljava/lang/String;F)I
    .registers 11

    .line 986
    const-string v0, "VEEditor_VEFilterInvoker"

    const-string v1, "setColorFilterNew normal..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 988
    :try_start_a
    iget v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    if-gez v1, :cond_1c

    .line 989
    const-string p0, "VEEditor_VEFilterInvoker"

    const-string p1, "setColorFilterNew... mColorFilterIndex error."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x69

    .line 990
    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    goto/16 :goto_12e

    :cond_1c
    if-nez p1, :cond_29

    .line 993
    const-string p0, "VEEditor_VEFilterInvoker"

    const-string p1, "setColorFilterNew... param error."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    .line 994
    monitor-exit v0

    return p0

    :cond_29
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v1

    if-lez v2, :cond_30

    move p2, v1

    :cond_30
    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-gez v2, :cond_37

    const/high16 p2, -0x40800000    # -1.0f

    .line 998
    :cond_37
    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    if-nez v2, :cond_42

    .line 999
    new-instance v2, Lcom/ss/android/ttve/model/FilterBean;

    invoke-direct {v2}, Lcom/ss/android/ttve/model/FilterBean;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    .line 1001
    :cond_42
    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v2}, Lcom/ss/android/ttve/model/FilterBean;->getLeftResPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    .line 1002
    invoke-virtual {v2}, Lcom/ss/android/ttve/model/FilterBean;->getRightResPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_71

    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    .line 1003
    invoke-virtual {v2}, Lcom/ss/android/ttve/model/FilterBean;->getIntensity()F

    move-result v2

    cmpl-float v2, v2, p2

    if-nez v2, :cond_71

    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    .line 1004
    invoke-virtual {v2}, Lcom/ss/android/ttve/model/FilterBean;->getPosition()F

    move-result v2

    cmpl-float v2, v2, v1

    if-nez v2, :cond_71

    .line 1005
    monitor-exit v0

    return v3

    .line 1008
    :cond_71
    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v2, p1}, Lcom/ss/android/ttve/model/FilterBean;->setLeftResPath(Ljava/lang/String;)V

    .line 1009
    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    const-string v4, ""

    invoke-virtual {v2, v4}, Lcom/ss/android/ttve/model/FilterBean;->setRightResPath(Ljava/lang/String;)V

    .line 1010
    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v2, v1}, Lcom/ss/android/ttve/model/FilterBean;->setPosition(F)V

    .line 1011
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v1, p2}, Lcom/ss/android/ttve/model/FilterBean;->setIntensity(F)V

    .line 1012
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v1, p2}, Lcom/ss/android/ttve/model/FilterBean;->setRightIntensity(F)V

    .line 1013
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v1, v3}, Lcom/ss/android/ttve/model/FilterBean;->setUseFilterResIntensity(Z)V

    .line 1014
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ss/android/ttve/model/FilterBean;->setmUseEffectV3(Z)V

    .line 1015
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget v4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    const-string v5, "left filter"

    invoke-virtual {v1, v4, v5, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget v4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    const-string v5, "left filter intensity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget v4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    const-string v5, "right filter"

    const-string v6, ""

    invoke-virtual {v1, v4, v5, v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1018
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget v4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    const-string v5, "filter position"

    const-string v6, "1.0"

    invoke-virtual {v1, v4, v5, v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    const-string v4, "filter use v3"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, p0, v4, v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1021
    new-instance p0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {p0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 1022
    const-string v1, ""

    .line 1023
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f7

    .line 1024
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1025
    array-length v5, v4

    if-lez v5, :cond_f7

    .line 1026
    array-length v1, v4

    sub-int/2addr v1, v2

    aget-object v1, v4, v1

    .line 1029
    :cond_f7
    const-string v4, "iesve_veeditor_set_filter_click_filter_id"

    invoke-virtual {p0, v4, v1}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 1030
    const-string v1, "iesve_veeditor_set_filter_click"

    invoke-static {v1, v2, p0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 1033
    const-string p0, "te_composition_filter_id"

    invoke-static {v2, p0, p1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfString(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_106
    .catchall {:try_start_a .. :try_end_106} :catchall_19

    .line 1035
    :try_start_106
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 1036
    const-string v1, "filterPath"

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1037
    const-string p1, "intensity"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1038
    const-string p1, "tag"

    const-string p2, "setColorFilterNew"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1039
    const-string p1, "vesdk_event_editor_color_filter"

    const-string p2, "behavior"

    invoke-static {p1, p0, p2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_127
    .catch Lorg/json/JSONException; {:try_start_106 .. :try_end_127} :catch_128
    .catchall {:try_start_106 .. :try_end_127} :catchall_19

    goto :goto_12c

    :catch_128
    move-exception p0

    .line 1041
    :try_start_129
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1043
    :goto_12c
    monitor-exit v0

    return v3

    .line 1044
    :goto_12e
    monitor-exit v0
    :try_end_12f
    .catchall {:try_start_129 .. :try_end_12f} :catchall_19

    throw p0
.end method

.method public setColorFilterNew(Ljava/lang/String;Ljava/lang/String;FFF)I
    .registers 12

    .line 1049
    const-string v0, "setColorFilterNew split..."

    const-string v1, "VEEditor_VEFilterInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    if-gez v0, :cond_13

    .line 1051
    const-string p0, "setColorFilterNew... mColorFilterIndex error."

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x69

    return p0

    :cond_13
    const/4 v0, 0x0

    cmpg-float v2, p3, v0

    if-ltz v2, :cond_187

    .line 1054
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_187

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto/16 :goto_187

    .line 1059
    :cond_26
    invoke-static {}, Lcom/ss/android/vesdk/VEEditor;->cancelCompileProbe()V

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p4, v2

    if-lez v3, :cond_30

    move p4, v2

    :cond_30
    cmpl-float v3, p5, v2

    if-lez v3, :cond_35

    move p5, v2

    :cond_35
    cmpg-float v3, p4, v0

    const/high16 v4, -0x40800000    # -1.0f

    if-gez v3, :cond_3c

    move p4, v4

    :cond_3c
    cmpg-float v0, p5, v0

    if-gez v0, :cond_41

    move p5, v4

    :cond_41
    cmpl-float v0, p3, v2

    if-lez v0, :cond_46

    move p3, v2

    .line 1067
    :cond_46
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    if-nez v0, :cond_51

    .line 1068
    new-instance v0, Lcom/ss/android/ttve/model/FilterBean;

    invoke-direct {v0}, Lcom/ss/android/ttve/model/FilterBean;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    .line 1070
    :cond_51
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/FilterBean;->getLeftResPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    .line 1071
    invoke-virtual {v0}, Lcom/ss/android/ttve/model/FilterBean;->getRightResPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    .line 1072
    invoke-virtual {v0}, Lcom/ss/android/ttve/model/FilterBean;->getIntensity()F

    move-result v0

    cmpl-float v0, v0, p4

    if-nez v0, :cond_89

    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    .line 1073
    invoke-virtual {v0}, Lcom/ss/android/ttve/model/FilterBean;->getRightIntensity()F

    move-result v0

    cmpl-float v0, v0, p5

    if-nez v0, :cond_89

    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    .line 1074
    invoke-virtual {v0}, Lcom/ss/android/ttve/model/FilterBean;->getPosition()F

    move-result v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_89

    return v2

    .line 1078
    :cond_89
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/model/FilterBean;->setLeftResPath(Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p2}, Lcom/ss/android/ttve/model/FilterBean;->setRightResPath(Ljava/lang/String;)V

    .line 1080
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p3}, Lcom/ss/android/ttve/model/FilterBean;->setPosition(F)V

    .line 1081
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p4}, Lcom/ss/android/ttve/model/FilterBean;->setIntensity(F)V

    .line 1082
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p5}, Lcom/ss/android/ttve/model/FilterBean;->setRightIntensity(F)V

    .line 1083
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, v2}, Lcom/ss/android/ttve/model/FilterBean;->setUseFilterResIntensity(Z)V

    .line 1084
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/ss/android/ttve/model/FilterBean;->setmUseEffectV3(Z)V

    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "leftFilterPath: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nrightFilterPath: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " position: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "leftIntensity: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "rightIntensity: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    const-string v4, "left filter"

    invoke-virtual {v0, v1, v4, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1089
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    const-string v4, "right filter"

    invoke-virtual {v0, v1, v4, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1090
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v4, "left filter intensity"

    invoke-virtual {v0, v1, v4, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget-object p4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v1, "right filter intensity"

    invoke-virtual {p4, v0, v1, p5}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object p4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget p5, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "filter position"

    invoke-virtual {p4, p5, v0, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1093
    iget-object p3, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    const-string p4, "filter use v3"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p0, p4, p5}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1095
    new-instance p0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {p0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 1098
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_163

    .line 1099
    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1100
    array-length p3, p1

    if-lez p3, :cond_163

    .line 1101
    array-length p3, p1

    sub-int/2addr p3, v3

    aget-object p1, p1, p3

    goto :goto_164

    :cond_163
    move-object p1, v5

    .line 1104
    :goto_164
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_177

    .line 1105
    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1106
    array-length p3, p2

    if-lez p3, :cond_177

    .line 1107
    array-length p3, p2

    sub-int/2addr p3, v3

    aget-object v5, p2, p3

    .line 1110
    :cond_177
    const-string p2, "iesve_veeditor_set_filter_slide_left_id"

    invoke-virtual {p0, p2, p1}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 1111
    const-string p1, "iesve_veeditor_set_filter_slide_right_id"

    invoke-virtual {p0, p1, v5}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 1112
    const-string p1, "iesve_veeditor_set_filter_slide"

    invoke-static {p1, v3, p0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    return v2

    .line 1055
    :cond_187
    :goto_187
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setColorFilterNew... param error. position = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public setComposerMode(II)I
    .registers 6

    .line 179
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 180
    :try_start_3
    const-string v1, "VEEditor_VEFilterInvoker"

    const-string v2, "setComposerMode"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setComposerMode(II)I

    move-result p0

    if-eqz p0, :cond_2c

    .line 183
    const-string p1, "VEEditor_VEFilterInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setComposerMode failed, ret = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    monitor-exit v0

    return p0

    :catchall_2a
    move-exception p0

    goto :goto_2e

    .line 186
    :cond_2c
    monitor-exit v0

    return p0

    .line 187
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2a

    throw p0
.end method

.method public setComposerNodes([Ljava/lang/String;)I
    .registers 5

    .line 228
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 230
    :try_start_3
    const-string v1, "VEEditor_VEFilterInvoker"

    const-string v2, "setComposerNodes"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setComposerNodes([Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_2c

    .line 233
    const-string p1, "VEEditor_VEFilterInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setComposerNodes failed, ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    monitor-exit v0

    return p0

    :catchall_2a
    move-exception p0

    goto :goto_2e

    .line 236
    :cond_2c
    monitor-exit v0

    return p0

    .line 237
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2a

    throw p0
.end method

.method public setComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 7

    .line 283
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 285
    :try_start_3
    new-instance v1, Lcom/ss/android/vesdk/VEEffectParams;

    invoke-direct {v1}, Lcom/ss/android/vesdk/VEEffectParams;-><init>()V

    .line 286
    sget v2, Lcom/ss/android/vesdk/VEEffectParams;->EFFECT_TYPE_SET_COMPOSER_WITH_TAG:I

    iput v2, v1, Lcom/ss/android/vesdk/VEEffectParams;->TYPE:I

    .line 287
    iput p2, v1, Lcom/ss/android/vesdk/VEEffectParams;->intValueOne:I

    .line 288
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, v1, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    .line 289
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v1, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 290
    const-string p1, "VEEditor_VEFilterInvoker"

    const-string p2, "setComposerNodesWithTag..."

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_33
    move-exception p0

    .line 292
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public setCurColorFilterInternal(Lcom/ss/android/ttve/model/FilterBean;)V
    .registers 2

    .line 2577
    iput-object p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mCurColorFilter:Lcom/ss/android/ttve/model/FilterBean;

    return-void
.end method

.method public setCustomProcessor(Lcom/ss/android/vesdk/VEFrameCustomProcessor;)V
    .registers 2

    .line 2641
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setCustomProcessor(Lcom/ss/android/vesdk/VEFrameCustomProcessor;)I

    return-void
.end method

.method public setDldEnabled(Z)V
    .registers 2

    .line 1210
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setDldEnabled(Z)I

    return-void
.end method

.method public setDldThrVal(I)V
    .registers 2

    .line 1215
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setDldThrVal(I)I

    return-void
.end method

.method public setDleEnabled(Z)V
    .registers 2

    .line 1200
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setDleEnabled(Z)I

    return-void
.end method

.method public setDleEnabledPreview(Z)V
    .registers 2

    .line 1205
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setDleEnabledPreview(Z)I

    return-void
.end method

.method public setEffectCacheInt(ILjava/lang/String;I)I
    .registers 9

    .line 152
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 153
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEffectCacheInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_24

    .line 155
    const-string v2, "VEEditor_VEFilterInvoker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEffectCacheInt failed, ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_45

    .line 157
    :cond_24
    :goto_24
    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v3, "effect cache int key"

    invoke-virtual {v2, p1, v3, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string p2, "effect cache int value"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 159
    monitor-exit v0

    return v1

    .line 160
    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_22

    throw p0
.end method

.method public setEffectHDRFilter(ILjava/lang/String;F)I
    .registers 10

    .line 1138
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 1139
    :try_start_3
    const-string v1, "VEEditor_VEFilterInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEffectHDRFilter type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", filterPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", intensity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    iget v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mEffectHDRFilterIndex:I

    if-gez v1, :cond_33

    const/16 p0, -0x69

    .line 1141
    monitor-exit v0

    return p0

    :catchall_31
    move-exception p0

    goto :goto_91

    :cond_33
    const/4 v2, 0x0

    cmpg-float v3, p3, v2

    if-ltz v3, :cond_3a

    if-nez p2, :cond_3d

    .line 1144
    :cond_3a
    const-string p2, ""

    move p3, v2

    :cond_3d
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p3, v2

    if-lez v3, :cond_44

    move p3, v2

    .line 1150
    :cond_44
    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v3, "effect hdr type"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, v3, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1151
    iget-object p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mEffectHDRFilterIndex:I

    const-string v2, "effect hdr res path"

    invoke-virtual {p1, v1, v2, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-object p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mEffectHDRFilterIndex:I

    const-string v1, "effect hdr intensity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p0, v1, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p1, 0x0

    if-lez p0, :cond_88

    const/4 p0, 0x1

    goto :goto_89

    :cond_88
    move p0, p1

    .line 1155
    :goto_89
    const-string p2, "iesve_veeditor_set_effect_hdr"

    const/4 p3, 0x0

    invoke-static {p2, p0, p3}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 1156
    monitor-exit v0

    return p1

    .line 1157
    :goto_91
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_3 .. :try_end_92} :catchall_31

    throw p0
.end method

.method public setEffectHDRFilter(Ljava/lang/String;)I
    .registers 4

    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEffectHDRFilter filterPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor_VEFilterInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1127
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/VEFilterInvoker;->setEffectHDRFilter(Ljava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public setEffectHDRFilter(Ljava/lang/String;F)I
    .registers 5

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEffectHDRFilter filterPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", intensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor_VEFilterInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1133
    invoke-virtual {p0, v0, p1, p2}, Lcom/ss/android/vesdk/VEFilterInvoker;->setEffectHDRFilter(ILjava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public setEnableMultipleAudioFilter(Z)V
    .registers 2

    .line 2477
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEnableMultipleAudioFilter(Z)V

    return-void
.end method

.method public setFilterInTimeOffset(II)I
    .registers 7

    .line 744
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 745
    :try_start_3
    const-string v1, "VEEditor_VEFilterInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFilterOffsetIn... index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "offsetIn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_29

    const/16 p0, -0x64

    .line 748
    monitor-exit v0

    return p0

    :catchall_27
    move-exception p0

    goto :goto_37

    .line 751
    :cond_29
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v1, "filter in time offset"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    .line 752
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_27

    throw p0
.end method

.method public setHDRFilterIndexInternal(I)V
    .registers 2

    .line 2602
    iput p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mEffectHDRFilterIndex:I

    return-void
.end method

.method public setLensHDRFilter(Ljava/lang/String;D)I
    .registers 9

    .line 1162
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 1163
    :try_start_3
    const-string v1, "VEEditor_VEFilterInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLensHDRFilter modelPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", intensity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_38

    .line 1164
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 1165
    const-string v1, "VEEditor_VEFilterInvoker"

    const-string v2, "compileProbe setLensHDRFilter modelPath = null"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    invoke-static {}, Lcom/ss/android/vesdk/VEEditor;->cancelCompileProbe()V

    goto :goto_38

    :catchall_36
    move-exception p0

    goto :goto_6f

    .line 1168
    :cond_38
    :goto_38
    iget v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mLensHDRFilterIndex:I

    if-gez v1, :cond_40

    const/16 p0, -0x69

    .line 1169
    monitor-exit v0

    return p0

    :cond_40
    const-wide/16 v2, 0x0

    cmpg-double v4, p2, v2

    if-ltz v4, :cond_48

    if-nez p1, :cond_4b

    .line 1173
    :cond_48
    const-string p1, ""

    move-wide p2, v2

    .line 1176
    :cond_4b
    iget-object v2, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v3, "lens hdr model path"

    invoke-virtual {v2, v1, v3, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-object p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mLensHDRFilterIndex:I

    const-string v1, "lens hdr indensity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 1179
    monitor-exit v0

    return p0

    .line 1180
    :goto_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_3 .. :try_end_70} :catchall_36

    throw p0
.end method

.method public setLensHDRFilterIndexInternal(I)V
    .registers 2

    .line 2612
    iput p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mLensHDRFilterIndex:I

    return-void
.end method

.method public setMaleMakeupState(Z)I
    .registers 4

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMaleMakeupState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor_VEFilterInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setMaleMakeupState(Z)I

    move-result p0

    if-eqz p0, :cond_32

    .line 1188
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMaleMakeupState failed, ret = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    return p0
.end method

.method public setMusicSrtEffect(Lcom/ss/android/vesdk/VEMusicSRTEffectParam;)I
    .registers 3

    const/4 v0, 0x0

    .line 2496
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/VEFilterInvoker;->setMusicSrtEffect(Lcom/ss/android/vesdk/VEMusicSRTEffectParam;Z)I

    move-result p0

    return p0
.end method

.method public setMusicSrtEffect(Lcom/ss/android/vesdk/VEMusicSRTEffectParam;Z)I
    .registers 11

    .line 2502
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    if-eqz v0, :cond_4d

    .line 2503
    iget v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mMusicSRTEffectFilterIndex:I

    if-gtz v1, :cond_33

    const/4 v7, 0x0

    .line 2504
    filled-new-array {v7}, [I

    move-result-object v1

    const-string v2, "music srt effect filter"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v7}, [I

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    .line 2505
    invoke-virtual {v4}, Lcom/ss/android/vesdk/VEEditor;->getOutPoint()I

    move-result v4

    filled-new-array {v4}, [I

    move-result-object v4

    filled-new-array {v7}, [I

    move-result-object v5

    const/16 v6, 0xa

    filled-new-array {v6}, [I

    move-result-object v6

    .line 2504
    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I)[I

    move-result-object v0

    .line 2507
    aget v0, v0, v7

    iput v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mMusicSRTEffectFilterIndex:I

    .line 2509
    :cond_33
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mMusicSRTEffectFilterIndex:I

    const-string v2, "music srt effect para"

    invoke-virtual {v0, v1, v2, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Lcom/ss/android/vesdk/VEMusicSRTEffectParam;)I

    move-result p1

    .line 2510
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mMusicSRTEffectFilterIndex:I

    const-string v1, "music srt use composer"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    add-int/2addr p1, p0

    return p1

    :cond_4d
    const/4 p0, -0x1

    return p0
.end method

.method public setMusicSrtIndexInternal(I)V
    .registers 2

    .line 2632
    iput p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mMusicSRTEffectFilterIndex:I

    return-void
.end method

.method public setTrackFilterEnable(IZZ)I
    .registers 8

    .line 757
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 758
    :try_start_3
    const-string v1, "VEEditor_VEFilterInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTrackFilterEnable... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTrackFilterEnable(IZZ)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_31
    move-exception p0

    .line 760
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public setTransitionAt(JLjava/lang/String;)I
    .registers 12

    if-nez p3, :cond_4

    .line 1223
    const-string p3, ""

    .line 1225
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTransitionAt transTimePoint"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", transName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VEEditor_VEFilterInvoker"

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->getBusinessManager()Lcom/ss/android/ttve/biz/TEBaseBusinessManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/ttve/biz/TEBaseBusinessManager;->getTransitionTrackIndexs()[I

    move-result-object v0

    .line 1228
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_2f
    if-ge v5, v3, :cond_69

    aget v6, v0, v5

    .line 1229
    iget-object v7, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v7, v6, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTransitionAt(IJLjava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_66

    .line 1231
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setTransitionAt trackIndex"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", transTimePoint: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed, result = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_66
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 1235
    :cond_69
    iget-object p1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 1236
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, v4}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result p0

    return p0
.end method

.method public startEffectMonitor()V
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 166
    :try_start_3
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->startEffectMonitor()I

    .line 167
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public stopEffectMonitor()V
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 173
    :try_start_3
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->stopEffectMonitor()I

    .line 174
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public updateAICutOutClipParam(IILcom/ss/android/vesdk/clipparam/VEAICutOutClipParam;)I
    .registers 8

    .line 764
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 765
    :try_start_3
    const-string v1, "VEEditor_VEFilterInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAIProcessFilter... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-object v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/ss/android/ttve/common/TETrackIndexManager;->getNativeTrackIndex(II)I

    move-result p1

    .line 767
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateAICutOutClipParam(IILcom/ss/android/vesdk/clipparam/VEAICutOutClipParam;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_34
    move-exception p0

    .line 768
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public updateClipFilterTime(IIII)I
    .registers 7

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateClipFilterTime, filterIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "clipIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor_VEFilterInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateFilterTime(IIII)I

    move-result p0

    return p0
.end method

.method public updateComposerNode(Ljava/lang/String;Ljava/lang/String;F)I
    .registers 7

    .line 192
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 194
    :try_start_3
    const-string v1, "VEEditor_VEFilterInvoker"

    const-string v2, "updateComposerNode"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateComposerNode(Ljava/lang/String;Ljava/lang/String;F)I

    move-result p0

    if-eqz p0, :cond_2c

    .line 197
    const-string p1, "VEEditor_VEFilterInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateComposerNode failed, ret = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    monitor-exit v0

    return p0

    :catchall_2a
    move-exception p0

    goto :goto_2e

    .line 200
    :cond_2c
    monitor-exit v0

    return p0

    .line 201
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2a

    throw p0
.end method

.method public updateFiltersInternal()V
    .registers 6

    .line 2559
    const-string v0, "VEEditor_VEFilterInvoker"

    const-string v1, "updateFilters"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2561
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v0

    .line 2562
    iget v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mColorFilterIndex:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-le v1, v3, :cond_18

    .line 2563
    iget-object v4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v4, v1, v2, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->adjustFilterInOut(III)I

    .line 2566
    :cond_18
    iget v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mEffectHDRFilterIndex:I

    if-le v1, v3, :cond_21

    .line 2567
    iget-object v4, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v4, v1, v2, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->adjustFilterInOut(III)I

    .line 2570
    :cond_21
    iget v1, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mLensHDRFilterIndex:I

    if-le v1, v3, :cond_2a

    .line 2571
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, v1, v2, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->adjustFilterInOut(III)I

    :cond_2a
    return-void
.end method

.method public updateLoudnessFilter(IF)V
    .registers 4

    .line 2469
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v0, "audio_loudness_volume"

    .line 2472
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    .line 2469
    invoke-virtual {p0, p1, v0, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateMultiComposerNodes(I[Ljava/lang/String;[Ljava/lang/String;[F)I
    .registers 8

    .line 206
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    if-eqz p1, :cond_31

    .line 207
    :try_start_5
    array-length v1, p2

    array-length v2, p3

    if-ne v1, v2, :cond_31

    array-length v1, p3

    array-length v2, p4

    if-eq v1, v2, :cond_e

    goto :goto_31

    .line 210
    :cond_e
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateMultiComposerNodes(I[Ljava/lang/String;[Ljava/lang/String;[F)I

    move-result p0

    if-eqz p0, :cond_2f

    .line 212
    const-string p1, "VEEditor_VEFilterInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateMultiComposerNodes failed, ret = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    :catchall_2d
    move-exception p0

    goto :goto_35

    .line 214
    :cond_2f
    :goto_2f
    monitor-exit v0

    return p0

    :cond_31
    :goto_31
    const/16 p0, -0x64

    .line 208
    monitor-exit v0

    return p0

    .line 215
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_2d

    throw p0
.end method

.method public updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I
    .registers 8

    .line 695
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 696
    :try_start_3
    const-string v1, "VEEditor_VEFilterInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateClipFilterParam, clipIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",filterIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget v1, p3, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterType:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v2, :cond_3b

    .line 699
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mAudioEffectHandler:Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;

    if-nez p0, :cond_36

    .line 700
    const-string p0, "VEEditor_VEFilterInvoker"

    const-string p1, "DON\'T SUPPORT AUDIO EFFECT!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    monitor-exit v0

    return v3

    :catchall_34
    move-exception p0

    goto :goto_47

    .line 703
    :cond_36
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;->updateAudioFilterParam(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    goto :goto_41

    .line 705
    :cond_3b
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateFilterParam(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    :goto_41
    if-gez p0, :cond_44

    goto :goto_45

    :cond_44
    const/4 v3, 0x0

    .line 708
    :goto_45
    monitor-exit v0

    return v3

    .line 709
    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_34

    throw p0
.end method

.method public updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I
    .registers 7

    .line 714
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 715
    :try_start_3
    const-string v1, "VEEditor_VEFilterInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTrackFilterParam, filterIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", param = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget v1, p2, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterType:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v2, :cond_3f

    .line 718
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mAudioEffectHandler:Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;

    if-nez p0, :cond_3a

    .line 719
    const-string p0, "VEEditor_VEFilterInvoker"

    const-string p1, "DON\'T SUPPORT AUDIO EFFECT!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    monitor-exit v0

    return v3

    :catchall_38
    move-exception p0

    goto :goto_4b

    .line 722
    :cond_3a
    invoke-virtual {p0, v3, p1, p2}, Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;->updateAudioFilterParam(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    goto :goto_45

    .line 724
    :cond_3f
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, v3, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateFilterParam(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    :goto_45
    if-gez p0, :cond_48

    goto :goto_49

    :cond_48
    const/4 v3, 0x0

    .line 726
    :goto_49
    monitor-exit v0

    return v3

    .line 727
    :goto_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_38

    throw p0
.end method

.method public updateTrackFilterTime(III)I
    .registers 6

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTrackFilterTime, filterIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sequenceIn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sequenceOut: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor_VEFilterInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFilterInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateFilterTime(IIII)I

    move-result p0

    return p0
.end method
