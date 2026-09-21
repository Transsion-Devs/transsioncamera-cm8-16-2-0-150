.class public final synthetic Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$1$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$1$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$1$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$1$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$1;->$r8$lambda$rye9VtF7_aRRZmz8QYb7HIlSXlk(Landroid/view/View;Z)V

    return-void
.end method
