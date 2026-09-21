.class public Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithm;


# static fields
.field private static final QRCODE_RECOGNIZE_DEBUG:Z

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mImageSize:Landroid/graphics/Point;

.field private final mObject:Ljava/lang/Object;

.field private mPause:Z

.field private mResultCallback:Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQrCodeResultCallback;


# direct methods
.method public static synthetic $r8$lambda$PPD56o45ZzyvWTnLy5d5etnDAV8(Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->lambda$recognizeQrCode$0(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "IQRcodeRecognizeAlgorithmImpl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 18
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isQrCodeDebugSupport()Z

    move-result v0

    sput-boolean v0, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->QRCODE_RECOGNIZE_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->mObject:Ljava/lang/Object;

    .line 20
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->mImageSize:Landroid/graphics/Point;

    return-void
.end method

.method private correctCoordinates([Ljava/lang/String;)Landroid/graphics/Rect;
    .registers 6

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x3

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->mImageSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    aget-object v3, p1, v3

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr p0, v3

    const/4 v3, 0x2

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, v1, v2, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private synthetic lambda$recognizeQrCode$0(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 6

    .line 78
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;

    const/4 v2, 0x6

    aget-object v2, v0, v2

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->correctCoordinates([Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->mImageSize:Landroid/graphics/Point;

    invoke-direct {v1, v2, v0, p0}, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object p0, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BST Algo recognize results: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public initAlgorithm()Z
    .registers 6

    .line 30
    sget-object p0, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "initAlgorithm start"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 32
    sget-object v2, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {v2}, Lcom/bst/BstQrCodeFilter;->BstQRCodeInit(Landroid/content/Context;)I

    move-result v2

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initAlgorithm end, process time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v2, :cond_33

    const/4 p0, 0x1

    return p0

    :cond_33
    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .registers 3

    .line 51
    sget-object v0, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Algo [Pause--]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->mPause:Z

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 45
    sget-object v0, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Algo [Resume++]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->mPause:Z

    return-void
.end method

.method public recognizeQrCode(Ljava/lang/Object;ILandroid/graphics/Point;)V
    .registers 10

    .line 57
    sget-object v0, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recognizeQrCode IsPause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->mPause:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_85

    if-eqz p3, :cond_85

    .line 58
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->mPause:Z

    if-eqz v1, :cond_21

    goto :goto_85

    .line 62
    :cond_21
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_24
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->mImageSize:Landroid/graphics/Point;

    .line 64
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 65
    sget-boolean p3, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->QRCODE_RECOGNIZE_DEBUG:Z

    if-eqz p3, :cond_34

    .line 66
    const-string v2, "recognizeQrCode start"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_34

    :catchall_32
    move-exception p0

    goto :goto_83

    .line 68
    :cond_34
    :goto_34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 69
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->mImageSize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {p1, p2, v5, v4}, Lcom/bst/BstQrCodeFilter;->BstQRCodeRender(Ljava/nio/ByteBuffer;III)[Ljava/lang/String;

    move-result-object p2

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    if-eqz p3, :cond_62

    .line 72
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recognizeQrCode end, process time = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_62
    if-eqz p2, :cond_7e

    .line 75
    iget-object p3, p0, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->mResultCallback:Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQrCodeResultCallback;

    if-eqz p3, :cond_7e

    .line 76
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-static {p2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;Ljava/util/ArrayList;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->mResultCallback:Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQrCodeResultCallback;

    invoke-interface {p0, p3}, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQrCodeResultCallback;->updateResult(Ljava/util/List;)V

    .line 85
    :cond_7e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 88
    monitor-exit v1

    return-void

    :goto_83
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_24 .. :try_end_84} :catchall_32

    throw p0

    .line 59
    :cond_85
    :goto_85
    const-string p0, "nv21 buffer/imageSize is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setResultCallback(Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQrCodeResultCallback;)V
    .registers 5

    .line 39
    sget-object v0, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResultCallback , callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->mResultCallback:Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQrCodeResultCallback;

    return-void
.end method

.method public unInitAlgorithm()V
    .registers 5

    .line 99
    sget-object p0, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "unInitAlgorithm start"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 101
    invoke-static {}, Lcom/bst/BstQrCodeFilter;->BstQRCodeUninit()I

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unInitAlgorithm end, process time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
