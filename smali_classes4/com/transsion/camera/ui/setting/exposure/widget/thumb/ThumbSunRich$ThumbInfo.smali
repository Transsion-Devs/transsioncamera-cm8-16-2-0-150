.class public Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich$ThumbInfo;
.super Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbInfo"
.end annotation


# instance fields
.field private final mMaxBrilliantRaysLength:I

.field private final mMinRadius:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmMinRadius(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich$ThumbInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich$ThumbInfo;->mMinRadius:I

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 5

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 76
    sget v0, Lcom/transsion/camera/R$dimen;->default_sun_min_radius:I

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 79
    sget v1, Lcom/transsion/camera/R$dimen;->default_sun_max_brilliant_rays_length:I

    .line 80
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 82
    sget v1, Lcom/transsion/camera/R$styleable;->BaseSeekBar_sunMinRadius:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich$ThumbInfo;->mMinRadius:I

    .line 84
    sget v0, Lcom/transsion/camera/R$styleable;->BaseSeekBar_sunMaxBrilliantRaysLength:I

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich$ThumbInfo;->mMaxBrilliantRaysLength:I

    return-void
.end method
