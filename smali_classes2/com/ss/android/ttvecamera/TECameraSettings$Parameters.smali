.class public final Lcom/ss/android/ttvecamera/TECameraSettings$Parameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parameters"
.end annotation


# static fields
.field public static final APERTURE:Ljava/lang/String; = "aperture"

.field public static final BODY_BEAUTY_LEVEL:Ljava/lang/String; = "body_beauty_level"

.field public static final ENABLE_AI_NIGHT_VIDEO:Ljava/lang/String; = "enable_ai_night_video"

.field public static final ENABLE_ANTI_SHAKE:Ljava/lang/String; = "enable_anti_shake"

.field public static final ENABLE_BODY_BEAUTY:Ljava/lang/String; = "enable_body_beauty"

.field public static final ENABLE_DIM_LIGHT_QUALITY:Ljava/lang/String; = "enable_dim_light_quality"

.field public static final ENABLE_LIGHT_SOFT:Ljava/lang/String; = "enable_light_soft"

.field public static final ENABLE_SUPER_STABILIZATION:Ljava/lang/String; = "enable_super_Stabilization"

.field public static final ENABLE_VIDEO_HDR:Ljava/lang/String; = "enable_video_hdr"

.field public static final ENABLE_VIDEO_STABILIZATION:Ljava/lang/String; = "enable_video_stabilization"

.field public static final EXPOSURE_COMPENSATION:Ljava/lang/String; = "exposure_compensation"

.field public static final FACE_DETECT:Ljava/lang/String; = "face_detect"

.field public static final FLASH_MODE:Ljava/lang/String; = "flash_mode"

.field public static final VIDEO_FPS:Ljava/lang/String; = "video_fps"

.field public static final VIDEO_PATH:Ljava/lang/String; = "video_path"

.field public static final sKeySupportTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 543
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ss/android/ttvecamera/TECameraSettings$Parameters;->sKeySupportTypes:Ljava/util/Map;

    .line 546
    const-string v1, "enable_body_beauty"

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string v1, "enable_light_soft"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string v1, "enable_anti_shake"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-string v1, "video_path"

    const-class v3, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const-string v1, "body_beauty_level"

    const-class v3, Ljava/lang/Integer;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    const-string v1, "enable_dim_light_quality"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    const-string v1, "enable_ai_night_video"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const-string v1, "enable_video_stabilization"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-string v1, "enable_super_Stabilization"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const-string v1, "enable_video_hdr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    const-string v1, "video_fps"

    const-class v2, [I

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const-string v1, "aperture"

    const-class v2, Ljava/lang/Float;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-string v1, "flash_mode"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-string v1, "face_detect"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string v1, "exposure_compensation"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValid(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 4

    .line 564
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraSettings$Parameters;->sKeySupportTypes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz p1, :cond_14

    .line 565
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p1, p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method
