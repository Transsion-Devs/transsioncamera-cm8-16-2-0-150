.class Lcom/transsion/camera/manager/ScreenBrightnessManager$ActivityWindowAPI;
.super Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/manager/ScreenBrightnessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityWindowAPI"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 372
    invoke-direct {p0, v0}, Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;-><init>(Lcom/transsion/camera/manager/ScreenBrightnessManager-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/manager/ScreenBrightnessManager-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager$ActivityWindowAPI;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrent(Landroid/app/Activity;)F
    .registers 2

    .line 400
    invoke-virtual {p0, p1}, Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;->getActivityBrightness(Landroid/app/Activity;)F

    move-result p0

    return p0
.end method

.method public resetToDefault(Landroid/app/Activity;ZZ)V
    .registers 4

    if-eqz p2, :cond_3

    return-void

    :cond_3
    const/4 p2, -0x1

    const/4 p3, 0x0

    .line 394
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/manager/ScreenBrightnessManager$ActivityWindowAPI;->setBrightness(Landroid/app/Activity;IZ)V

    return-void
.end method

.method public setBrightness(Landroid/app/Activity;IZ)V
    .registers 4

    if-gez p2, :cond_5

    const/high16 p2, -0x40800000    # -1.0f

    goto :goto_c

    :cond_5
    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p2, p3

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    .line 386
    :goto_c
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;->setActivityBrightness(Landroid/app/Activity;F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 375
    const-string p0, "ActivityWindowAPI"

    return-object p0
.end method
