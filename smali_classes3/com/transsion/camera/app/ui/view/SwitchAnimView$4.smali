.class Lcom/transsion/camera/app/ui/view/SwitchAnimView$4;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/view/SwitchAnimView;->getBlurHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;


# direct methods
.method public static synthetic $r8$lambda$B_o789PQegQYAgumE2HGTIDBTZ4(Lcom/transsion/camera/app/ui/view/SwitchAnimView$4;Landroid/os/Message;Landroid/widget/ImageView;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$4;->lambda$handleMessage$1(Landroid/os/Message;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YtznBk0UPDmkyVVyZQsUo5c1Mh8(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .registers 3

    if-eqz p0, :cond_b

    .line 448
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 449
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_b
    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/os/Looper;)V
    .registers 3

    .line 439
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$4;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private synthetic lambda$handleMessage$1(Landroid/os/Message;Landroid/widget/ImageView;)V
    .registers 6

    .line 444
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$4;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$fgetmLock(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 445
    :try_start_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v1, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2a

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 446
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$4;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$mgetBlurBitmap(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 447
    new-instance p1, Lcom/transsion/camera/app/ui/view/SwitchAnimView$4$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$4$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 453
    :cond_2a
    :goto_2a
    monitor-exit v0

    return-void

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_28

    throw p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 442
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 443
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$4;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$mgetCurrentImageView(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/view/SwitchAnimView$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$4$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView$4;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_17
    return-void
.end method
