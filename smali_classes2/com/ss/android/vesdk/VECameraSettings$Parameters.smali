.class public final Lcom/ss/android/vesdk/VECameraSettings$Parameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VECameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VECameraSettings$Parameters$NoiseReduce;
    }
.end annotation


# static fields
.field public static final BODY_BEAUTY_LEVEL:Ljava/lang/String; = "body_beauty_level"

.field public static final ENABLE_AI_NIGHT_VIDEO:Ljava/lang/String; = "enable_ai_night_video"

.field public static final ENABLE_ANTI_SHAKE:Ljava/lang/String; = "enable_anti_shake"

.field public static final ENABLE_BODY_BEAUTY:Ljava/lang/String; = "enable_body_beauty"

.field public static final ENABLE_DIM_LIGHT_QUALITY:Ljava/lang/String; = "enable_dim_light_quality"

.field public static final ENABLE_LIGHT_SOFT:Ljava/lang/String; = "enable_light_soft"

.field public static final ENABLE_SUPER_STABILIZATION:Ljava/lang/String; = "enable_super_Stabilization"

.field public static final ENABLE_VIDEO_HDR:Ljava/lang/String; = "enable_video_hdr"

.field public static final ENABLE_VIDEO_STABILIZATION:Ljava/lang/String; = "enable_video_stabilization"

.field public static final FORCE_RUN_UPDATETEXIMG:Ljava/lang/String; = "forceRunUpdateTexImg"

.field public static final NOISE_REDUCE:Ljava/lang/String; = "noise_reduce"

.field public static final VIDEO_PATH:Ljava/lang/String; = "video_path"

.field private static final sKeySupportTypes:Ljava/util/Map;
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

    .line 2107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VECameraSettings$Parameters;->sKeySupportTypes:Ljava/util/Map;

    .line 2110
    const-string v1, "enable_body_beauty"

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2111
    const-string v1, "body_beauty_level"

    const-class v3, Ljava/lang/Integer;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2112
    const-string v1, "video_path"

    const-class v3, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    const-string v1, "enable_light_soft"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2114
    const-string v1, "enable_anti_shake"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2115
    const-string v1, "forceRunUpdateTexImg"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2116
    const-string v1, "enable_dim_light_quality"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2117
    const-string v1, "enable_ai_night_video"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2118
    const-string v1, "enable_video_stabilization"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2119
    const-string v1, "enable_super_Stabilization"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2120
    const-string v1, "enable_video_hdr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2121
    const-string v1, "noise_reduce"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParameterType(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    .line 2130
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$Parameters;->sKeySupportTypes:Ljava/util/Map;

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
