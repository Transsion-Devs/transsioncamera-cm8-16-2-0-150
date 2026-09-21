.class Lcom/transsion/camera/feature/setting/qrcode/QRcode$QRcodeHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/qrcode/QRcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QRcodeHandler"
.end annotation


# instance fields
.field private final mQRcode:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/feature/setting/qrcode/QRcode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Looper;Lcom/transsion/camera/feature/setting/qrcode/QRcode;)V
    .registers 3

    .line 370
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 371
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$QRcodeHandler;->mQRcode:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/transsion/camera/feature/setting/qrcode/QRcode;Lcom/transsion/camera/feature/setting/qrcode/QRcode-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/qrcode/QRcode$QRcodeHandler;-><init>(Landroid/os/Looper;Lcom/transsion/camera/feature/setting/qrcode/QRcode;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$QRcodeHandler;->mQRcode:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;

    if-nez v0, :cond_b

    goto :goto_49

    .line 380
    :cond_b
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 381
    iget p0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq p0, v1, :cond_4a

    const/16 v1, 0x65

    const/4 v2, 0x0

    if-eq p0, v1, :cond_36

    const/16 v1, 0x69

    if-eq p0, v1, :cond_26

    const/16 p1, 0x6a

    if-eq p0, p1, :cond_22

    goto :goto_49

    .line 409
    :cond_22
    invoke-static {v0, v2}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fputmIsQRCodeEffect(Lcom/transsion/camera/feature/setting/qrcode/QRcode;Z)V

    return-void

    .line 406
    :cond_26
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fgetmRecognizeAlgorithm(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;

    move-result-object p0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fgetmImageSize(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p0, v1, p1, v0}, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->recognizeQrCode(Ljava/lang/Object;ILandroid/graphics/Point;)V

    return-void

    .line 399
    :cond_36
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fgetmInit(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Z

    move-result p0

    if-eqz p0, :cond_49

    .line 400
    invoke-static {v0, v2}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fputmAllowRecognizeQrcode(Lcom/transsion/camera/feature/setting/qrcode/QRcode;Z)V

    .line 401
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fgetmRecognizeAlgorithm(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->unInitAlgorithm()V

    .line 402
    invoke-static {v0, v2}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fputmInit(Lcom/transsion/camera/feature/setting/qrcode/QRcode;Z)V

    :cond_49
    :goto_49
    return-void

    .line 383
    :cond_4a
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->isSupportCamera()Z

    move-result p0

    if-nez p0, :cond_5a

    .line 384
    invoke-static {}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "Current Camera Id not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 387
    :cond_5a
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fgetmRecognizeAlgorithm(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;

    move-result-object p0

    if-nez p0, :cond_6a

    .line 388
    invoke-static {}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "mRecognizeAlgorithm == null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 391
    :cond_6a
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fgetmInit(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Z

    move-result p0

    if-eqz p0, :cond_7a

    .line 392
    invoke-static {}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "already init return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 395
    :cond_7a
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fgetmRecognizeAlgorithm(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->initAlgorithm()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fputmInit(Lcom/transsion/camera/feature/setting/qrcode/QRcode;Z)V

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fputmAllowRecognizeQrcode(Lcom/transsion/camera/feature/setting/qrcode/QRcode;Z)V

    .line 396
    invoke-static {}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Init RecognizeAlgorithm result: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fgetmInit(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
