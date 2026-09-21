.class Lcom/transsion/camera/app/ui/widget/ConfirmDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->initFlipDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/ConfirmDialog;)V
    .registers 2

    .line 248
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog$1;->this$0:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 5

    .line 252
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onApplyWindowInsets insets: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmDialog$1;->this$0:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    invoke-static {p0, p2}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->-$$Nest$monCutoutPositionChanged(Lcom/transsion/camera/app/ui/widget/ConfirmDialog;Landroid/view/WindowInsets;)V

    return-object p2
.end method
