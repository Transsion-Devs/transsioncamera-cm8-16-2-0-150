.class public Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoon$ThumbInfo;
.super Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbInfo"
.end annotation


# instance fields
.field private final mMoonRadius:I

.field private final mWaningMoonRadius:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmMoonRadius(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoon$ThumbInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoon$ThumbInfo;->mMoonRadius:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaningMoonRadius(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoon$ThumbInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoon$ThumbInfo;->mWaningMoonRadius:I

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 5

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 52
    sget v0, Lcom/transsion/camera/R$dimen;->default_moon_radius:I

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 54
    sget v1, Lcom/transsion/camera/R$dimen;->default_waning_moon_radius:I

    .line 55
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 57
    sget v1, Lcom/transsion/camera/R$styleable;->BaseSeekBar_moonRadius:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoon$ThumbInfo;->mMoonRadius:I

    .line 59
    sget v0, Lcom/transsion/camera/R$styleable;->BaseSeekBar_waningMoonRadius:I

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoon$ThumbInfo;->mWaningMoonRadius:I

    return-void
.end method
