.class Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$PrepareInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrepareInfo"
.end annotation


# instance fields
.field private final mSharedEglContext:Landroid/opengl/EGLContext;

.field private final mSurface:Landroid/view/Surface;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSharedEglContext(Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$PrepareInfo;)Landroid/opengl/EGLContext;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$PrepareInfo;->mSharedEglContext:Landroid/opengl/EGLContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurface(Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$PrepareInfo;)Landroid/view/Surface;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$PrepareInfo;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method private constructor <init>(Landroid/view/Surface;Landroid/opengl/EGLContext;)V
    .registers 3

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$PrepareInfo;->mSurface:Landroid/view/Surface;

    .line 207
    iput-object p2, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$PrepareInfo;->mSharedEglContext:Landroid/opengl/EGLContext;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/Surface;Landroid/opengl/EGLContext;Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$PrepareInfo;-><init>(Landroid/view/Surface;Landroid/opengl/EGLContext;)V

    return-void
.end method
