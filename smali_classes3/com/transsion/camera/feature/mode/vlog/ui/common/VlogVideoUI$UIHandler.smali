.class Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;)V
    .registers 3

    .line 131
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 132
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$UIHandler;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    if-nez p0, :cond_b

    goto :goto_15

    .line 142
    :cond_b
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_15

    const/4 p1, 0x0

    .line 143
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->updateRecordingTime(Z)V

    :cond_15
    :goto_15
    return-void
.end method
