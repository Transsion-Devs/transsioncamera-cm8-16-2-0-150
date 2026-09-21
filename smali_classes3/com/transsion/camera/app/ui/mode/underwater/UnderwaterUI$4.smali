.class Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->showNotice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)V
    .registers 2

    .line 531
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$4;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 534
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x18

    if-eq p1, p2, :cond_e

    const/16 p2, 0x19

    if-eq p1, p2, :cond_e

    const/4 p0, 0x0

    return p0

    .line 538
    :cond_e
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hideNotice onKey keyCode = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 539
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$4;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->hideNotice(Z)V

    return p1
.end method
