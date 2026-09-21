.class public abstract Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;
.super Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw$BaseInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ThumbInfo"
.end annotation


# instance fields
.field private final mBrilliantRaysLength:I

.field private final mHeight:I

.field private final mInterval:I

.field private final mRadius:I

.field private final mStroke:I

.field private final mWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmBrilliantRaysLength(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->mBrilliantRaysLength:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHeight(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->mHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInterval(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->mInterval:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRadius(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->mRadius:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStroke(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->mStroke:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWidth(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->mWidth:I

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 10

    .line 118
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw$BaseInfo;-><init>()V

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$color;->default_thumb_color:I

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 125
    sget v1, Lcom/transsion/camera/R$dimen;->default_thumb_width:I

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 127
    sget v2, Lcom/transsion/camera/R$dimen;->default_thumb_height:I

    .line 128
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 129
    sget v3, Lcom/transsion/camera/R$dimen;->default_thumb_radius:I

    .line 130
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 131
    sget v4, Lcom/transsion/camera/R$dimen;->default_thumb_stroke:I

    .line 132
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 133
    sget v5, Lcom/transsion/camera/R$dimen;->default_thumb_interval:I

    .line 134
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 135
    sget v6, Lcom/transsion/camera/R$dimen;->default_thumb_brilliant_rays_length:I

    .line 136
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 138
    sget v6, Lcom/transsion/camera/R$styleable;->BaseSeekBar_thumbColor:I

    invoke-virtual {p2, v6, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw$BaseInfo;->mColor:I

    .line 141
    sget p1, Lcom/transsion/camera/R$styleable;->BaseSeekBar_thumbWidth:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->mWidth:I

    .line 143
    sget p1, Lcom/transsion/camera/R$styleable;->BaseSeekBar_thumbHeight:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->mHeight:I

    .line 145
    sget p1, Lcom/transsion/camera/R$styleable;->BaseSeekBar_thumbRadius:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->mRadius:I

    .line 147
    sget p1, Lcom/transsion/camera/R$styleable;->BaseSeekBar_thumbStroke:I

    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->mStroke:I

    .line 149
    sget p1, Lcom/transsion/camera/R$styleable;->BaseSeekBar_thumbInterval:I

    invoke-virtual {p2, p1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->mInterval:I

    .line 151
    sget p1, Lcom/transsion/camera/R$styleable;->BaseSeekBar_thumbBrilliantRaysLength:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->mBrilliantRaysLength:I

    return-void
.end method
