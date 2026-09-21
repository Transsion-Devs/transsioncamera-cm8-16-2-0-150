.class public abstract Lcom/ss/android/ttvecamera/provider/TECameraProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListenerWithAR;,
        Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;
    }
.end annotation


# static fields
.field public static final PROVIDER_TYPE_BUFFER_CALLBACK:I = 0x4

.field public static final PROVIDER_TYPE_IMAGE_READER:I = 0x2

.field public static final PROVIDER_TYPE_RECORDER:I = 0x10

.field public static final PROVIDER_TYPE_SURFACE_AND_IMAGE:I = 0x8

.field public static final PROVIDER_TYPE_SURFACE_TEXTURE:I = 0x1

.field public static final PROVIDER_TYPE_UNKNOWN:I


# instance fields
.field mCamera:Lcom/ss/android/ttvecamera/TECameraBase;

.field private mEmptyCaptureListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

.field private mEmptyCaptureListenerWithAR:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

.field mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public mImageReaderCount:I

.field mIsPreview:Z

.field mListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

.field public mMetadata:Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;

.field protected mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;

.field mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;


# direct methods
.method public constructor <init>(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;Lcom/ss/android/ttvecamera/TECameraBase;)V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-direct {v0}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mIsPreview:Z

    .line 45
    iput v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mImageReaderCount:I

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;

    .line 151
    new-instance v0, Lcom/ss/android/ttvecamera/provider/TECameraProvider$1;

    invoke-direct {v0, p0}, Lcom/ss/android/ttvecamera/provider/TECameraProvider$1;-><init>(Lcom/ss/android/ttvecamera/provider/TECameraProvider;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mEmptyCaptureListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    .line 163
    new-instance v0, Lcom/ss/android/ttvecamera/provider/TECameraProvider$2;

    invoke-direct {v0, p0}, Lcom/ss/android/ttvecamera/provider/TECameraProvider$2;-><init>(Lcom/ss/android/ttvecamera/provider/TECameraProvider;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mEmptyCaptureListenerWithAR:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    .line 51
    iget-object v0, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 52
    iget-object v0, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    .line 53
    iget-object v0, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 54
    iput-object p2, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mCamera:Lcom/ss/android/ttvecamera/TECameraBase;

    .line 55
    iget-boolean p2, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mIsPreview:Z

    iput-boolean p2, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mIsPreview:Z

    .line 56
    iget p1, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mImageReaderCount:I

    iput p1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mImageReaderCount:I

    return-void
.end method

.method public static convertSizes(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 134
    new-instance v2, Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v2, v3, v1}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_22
    return-object v0
.end method

.method public static convertSizes([Landroid/util/Size;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 144
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    array-length v1, p0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_22

    aget-object v3, p0, v2

    .line 146
    new-instance v4, Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v4, v5, v3}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_22
    return-object v0
.end method


# virtual methods
.method public getMetadata()Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mMetadata:Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;

    return-object p0
.end method

.method public getRecorderSurface()Landroid/view/Surface;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    return-object p0
.end method

.method public abstract getSurface()Landroid/view/Surface;
.end method

.method public abstract getSurfaceTexture()Landroid/graphics/SurfaceTexture;
.end method

.method public getSurfaces()[Landroid/view/Surface;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTextureID()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public abstract getType()I
.end method

.method public init(Landroid/hardware/Camera$Parameters;Lcom/ss/android/ttvecamera/TEFrameSizei;)I
    .registers 3

    .line 123
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->convertSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->init(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)I

    move-result p0

    return p0
.end method

.method public init(Landroid/hardware/camera2/params/StreamConfigurationMap;Lcom/ss/android/ttvecamera/TEFrameSizei;)I
    .registers 3

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public abstract init(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ")I"
        }
    .end annotation
.end method

.method public isPreview()Z
    .registers 1

    .line 66
    iget-boolean p0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mIsPreview:Z

    return p0
.end method

.method public onExtFrameDataAttached(Ljava/lang/Object;)V
    .registers 3

    .line 187
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    if-eqz p0, :cond_d

    instance-of v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListenerWithAR;

    if-eqz v0, :cond_d

    .line 188
    check-cast p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListenerWithAR;

    invoke-interface {p0, p1}, Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListenerWithAR;->onExtFrameDataAttached(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public onFrameCaptured(Lcom/ss/android/ttvecamera/TECameraFrame;)V
    .registers 2

    .line 60
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    if-eqz p0, :cond_7

    .line 61
    invoke-interface {p0, p1}, Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;->onFrameCaptured(Lcom/ss/android/ttvecamera/TECameraFrame;)V

    :cond_7
    return-void
.end method

.method public abstract reAllocateSurfaceTexture()V
.end method

.method public release()V
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    instance-of v0, v0, Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListenerWithAR;

    if-eqz v0, :cond_b

    .line 84
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mEmptyCaptureListenerWithAR:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    return-void

    .line 86
    :cond_b
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mEmptyCaptureListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    return-void
.end method

.method public setFormat(Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    return-void
.end method

.method public setMetadata(Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mMetadata:Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;

    return-void
.end method

.method public setPreviewSizeCallback(Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;

    return-void
.end method

.method public setSize(II)V
    .registers 3

    .line 70
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iput p1, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    .line 71
    iput p2, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    return-void
.end method

.method public abstract setSurfaceTexture(Landroid/graphics/SurfaceTexture;Z)V
.end method

.method public triggerSurfaceTextureOnFrameAvailable()V
    .registers 1

    return-void
.end method
