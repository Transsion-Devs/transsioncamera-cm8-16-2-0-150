.class Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field mWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$UIHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 48
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$UIHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;

    .line 50
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    goto :goto_1d

    :cond_14
    if-eqz p0, :cond_1d

    const/4 p1, 0x0

    .line 54
    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->-$$Nest$fputmZoomInit(Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;Z)V

    .line 55
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1d
    :goto_1d
    return-void
.end method
