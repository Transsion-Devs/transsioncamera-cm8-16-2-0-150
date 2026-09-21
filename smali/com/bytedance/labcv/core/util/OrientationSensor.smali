.class public Lcom/bytedance/labcv/core/util/OrientationSensor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mOrientation:I

.field private static mOrientationListener:Landroid/view/OrientationEventListener;

.field private static mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;


# direct methods
.method static bridge synthetic -$$Nest$sfgetmOrientation()I
    .registers 1

    .line 0
    sget v0, Lcom/bytedance/labcv/core/util/OrientationSensor;->mOrientation:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;
    .registers 1

    .line 0
    sget-object v0, Lcom/bytedance/labcv/core/util/OrientationSensor;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmOrientation(I)V
    .registers 1

    .line 0
    sput p0, Lcom/bytedance/labcv/core/util/OrientationSensor;->mOrientation:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation()Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;
    .registers 2

    .line 71
    sget v0, Lcom/bytedance/labcv/core/util/OrientationSensor;->mOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_17

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_14

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_11

    .line 79
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->CLOCKWISE_ROTATE_0:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;

    return-object v0

    .line 77
    :cond_11
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->CLOCKWISE_ROTATE_270:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;

    return-object v0

    .line 75
    :cond_14
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->CLOCKWISE_ROTATE_180:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;

    return-object v0

    .line 73
    :cond_17
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->CLOCKWISE_ROTATE_90:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;

    return-object v0
.end method

.method public static getSensorOrientation()I
    .registers 1

    .line 67
    sget v0, Lcom/bytedance/labcv/core/util/OrientationSensor;->mOrientation:I

    return v0
.end method

.method public static setScreenManager(Lcom/transsion/camera/app/common/manager/IScreenManager;)V
    .registers 1

    .line 21
    sput-object p0, Lcom/bytedance/labcv/core/util/OrientationSensor;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .registers 3

    .line 25
    sget-object v0, Lcom/bytedance/labcv/core/util/OrientationSensor;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_5

    return-void

    .line 28
    :cond_5
    new-instance v0, Lcom/bytedance/labcv/core/util/OrientationSensor$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/bytedance/labcv/core/util/OrientationSensor$1;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/bytedance/labcv/core/util/OrientationSensor;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 51
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result p0

    if-eqz p0, :cond_19

    .line 52
    sget-object p0, Lcom/bytedance/labcv/core/util/OrientationSensor;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    return-void

    :cond_19
    const/4 p0, 0x0

    .line 54
    sput-object p0, Lcom/bytedance/labcv/core/util/OrientationSensor;->mOrientationListener:Landroid/view/OrientationEventListener;

    return-void
.end method

.method public static stop()V
    .registers 1

    .line 59
    sget-object v0, Lcom/bytedance/labcv/core/util/OrientationSensor;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_7

    .line 60
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_7
    const/4 v0, 0x0

    .line 62
    sput-object v0, Lcom/bytedance/labcv/core/util/OrientationSensor;->mOrientationListener:Landroid/view/OrientationEventListener;

    const/4 v0, 0x0

    .line 63
    sput v0, Lcom/bytedance/labcv/core/util/OrientationSensor;->mOrientation:I

    return-void
.end method
