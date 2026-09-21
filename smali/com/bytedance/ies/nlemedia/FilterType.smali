.class public final Lcom/bytedance/ies/nlemedia/FilterType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/nlemedia/FilterType$Companion;
    }
.end annotation


# static fields
.field public static final AUDIO:Ljava/lang/String; = "audio effect"

.field public static final AUDIO_FADING:Ljava/lang/String; = "audio fading"

.field public static final AUDIO_VOLUME:Ljava/lang/String; = "audio volume filter"

.field public static final BEAUTY:Ljava/lang/String; = "beauty_filter"

.field public static final BRIGHTNESS:Ljava/lang/String; = "brightness"

.field public static final CANVAS_BLEND:Ljava/lang/String; = "canvas blend"

.field public static final CHROMA:Ljava/lang/String; = "chroma"

.field public static final COLOR_CANVAS:Ljava/lang/String; = "color_canvas"

.field public static final COLOR_FILTER:Ljava/lang/String; = "color_filter"

.field public static final CONTRAST:Ljava/lang/String; = "contrast"

.field public static final CROP:Ljava/lang/String; = "crop filter"

.field public static final Companion:Lcom/bytedance/ies/nlemedia/FilterType$Companion;

.field public static final EFFECT:Ljava/lang/String; = "effect"

.field public static final FADE:Ljava/lang/String; = "fade"

.field public static final FILTER:Ljava/lang/String; = "filter"

.field public static final FILTER_GLOBAL_FILTER:Ljava/lang/String; = "global_color_filter"

.field public static final HIGHLIGHT:Ljava/lang/String; = "highlight"

.field private static final KEYFRAME_TYPES:[Ljava/lang/String;

.field public static final LIGHT_SENSATION:Ljava/lang/String; = "light_sensation"

.field public static final MASK:Ljava/lang/String; = "mask"

.field public static final MASK_FILTER:Ljava/lang/String; = "mask_filter"

.field public static final PARTICLE:Ljava/lang/String; = "particle"

.field public static final RESHAPE:Ljava/lang/String; = "reshape"

.field public static final SATURATION:Ljava/lang/String; = "saturation"

.field public static final SHADOW:Ljava/lang/String; = "shadow"

.field public static final SHARPEN:Ljava/lang/String; = "sharpen"

.field public static final STICKER_EMOJI:Ljava/lang/String; = "sticker_emoji"

.field public static final STICKER_IMAGE:Ljava/lang/String; = "sticker_image"

.field public static final STICKER_INFO:Ljava/lang/String; = "sticker_info"

.field public static final STICKER_TEXT:Ljava/lang/String; = "sticker_text"

.field public static final TEMPERATURE:Ljava/lang/String; = "temperature"

.field public static final TONE:Ljava/lang/String; = "tone"

.field public static final TYPE_STICKER:Ljava/lang/String; = "info_sticker"

.field public static final TYPE_TEXT:Ljava/lang/String; = "text_sticker"

.field public static final VIDEO_ANIMATION:Ljava/lang/String; = "VideoAnimation"

.field public static final VIDEO_CANVAS:Ljava/lang/String; = "video_canvas"

.field public static final VIDEO_CROP:Ljava/lang/String; = " video_crop"

.field public static final VIDEO_TRANSFORM:Ljava/lang/String; = " video_transform"

.field public static final VIDEO_VOLUME:Ljava/lang/String; = "video_volume"

.field public static final VIGNETTING:Ljava/lang/String; = "vignetting"


# direct methods
.method static constructor <clinit>()V
    .registers 21

    new-instance v0, Lcom/bytedance/ies/nlemedia/FilterType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ies/nlemedia/FilterType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ies/nlemedia/FilterType;->Companion:Lcom/bytedance/ies/nlemedia/FilterType$Companion;

    .line 82
    const-string v19, "vignetting"

    const-string v20, "particle"

    const-string v2, "canvas blend"

    const-string v3, "mask_filter"

    const-string v4, "chroma"

    const-string v5, "info_sticker"

    const-string v6, "text_sticker"

    const-string v7, "audio volume filter"

    const-string v8, "color_filter"

    const-string v9, "brightness"

    const-string v10, "contrast"

    const-string v11, "saturation"

    const-string v12, "sharpen"

    const-string v13, "highlight"

    const-string v14, "shadow"

    const-string v15, "temperature"

    const-string v16, "tone"

    const-string v17, "fade"

    const-string v18, "light_sensation"

    filled-new-array/range {v2 .. v20}, [Ljava/lang/String;

    move-result-object v0

    .line 81
    sput-object v0, Lcom/bytedance/ies/nlemedia/FilterType;->KEYFRAME_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getKEYFRAME_TYPES$cp()[Ljava/lang/String;
    .registers 1

    .line 3
    sget-object v0, Lcom/bytedance/ies/nlemedia/FilterType;->KEYFRAME_TYPES:[Ljava/lang/String;

    return-object v0
.end method
