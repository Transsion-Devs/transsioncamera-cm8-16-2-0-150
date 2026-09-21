.class public Lcom/transsion/camera/ui/setting/exposure/widget/background/DotLineBackground$BackgroundInfo;
.super Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw$BaseInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/exposure/widget/background/DotLineBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundInfo"
.end annotation


# instance fields
.field private final mDashGap:I

.field private final mDashWidth:I

.field private final mStrokeWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmDashGap(Lcom/transsion/camera/ui/setting/exposure/widget/background/DotLineBackground$BackgroundInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/background/DotLineBackground$BackgroundInfo;->mDashGap:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDashWidth(Lcom/transsion/camera/ui/setting/exposure/widget/background/DotLineBackground$BackgroundInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/background/DotLineBackground$BackgroundInfo;->mDashWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStrokeWidth(Lcom/transsion/camera/ui/setting/exposure/widget/background/DotLineBackground$BackgroundInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/background/DotLineBackground$BackgroundInfo;->mStrokeWidth:I

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 7

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw$BaseInfo;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$color;->default_background_color:I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 54
    sget v1, Lcom/transsion/camera/R$dimen;->default_background_stroke_width:I

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 56
    sget v2, Lcom/transsion/camera/R$dimen;->default_background_dash_width:I

    .line 57
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 58
    sget v3, Lcom/transsion/camera/R$dimen;->default_background_dash_gap:I

    .line 59
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 61
    sget v3, Lcom/transsion/camera/R$styleable;->BaseSeekBar_backgroundColor:I

    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw$BaseInfo;->mColor:I

    .line 64
    sget p1, Lcom/transsion/camera/R$styleable;->BaseSeekBar_backgroundStrokeWidth:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/background/DotLineBackground$BackgroundInfo;->mStrokeWidth:I

    .line 66
    sget p1, Lcom/transsion/camera/R$styleable;->BaseSeekBar_backgroundDashWidth:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/background/DotLineBackground$BackgroundInfo;->mDashWidth:I

    .line 68
    sget p1, Lcom/transsion/camera/R$styleable;->BaseSeekBar_backgroundDashGap:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/background/DotLineBackground$BackgroundInfo;->mDashGap:I

    return-void
.end method
