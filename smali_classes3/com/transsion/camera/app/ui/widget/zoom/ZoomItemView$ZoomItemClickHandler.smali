.class Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$ZoomItemClickHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZoomItemClickHandler"
.end annotation


# instance fields
.field mZoomItemView:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

.field private mZoomItemViewWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)V
    .registers 3

    .line 154
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 155
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$ZoomItemClickHandler;->mZoomItemViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 156
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$ZoomItemClickHandler;->mZoomItemView:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 161
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 162
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    goto :goto_16

    .line 164
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$ZoomItemClickHandler;->mZoomItemView:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    if-eqz p1, :cond_16

    .line 165
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->-$$Nest$fgetmZoomValue(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)I

    move-result p1

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$ZoomItemClickHandler;->mZoomItemView:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->-$$Nest$mbackToTextZoomItemView(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;I)V

    :cond_16
    :goto_16
    return-void
.end method
