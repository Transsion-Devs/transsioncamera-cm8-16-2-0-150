.class public final Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;


# static fields
.field private static final FACE_BEAUTY_IMPL_CLASS:Ljava/lang/String; = "com.transsion.camera.feature.facebeauty.FaceBeautyImpl"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sSupport:Z


# instance fields
.field private mFaceBeautyImpl:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceBeauty"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 26
    const-string v0, "com.transsion.camera.feature.facebeauty.FaceBeautyImpl"

    .line 27
    invoke-static {v0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    sput-boolean v0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->sSupport:Z

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "com.transsion.camera.feature.facebeauty.FaceBeautyImpl"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    iput-object p1, p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->mFaceBeautyImpl:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    return-void
.end method

.method public static algorithmMigrate()Z
    .registers 1

    .line 36
    sget-boolean v0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->sSupport:Z

    return v0
.end method

.method public static createCaptureClient()Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;
    .registers 2

    .line 44
    new-instance v0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;-><init>(I)V

    return-object v0
.end method

.method public static createPreviewClient()Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;
    .registers 2

    .line 40
    new-instance v0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public configStream(Landroid/view/Surface;II)Landroid/view/Surface;
    .registers 4

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->mFaceBeautyImpl:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    if-nez p0, :cond_d

    .line 122
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mFaceBeautyImpl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 125
    :cond_d
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->configStream(Landroid/view/Surface;II)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->mFaceBeautyImpl:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    if-nez p0, :cond_e

    .line 68
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mFaceBeautyImpl is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 69
    const-string p0, ""

    return-object p0

    .line 71
    :cond_e
    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->getVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init()Z
    .registers 2

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->mFaceBeautyImpl:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    if-nez p0, :cond_d

    .line 50
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mFaceBeautyImpl is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 53
    :cond_d
    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->init()Z

    move-result p0

    return p0
.end method

.method public process([BIII)Z
    .registers 5

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->mFaceBeautyImpl:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    if-nez p0, :cond_d

    .line 113
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mFaceBeautyImpl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 116
    :cond_d
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->process([BIII)Z

    move-result p0

    return p0
.end method

.method public setLevel(I)Z
    .registers 2

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->mFaceBeautyImpl:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    if-nez p0, :cond_d

    .line 95
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mFaceBeautyImpl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 98
    :cond_d
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->setLevel(I)Z

    move-result p0

    return p0
.end method

.method public setLevels([I)Z
    .registers 2

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->mFaceBeautyImpl:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    if-nez p0, :cond_d

    .line 104
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mFaceBeautyImpl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 107
    :cond_d
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->setLevels([I)Z

    move-result p0

    return p0
.end method

.method public setMode(I)Z
    .registers 2

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->mFaceBeautyImpl:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    if-nez p0, :cond_d

    .line 86
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mFaceBeautyImpl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 89
    :cond_d
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->setMode(I)Z

    move-result p0

    return p0
.end method

.method public setParam(II)Z
    .registers 3

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->mFaceBeautyImpl:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    if-nez p0, :cond_d

    .line 77
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mFaceBeautyImpl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 80
    :cond_d
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->setParam(II)Z

    move-result p0

    return p0
.end method

.method public unInit()Z
    .registers 2

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->mFaceBeautyImpl:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    if-nez p0, :cond_d

    .line 59
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mFaceBeautyImpl is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 62
    :cond_d
    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->unInit()Z

    move-result p0

    return p0
.end method
