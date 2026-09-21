.class Lcom/transsion/camera/app/ui/setting/PopupOption$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/setting/PopupOption;->showPopupIfNeed(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;IZI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V
    .registers 2

    .line 441
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$4;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .line 444
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$4;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->doOnDismiss()V

    .line 445
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$4;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fputmDownEventInBounds(Lcom/transsion/camera/app/ui/setting/PopupOption;Z)V

    .line 446
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$4;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmPopupWindowListener(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 447
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$4;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmPopupWindowListener(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;->onPopupDismissEnd()V

    .line 449
    :cond_1c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$4;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->onDismiss()V

    return-void
.end method
