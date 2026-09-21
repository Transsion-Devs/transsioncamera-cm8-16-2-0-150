.class public interface abstract Lcom/bytedance/ies/cutsame/veadapter/FilterType;
.super Ljava/lang/Object;
.source "SourceFile"


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

.field public static final FADE:Ljava/lang/String; = "fade"

.field public static final FILTER_GLOBAL_FILTER:Ljava/lang/String; = "global_color_filter"

.field public static final HIGHLIGHT:Ljava/lang/String; = "highlight"

.field public static final KEYFRAME_TYPES:[Ljava/lang/String;

.field public static final LIGHT_SENSATION:Ljava/lang/String; = "light_sensation"

.field public static final MASK_FILTER:Ljava/lang/String; = "mask_filter"

.field public static final PARTICLE:Ljava/lang/String; = "particle"

.field public static final RESHAPE:Ljava/lang/String; = "reshape"

.field public static final SATURATION:Ljava/lang/String; = "saturation"

.field public static final SHADOW:Ljava/lang/String; = "shadow"

.field public static final SHARPEN:Ljava/lang/String; = "sharpen"

.field public static final STABLE:Ljava/lang/String; = "stable"

.field public static final TEMPERATURE:Ljava/lang/String; = "temperature"

.field public static final TONE:Ljava/lang/String; = "tone"

.field public static final TYPE_STICKER:Ljava/lang/String; = "info_sticker"

.field public static final TYPE_TEXT:Ljava/lang/String; = "text_sticker"

.field public static final VIGNETTING:Ljava/lang/String; = "vignetting"


# direct methods
.method static constructor <clinit>()V
    .registers 20

    .line 44
    const-string v18, "vignetting"

    const-string v19, "particle"

    const-string v1, "canvas blend"

    const-string v2, "mask_filter"

    const-string v3, "chroma"

    const-string v4, "info_sticker"

    const-string v5, "text_sticker"

    const-string v6, "audio volume filter"

    const-string v7, "color_filter"

    const-string v8, "brightness"

    const-string v9, "contrast"

    const-string v10, "saturation"

    const-string v11, "sharpen"

    const-string v12, "highlight"

    const-string v13, "shadow"

    const-string v14, "temperature"

    const-string v15, "tone"

    const-string v16, "fade"

    const-string v17, "light_sensation"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ies/cutsame/veadapter/FilterType;->KEYFRAME_TYPES:[Ljava/lang/String;

    return-void
.end method
