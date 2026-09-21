.class public Lcom/ss/android/vesdk/VEStickerInvoker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/internal/IVESticker;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final ADD_IMAGE_STICKER_WITH_RATIO:I = 0x1

.field private static final ADD_IMAGE_STICKER_WITH_SIZE:I = 0x0

.field private static final EFFECT_FACE_INDEX:Ljava/lang/String; = "effect face index"

.field private static final EFFECT_FONT_PATH:Ljava/lang/String; = "effect font path"

.field private static final EFFECT_INPUTTEXT:Ljava/lang/String; = "effect inputtext"

.field private static final EFFECT_INPUTTEXT_ARG1:Ljava/lang/String; = "effect inputtext arg1"

.field private static final EFFECT_INPUTTEXT_ARG2:Ljava/lang/String; = "effect inputtext arg2"

.field private static final EFFECT_INPUTTEXT_ARG3:Ljava/lang/String; = "effect inputtext arg3"

.field private static final EFFECT_SYNC_LOAD_RESOURCE:Ljava/lang/String; = "effect sync load resource"

.field private static final ENTITY_ALPHA:Ljava/lang/String; = "entity alpha"

.field private static final ENTITY_AUDIO_START_TIME:Ljava/lang/String; = "entity audio start time"

.field private static final ENTITY_DATA_FORCE_UPDATE:Ljava/lang/String; = "entity data force update"

.field private static final ENTITY_END_TIME:Ljava/lang/String; = "entity end time"

.field private static final ENTITY_FLIP_X:Ljava/lang/String; = "entity flip x"

.field private static final ENTITY_FLIP_Y:Ljava/lang/String; = "entity flip y"

.field private static final ENTITY_LAYER:Ljava/lang/String; = "entity layer"

.field private static final ENTITY_POSITION_X:Ljava/lang/String; = "entity position x"

.field private static final ENTITY_POSITION_Y:Ljava/lang/String; = "entity position y"

.field private static final ENTITY_ROTATION:Ljava/lang/String; = "entity rotation"

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

.field private static final ENTITY_START_TIME:Ljava/lang/String; = "entity start time"

.field private static final ENTITY_TEMPLATE_PARAM:Ljava/lang/String; = "entity template param"

.field private static final ENTITY_VISIBLE:Ljava/lang/String; = "entity visible"

.field private static final TAG:Ljava/lang/String; = "VEEditor_VEStickerInvoker"


# instance fields
.field private final mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

.field private final mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

.field private mStickerAnimationPreviewDuration:I

.field private mStickerAnimationPreviewFps:F

.field private final mVEEditor:Lcom/ss/android/vesdk/VEEditor;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/VEEditor;)V
    .registers 5

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    .line 88
    iput v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mStickerAnimationPreviewDuration:I

    const/high16 v0, 0x41f00000    # 30.0f

    .line 89
    iput v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mStickerAnimationPreviewFps:F

    .line 96
    iput-object p1, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    .line 97
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEEditor;->getInternalNativeEditor()Lcom/ss/android/ttve/nativePort/TEInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    .line 98
    new-instance v0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getNativeHandler()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;-><init>(J)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    return-void
.end method


