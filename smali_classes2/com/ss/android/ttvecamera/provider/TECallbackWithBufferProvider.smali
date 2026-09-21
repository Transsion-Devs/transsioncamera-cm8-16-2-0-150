.class public Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;
.super Lcom/ss/android/ttvecamera/provider/TECameraProvider;
.source "SourceFile"


# static fields
.field private static final MAX_PREVIEW_DATA_CHECK_TIMES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TECallbackWithBufferProvider"


# instance fields
.field private mCallbackBytebuffer:[[B

.field private mCallbackBytebufferSize:I

.field mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewCheckTimes:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;Lcom/ss/android/ttvecamera/TECameraBase;)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;-><init>(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;Lcom/ss/android/ttvecamera/TECameraBase;)V

    const/4 p2, 0x0

    .line 27
    iput p2, p0, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;->mPreviewCheckTimes:I

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;->mCallbackBytebuffer:[[B

    .line 30
    iput p2, p0, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;->mCallbackBytebufferSize:I

    .line 34
    iget-object p1, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;[B)Z
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;->checkPreviewData([B)Z

    move-result p0

    return p0
.end method

.method private checkPreviewData([B)Z
    .registers 12

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 107
    array-length v1, p1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    const/4 v2, 0x1

    if-lez v1, :cond_62

    .line 108
    iget-object v3, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    if-eqz v3, :cond_62

    iget v4, p0, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;->mPreviewCheckTimes:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_62

    add-int/2addr v4, v2

    .line 109
    iput v4, p0, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;->mPreviewCheckTimes:I

    .line 110
    iget v4, v3, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget v3, v3, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    mul-int/2addr v4, v3

    if-le v4, v1, :cond_3d

    .line 112
    sget-object p1, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPreviewData failed: mSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", length: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 117
    :cond_3d
    div-int/lit16 p0, v4, 0x12c

    .line 118
    div-int/lit8 v3, p0, 0x2

    .line 120
    aget-byte v5, p1, v0

    .line 121
    aget-byte v6, p1, v4

    move v7, v0

    :goto_46
    const/16 v8, 0x12c

    if-ge v7, v8, :cond_61

    mul-int v8, v7, p0

    mul-int v9, v7, v3

    add-int/2addr v9, v4

    if-ge v8, v1, :cond_61

    if-lt v9, v1, :cond_54

    goto :goto_61

    .line 129
    :cond_54
    aget-byte v8, p1, v8

    if-ne v5, v8, :cond_60

    aget-byte v8, p1, v9

    if-eq v6, v8, :cond_5d

    goto :goto_60

    :cond_5d
    add-int/lit8 v7, v7, 0x1

    goto :goto_46

    :cond_60
    :goto_60
    return v2

    :cond_61
    :goto_61
    return v0

    :cond_62
    return v2
.end method


# virtual methods
.method public getBuffers(I)[[B
    .registers 7

    .line 90
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v1, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget v0, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    mul-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x3

    const/4 v0, 0x2

    div-int/2addr v1, v0

    .line 91
    sget-object v2, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBuffers current bufferSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mCallbackBytebufferSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;->mCallbackBytebufferSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget v3, p0, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;->mCallbackBytebufferSize:I

    if-gt v1, v3, :cond_31

    if-nez v3, :cond_59

    .line 93
    :cond_31
    new-array v0, v0, [I

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v3, 0x0

    aput p1, v0, v3

    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;->mCallbackBytebuffer:[[B

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new mCallbackBytebuffer size :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iput v1, p0, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;->mCallbackBytebufferSize:I

    .line 97
    :cond_59
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;->mCallbackBytebuffer:[[B

    return-object p0
.end method

.method public getPreviewCallback()Landroid/hardware/Camera$PreviewCallback;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object p0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public getType()I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public init(Landroid/hardware/Camera$Parameters;Lcom/ss/android/ttvecamera/TEFrameSizei;)I
    .registers 3

    .line 65
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->convertSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;->init(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)I

    move-result p0

    return p0
.end method

.method public init(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)I
    .registers 4
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

    if-eqz p1, :cond_e

    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 41
    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TECameraUtils;->calcPreviewSize(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 44
    :cond_e
    iget-object p1, p0, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v0, p2, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget p2, p2, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-virtual {p1, v0, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 45
    new-instance p1, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider$1;

    invoke-direct {p1, p0}, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider$1;-><init>(Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;)V

    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    const/4 p0, 0x0

    return p0
.end method

.method public reAllocateSurfaceTexture()V
    .registers 1

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;Z)V
    .registers 3

    return-void
.end method
