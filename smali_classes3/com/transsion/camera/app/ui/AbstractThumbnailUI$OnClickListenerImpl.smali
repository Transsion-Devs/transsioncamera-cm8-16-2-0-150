.class Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnClickListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractThumbnailUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnClickListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V
    .registers 2

    .line 335
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;Lcom/transsion/camera/app/ui/AbstractThumbnailUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnClickListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "thumbnail click"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 339
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_56

    .line 342
    :cond_10
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPendingThumbnailClick:Z

    if-eqz v0, :cond_45

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thumbnail click mEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->-$$Nest$fgetmEnabled(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->-$$Nest$fgetmEnabled(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 345
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->-$$Nest$msetPendingClick(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;Z)V

    return-void

    .line 349
    :cond_45
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->-$$Nest$fgetmOnThumbnailClickListener(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 350
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->-$$Nest$fgetmOnThumbnailClickListener(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_56
    :goto_56
    return-void
.end method
