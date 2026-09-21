.class public Lcom/ss/android/ttve/editorInfo/TEEditorInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static HW_PROFILE:Ljava/lang/String; = "main"

.field public static final NOT_EDIT_IS_REENCODE:Ljava/lang/String; = "not_edit_is_reencode"

.field private static final TAG:Ljava/lang/String; = "TEEditorInfo"

.field public static final TE_CAMERA_API:Ljava/lang/String; = "te_camera_api"

.field public static final TE_CAMERA_PREVIEW_SIZE:Ljava/lang/String; = "te_camera_preview_size"

.field public static final TE_CAMERA_TEXTURE_SIZE:Ljava/lang/String; = "te_camera_texture_size"

.field public static final TE_COMPOSITION_FILE_DURATION:Ljava/lang/String; = "te_composition_file_duration"

.field public static final TE_COMPOSITION_VIDEO_ENCODE_MODE:Ljava/lang/String; = "te_composition_video_encode_mode"

.field public static final TE_COMPOSITION_VIDEO_FRAME_RATE:Ljava/lang/String; = "te_composition_video_frame_rate"

.field public static final TE_COMPOSITION_VIDEO_HW_BIT_RATE:Ljava/lang/String; = "te_composition_video_hw_bit_rate"

.field public static final TE_COMPOSITION_VIDEO_HW_PROFILE:Ljava/lang/String; = "te_composition_video_hw_profile"

.field public static final TE_COMPOSITION_VIDEO_RESOLUTION_HEIGHT:Ljava/lang/String; = "te_composition_video_resolution_height"

.field public static final TE_COMPOSITION_VIDEO_RESOLUTION_WIDTH:Ljava/lang/String; = "te_composition_video_resolution_width"

.field public static final TE_COMPOSITION_VIDEO_SW_CRF:Ljava/lang/String; = "te_composition_video_sw_crf"

.field public static final TE_COMPOSITION_VIDEO_SW_GOP:Ljava/lang/String; = "te_composition_video_sw_gop"

.field public static final TE_COMPOSITION_VIDEO_SW_MAXRATE:Ljava/lang/String; = "te_composition_video_sw_maxrate"

.field public static final TE_COMPOSITION_VIDEO_SW_PRESET:Ljava/lang/String; = "te_composition_video_sw_preset"

.field public static final TE_COMPOSITION_VIDEO_SW_QPOFFSET:Ljava/lang/String; = "te_composition_video_sw_qpoffset"

.field public static final TE_EDIT_ENHANCE:Ljava/lang/String; = "te_edit_Enhance"

.field public static final TE_IMPORT_VIDEO_HW_BIT_RATE:Ljava/lang/String; = "te_import_video_hw_bit_rate"

.field public static final TE_IMPORT_VIDEO_HW_PROFILE:Ljava/lang/String; = "te_import_video_hw_profile"

.field public static final TE_IS_REENCODE:Ljava/lang/String; = "te_is_reencode"

.field public static final TE_LENS_ADAPTIVE_SHARPEN:Ljava/lang/String; = "te_lens_adaptive_sharpen"

.field public static final TE_RECORD_RESOLUTION:Ljava/lang/String; = "te_record_resolution"

.field public static final TE_RECORD_VIDEO_FRAME_RATE:Ljava/lang/String; = "te_record_video_frame_rate"

.field public static final TE_RECORD_VIDEO_LANCZOS:Ljava/lang/String; = "te_record_video_lanczos"

.field public static final TE_RECORD_VIDEO_TEXTURE_HD:Ljava/lang/String; = "te_record_video_texture_hd"

.field public static final VE_USE_CAMERA:Ljava/lang/String; = "ve_use_camera"

.field private static mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addInfo(Ljava/lang/String;F)V
    .registers 3

    .line 215
    sget-object v0, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_b

    .line 216
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public static addInfo(Ljava/lang/String;J)V
    .registers 4

    .line 201
    sget-object v0, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_b

    .line 202
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public static addInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 243
    sget-object v0, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_11

    .line 244
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v0, "te_composition_video_hw_profile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 246
    sput-object p1, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->HW_PROFILE:Ljava/lang/String;

    :cond_11
    return-void
.end method

