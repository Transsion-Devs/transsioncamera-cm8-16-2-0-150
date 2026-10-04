.class Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnTouchListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractThumbnailUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTouchListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V
    .registers 2

    .line 358
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnTouchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;Lcom/transsion/camera/app/ui/AbstractThumbnailUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnTouchListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnTouchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thumbnail onTouch event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 362
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_25

    const/4 p0, 0x0

    return p0

    .line 365
    :cond_25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_36

    if-eq p2, v0, :cond_32

    const/4 p0, 0x3

    if-eq p2, p0, :cond_32

    goto :goto_7f

    .line 381
    :cond_32
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->onPressUpOrCancel(Landroid/view/View;)V

    goto :goto_7f

    .line 367
    :cond_36
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mPendingThumbnailClick:Z

    if-eqz p2, :cond_6b

    .line 368
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnTouchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iget-object p2, p2, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thumbnail onTouch down mEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnTouchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->-$$Nest$fgetmEnabled(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 369
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnTouchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->-$$Nest$fgetmEnabled(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Z

    move-result p2

    if-nez p2, :cond_6b

    .line 370
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnTouchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->-$$Nest$msetPendingClick(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;Z)V

    goto :goto_7f

    .line 374
    :cond_6b
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->onPressDown(Landroid/view/View;)V

    .line 375
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnTouchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->-$$Nest$fgetmOnThumbnailClickListener(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/view/View$OnClickListener;

    move-result-object p2

    if-eqz p2, :cond_7f

    .line 376
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnTouchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->-$$Nest$fgetmOnThumbnailClickListener(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_7f
    :goto_7f
    return v0
.end method
