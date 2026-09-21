.class Lcom/bytedance/labcv/core/util/OrientationSensor$1;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/labcv/core/util/OrientationSensor;->start(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 3

    const/4 p0, -0x1

    if-ne p1, p0, :cond_4

    goto :goto_3a

    :cond_4
    add-int/lit8 p1, p1, 0x2d

    .line 35
    div-int/lit8 p1, p1, 0x5a

    mul-int/lit8 p1, p1, 0x5a

    rem-int/lit16 p1, p1, 0x168

    .line 36
    invoke-static {}, Lcom/bytedance/labcv/core/util/OrientationSensor;->-$$Nest$sfgetmScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object p0

    if-eqz p0, :cond_31

    invoke-static {}, Lcom/bytedance/labcv/core/util/OrientationSensor;->-$$Nest$sfgetmScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object p0

    .line 37
    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p0

    const/4 v0, 0x7

    if-eq v0, p0, :cond_28

    invoke-static {}, Lcom/bytedance/labcv/core/util/OrientationSensor;->-$$Nest$sfgetmScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object p0

    .line 38
    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p0

    const/4 v0, 0x6

    if-ne v0, p0, :cond_31

    :cond_28
    const/16 p0, 0xb4

    if-nez p1, :cond_2e

    move p1, p0

    goto :goto_31

    :cond_2e
    if-ne p1, p0, :cond_31

    const/4 p1, 0x0

    .line 45
    :cond_31
    :goto_31
    invoke-static {}, Lcom/bytedance/labcv/core/util/OrientationSensor;->-$$Nest$sfgetmOrientation()I

    move-result p0

    if-eq p1, p0, :cond_3a

    .line 46
    invoke-static {p1}, Lcom/bytedance/labcv/core/util/OrientationSensor;->-$$Nest$sfputmOrientation(I)V

    :cond_3a
    :goto_3a
    return-void
.end method