# virtual methods
.method public addEmojiSticker(Ljava/lang/String;)I
    .registers 4

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addEmojiSticker... utf8Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor_VEStickerInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 179
    const-string p0, "addEmojiSticker error, utf8Code is null"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0

    .line 182
    :cond_24
    const-string v0, "lv_emoji"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/VEStickerInvoker;->addInfoSticker(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public addExtRes(Ljava/lang/String;IIIIFFFF)I
    .registers 25

    move/from16 v0, p2

    .line 636
    const-string v1, "VEEditor_VEStickerInvoker"

    const-string v2, "addSticker..."

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v1, p3

    if-gt v0, v1, :cond_48

    if-ltz v0, :cond_48

    .line 637
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_48

    :cond_16
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 641
    const-string v4, "iesve_veeditor_import_sticker"

    invoke-static {v4, v2, v3}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 643
    iget-object v2, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0}, [I

    move-result-object v0

    filled-new-array {v1}, [I

    move-result-object v4

    filled-new-array/range {p4 .. p4}, [I

    move-result-object v5

    filled-new-array/range {p5 .. p5}, [I

    move-result-object v6

    move/from16 v1, p8

    float-to-double v7, v1

    move/from16 v1, p9

    float-to-double v9, v1

    move/from16 v1, p6

    float-to-double v11, v1

    move/from16 v1, p7

    float-to-double v13, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v2

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v14}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->addSticker([Ljava/lang/String;[Ljava/lang/String;[I[I[I[IDDDD)I

    move-result v0

    return v0

    :cond_48
    :goto_48
    const/16 v0, -0x64

    return v0
.end method

.method public addImageSticker(Ljava/lang/String;FFFF)I
    .registers 9

    .line 219
    const-string v0, "VEEditor_VEStickerInvoker"

    const-string v1, "addImageSticker..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x64

    return p0

    .line 224
    :cond_10
    const-string v0, "iesve_veeditor_import_sticker"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 227
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    .line 228
    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p3

    .line 229
    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {p5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 231
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p2, p3, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p2

    .line 234
    :try_start_30
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 235
    const-string v0, "path"

    invoke-virtual {p3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    const-string v0, "width"

    float-to-double v1, p4

    invoke-virtual {p3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 237
    const-string p4, "height"

    float-to-double v0, p5

    invoke-virtual {p3, p4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 238
    const-string p4, "vesdk_event_editor_image_sticker"

    const-string p5, "behavior"

    invoke-static {p4, p3, p5}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_4d} :catch_4e

    goto :goto_52

    :catch_4e
    move-exception p3

    .line 240
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 243
    :goto_52
    iget-object p3, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter p3

    .line 244
    :try_start_55
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->addInfoSticker(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    monitor-exit p3

    return p0

    :catchall_5d
    move-exception p0

    .line 245
    monitor-exit p3
    :try_end_5f
    .catchall {:try_start_55 .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public addImageStickerWithRatio(Ljava/lang/String;FFFF)I
    .registers 9

    .line 250
    const-string v0, "VEEditor_VEStickerInvoker"

    const-string v1, "addImageStickerWithRatio..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x64

    return p0

    .line 255
    :cond_10
    const-string v0, "iesve_veeditor_import_sticker"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 258
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    .line 259
    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p3

    .line 260
    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p4

    .line 261
    invoke-static {p5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p5

    .line 262
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, p3, p4, p5, v0}, [Ljava/lang/String;

    move-result-object p2

    .line 264
    iget-object p3, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter p3

    .line 265
    :try_start_32
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->addInfoSticker(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    monitor-exit p3

    return p0

    :catchall_3a
    move-exception p0

    .line 266
    monitor-exit p3
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public addInfoSticker(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    .line 107
    const-string v0, "VEEditor_VEStickerInvoker"

    const-string v1, "addInfoSticker..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x64

    return p0

    .line 112
    :cond_10
    const-string v0, "iesve_veeditor_import_sticker"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 114
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 115
    :try_start_1a
    iget-object v1, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {v1, p1, p2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->addInfoSticker(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 116
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_68

    .line 119
    new-instance v0, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;

    invoke-direct {v0}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;-><init>()V

    .line 120
    iput-object p1, v0, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;->path:Ljava/lang/String;

    .line 121
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->getTEMonitorFilterMgr()Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    move-result-object p0

    invoke-virtual {p0, v2, p2, v0}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->addFilter(IILcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;)V

    .line 122
    const-string p0, "VEEditor_VEStickerInvoker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addInfoSticker success with index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :try_start_47
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 125
    const-string v0, "path"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string p1, "resultCode"

    if-ltz p2, :cond_57

    const/4 v0, 0x0

    goto :goto_58

    :cond_57
    const/4 v0, -0x1

    :goto_58
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 127
    const-string p1, "vesdk_event_editor_info_sticker"

    const-string v0, "behavior"

    invoke-static {p1, p0, v0}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_47 .. :try_end_62} :catch_63

    return p2

    :catch_63
    move-exception p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return p2

    :catchall_68
    move-exception p0

    .line 116
    :try_start_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw p0
.end method

.method public addInfoStickerOrEmoji(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addInfoStickerOrEmoji... path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", utf8Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor_VEStickerInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 201
    invoke-virtual {p0, p2}, Lcom/ss/android/vesdk/VEStickerInvoker;->addEmojiSticker(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 203
    :cond_29
    const-string p2, "default"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEStickerInvoker;->addInfoSticker(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public addInfoStickerTemplate(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 751
    const-string v0, "VEEditor_VEStickerInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addInfoStickerTemplate ... path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/16 p0, -0x64

    return p0

    .line 756
    :cond_27
    const-string v0, "iesve_veeditor_import_sticker"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 758
    const-string v0, "lv_info_sticker_template"

    .line 759
    filled-new-array {v0, p2}, [Ljava/lang/String;

    move-result-object p2

    .line 762
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 763
    :try_start_37
    iget-object v1, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {v1, p1, p2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->addInfoSticker(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 764
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_85

    .line 767
    new-instance v0, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;

    invoke-direct {v0}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;-><init>()V

    .line 768
    iput-object p1, v0, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;->path:Ljava/lang/String;

    .line 769
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->getTEMonitorFilterMgr()Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    move-result-object p0

    invoke-virtual {p0, v2, p2, v0}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->addFilter(IILcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;)V

    .line 770
    const-string p0, "VEEditor_VEStickerInvoker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addInfoStickerTemplate success with index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :try_start_64
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 773
    const-string v0, "path"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 774
    const-string p1, "resultCode"

    if-ltz p2, :cond_74

    const/4 v0, 0x0

    goto :goto_75

    :cond_74
    const/4 v0, -0x1

    :goto_75
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 775
    const-string p1, "vesdk_event_editor_info_sticker"

    const-string v0, "behavior"

    invoke-static {p1, p0, v0}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_7f
    .catch Lorg/json/JSONException; {:try_start_64 .. :try_end_7f} :catch_80

    return p2

    :catch_80
    move-exception p0

    .line 777
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return p2

    :catchall_85
    move-exception p0

    .line 764
    :try_start_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw p0
.end method

.method public addInfoStickerWithBuffer()I
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 211
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    const-string v2, "addInfoStickerWithBuffer..."

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->addInfoStickerWithBuffer()I

    move-result p0

    .line 213
    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public addInfoStickerWithInitInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 11

    .line 659
    const-string v0, "VEEditor_VEStickerInvoker"

    const-string v1, "addInfoStickerWithInitInfo ..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x64

    return p0

    .line 664
    :cond_10
    const-string v0, "iesve_veeditor_import_sticker"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 667
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    if-nez p2, :cond_21

    move v3, v1

    goto :goto_22

    .line 668
    :cond_21
    array-length v3, p2

    :goto_22
    const/4 v4, 0x5

    .line 669
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v5, v1

    :goto_28
    if-ge v5, v4, :cond_3a

    if-ge v5, v3, :cond_32

    .line 672
    aget-object v6, p2, v5

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 674
    :cond_32
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_3a
    const/4 p2, 0x4

    .line 677
    invoke-virtual {v0, p2, p3}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 678
    new-array p2, v1, [Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 679
    const-string p3, "VEEditor_VEStickerInvoker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addInfoStickerWithInitInfo ... params: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object p3, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter p3

    .line 683
    :try_start_63
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->addInfoSticker(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 684
    monitor-exit p3
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_b0

    .line 687
    new-instance p3, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;

    invoke-direct {p3}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;-><init>()V

    .line 688
    iput-object p1, p3, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;->path:Ljava/lang/String;

    .line 689
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->getTEMonitorFilterMgr()Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    move-result-object p0

    invoke-virtual {p0, v2, p2, p3}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->addFilter(IILcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;)V

    .line 690
    const-string p0, "VEEditor_VEStickerInvoker"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addInfoStickerWithInitInfo success with index "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :try_start_90
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 693
    const-string p3, "path"

    invoke-virtual {p0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 694
    const-string p1, "resultCode"

    if-ltz p2, :cond_9f

    goto :goto_a0

    :cond_9f
    const/4 v1, -0x1

    :goto_a0
    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 695
    const-string p1, "vesdk_event_editor_info_sticker"

    const-string p3, "behavior"

    invoke-static {p1, p0, p3}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_aa
    .catch Lorg/json/JSONException; {:try_start_90 .. :try_end_aa} :catch_ab

    return p2

    :catch_ab
    move-exception p0

    .line 697
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return p2

    :catchall_b0
    move-exception p0

    .line 684
    :try_start_b1
    monitor-exit p3
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw p0
.end method

.method public addSticker(Ljava/lang/String;IIFFFF)I
    .registers 18

    const/4 v4, 0x0

    sub-int v5, p3, p2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 615
    invoke-virtual/range {v0 .. v9}, Lcom/ss/android/vesdk/VEStickerInvoker;->addSticker(Ljava/lang/String;IIIIFFFF)I

    move-result p0

    return p0
.end method

.method public addSticker(Ljava/lang/String;IIIIFFFF)I
    .registers 25

    move/from16 v0, p2

    .line 621
    const-string v1, "VEEditor_VEStickerInvoker"

    const-string v2, "addSticker..."

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v1, p3

    if-gt v0, v1, :cond_48

    if-ltz v0, :cond_48

    .line 622
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_48

    :cond_16
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 626
    const-string v4, "iesve_veeditor_import_sticker"

    invoke-static {v4, v2, v3}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 628
    iget-object v2, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0}, [I

    move-result-object v0

    filled-new-array {v1}, [I

    move-result-object v4

    filled-new-array/range {p4 .. p4}, [I

    move-result-object v5

    filled-new-array/range {p5 .. p5}, [I

    move-result-object v6

    move/from16 v1, p8

    float-to-double v7, v1

    move/from16 v1, p9

    float-to-double v9, v1

    move/from16 v1, p6

    float-to-double v11, v1

    move/from16 v1, p7

    float-to-double v13, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v2

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v14}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->addSticker([Ljava/lang/String;[Ljava/lang/String;[I[I[I[IDDDD)I

    move-result v0

    return v0

    :cond_48
    :goto_48
    const/16 v0, -0x64

    return v0
.end method

.method public addTextSticker(Ljava/lang/String;)I
    .registers 5

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 152
    const-string p0, "VEEditor_VEStickerInvoker"

    const-string p1, "addTextSticker error, json is null"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0

    .line 156
    :cond_10
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 157
    :try_start_13
    const-string v1, "VEEditor_VEStickerInvoker"

    const-string v2, "addTextSticker..."

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "lv_new_text"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-virtual {p0, p1, v1}, Lcom/ss/android/vesdk/VEStickerInvoker;->addInfoSticker(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 160
    monitor-exit v0

    return p0

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public addTextStickerWithInitInfo(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 704
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, -0x64

    if-eqz v0, :cond_10

    .line 705
    const-string p0, "VEEditor_VEStickerInvoker"

    const-string p1, "addTextSticker error, json is null"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 709
    :cond_10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 710
    const-string p0, "VEEditor_VEStickerInvoker"

    const-string p1, "addTextSticker error, initInfoJson is null"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 715
    :cond_1e
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 716
    :try_start_21
    const-string v1, "VEEditor_VEStickerInvoker"

    const-string v2, "addTextSticker..."

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v1, "lv_new_text"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 718
    invoke-virtual {p0, p1, v1, p2}, Lcom/ss/android/vesdk/VEStickerInvoker;->addInfoStickerWithInitInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 719
    monitor-exit v0

    return p0

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_21 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public begin2DBrush()I
    .registers 1

    .line 1086
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->begin2DBrush()I

    move-result p0

    return p0
.end method

.method public beginInfoStickerPin(I)I
    .registers 5

    .line 850
    const-string v0, "VEEditor_VEStickerInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infoStickerPin beginInfoStickerPin... index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    if-gez p1, :cond_21

    const/16 p0, -0x64

    .line 853
    :try_start_1d
    monitor-exit v0

    return p0

    :catchall_1f
    move-exception p0

    goto :goto_43

    .line 856
    :cond_21
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->beginInfoStickerPin(I)I

    move-result p0

    if-gez p0, :cond_41

    .line 858
    const-string p1, "VEEditor_VEStickerInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infoStickerPin beginInfoStickerPin... faild ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    monitor-exit v0

    return p0

    .line 861
    :cond_41
    monitor-exit v0

    return p0

    .line 862
    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_1d .. :try_end_44} :catchall_1f

    throw p0
.end method

.method public cancelInfoStickerPin(I)I
    .registers 5

    .line 867
    const-string v0, "VEEditor_VEStickerInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infoStickerPin cancelInfoStickerPin... index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    if-gez p1, :cond_21

    const/16 p0, -0x64

    .line 870
    :try_start_1d
    monitor-exit v0

    return p0

    :catchall_1f
    move-exception p0

    goto :goto_43

    .line 872
    :cond_21
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->cancelInfoStickerPin(I)I

    move-result p0

    if-gez p0, :cond_41

    .line 874
    const-string p1, "VEEditor_VEStickerInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infoStickerPin cancelInfoStickerPin... faild ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    monitor-exit v0

    return p0

    .line 877
    :cond_41
    monitor-exit v0

    return p0

    .line 878
    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_1d .. :try_end_44} :catchall_1f

    throw p0
.end method

.method public clearNativeFromSticker()V
    .registers 1

    .line 1132
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->clearNative()V

    return-void
.end method

.method public deleteSticker(I)I
    .registers 4

    .line 591
    const-string v0, "VEEditor_VEStickerInvoker"

    const-string v1, "deleteSticker..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_c

    const/16 p0, -0x64

    return p0

    .line 595
    :cond_c
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->deleteSticker(I)I

    move-result p0

    return p0
.end method

.method public enableStickerAnimationPreview(IZ)I
    .registers 7

    .line 530
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 531
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableStickerAnimationPreview index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->enableStickerAnimationPreview(IZ)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_29
    move-exception p0

    .line 533
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public enableStickerResourceLoadSync(IZ)I
    .registers 4

    .line 556
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v0, "effect sync load resource"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public end2DBrush(Ljava/lang/String;)I
    .registers 2

    .line 1091
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->end2DBrush(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public forceUpdateInfoSticker(IZ)I
    .registers 7

    .line 725
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 726
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceUpdateInfoSticker... index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_21

    const/16 p0, -0x64

    .line 729
    monitor-exit v0

    return p0

    :catchall_1f
    move-exception p0

    goto :goto_32

    .line 732
    :cond_21
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v1, "entity data force update"

    if-eqz p2, :cond_2a

    const-string p2, "true"

    goto :goto_2c

    :cond_2a
    const-string p2, "false"

    :goto_2c
    invoke-virtual {p0, p1, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 733
    monitor-exit v0

    return p0

    .line 734
    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_1f

    throw p0
.end method

.method public get2DBrushStrokeCount()I
    .registers 1

    .line 1127
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->get2DBrushStrokeCount()I

    move-result p0

    return p0
.end method

.method public getInfoStickerBoundingBox(I)[F
    .registers 6

    .line 166
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 167
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInfoStickerBoundingBox... index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_25

    .line 171
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->getInfoStickerBoundingBox(I)[F

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_23
    move-exception p0

    goto :goto_2f

    .line 169
    :cond_25
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const-string p1, ""

    const/16 v1, -0x64

    invoke-direct {p0, v1, p1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 172
    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_23

    throw p0
.end method

.method public getInfoStickerBoundingBoxWithoutRotate(I)[F
    .registers 6

    .line 188
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 189
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInfoStickerBoundingBox... index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_26

    .line 193
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->getInfoStickerBoundingBox(IZ)[F

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_24
    move-exception p0

    goto :goto_30

    .line 191
    :cond_26
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const-string p1, ""

    const/16 v1, -0x64

    invoke-direct {p0, v1, p1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 194
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_24

    throw p0
.end method

.method public getInfoStickerFlip(I[Z)I
    .registers 6

    .line 434
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 435
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    const-string v2, "getInfoStickerFlip..."

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_1b

    .line 436
    array-length v1, p2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    goto :goto_1b

    .line 439
    :cond_11
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->getInfoStickerFlip(I[Z)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    goto :goto_1f

    :cond_1b
    :goto_1b
    const/16 p0, -0x64

    .line 437
    monitor-exit v0

    return p0

    .line 440
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_19

    throw p0
.end method

.method public getInfoStickerIsDynamic(I)Z
    .registers 2

    .line 1137
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->getInfoStickerIsDynamic(I)Z

    move-result p0

    return p0
.end method

.method public getInfoStickerPinData(I[Ljava/nio/ByteBuffer;)I
    .registers 6

    .line 915
    const-string v0, "VEEditor_VEStickerInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infoStickerPin getInfoStickerPinData... index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    if-gez p1, :cond_21

    const/16 p0, -0x64

    .line 918
    :try_start_1d
    monitor-exit v0

    return p0

    :catchall_1f
    move-exception p0

    goto :goto_34

    .line 920
    :cond_21
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->getInfoStickerPinData(I[Ljava/nio/ByteBuffer;)I

    move-result p0

    if-gez p0, :cond_32

    .line 922
    const-string p1, "VEEditor_VEStickerInvoker"

    const-string p2, "infoStickerPin getInfoStickerPinData... faild "

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    monitor-exit v0

    return p0

    .line 925
    :cond_32
    monitor-exit v0

    return p0

    .line 926
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_1f

    throw p0
.end method

.method public getInfoStickerPinState(I)I
    .registers 5

    .line 931
    const-string v0, "VEEditor_VEStickerInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infoStickerPin getInfoStickerPinState... index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    if-gez p1, :cond_21

    const/16 p0, -0x64

    .line 934
    :try_start_1d
    monitor-exit v0

    return p0

    :catchall_1f
    move-exception p0

    goto :goto_59

    .line 936
    :cond_21
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->getInfoStickerPinState(I)I

    move-result p0

    if-gez p0, :cond_41

    .line 938
    const-string p1, "VEEditor_VEStickerInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infoStickerPin getInfoStickerPinState... faild ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    monitor-exit v0

    return p0

    .line 941
    :cond_41
    const-string p1, "VEEditor_VEStickerInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infoStickerPin getInfoStickerPinState... state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    monitor-exit v0

    return p0

    .line 943
    :goto_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_1d .. :try_end_5a} :catchall_1f

    throw p0
.end method

.method public getInfoStickerPosition(I[F)I
    .registers 6

    .line 445
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 446
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    const-string v2, "getInfoStickerPosition..."

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_1b

    .line 447
    array-length v1, p2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    goto :goto_1b

    .line 450
    :cond_11
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->getInfoStickerPosition(I[F)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    goto :goto_1f

    :cond_1b
    :goto_1b
    const/16 p0, -0x64

    .line 448
    monitor-exit v0

    return p0

    .line 451
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_19

    throw p0
.end method

.method public getInfoStickerRotate(I)F
    .registers 5

    .line 485
    const-string v0, "VEEditor_VEStickerInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infoStickerPin getInfoStickerRotate... index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    if-gez p1, :cond_21

    const/high16 p0, -0x3d380000    # -100.0f

    .line 488
    :try_start_1d
    monitor-exit v0

    return p0

    :catchall_1f
    move-exception p0

    goto :goto_3f

    .line 490
    :cond_21
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->getInfoStickerRotate(I)F

    move-result p0

    .line 491
    const-string p1, "VEEditor_VEStickerInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infoStickerPin getInfoStickerRotate... ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    monitor-exit v0

    return p0

    .line 493
    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_1d .. :try_end_40} :catchall_1f

    throw p0
.end method

.method public getInfoStickerScale(I)F
    .registers 5

    .line 469
    const-string v0, "VEEditor_VEStickerInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infoStickerPin getInfoStickerScale... index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    if-gez p1, :cond_21

    const/high16 p0, -0x3d380000    # -100.0f

    .line 472
    :try_start_1d
    monitor-exit v0

    return p0

    :catchall_1f
    move-exception p0

    goto :goto_46

    .line 474
    :cond_21
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->getInfoStickerScale(I)F

    move-result p0

    const/4 p1, 0x0

    cmpg-float p1, p0, p1

    if-gez p1, :cond_44

    .line 476
    const-string p1, "VEEditor_VEStickerInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infoStickerPin getInfoStickerScale... faild ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    monitor-exit v0

    return p0

    .line 479
    :cond_44
    monitor-exit v0

    return p0

    .line 480
    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_1d .. :try_end_47} :catchall_1f

    throw p0
.end method

.method public getInfoStickerTemplateParams(I)Ljava/lang/String;
    .registers 6

    .line 784
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 785
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInfoStickerTemplateParams... index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_25

    .line 789
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->getInfoStickerTemplateParam(I)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_23
    move-exception p0

    goto :goto_2f

    .line 787
    :cond_25
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const-string p1, ""

    const/16 v1, -0x64

    invoke-direct {p0, v1, p1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 790
    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_23

    throw p0
.end method

.method public getInfoStickerTemplateParams(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 795
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 796
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getInfoStickerTemplateParams] path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2d

    .line 800
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->getInfoStickerTemplateParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_2b
    move-exception p0

    goto :goto_37

    .line 798
    :cond_2d
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const-string p1, "empty or blank path"

    const/16 v1, -0x64

    invoke-direct {p0, v1, p1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 801
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_2b

    throw p0
.end method

.method public getInfoStickerVisible(I)Z
    .registers 5

    .line 456
    const-string v0, "VEEditor_VEStickerInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infoStickerPin getInfoStickerVisible... index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    if-gez p1, :cond_20

    const/4 p0, 0x1

    .line 459
    :try_start_1c
    monitor-exit v0

    return p0

    :catchall_1e
    move-exception p0

    goto :goto_3e

    .line 461
    :cond_20
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->getInfoStickerVisible(I)Z

    move-result p0

    .line 462
    const-string p1, "VEEditor_VEStickerInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infoStickerPin  getInfoStickerVisible... ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    monitor-exit v0

    return p0

    .line 464
    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_1c .. :try_end_3f} :catchall_1e

    throw p0
.end method

.method public getSrtInfoStickerInitPosition(I[F)I
    .registers 6

    .line 1052
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 1053
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    const-string v2, "getSrtInfoStickerInitPosition..."

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_1b

    .line 1054
    array-length v1, p2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    goto :goto_1b

    .line 1057
    :cond_11
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->getSrtInfoStickerInitPosition(I[F)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    goto :goto_1f

    :cond_1b
    :goto_1b
    const/16 p0, -0x64

    .line 1055
    monitor-exit v0

    return p0

    .line 1058
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_19

    throw p0
.end method

.method public getTextContent(Lcom/ss/android/vesdk/VEEditor$OnARTextContentCallback;)I
    .registers 2

    .line 821
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->getTextContent(Lcom/ss/android/vesdk/VEEditor$OnARTextContentCallback;)I

    move-result p0

    return p0
.end method

.method public getTextLimitCount()I
    .registers 1

    .line 816
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->getTextLimitCount()I

    move-result p0

    return p0
.end method

.method public is2DBrushEmpty()Z
    .registers 1

    .line 1121
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->get2DBrushStrokeCount()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isInfoStickerAnimatable(I)Z
    .registers 5

    .line 289
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 290
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    const-string v2, "isInfoStickerAnimatable..."

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->isInfoStickerAnimatable(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    .line 292
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public notifyHideKeyBoard(Z)I
    .registers 2

    .line 806
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->notifyHideKeyBoard(Z)I

    move-result p0

    return p0
.end method

.method public pauseEffectAudio(Z)I
    .registers 4

    .line 1063
    const-string v0, "pauseEffectAudio"

    const-string v1, "VEEditor_VEStickerInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->pauseEffectAudio(Z)I

    move-result p0

    if-eqz p0, :cond_23

    .line 1066
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pauseEffectAudio failed, ret = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return p0
.end method

.method public pauseInfoStickerAnimation(Z)I
    .registers 5

    .line 297
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 298
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    const-string v2, "pauseInfoStickerAnimation..."

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->pauseInfoStickerAnimation(Z)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    .line 300
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public removeInfoSticker(I)I
    .registers 6

    .line 136
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 137
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeInfoSticker... index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_21

    const/16 p0, -0x64

    .line 139
    monitor-exit v0

    return p0

    :catchall_1f
    move-exception p0

    goto :goto_33

    .line 143
    :cond_21
    iget-object v1, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor;->getTEMonitorFilterMgr()Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->removeFilter(II)V

    .line 145
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->removeInfoSticker(I)I

    move-result p0

    monitor-exit v0

    return p0

    .line 146
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_1f

    throw p0
.end method

.method public restoreInfoStickerPinWithData(ILjava/nio/ByteBuffer;)I
    .registers 6

    .line 899
    const-string v0, "VEEditor_VEStickerInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infoStickerPin setInfoStickerPinWithFile... index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    if-gez p1, :cond_21

    const/16 p0, -0x64

    .line 902
    :try_start_1d
    monitor-exit v0

    return p0

    :catchall_1f
    move-exception p0

    goto :goto_43

    .line 904
    :cond_21
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->restoreInfoStickerPinWithJson(ILjava/nio/ByteBuffer;)I

    move-result p0

    if-gez p0, :cond_41

    .line 906
    const-string p1, "VEEditor_VEStickerInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "infoStickerPin setInfoStickerPinWithFile... faild ret:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    monitor-exit v0

    return p0

    .line 909
    :cond_41
    monitor-exit v0

    return p0

    .line 910
    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_1d .. :try_end_44} :catchall_1f

    throw p0
.end method

.method public set2DBrushCanvasAlpha(F)I
    .registers 2

    .line 1111
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->set2DBrushCanvasAlpha(F)I

    move-result p0

    return p0
.end method

.method public set2DBrushColor(I)I
    .registers 6

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const v1, 0x3b808081

    mul-float/2addr v0, v1

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, v1

    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v1

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    mul-float/2addr p1, v1

    .line 1106
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, v2, v3, p1, v0}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->set2DBrushColor(FFFF)I

    move-result p0

    return p0
.end method

.method public set2DBrushSize(F)I
    .registers 2

    .line 1096
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->set2DBrushSize(F)I

    move-result p0

    return p0
.end method

.method public setEffectBgmEnable(Z)I
    .registers 3

    .line 1074
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->setEffectBgmEnable(Z)I

    move-result p0

    if-eqz p0, :cond_1e

    .line 1076
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setEffectBgmEnable failed, ret = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VEEditor_VEStickerInvoker"

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    return p0
.end method

.method public setEffectFontPath(ILjava/lang/String;I)I
    .registers 9

    .line 561
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 562
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {v1, p2, p3}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->setEffectFontPath(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_24

    .line 564
    const-string v2, "VEEditor_VEStickerInvoker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEffectFontPath failed, ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_45

    .line 566
    :cond_24
    :goto_24
    iget-object v2, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v3, "effect font path"

    invoke-virtual {v2, p1, v3, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string p2, "effect face index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 568
    monitor-exit v0

    return v1

    .line 569
    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_22

    throw p0
.end method

.method public setEffectInputText(ILjava/lang/String;IILjava/lang/String;)I
    .registers 11

    .line 575
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 576
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->setEffectInputText(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_24

    .line 578
    const-string v2, "VEEditor_VEStickerInvoker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEffectInputText failed, ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_64

    .line 580
    :cond_24
    :goto_24
    iget-object v2, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v3, "effect inputtext"

    invoke-virtual {v2, p1, v3, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object p2, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v2, "effect inputtext arg1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, v2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object p2, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string p3, "effect inputtext arg2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p1, p3, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string p2, "effect inputtext arg3"

    invoke-virtual {p0, p1, p2, p5}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 584
    monitor-exit v0

    return v1

    .line 585
    :goto_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_22

    throw p0
.end method

.method public setInfoStickerAlpha(IF)I
    .registers 7

    .line 395
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 396
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInfoStickerAlpha... index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "alpha: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_29

    const/16 p0, -0x64

    .line 398
    monitor-exit v0

    return p0

    :catchall_27
    move-exception p0

    goto :goto_37

    .line 400
    :cond_29
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v1, "entity alpha"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    .line 401
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_27

    throw p0
.end method

.method public setInfoStickerBufferCallback(Lcom/ss/android/vesdk/VEListener$VEInfoStickerBufferListener;)I
    .registers 4

    .line 282
    const-string v0, "VEEditor_VEStickerInvoker"

    const-string v1, "setInfoStickerBufferCallback..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->setInfoStickerBufferCallback(Lcom/ss/android/vesdk/VEListener$VEInfoStickerBufferListener;)I

    move-result p0

    return p0
.end method

.method public setInfoStickerCallSync(Z)I
    .registers 6

    .line 651
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 652
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInfoStickerCallSync... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->setInfoStickerCallSync(Z)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_21
    move-exception p0

    .line 654
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public setInfoStickerFlip(IZZ)I
    .registers 8

    .line 418
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 419
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInfoStickerFlip... index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "flipX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "flipY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_47

    .line 421
    const-string p0, "VEEditor_VEStickerInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setInfoStickerFlip... failed index is wrong : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    .line 422
    monitor-exit v0

    return p0

    :catchall_45
    move-exception p0

    goto :goto_68

    .line 425
    :cond_47
    iget-object v1, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v2, "entity flip x"

    if-eqz p2, :cond_50

    const-string p2, "true"

    goto :goto_52

    :cond_50
    const-string p2, "false"

    :goto_52
    invoke-virtual {v1, p1, v2, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 426
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v1, "entity flip y"

    if-eqz p3, :cond_5f

    const-string p3, "true"

    goto :goto_61

    :cond_5f
    const-string p3, "false"

    :goto_61
    invoke-virtual {p0, p1, v1, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    add-int/2addr p2, p0

    .line 428
    monitor-exit v0

    return p2

    .line 429
    :goto_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_45

    throw p0
.end method

.method public setInfoStickerLayer(II)I
    .registers 7

    .line 406
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 407
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInfoStickerLayer... index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "layer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_29

    const/16 p0, -0x64

    .line 410
    monitor-exit v0

    return p0

    :catchall_27
    move-exception p0

    goto :goto_37

    .line 412
    :cond_29
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v1, "entity layer"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    .line 413
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_27

    throw p0
.end method

.method public setInfoStickerPosition(IFF)I
    .registers 8

    .line 320
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 321
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInfoStickerPosition... index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "offsetX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "offsetY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_31

    const/16 p0, -0x64

    .line 324
    monitor-exit v0

    return p0

    :catchall_2f
    move-exception p0

    goto :goto_4c

    .line 328
    :cond_31
    iget-object v1, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v2, "entity position x"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, v2, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 329
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v1, "entity position y"

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, v1, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    add-int/2addr p2, p0

    .line 331
    monitor-exit v0

    return p2

    .line 332
    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_2f

    throw p0
.end method

.method public setInfoStickerRestoreMode(I)I
    .registers 5

    .line 498
    const-string v0, "VEEditor_VEStickerInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infoStickerPin setInfoStickerRestoreMode... index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    if-gez p1, :cond_21

    const/16 p0, -0x64

    .line 501
    :try_start_1d
    monitor-exit v0

    return p0

    :catchall_1f
    move-exception p0

    goto :goto_43

    .line 503
    :cond_21
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->setInfoStickerRestoreMode(I)I

    move-result p0

    if-gez p0, :cond_41

    .line 505
    const-string p1, "VEEditor_VEStickerInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infoStickerPin setInfoStickerRestoreMode... faild ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    monitor-exit v0

    return p0

    .line 508
    :cond_41
    monitor-exit v0

    return p0

    .line 509
    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_1d .. :try_end_44} :catchall_1f

    throw p0
.end method

.method public setInfoStickerRotation(IF)I
    .registers 7

    .line 337
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 338
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInfoStickerRotation... index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "degree: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_29

    const/16 p0, -0x64

    .line 340
    monitor-exit v0

    return p0

    :catchall_27
    move-exception p0

    goto :goto_37

    .line 342
    :cond_29
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v1, "entity rotation"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    .line 343
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_27

    throw p0
.end method

.method public setInfoStickerScale(IF)I
    .registers 7

    .line 370
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 371
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInfoStickerScale... index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "scale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_29

    const/16 p0, -0x64

    .line 373
    monitor-exit v0

    return p0

    :catchall_27
    move-exception p0

    goto :goto_44

    .line 375
    :cond_29
    iget-object v1, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v2, "entity scale x"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 376
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v2, "entity scale y"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v2, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    add-int/2addr v1, p0

    .line 377
    monitor-exit v0

    return v1

    .line 378
    :goto_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_27

    throw p0
.end method

.method public setInfoStickerScaleSync(IF)F
    .registers 7

    .line 383
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 384
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInfoStickerScaleSync... index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "scale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_29

    const/high16 p0, -0x3d380000    # -100.0f

    .line 386
    monitor-exit v0

    return p0

    :catchall_27
    move-exception p0

    goto :goto_31

    .line 388
    :cond_29
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->setInfoStickerScale(IF)F

    move-result p0

    .line 389
    monitor-exit v0

    return p0

    .line 390
    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_27

    throw p0
.end method

.method public setInfoStickerTemplateParams(ILjava/lang/String;)I
    .registers 7

    .line 739
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 740
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInfoStickerTemplateParams... index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_21

    const/16 p0, -0x64

    .line 743
    monitor-exit v0

    return p0

    :catchall_1f
    move-exception p0

    goto :goto_2b

    .line 745
    :cond_21
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v1, "entity template param"

    invoke-virtual {p0, p1, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    .line 746
    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_1f

    throw p0
.end method

.method public setInfoStickerTime(III)I
    .registers 8

    .line 348
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 349
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInfoStickerTime... index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "startTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "endTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_31

    const/16 p0, -0x64

    .line 352
    monitor-exit v0

    return p0

    :catchall_2f
    move-exception p0

    goto :goto_66

    .line 356
    :cond_31
    iget-object v1, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor;->getTEMonitorFilterMgr()Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->infoStickerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;

    if-eqz v1, :cond_4b

    .line 358
    iput p2, v1, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;->start:I

    sub-int v2, p3, p2

    .line 359
    iput v2, v1, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;->duration:I

    .line 362
    :cond_4b
    iget-object v1, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v2, "entity start time"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, v2, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 363
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v1, "entity end time"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, v1, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    add-int/2addr p2, p0

    .line 364
    monitor-exit v0

    return p2

    .line 365
    :goto_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_2f

    throw p0
.end method

.method public setInfoStickerVisible(IZ)I
    .registers 7

    .line 600
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 601
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInfoStickerVisible... index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " visible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_29

    const/16 p0, -0x64

    .line 604
    monitor-exit v0

    return p0

    :catchall_27
    move-exception p0

    goto :goto_37

    .line 608
    :cond_29
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v1, "entity visible"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 609
    monitor-exit v0

    return p0

    .line 610
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_27

    throw p0
.end method

.method public setLanguage(Ljava/lang/String;)I
    .registers 2

    .line 811
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->setLanguage(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setSrtAudioInfo(IIIIIZ)I
    .registers 10

    .line 1007
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 1008
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    const-string v2, "setSrtAudioInfo"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_12

    const/16 p0, -0x64

    .line 1010
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    goto :goto_54

    .line 1012
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_10

    .line 1014
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v1, "entity srt audio index"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1015
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v1, "entity srt audio seqIn"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, v1, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p3

    add-int/2addr p2, p3

    .line 1016
    iget-object p3, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v0, "entity srt audio trimIn"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p1, v0, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p3

    add-int/2addr p2, p3

    .line 1017
    iget-object p3, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string p4, "entity srt audio trimOut"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p1, p4, p5}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p3

    add-int/2addr p2, p3

    .line 1018
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string p3, "entity srt audio cycle"

    invoke-static {p6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p3, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    add-int/2addr p2, p0

    return p2

    .line 1012
    :goto_54
    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_10

    throw p0
.end method

.method public setSrtColor(II)I
    .registers 9

    .line 979
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 980
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    const-string v2, "setSrtColor"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_13

    const/16 p0, -0x64

    .line 982
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    goto/16 :goto_c4

    .line 984
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_10

    .line 987
    const-string v0, "VEEditor_VEStickerInvoker"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    ushr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p2, p2, 0xff

    .line 992
    const-string v3, "VEEditor_VEStickerInvoker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aa="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", rr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", gg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", bb="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v0, v0

    const v3, 0x3b808081

    mul-float/2addr v0, v3

    int-to-float v1, v1

    mul-float/2addr v1, v3

    int-to-float v2, v2

    mul-float/2addr v2, v3

    int-to-float p2, p2

    mul-float/2addr p2, v3

    .line 997
    const-string v3, "VEEditor_VEStickerInvoker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "a="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", g="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", b="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    iget-object v3, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v4, "entity srt color a"

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v4, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 999
    iget-object v3, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v4, "entity srt color r"

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p1, v4, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1000
    iget-object v1, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v3, "entity srt color g"

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v3, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1001
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v1, "entity srt color b"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    return v0

    .line 984
    :goto_c4
    :try_start_c4
    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_10

    throw p0
.end method

.method public setSrtFont(ILjava/lang/String;)I
    .registers 6

    .line 966
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 967
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    const-string v2, "setSrtFont"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_12

    const/16 p0, -0x64

    .line 969
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    goto :goto_1c

    .line 971
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_10

    .line 973
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v0, "entity srt font"

    invoke-virtual {p0, p1, v0, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 971
    :goto_1c
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_10

    throw p0
.end method

.method public setSrtInfo(IILjava/lang/String;)I
    .registers 7

    .line 951
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 952
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    const-string v2, "setSrtInfo"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_12

    const/16 p0, -0x64

    .line 954
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    goto :goto_37

    .line 956
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_10

    .line 958
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v1, "entity audio start time"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 959
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v1, "entity srt info"

    invoke-virtual {v0, p1, v1, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p3

    add-int/2addr p2, p3

    .line 960
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string p3, "entity srt"

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    add-int/2addr p2, p0

    return p2

    .line 956
    :goto_37
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_10

    throw p0
.end method

.method public setSrtInitialPosition(IFF)I
    .registers 7

    .line 1037
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 1038
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    const-string v2, "setSrtInitialPosition"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_12

    const/16 p0, -0x64

    .line 1040
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    goto :goto_3b

    .line 1042
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_10

    .line 1044
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v1, "entity srt initial position x"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1045
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v1, "entity srt initial position y"

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, v1, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p3

    add-int/2addr p2, p3

    .line 1046
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string p3, "entity srt first"

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    add-int/2addr p2, p0

    return p2

    .line 1042
    :goto_3b
    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_10

    throw p0
.end method

.method public setSrtManipulateState(IZ)I
    .registers 6

    .line 1024
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 1025
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    const-string v2, "setSrtManipulateState"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_12

    const/16 p0, -0x64

    .line 1027
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    goto :goto_20

    .line 1029
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_10

    .line 1031
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v0, "entity srt manipulate state"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1029
    :goto_20
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_10

    throw p0
.end method

.method public setStickerAnimation(IZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;III)I
    .registers 15

    .line 514
    iget-object v1, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v1

    .line 515
    :try_start_3
    const-string v0, "VEEditor_VEStickerInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStickerAnimation... index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", loop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", inPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", inDuration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", outPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", outDuration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual/range {p0 .. p10}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->setStickerAnimation(IZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;III)I

    move-result p0

    monitor-exit v1

    return p0

    :catchall_49
    move-exception v0

    move-object p0, v0

    .line 525
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_49

    throw p0
.end method

.method public setStickerAnimator(ILcom/ss/android/vesdk/VEStickerAnimator;)I
    .registers 5

    .line 305
    const-string v0, "VEEditor_VEStickerInvoker"

    const-string v1, "addAnimator..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_1e

    if-nez p2, :cond_c

    goto :goto_1e

    .line 310
    :cond_c
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {v0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->getStickerFilterIndex(I)I

    move-result p1

    if-gez p1, :cond_15

    return p1

    .line 315
    :cond_15
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v0, "animator"

    invoke-virtual {p0, p1, v0, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Lcom/ss/android/vesdk/VEStickerAnimator;)I

    move-result p0

    return p0

    :cond_1e
    :goto_1e
    const/16 p0, -0x64

    return p0
.end method

.method public setStickerPinArea(ILcom/ss/android/vesdk/filterparam/VEStickerPinAreaParam;)I
    .registers 6

    .line 834
    const-string v0, "VEEditor_VEStickerInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infoStickerPin, setStickerPinArea, index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    if-gez p1, :cond_21

    const/16 p0, -0x64

    .line 837
    :try_start_1d
    monitor-exit v0

    return p0

    :catchall_1f
    move-exception p0

    goto :goto_41

    .line 840
    :cond_21
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->setStickerPinArea(ILcom/ss/android/vesdk/filterparam/VEStickerPinAreaParam;)I

    move-result p0

    if-gez p0, :cond_3f

    .line 842
    const-string p1, "VEEditor_VEStickerInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "infoStickerPin, setStickerPinArea, fail, ret: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    :cond_3f
    monitor-exit v0

    return p0

    .line 845
    :goto_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_1d .. :try_end_42} :catchall_1f

    throw p0
.end method

.method public setTextBitmapCallback(Lcom/ss/android/vesdk/VEEditor$OnARTextBitmapCallback;)I
    .registers 2

    .line 826
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->setTextBitmapCallback(Lcom/ss/android/vesdk/VEEditor$OnARTextBitmapCallback;)I

    move-result p0

    return p0
.end method

.method public startStickerAnimationPreview(II)I
    .registers 7

    .line 538
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 539
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startStickerAnimationPreview duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iput p1, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mStickerAnimationPreviewDuration:I

    .line 541
    iget-object v1, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    iget p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mStickerAnimationPreviewFps:F

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p0, p2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->controlStickerAnimationPreview(ZIFI)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_2e
    move-exception p0

    .line 542
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public stopInfoStickerPin(I)I
    .registers 5

    .line 883
    const-string v0, "VEEditor_VEStickerInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infoStickerPin stopInfoStickerPin... index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    if-gez p1, :cond_21

    const/16 p0, -0x64

    .line 886
    :try_start_1d
    monitor-exit v0

    return p0

    :catchall_1f
    move-exception p0

    goto :goto_43

    .line 888
    :cond_21
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->stopInfoStickerPin(I)I

    move-result p0

    if-gez p0, :cond_41

    .line 890
    const-string p1, "VEEditor_VEStickerInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infoStickerPin stopInfoStickerPin... faild ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    monitor-exit v0

    return p0

    .line 893
    :cond_41
    monitor-exit v0

    return p0

    .line 894
    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_1d .. :try_end_44} :catchall_1f

    throw p0
.end method

.method public stopStickerAnimationPreview()I
    .registers 4

    .line 547
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 548
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    const-string v2, "stopStickerAnimationPreview"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v1, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    iget p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mStickerAnimationPreviewFps:F

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, p0, v2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->controlStickerAnimationPreview(ZIFI)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 550
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public undo2DBrush()I
    .registers 1

    .line 1116
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->undo2DBrush()I

    move-result p0

    return p0
.end method

.method public updateTextSticker(ILjava/lang/String;)I
    .registers 7

    .line 271
    iget-object v0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 272
    :try_start_3
    const-string v1, "VEEditor_VEStickerInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTextSticker... index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_21

    const/16 p0, -0x64

    .line 274
    monitor-exit v0

    return p0

    :catchall_1f
    move-exception p0

    goto :goto_29

    .line 276
    :cond_21
    iget-object p0, p0, Lcom/ss/android/vesdk/VEStickerInvoker;->mNativeStickerHandler:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->updateTextSticker(ILjava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    .line 277
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_1f

    throw p0
.end method
