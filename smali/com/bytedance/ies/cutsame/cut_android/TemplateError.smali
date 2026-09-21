.class public final Lcom/bytedance/ies/cutsame/cut_android/TemplateError;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXCEPTION_JSON:I = -0x18

.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateError;

.field public static final INVALID_FILE_PATH:I = -0x12

.field public static final INVALID_MATERIAL_ID:I = -0x11

.field public static final INVALID_PARAM_EMPTY:I = -0x13

.field public static final INVALID_SEGMENT_ID:I = -0x14

.field public static final OPERATION_NOT_SUPPORT:I = -0x16

.field public static final PARSE_PROJECT_VERSION_ERROR:I = -0x19

.field public static final PLAYER_AUDIO_EFFECT_ERROR:I = -0x20

.field public static final PLAYER_EPILOGUE_TEXT_ERROR:I = -0x2a

.field public static final PLAYER_EPILOGUE_VIDEO_TRANS_ERROR:I = -0x2b

.field public static final PLAYER_GLOBAL_ADJUST_ERROR:I = -0x27

.field public static final PLAYER_GLOBAL_FILTER_ADJUST_ERROR:I = -0x29

.field public static final PLAYER_GLOBAL_FILTER_ERROR:I = -0x28

.field public static final PLAYER_INIT_EFFECT_ERROR:I = -0x23

.field public static final PLAYER_INIT_IMAGE_ERROR:I = -0x25

.field public static final PLAYER_INIT_STICKER_ERROR:I = -0x21

.field public static final PLAYER_INIT_TEXT_ERROR:I = -0x24

.field public static final PLAYER_MAIN_TRACK_ERROR:I = -0x1e

.field public static final PLAYER_STATE_ERROR:I = -0x10

.field public static final PLAYER_STICKER_ANIM_ERROR:I = -0x26

.field public static final PLAYER_SUB_VIDEO_ERROR:I = -0x1f

.field public static final PLAYER_VIDEO_EFFECT_ERROR:I = -0x22

.field public static final PREPARE_DECODE_FAILED:I = -0xd

.field public static final PREPARE_DOWNLOAD_FAILED:I = -0xb

.field public static final PREPARE_FAILED:I = -0xa

.field public static final PREPARE_FETCH_EFFECT_FAILED:I = -0xf

.field public static final PREPARE_FETCH_VIDEO_FAILED:I = -0xe

.field public static final PREPARE_UNZIP_FAILED:I = -0xc

.field public static final SUCCESS:I = 0x0

.field public static final TEMPLATE_SOURCE_WRITE_LOCK:I = -0x15

.field public static final VE_NOT_INIT:I = -0x17


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateError;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateError;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateError;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateError;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extra(I)I
    .registers 2

    .line 145
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    neg-int p0, p0

    mul-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public final extraError(I)I
    .registers 2

    .line 141
    div-int/lit16 p1, p1, 0x3e8

    return p1
.end method

.method public final mainError(I)I
    .registers 2

    .line 137
    rem-int/lit16 p1, p1, 0x3e8

    return p1
.end method
