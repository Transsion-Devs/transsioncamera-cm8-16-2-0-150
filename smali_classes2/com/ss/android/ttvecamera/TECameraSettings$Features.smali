.class public final Lcom/ss/android/ttvecamera/TECameraSettings$Features;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Features"
.end annotation


# static fields
.field public static final CAMERA_FACING:Ljava/lang/String; = "facing"

.field public static final CAMERA_FOCUS_PARAMETERS:Ljava/lang/String; = "camera_focus_parameters"

.field public static final CAMERA_PREVIEW_SIZE:Ljava/lang/String; = "camera_preview_size"

.field public static final CAMERA_SENSOR_ORIENTATION:Ljava/lang/String; = "camera_sensor_orientation"

.field public static final CAMERA_SUPPORT_FPS_RANGE:Ljava/lang/String; = "camera_support_fps_range"

.field public static final CAMERA_TORCH_SUPPORTED:Ljava/lang/String; = "camera_torch_supported"

.field public static final DEVICE_SHOULD_USE_SHADER_ZOOM:Ljava/lang/String; = "device_should_use_shader_zoom"

.field public static final DEVICE_SUPPORT_AI_NIGHT_VIDEO:Ljava/lang/String; = "device_support_ai_night_video"

.field public static final DEVICE_SUPPORT_ANTISHAKE_MODE:Ljava/lang/String; = "device_support_antishake_mode"

.field public static final DEVICE_SUPPORT_ANTI_SHAKE:Ljava/lang/String; = "device_support_anti_shake"

.field public static final DEVICE_SUPPORT_CAMERA:Ljava/lang/String; = "device_support_camera"

.field public static final DEVICE_SUPPORT_MULTICAMERA_ZOOM:Ljava/lang/String; = "device_support_multicamera_zoom"

.field public static final DEVICE_SUPPORT_SURPER_STABILIZATION:Ljava/lang/String; = "support_super_stabilization"

.field public static final DEVICE_SUPPORT_WIDE_ANGLE:Ljava/lang/String; = "device_support_wide_angle"

.field public static final DEVICE_SUPPORT_WIDE_ANGLE_MODE:Ljava/lang/String; = "device_support_wide_angle_mode"

.field public static final DEVICE_WIDE_ANGLE_CAMERA_ID:Ljava/lang/String; = "device_wide_angle_camera_id"

.field public static final SUPPORT_ANTI_SHAKE:Ljava/lang/String; = "support_anti_shake"

.field public static final SUPPORT_BODY_BEAUTY:Ljava/lang/String; = "support_body_beauty"

.field public static final SUPPORT_FPS_120:Ljava/lang/String; = "support_fps_120"

.field public static final SUPPORT_FPS_480:Ljava/lang/String; = "support_fps_480"

.field public static final SUPPORT_FPS_60:Ljava/lang/String; = "support_fps_60"

.field public static final SUPPORT_LIGHT_SOFT:Ljava/lang/String; = "support_light_soft"

.field public static final SUPPORT_PICTURE_SIZES:Ljava/lang/String; = "support_picture_sizes"

.field public static final SUPPORT_PREVIEW_SIZES:Ljava/lang/String; = "support_preview_sizes"

.field public static final SUPPORT_TELEPHOTO:Ljava/lang/String; = "support_telephoto"

.field public static final SUPPORT_VIDEO_SIZES:Ljava/lang/String; = "support_video_sizes"

.field public static final SUPPORT_WIDE_ANGLE:Ljava/lang/String; = "support_wide_angle"

.field private static final sKeyFeatureTypes:Ljava/util/Map;
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
    .registers 5

    .line 654
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ss/android/ttvecamera/TECameraSettings$Features;->sKeyFeatureTypes:Ljava/util/Map;

    .line 657
    const-string v1, "facing"

    const-class v2, Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    const-string v1, "device_support_wide_angle_mode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    const-string v1, "device_support_antishake_mode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    const-string v1, "device_support_ai_night_video"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    const-string v1, "support_light_soft"

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string v1, "device_support_wide_angle"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const-string v1, "device_support_anti_shake"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const-string v1, "device_support_camera"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    const-string v1, "device_wide_angle_camera_id"

    const-class v3, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    const-string v1, "support_wide_angle"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    const-string v1, "support_telephoto"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    const-string v1, "support_body_beauty"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    const-string v1, "support_anti_shake"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    const-string v1, "support_fps_480"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    const-string v1, "support_fps_120"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    const-string v1, "support_fps_60"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    const-string v1, "support_preview_sizes"

    const-class v3, Ljava/util/ArrayList;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    const-string v1, "support_picture_sizes"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    const-string v1, "camera_preview_size"

    const-class v4, Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    const-string v1, "camera_focus_parameters"

    const-class v4, Lcom/ss/android/ttvecamera/TEFocusParameters;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    const-string v1, "camera_torch_supported"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    const-string v1, "support_video_sizes"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    const-string v1, "camera_support_fps_range"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    const-string v1, "device_should_use_shader_zoom"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const-string v1, "device_support_multicamera_zoom"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFeatureType(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    .line 685
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraSettings$Features;->sKeyFeatureTypes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method
