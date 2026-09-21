.class Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;
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
            "Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;)V
    .registers 3

    .line 296
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 297
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI$UIHandler;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;

    if-nez p0, :cond_25

    .line 304
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage hintUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 308
    :cond_25
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4c

    return-void

    .line 322
    :pswitch_2b
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->-$$Nest$mdoHideAllHints(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;)V

    return-void

    .line 319
    :pswitch_2f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->-$$Nest$mhideAutoHideHintView(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V

    return-void

    .line 313
    :pswitch_37
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->-$$Nest$mhideAlwaysHintView(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;)V

    return-void

    .line 316
    :pswitch_3b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->-$$Nest$mshowAutoHideHintView(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V

    return-void

    .line 310
    :pswitch_43
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->-$$Nest$mshowAlwaysHintView(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V

    return-void

    nop

    :pswitch_data_4c
    .packed-switch 0x3e9
        :pswitch_43
        :pswitch_3b
        :pswitch_37
        :pswitch_2f
        :pswitch_2b
    .end packed-switch
.end method