.method public static addInfo(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 3

    .line 229
    sget-object v0, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_7

    .line 230
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method public static buildEditorInfoJson()Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 123
    sget-object v2, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_b

    const/4 v0, 0x0

    return-object v0

    .line 127
    :cond_b
    const-string v3, "te_import_video_hw_bit_rate"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 128
    sget-object v2, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "te_import_video_hw_profile"

    sget-object v4, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->HW_PROFILE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_1c
    sget-object v2, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "te_composition_video_encode_mode"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "te_composition_video_hw_profile"

    const/4 v5, 0x1

    if-eqz v2, :cond_60

    .line 133
    sget-object v2, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 135
    :try_start_2f
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_67

    .line 136
    move-object v3, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_4e

    .line 137
    const-string v2, "te_composition_video_sw_preset"

    const-string v3, "te_composition_video_sw_crf"

    const-string v4, "te_composition_video_sw_maxrate"

    const-string v6, "te_composition_video_sw_gop"

    const-string v7, "te_composition_video_sw_qpoffset"

    filled-new-array {v2, v3, v4, v6, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->deleteEditorInfo([Ljava/lang/String;)V

    goto :goto_67

    .line 138
    :cond_4e
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_67

    .line 139
    const-string v2, "te_composition_video_hw_bit_rate"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->deleteEditorInfo([Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_5f} :catch_67

    goto :goto_67

    .line 144
    :cond_60
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->deleteEditorInfo([Ljava/lang/String;)V

    .line 148
    :catch_67
    :cond_67
    :goto_67
    sget-object v2, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "te_record_video_frame_rate"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 149
    const-string v11, "te_composition_video_sw_maxrate"

    const-string v12, "te_composition_video_sw_gop"

    const-string v6, "te_composition_video_hw_bit_rate"

    const-string v7, "te_composition_video_hw_profile"

    const-string v8, "te_composition_video_encode_mode"

    const-string v9, "te_composition_video_sw_preset"

    const-string v10, "te_composition_video_sw_crf"

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->deleteEditorInfo([Ljava/lang/String;)V

    .line 154
    :cond_86
    sget-object v2, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "ve_use_camera"

    const-string v4, "te_lens_adaptive_sharpen"

    if-nez v2, :cond_a6

    sget-object v2, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a6

    .line 155
    const-string v0, "te_camera_texture_size"

    const-string v2, "te_camera_preview_size"

    filled-new-array {v0, v2, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->deleteEditorInfo([Ljava/lang/String;)V

    goto :goto_db

    .line 160
    :cond_a6
    sget-object v2, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b3

    .line 161
    sget-object v2, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_b3
    sget-object v2, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "te_record_video_texture_hd"

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c2

    .line 165
    sget-object v2, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_c2
    sget-object v2, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v4

    const-string v6, "ve_enable_titan_opt_lanczos_screen"

    invoke-virtual {v4, v6, v0}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "te_record_video_lanczos"

    invoke-virtual {v2, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :goto_db
    sget-object v0, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "te_edit_Enhance"

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f4

    sget-object v0, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "te_is_reencode"

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 174
    sget-object v0, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_f4
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->deleteEditorInfo([Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "te_os"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "te_system"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "te_user_device"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "te_ve_version"

    const-string v2, "11.8.4.8-alpha.142-cy-tob"

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "te_effect_version"

    const-string v2, "202505271112_1_202505271112_22712c533ca"

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    .line 188
    invoke-static {}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->resetEditorInfo()V

    return-object v0
.end method

.method public static deleteEditorInfo([Ljava/lang/String;)V
    .registers 5

    .line 82
    sget-object v0, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_15

    if-nez p0, :cond_7

    goto :goto_15

    .line 85
    :cond_7
    array-length v0, p0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_15

    aget-object v2, p0, v1

    .line 86
    sget-object v3, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_15
    :goto_15
    return-void
.end method

.method public static init()V
    .registers 1

    .line 59
    invoke-static {}, Lcom/ss/android/ttve/editorInfo/TEEditorInfoInvoker;->nativeInit()V

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static resetEditorInfo()V
    .registers 1

    .line 69
    sget-object v0, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_5

    return-void

    .line 72
    :cond_5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public static resetEditorInfo(Lorg/json/JSONObject;)V
    .registers 5

    .line 97
    sget-object v0, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_5

    goto :goto_27

    .line 100
    :cond_5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 102
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 103
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 106
    :try_start_18
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 107
    sget-object v3, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->mapEditorInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_21} :catch_22

    goto :goto_c

    :catch_22
    move-exception v1

    .line 109
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    :cond_27
    :goto_27
    return-void
.end method
