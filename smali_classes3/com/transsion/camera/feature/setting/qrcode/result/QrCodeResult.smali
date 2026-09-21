.class public Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mImageSize:Landroid/graphics/Point;

.field private mQrCodeRect:Landroid/graphics/Rect;

.field private mQrCodeResult:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;->mQrCodeRect:Landroid/graphics/Rect;

    .line 13
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;->mQrCodeResult:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;->mImageSize:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public getImageSize()Landroid/graphics/Point;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;->mImageSize:Landroid/graphics/Point;

    return-object p0
.end method

.method public getQrCodeRect()Landroid/graphics/Rect;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;->mQrCodeRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getQrCodeResult()Ljava/lang/String;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;->mQrCodeResult:Ljava/lang/String;

    return-object p0
.end method

.method public setImageSize(Landroid/graphics/Point;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;->mImageSize:Landroid/graphics/Point;

    return-void
.end method

.method public setQrCodeRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;->mQrCodeRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setQrCodeResult(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;->mQrCodeResult:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QrCodeResult{mQrCodeResult=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;->mQrCodeResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mQrCodeRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;->mQrCodeRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mImageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;->mImageSize:Landroid/graphics/Point;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
