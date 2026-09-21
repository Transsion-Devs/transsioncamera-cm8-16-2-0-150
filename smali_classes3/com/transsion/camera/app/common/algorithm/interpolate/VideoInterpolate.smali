.class public final Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VIDEO_INTERPOLATE_IMPL_CLASS:Ljava/lang/String; = "com.transsion.camera.feature.interpolate.VideoInterpolateImpl"

.field private static final sSupport:Z


# instance fields
.field private mInitFormat:I

.field private mInitFps:I

.field private mInitHeight:I

.field private mInitRatio:I

.field private mInitWidth:I

.field private final mVideoInterpolateImpl:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoInterpolate"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 25
    const-string v0, "com.transsion.camera.feature.interpolate.VideoInterpolateImpl"

    .line 26
    invoke-static {v0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    sput-boolean v0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->sSupport:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    const-string v1, "com.transsion.camera.feature.interpolate.VideoInterpolateImpl"

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    iput-object v0, p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mVideoInterpolateImpl:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    return-void
.end method

.method public static instance()Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;
    .registers 1

    .line 42
    new-instance v0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;-><init>()V

    return-object v0
.end method

.method private isChanged(III)Z
    .registers 5

    .line 74
    iget v0, p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mInitWidth:I

    if-ne v0, p1, :cond_f

    iget p1, p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mInitHeight:I

    if-ne p1, p2, :cond_f

    iget p0, p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mInitFormat:I

    if-eq p0, p3, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public static support()Z
    .registers 1

    .line 46
    sget-boolean v0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->sSupport:Z

    return v0
.end method


# virtual methods
.method public confirmInitParams(III)V
    .registers 12

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mVideoInterpolateImpl:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    if-nez v0, :cond_c

    .line 61
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mVideoInterpolateImpl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 64
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->isChanged(III)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 65
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isChanged width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mInitWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mInitWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mInitHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mInitHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mInitFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mInitFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->reset()Z

    .line 69
    iget v6, p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mInitFps:I

    iget v7, p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mInitRatio:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->init(IIIII)Z

    :cond_64
    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mVideoInterpolateImpl:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    if-nez p0, :cond_d

    .line 52
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mVideoInterpolateImpl is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_d
    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;->getVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(IIIII)Z
    .registers 7

    move-object v0, p0

    .line 81
    iget-object p0, v0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mVideoInterpolateImpl:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    if-nez p0, :cond_e

    .line 82
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mVideoInterpolateImpl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 85
    :cond_e
    iput p4, v0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mInitFps:I

    .line 86
    iput p5, v0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mInitRatio:I

    .line 87
    iput p1, v0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mInitWidth:I

    .line 88
    iput p2, v0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mInitHeight:I

    .line 89
    iput p3, v0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mInitFormat:I

    .line 90
    invoke-interface/range {p0 .. p5}, Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;->init(IIIII)Z

    move-result p0

    return p0
.end method

.method public interpolate([B)Z
    .registers 2

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mVideoInterpolateImpl:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    if-nez p0, :cond_d

    .line 105
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mVideoInterpolateImpl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 108
    :cond_d
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;->interpolate([B)Z

    move-result p0

    return p0
.end method

.method public reset()Z
    .registers 2

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mVideoInterpolateImpl:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    if-nez p0, :cond_d

    .line 114
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mVideoInterpolateImpl is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 117
    :cond_d
    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;->reset()Z

    move-result p0

    return p0
.end method

.method public setOutputBuffers([Ljava/nio/ByteBuffer;)Z
    .registers 2

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mVideoInterpolateImpl:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    if-nez p0, :cond_d

    .line 96
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mVideoInterpolateImpl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 99
    :cond_d
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;->setOutputBuffers([Ljava/nio/ByteBuffer;)Z

    move-result p0

    return p0
.end method

.method public unInit()Z
    .registers 2

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mVideoInterpolateImpl:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    if-nez p0, :cond_d

    .line 123
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mVideoInterpolateImpl is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 126
    :cond_d
    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;->unInit()Z

    move-result p0

    return p0
.end method
