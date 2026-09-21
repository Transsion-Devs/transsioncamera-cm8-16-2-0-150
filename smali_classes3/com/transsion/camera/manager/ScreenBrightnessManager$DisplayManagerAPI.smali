.class Lcom/transsion/camera/manager/ScreenBrightnessManager$DisplayManagerAPI;
.super Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/manager/ScreenBrightnessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayManagerAPI"
.end annotation


# instance fields
.field private mDisplayBrightness:F

.field private final mDisplayId:I

.field private final mTranDisplayManager:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 408
    invoke-direct {p0, v0}, Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;-><init>(Lcom/transsion/camera/manager/ScreenBrightnessManager-IA;)V

    const/4 v0, 0x0

    .line 405
    iput v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager$DisplayManagerAPI;->mDisplayId:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 406
    iput v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager$DisplayManagerAPI;->mDisplayBrightness:F

    .line 409
    new-instance v0, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager$DisplayManagerAPI;->mTranDisplayManager:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;

    return-void
.end method

.method private setTemporaryBrightness(IF)V
    .registers 6

    .line 455
    invoke-static {}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTemporaryBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager$DisplayManagerAPI;->mDisplayBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 456
    iget v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager$DisplayManagerAPI;->mDisplayBrightness:F

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_57

    .line 457
    iput p2, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager$DisplayManagerAPI;->mDisplayBrightness:F

    .line 459
    :try_start_2c
    iget-object p0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager$DisplayManagerAPI;->mTranDisplayManager:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->setTemporaryBrightness(IF)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_31} :catch_32

    goto :goto_57

    :catch_32
    move-exception p0

    .line 461
    invoke-static {}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTemporaryBrightness fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 464
    :cond_57
    :goto_57
    invoke-static {}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "setTemporaryBrightness done."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCurrent(Landroid/app/Activity;)F
    .registers 4

    .line 447
    iget v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager$DisplayManagerAPI;->mDisplayBrightness:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_8

    return v0

    .line 450
    :cond_8
    invoke-virtual {p0, p1}, Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;->getActivityBrightness(Landroid/app/Activity;)F

    move-result p0

    return p0
.end method

.method public resetToDefault(Landroid/app/Activity;ZZ)V
    .registers 4

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    return-void

    :cond_5
    const/4 p2, -0x1

    .line 441
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/manager/ScreenBrightnessManager$DisplayManagerAPI;->setBrightness(Landroid/app/Activity;IZ)V

    return-void
.end method

.method public setBrightness(Landroid/app/Activity;IZ)V
    .registers 8

    const/4 v0, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz p3, :cond_13

    int-to-float p2, p2

    mul-float/2addr p2, v2

    div-float/2addr p2, v1

    .line 421
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;->setActivityBrightness(Landroid/app/Activity;F)V

    .line 422
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/manager/ScreenBrightnessManager$DisplayManagerAPI;->setTemporaryBrightness(IF)V

    return-void

    .line 424
    :cond_13
    invoke-virtual {p0, p1, v3}, Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;->setActivityBrightness(Landroid/app/Activity;F)V

    if-gez p2, :cond_19

    goto :goto_1d

    :cond_19
    int-to-float p1, p2

    mul-float/2addr p1, v2

    div-float v3, p1, v1

    .line 432
    :goto_1d
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/manager/ScreenBrightnessManager$DisplayManagerAPI;->setTemporaryBrightness(IF)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 414
    const-string p0, "DisplayManagerAPI"

    return-object p0
.end method
