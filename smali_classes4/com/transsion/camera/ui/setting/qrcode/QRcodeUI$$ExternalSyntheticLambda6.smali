.class public final synthetic Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;ZLandroid/view/View;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda6;->f$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda6;->f$1:Z

    iput-object p3, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda6;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda6;->f$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda6;->f$1:Z

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda6;->f$2:Landroid/view/View;

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->$r8$lambda$RRC-RZPAx6IPFNmT0YqqFwn4-4o(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;ZLandroid/view/View;)V

    return-void
.end method
