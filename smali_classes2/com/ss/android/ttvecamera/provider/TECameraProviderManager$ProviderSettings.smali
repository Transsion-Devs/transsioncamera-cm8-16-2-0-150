.class public Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProviderSettings"
.end annotation


# instance fields
.field public mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public mImageReaderCount:I

.field public mIsPreview:Z

.field public mListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

.field public mRecorderSurface:Landroid/view/Surface;

.field public mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

.field public mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field public mTextureOES:I


# direct methods
.method public constructor <init>(Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;ZLandroid/graphics/SurfaceTexture;I)V
    .registers 7

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mIsPreview:Z

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mImageReaderCount:I

    .line 145
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_Count:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 149
    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 150
    iput-object p2, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    .line 151
    iput-object p4, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 152
    iput p5, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mTextureOES:I

    .line 153
    iput-boolean p3, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mIsPreview:Z

    .line 154
    sget-object p1, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_OpenGL_OES:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;ZLandroid/graphics/SurfaceTexture;ILandroid/view/Surface;)V
    .registers 8

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mIsPreview:Z

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mImageReaderCount:I

    .line 145
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_Count:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 159
    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 160
    iput-object p2, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    .line 161
    iput-object p4, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 162
    iput p5, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mTextureOES:I

    .line 163
    iput-boolean p3, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mIsPreview:Z

    .line 164
    sget-object p1, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_Recorder:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 165
    iput-object p6, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mRecorderSurface:Landroid/view/Surface;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;ZLandroid/graphics/SurfaceTexture;Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;)V
    .registers 7

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mIsPreview:Z

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mImageReaderCount:I

    .line 145
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_YUV420:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 170
    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 171
    iput-object p2, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    .line 172
    iput-object p4, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 173
    iput-boolean p3, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mIsPreview:Z

    .line 174
    iput-object p5, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;ZLandroid/graphics/SurfaceTexture;Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;I)V
    .registers 8

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mIsPreview:Z

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mImageReaderCount:I

    .line 145
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_YUV420:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 187
    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 188
    iput-object p2, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    .line 189
    iput-object p4, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 190
    iput-boolean p3, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mIsPreview:Z

    .line 191
    iput-object p5, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 192
    iput p6, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mImageReaderCount:I

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;ZLcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;)V
    .registers 6

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mIsPreview:Z

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mImageReaderCount:I

    .line 145
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_YUV420:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 179
    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 180
    iput-object p2, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    .line 181
    iput-object p4, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 182
    iput-boolean p3, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mIsPreview:Z

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;)V
    .registers 3

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mIsPreview:Z

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mImageReaderCount:I

    .line 145
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_Count:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 196
    iget-boolean v0, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mIsPreview:Z

    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mIsPreview:Z

    .line 197
    iget-object v0, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 198
    iget-object v0, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    .line 199
    iget-object v0, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 200
    iget v0, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mTextureOES:I

    iput v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mTextureOES:I

    .line 201
    iget p1, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mImageReaderCount:I

    iput p1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mImageReaderCount:I

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;)V
    .registers 3

    .line 205
    iget-boolean v0, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mIsPreview:Z

    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mIsPreview:Z

    .line 206
    iget-object v0, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 207
    iget-object v0, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    .line 208
    iget-object v0, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 209
    iget v0, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mTextureOES:I

    iput v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mTextureOES:I

    .line 210
    iget p1, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mImageReaderCount:I

    iput p1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mImageReaderCount:I

    return-void
.end method

.method public isSame(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;)Z
    .registers 6

    if-eqz p1, :cond_32

    .line 214
    iget-boolean v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mIsPreview:Z

    iget-boolean v1, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mIsPreview:Z

    if-ne v0, v1, :cond_32

    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v1, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget-object v2, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v3, v2, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    if-ne v1, v3, :cond_32

    iget v0, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    iget v1, v2, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    if-ne v0, v1, :cond_32

    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    iget-object v1, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    if-ne v0, v1, :cond_32

    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-ne v0, v1, :cond_32

    iget v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mTextureOES:I

    iget v1, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mTextureOES:I

    if-ne v0, v1, :cond_32

    iget p0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mImageReaderCount:I

    iget p1, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mImageReaderCount:I

    if-ne p0, p1, :cond_32

    const/4 p0, 0x1

    return p0

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProviderSettings: [mIsPreview = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mIsPreview:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mListener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSurfaceTexture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTextureOES = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mTextureOES:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mImageReaderCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mImageReaderCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
