.class abstract Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/manager/ScreenBrightnessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SetBrightnessAPI"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/manager/ScreenBrightnessManager-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;-><init>()V

    return-void
.end method


# virtual methods
.method protected getActivityBrightness(Landroid/app/Activity;)F
    .registers 2

    .line 372
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 373
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    return p0
.end method

.method public abstract getCurrent(Landroid/app/Activity;)F
.end method

.method public abstract resetToDefault(Landroid/app/Activity;ZZ)V
.end method

.method protected setActivityBrightness(Landroid/app/Activity;F)V
    .registers 6

    .line 357
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const v0, 0x3d70f0f1

    .line 358
    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_22

    .line 361
    invoke-static {}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->-$$Nest$sfgetRANDOM()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x3a81c2e4    # 9.900001E-4f

    mul-float/2addr v0, v1

    const v1, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v0, v1

    add-float/2addr p2, v0

    .line 364
    :cond_22
    invoke-static {}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActivityBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 365
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_55

    .line 366
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 367
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_55
    return-void
.end method

.method public abstract setBrightness(Landroid/app/Activity;IZ)V
.end method
