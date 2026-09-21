.class Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;
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
            "Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)V
    .registers 3

    .line 700
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 701
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$UIHandler;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 706
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    if-nez p0, :cond_25

    .line 708
    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage blurRoot is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 711
    :cond_25
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_52

    goto :goto_3d

    .line 719
    :pswitch_2b
    const-string p1, "key_portrait_flare"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->closeBlurByConflict(Ljava/lang/String;)V

    .line 720
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmHideBottomPanelListener(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 721
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmHideBottomPanelListener(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;->hideBottomPanelByConflict()V

    :cond_3d
    :goto_3d
    return-void

    .line 716
    :pswitch_3e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->closeBlurByConflict(Ljava/lang/String;)V

    return-void

    .line 713
    :pswitch_46
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$mshowGuide(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;I)V

    return-void

    :pswitch_data_52
    .packed-switch 0x64
        :pswitch_46
        :pswitch_3e
        :pswitch_2b
    .end packed-switch
.end method
