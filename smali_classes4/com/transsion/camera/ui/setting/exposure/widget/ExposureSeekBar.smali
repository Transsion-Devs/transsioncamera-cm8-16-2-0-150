.class public Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;
.super Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected buildBackground(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;
    .registers 4

    .line 60
    sget p0, Lcom/transsion/camera/R$styleable;->BaseSeekBar_backgroundType:I

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_15

    .line 63
    new-instance p0, Lcom/transsion/camera/ui/setting/exposure/widget/background/SolidLineBackground;

    new-instance v0, Lcom/transsion/camera/ui/setting/exposure/widget/background/SolidLineBackground$BackgroundInfo;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/widget/background/SolidLineBackground$BackgroundInfo;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/widget/background/SolidLineBackground;-><init>(Lcom/transsion/camera/ui/setting/exposure/widget/background/SolidLineBackground$BackgroundInfo;)V

    return-object p0

    .line 66
    :cond_15
    new-instance p0, Lcom/transsion/camera/ui/setting/exposure/widget/background/DotLineBackground;

    new-instance v0, Lcom/transsion/camera/ui/setting/exposure/widget/background/DotLineBackground$BackgroundInfo;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/widget/background/DotLineBackground$BackgroundInfo;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/widget/background/DotLineBackground;-><init>(Lcom/transsion/camera/ui/setting/exposure/widget/background/DotLineBackground$BackgroundInfo;)V

    return-object p0
.end method

.method protected buildThumbMoon(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;
    .registers 5

    .line 86
    sget v0, Lcom/transsion/camera/R$styleable;->BaseSeekBar_thumbMoonType:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 89
    new-instance v0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich;

    new-instance v1, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;

    invoke-direct {v1, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    invoke-direct {v0, v1, p0}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich;-><init>(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;)V

    return-object v0

    .line 93
    :cond_15
    new-instance p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoon;

    new-instance v0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoon$ThumbInfo;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoon$ThumbInfo;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoon;-><init>(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoon$ThumbInfo;)V

    return-object p0
.end method

.method protected buildThumbSun(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;
    .registers 5

    .line 72
    sget v0, Lcom/transsion/camera/R$styleable;->BaseSeekBar_thumbSunType:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-nez v0, :cond_14

    .line 75
    new-instance v0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich;

    new-instance v1, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich$ThumbInfo;

    invoke-direct {v1, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich$ThumbInfo;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    invoke-direct {v0, v1, p0}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich;-><init>(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich$ThumbInfo;Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;)V

    return-object v0

    .line 79
    :cond_14
    new-instance p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSun;

    new-instance v0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSun$ThumbInfo;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSun$ThumbInfo;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSun;-><init>(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSun$ThumbInfo;)V

    return-object p0
.end method
