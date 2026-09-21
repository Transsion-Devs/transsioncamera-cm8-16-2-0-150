.class Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$TextureInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextureInfo"
.end annotation


# instance fields
.field private final mMatrix:[F

.field private final mTextureId:I

.field private final mTextureType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmMatrix(Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$TextureInfo;)[F
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$TextureInfo;->mMatrix:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextureId(Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$TextureInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$TextureInfo;->mTextureId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextureType(Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$TextureInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$TextureInfo;->mTextureType:I

    return p0
.end method

.method private constructor <init>(II[F)V
    .registers 4

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput p1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$TextureInfo;->mTextureId:I

    .line 222
    iput p2, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$TextureInfo;->mTextureType:I

    .line 223
    iput-object p3, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$TextureInfo;->mMatrix:[F

    return-void
.end method

.method synthetic constructor <init>(II[FLcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$TextureInfo;-><init>(II[F)V

    return-void
.end method
